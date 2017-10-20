# Images
Acess to all Reports Related Things - List of Scopes to be used in Authorization<br>
Images.read


##Show images for a particular hotel

This endpoint fetches images for a specific hotel.<br>
Image URL is in this formathttps://api.hotels.ng/img/size/name_of_image.jpg.<br>
The following sizes of images are returned:<br>
size =<br>
1. small - A small sized image is returned.<br>
2. the medium - A medium sized image is returned.<br>
3. big - A big sized image is returned.

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}/images?access_token=");
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
    "data": {
      "id": "9191,",
      "application_id": "1,",
      "object_id": "25449,",
      "title": "null,",
      "description": "null,",
      "url": "https:\\/\\/media.api.hng.tech\\/img\\/big\\/lekki-oxford-hotels-ltd-lagos-8297.jpg,",
      "room_id": "null,",
      "facility_id": "null,",
      "priority": "0,",
      "created_at": "2017-03-07 13:56:12,",
      "updated_at": {}
    },
    "status": "success"
  },
  {
    "data": {
      "id": "9191,",
      "application_id": "1,",
      "object_id": "25449,",
      "title": "null,",
      "description": "null,",
      "url": "https:\\/\\/media.api.hng.tech\\/img\\/big\\/lekki-oxford-hotels-ltd-lagos-8297.jpg,",
      "room_id": "null,",
      "facility_id": "null,",
      "priority": "0,",
      "created_at": "2017-03-07 13:56:12,",
      "updated_at": {}
    },
    "status": "success"
  },
  {
    "data": {
      "id": "9191,",
      "application_id": "1,",
      "object_id": "25449,",
      "title": "null,",
      "description": "null,",
      "url": "https:\\/\\/media.api.hng.tech\\/img\\/big\\/lekki-oxford-hotels-ltd-lagos-8297.jpg,",
      "room_id": "null,",
      "facility_id": "null,",
      "priority": "0,",
      "created_at": "2017-03-07 13:56:12,",
      "updated_at": {}
    },
    "status": "success"
  },
  {
    "data": {
      "id": "9191,",
      "application_id": "1,",
      "object_id": "25449,",
      "title": "null,",
      "description": "null,",
      "url": "https:\\/\\/media.api.hng.tech\\/img\\/big\\/lekki-oxford-hotels-ltd-lagos-8297.jpg,",
      "room_id": "null,",
      "facility_id": "null,",
      "priority": "0,",
      "created_at": "2017-03-07 13:56:12,",
      "updated_at": {}
    },
    "status": "success"
  },
  {
    "data": {
      "id": "9191,",
      "application_id": "1,",
      "object_id": "25449,",
      "title": "null,",
      "description": "null,",
      "url": "https:\\/\\/media.api.hng.tech\\/img\\/big\\/lekki-oxford-hotels-ltd-lagos-8297.jpg,",
      "room_id": "null,",
      "facility_id": "null,",
      "priority": "0,",
      "created_at": "2017-03-07 13:56:12,",
      "updated_at": {}
    },
    "status": "success"
  }
]
```

### HTTP Request
`GET https://api.hotels.ng/hotels/hotel_id/images?access_token=`


### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your Acess Token

