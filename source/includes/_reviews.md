# Reviews
Acess to all Reviews Related Things - List of Scopes to be used in Authorization <br>
Reviews.read


The Reviews API returns all reviews made by users that must have patronized a hotel, comments, ratings by the user of the hotels as well as ratings of the hotel.  The admin has some certain privileges. The scope available to the user is only the read read scope.
##Show reviews for a specific hotel

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}/reviews?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
```
> Example response:

 ```json

{  
  "status":"success",
  "data":[  
    {  
      "id":3555,
      "booking_id":null,
      "property_id":"43864",
      "user_id":null,
      "name":"bimbo",
      "email":null,
      "title":"okay",
      "location_id":null,
      "comment":"I enjoyed my stay, the service was very good and the rooms were quite comfortable.",
      "overall_rating":"2.00",
      "is_published":"1",
      "created_at":"2014-12-02 04:08:38",
      "updated_at":"2016-04-07 11:24:16",
      "deleted_at":null,
      "published_at":"2014-12-02 04:08:38",
      "review_score":[  
        {  
          "id":3236,
          "review_id":"3555",
          "criterion_id":"1",
          "score":"2",
          "created_at":null,
          "updated_at":null,
          "deleted_at":null
        },
        {  
          "id":14323,
          "review_id":"3555",
          "criterion_id":"5",
          "score":"2",
          "created_at":null,
          "updated_at":null,
          "deleted_at":null
        },
        {  
          "id":25410,
          "review_id":"3555",
          "criterion_id":"2",
          "score":"2",
          "created_at":null,
          "updated_at":null,
          "deleted_at":null
        },
        {  
          "id":36497,
          "review_id":"3555",
          "criterion_id":"3",
          "score":"2",
          "created_at":null,
          "updated_at":null,
          "deleted_at":null
        },
        {  
          "id":47584,
          "review_id":"3555",
          "criterion_id":"4",
          "score":"2",
          "created_at":null,
          "updated_at":null,
          "deleted_at":null
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
