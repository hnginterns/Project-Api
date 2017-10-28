# Reviews
Access to all reviews related things 

List of Scopes to be used in Authentication <br>

<em>properties.read</em>

The Reviews API returns all reviews made by users that must have patronized a hotel, comments, ratings by the user of the hotels as well as ratings of the hotel.  The admin has  certain privileges.</br>
The scope available to the user is only the read read scope.

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
      "name":"bimbo",
      "title":"okay",
      "comment":"I enjoyed my stay, the service was very good and the rooms were quite comfortable.",
      "overall_rating":"2.00",
      "is_published":"1",
      "created_at":"2014-12-02 04:08:38",
      "updated_at":"2016-04-07 11:24:16",
      "published_at":"2014-12-02 04:08:38",
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
        },
        {  
          "id":36497,
          "review_id":"3555",
          "criterion_id":"3",
          "score":"2",
        },
        {  
          "id":47584,
          "review_id":"3555",
          "criterion_id":"4",
          "score":"2",
        }
      ],
      "review_tag":[  

      ],
      "review_comments":[  

      ]
    }
  ]
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
