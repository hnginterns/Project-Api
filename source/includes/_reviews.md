# Reviews
The Reviews API returns reviews made by users. 
Response may include comments, ratings of hotels by user or hotel personnel.</br>

List of Scopes to be used in Authentication<br>

The scope available to the user is only the read scope.

<em>properties.read</em>

## Show reviews for a specific hotel

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/124783/reviews');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXX-Your-Access_token-XXX'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
> Example response:

```json

{  
  "status":"success",
  "data":[  
    {  
      "id":3555,
      "property_id":"43864",
      "name":"John Doe",
      "title":"okay",
      "comment":"I enjoyed my stay, the service was very good and the rooms were quite comfortable.",
      "overall_rating":"2.00",
      "is_published":"1",
      "review_score":[  
        {  
          "id":3236,
          "review_id":"3555",
          "criterion_id":"1",
          "score":"2",          
        },
        {  
          "id":14323,
          "review_id":"3555",
          "criterion_id":"5",
          "score":"2",
        },
        {  
          "id":25410,
          "review_id":"3555",
          "criterion_id":"2",
          "score":"2",          
        }        
      ]
     {
      "review_comments":[  

      ]
    }
  
}
  


```
This endpoint shows the reviews for a specific hotel.

### HTTP Request

  `GET https://api.hotels.ng/hotels/hotel_id/reviews?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | Id of the Hotel
access_token | String | Your generated acess token

### Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
name| string| name of the reviewer
title| string |title of the review
comment| string | comment of the reviewer
overall_rating | integer | General rating of the hotel
review_id | integer | Id of the review
score | integer | Score of the review
is_published|string|if the review is published