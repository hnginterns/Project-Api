# Reviews
Acess to all Reviews Related Things - List of Scopes to be used in Authorization: <br>
Reviews.read,<br>
Reviews.create,<br>
Reviews.delete,<br>
Reviews.update,<br>

The Reviews API returns all reviews made by users that must have patronized a hotel, comments, ratings by the user of the hotels as well as ratings of the hotel.  The admin has privileges of adding a review for a specific hotel. The scopes available to the admin are read, create, delete, update.
##Show reviews for a specific hotel

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/internal/hotels/124783/reviews');
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
[
    {
    "status": "success",
    "data": {
      "id": 3555,
      "booking_id": null,
      "property_id": 43864,
      "user_id": null,
      "name": "bimbo",
      "email": null,
      "title": "okay",
      "location_id": null,
      "comment": "I enjoyed my stay, the service was very good and the rooms were quite comfortable. There was no such thing as being unsatisfied. The staffs were prompt with all the services",
      "overall_rating": 2,
      "is_published": 1,
      "created_at": {},
      "updated_at": {},
      "deleted_at": null,
      "published_at": {},
      "review_score": [
        {
          "id": 3236,
          "review_id": 3555,
          "criterion_id": 1,
          "score": 2,
          "created_at": null,
          "updated_at": null,
          "deleted_at": null
        },
        {
          "id": 14323,
          "review_id": 3555,
          "criterion_id": 5,
          "score": 2,
          "created_at": null,
          "updated_at": null,
          "deleted_at": null
        },
        {
          "id": 25410,
          "review_id": 3555,
          "criterion_id": 2,
          "score": 2,
          "created_at": null,
          "updated_at": null,
          "deleted_at": null
        },
        {
          "id": 36497,
          "review_id": 3555,
          "criterion_id": 3,
          "score": 2,
          "created_at": null,
          "updated_at": null,
          "deleted_at": null
        },
        {
          "id": 47584,
          "review_id": 3555,
          "criterion_id": 4,
          "score": 2,
          "created_at": null,
          "updated_at": null,
          "deleted_at": null
        }
      ],
      "review_tag": [],
      "review_comments": []
    }
  },
  
]

```
This endpoint shows the reviews for a specific hotel.
### HTTP Request

  `GET https://api.hotels.ng/internal/hotels/hotel_id/reviews?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your Acess Token

###Response Body

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


##Adds a review for a specific hotel.

>Example request:

```php
<?php

$client = new http\Client;
$request = new http\Client\Request;

$body = new http\Message\Body;
$body->addForm(array(
  'title' => 'No free wifi',
  'access_token' => 'kbOSN0IwHAvwKgUZ4rGsUTM2NtNo87MlXU6el7wG',
  'property_id' => '59629',
  'name' => 'Sir Louis',
  'email' => 'doc@hotels.ng',
  'comment' => 'hotel has no free wifi as they claimed',
  'rating[6]' => '4',
  'overall_rating' => '6.4',
  'is_published' => 'no',
), NULL);

$request->setRequestUrl('http://api.hotels.ng/internal/hotels/reviews/add');
$request->setRequestMethod('POST');
$request->setBody($body);

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();
?>
```

 >Example response:

```json
{
    "status": "success",
    "data": {
        "id": 14783,
        "booking_id": null,
        "property_id": "59629",
        "user_id": null,
        "name": "Sir Louis",
        "email": "doc@hotels.ng",
        "title": "No free wifi",
        "location_id": null,
        "comment": "hotel has no free wifi as they claimed",
        "overall_rating": "6.40",
        "is_published": "0",
        "created_at": "2017-10-27 22:17:53",
        "updated_at": "2017-10-27 22:17:53",
        "deleted_at": null,
        "published_at": null,
        "review_score": [],
        "review_tag": [],
        "review_comments": []
    }
}
```

This endpoint adds a review for a specific hotel.

### HTTP Request

 `POST https://api.hotels.ng/internal/hotels/reviews/add?`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
property_id | Number | Local id assigned to that property
access_token | String | Generated access token from Oauth2 developer credentials
title | String | Subject of the comment
name | String | Client's name
email | String | Client's email
comment | Text | Body of comment
rating | Number | Rating giving to property by client
overall_rating | Number |average rating
is_published | Number | Publish status


###Example Response

Attributes | Type |Description
---------  | ------- |-------
id | Number |web hook customer Identifier
booking_id  | Number | booking id of the client
property_id | Number| property id of the client
user_id | Number | Id of the user
name | String |name of the client
email | String|email of the client
title | String|title of the client
location_id | Number |location Id of the hotel
overall_rating | Number |average rating
created_at | string date|date at when the review was created
updated_at |string date|date at when the review was updated
comment |string|body of comment
