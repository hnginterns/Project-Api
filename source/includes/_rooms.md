# Rooms
Access to all Rooms related things<br>
The scope to be used- <em>rooms.read</em></br>

The Rooms Api gives details about the rooms in a hotel. It returns the room's id, name of room, property id and all relevant information pertaining to the rooms.

Scope -  <em>rooms.read</em>

## Get Rooms in a Particular Hotel Based on the Hotel's id
> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/rooms/property/184766');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXXXxxxxxxx'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
 > Example Response:

  ```json
  
{ 
  "data":[  
    {  
      "room_id":2109,
      "name":"Standard Room (Single)",
      "property_id":"43864",
      "description":"",
      "number_of_guests":null,
      "minimum_stay_nights":null,
      "payment_type":"all",
      "number_of_rooms":null
    },
    {  
      "room_id":2110,
      "name":"Classic Single Room",
      "property_id":"43864",
      "description":"",
      "number_of_guests":null,
      "minimum_stay_nights":null,
      "payment_type":"all",
      "number_of_rooms":null
    },
    {  
      "room_id":2111,
      "name":"Deluxe Room",
      "property_id":"43864",
      "description":"",
      "number_of_guests":null,
      "minimum_stay_nights":null,
      "payment_type":"all",
      "number_of_rooms":null
    }
  ],
  "status":"success"
}



```
### HTTP Request

`GET https://api.hotels.ng/rooms/property/hotel_id?access_token=`

### Url Parameters
Parameter | Type | Description
--------- | ------- | -----------
Hotel_id | Number | Local id assigned to that hotel 
access_token | String | Generated access token from Oauth2 developer credentials


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
room_id | integer | Id of the room
name| string| Name of the room
property_id| integer |Id of the property
description| string | Description of the room type
payment_type| string | type of payment given