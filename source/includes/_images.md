# Images
The Images endpoint returns images of a particular hotel. Images could be small, medium or big depending on the preference of the user. <br>

The scopes used for Authentication - `images.read`







## Show images of a particular hotel

This endpoint fetches images of a specific hotel.<br>
The image URL is in this format `https://api.hotels.ng/img/{size}/name_of_image.jpg.`<br>
The following sizes of images are returned:<br>
size:<br>
1. small - A small sized image is returned.<br>
2. medium - A medium sized image is returned.<br>
3. big - A big sized image is returned.

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/134/images');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXXXXXXX'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}

```
 > Example response:

```json
    
{  
  "data":[  
    {  
      "id":9191,
      "object_id":25449,
      "title":"room",
      "url":"https:\/\/media.api.hng.tech\/img\/big\/mich-hotel-ltd-lagos-899.jpg",
      "room_id":4566,
      "facility_id":null,
    },
    {  
      "id":9192,
      "object_id":25449,
      "title":"gym",
      "url":"https:\/\/media.api.hng.tech\/img\/big\/mich-hotel-ltd-lagos-899.jpg",
      "room_id":null,
      "facility_id":null,
    }
  ],
  "status":"success"
}

```

### HTTP Request
`GET https://api.hotels.ng/hotels/{hotel_id}/images?access_token=`


### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your Access Token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | the image identification number.
object_id | integer | Id of the hotel.
title |  string | the title given to the image
facility_id| string | The id of the facility, if the image is a facility
room_id| string | The id of the room, if the image is a room
img_url | string | link to the image of the specific hotel