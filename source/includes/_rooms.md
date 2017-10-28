# Rooms
Access to all Rooms related things - List of Scopes to be used in Authorization: <br>
Rooms.read,</br>
Rooms.delete, </br>
Rooms.update</br>

The Rooms Api gives details about the rooms in a hotel, It could get rooms by Id, and also show the name of the rooms as well as the Id of the property as well as other information pertaining to rooms. The scopes available to the Admin are read, delete, update and create.
## Get Rooms for a Particular Hotel Based on Hotel id
> Example request:

```php
<?php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/internal/rooms/property/184766');
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

`GET https://api.hotels.ng/internal/rooms/property/hotel_id?access_token=`

### Url Parameters
Parameter | Type | Description
--------- | ------- | -----------
Room_id | Number | Local id assigned to that hotel 
access_token | String | Generated access token from Oauth2 developer credentials


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
room_id | integer | Id of the room
name| string| Name of the room
  property_id| integer |Id of the property
 payment_type| string | type of payment given