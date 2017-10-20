# Facilities
Access to All reviews Related Things - List of Scopes to be used in Authorization<br>
    Facilities.read
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
[
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

]
```

This endpoint shows the facilities available for a specific hotel.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id/facilities?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token


