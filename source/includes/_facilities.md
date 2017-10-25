# Facilities
Access to All reviews Related Things - List of Scopes to be used in Authorization<br>
Facilities.read

The facilities API shows the facilities a hotel has, like a restaurant, as well as images of the faciility. Only the admin can access other features of this API. The scopes available to the normal user is read.
## Show facilities for a hotel


> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}/facilities?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);Response
```

> Example response:

```json

  {

    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }

  }


```

This endpoint shows the facilities available for a specific hotel.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id/facilities?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token



###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
object_id | integer | Id of the object supplied
facility_type_id| integer| Id of the facility
  object_type| string |type of object supplied
 facility_name| string | name of facility supplied
img_url | string | link to the image of facility

