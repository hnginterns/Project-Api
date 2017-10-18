# Reviews
Acess to all Reviews Related Things - List of Scopes to be used in Authorization <br>
Reviews.read,<br>
Reviews.create,<br>
Reviews.delete,<br>
Reviews.update,<br>

##Show reviews for a specific hotel

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/hotels/{hotel_id}/reviews?access_token=");
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
  }
]

```
This endpoint shows the reviews for a specific hotel.
### HTTP Request

  `GET /hotels/hotel_id/reviews`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your Acess Token

