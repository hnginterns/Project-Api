# Images
The Images endpoint returns images for a particular hotel. Images could be small, medium or big depending on the preference of the user. <br>

The scopes used for Authentication - <em>images.read</em>







##Show images for a particular hotel

This endpoint fetches images of a specific hotel.<br>
The image URL is in this format https://api.hotels.ng/img/{size}/name_of_image.jpg.<br>
The following sizes of images are returned:<br>
size =<br>
1. small - A small sized image is returned.<br>
2. the medium - A medium sized image is returned.<br>
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
      "application_id":"1",
      "object_id":25449,
      "title":null,
      "description":null,
      "url":"https:\/\/media.api.hng.tech\/img\/big\/mich-hotel-ltd-lagos-899.jpg",
      "room_id":null,
      "facility_id":null,
      "priority":"0",
      "created_at":"2017-03-07 13:56:12",
      "updated_at":"2017-03-07 13:56:12"
    },
    {  
      "id":9192,
      "application_id":"1",
      "object_id":25449,
      "title":null,
      "description":null,
      "url":"https:\/\/media.api.hng.tech\/img\/big\/mich-hotel-ltd-lagos-899.jpg",
      "room_id":null,
      "facility_id":null,
      "priority":"1",
      "created_at":"2017-03-07 13:56:12",
      "updated_at":"2017-03-07 13:56:12"
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
        id| integer | Customer user-supplied webhook identifier.
application_id| integer | Id of the applied hotel
object_id | integer | Id of the object supplied
facility_type_id| integer| Id of the facility
  object_type| string |type of object supplied
 facility_name| string | The name of the facility, if the image is a facilty.
img_url | string | link to the image of the specific hotel