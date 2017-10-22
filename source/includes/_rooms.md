# Rooms
Access to all Rooms related things - List of Scopes to be used in Authorization <br>
Rooms.read

The Rooms Api gives details about the rooms in a hotel, It could get rooms by Id, and also show the name of the rooms as well as the Id of the property as well as other information pertaining to rooms. The scope available to the normal user is read.

## Get Rooms for a Particular Hotel Based on Hotel id
> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/rooms/property/{hotel_id}?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
?>
```
 > Example Response:

  ```json
  [
  {
    "0": {
      "room_id": 2109,
      "name": "Standard Room (Single)",
      "property_id": 43864,
      "description": null,
      "number_of_guests": null,
      "minimum_stay_nights": null,
      "payment_type": "all",
      "number_of_rooms": null
    },
    "1": {
      "room_id": 2110,
      "name": "Classic Single Room",
      "property_id": 43864,
      "description": null,
      "number_of_guests": null,
      "minimum_stay_nights": null,
      "payment_type": "all",
      "number_of_rooms": null
    },
    "status": "success",
    "data": null
  },
  {
    "0": {
      "room_id": 2109,
      "name": "Standard Room (Single)",
      "property_id": 43864,
      "description": null,
      "number_of_guests": null,
      "minimum_stay_nights": null,
      "payment_type": "all",
      "number_of_rooms": null
    },
    "1": {
      "room_id": 2110,
      "name": "Classic Single Room",
      "property_id": 43864,
      "description": null,
      "number_of_guests": null,
      "minimum_stay_nights": null,
      "payment_type": "all",
      "number_of_rooms": null
    },
    "status": "success",
    "data": null
  }
]
```
### HTTP Request

`GET https://api.hotels.ng/rooms/property/hotel_id?access_token=`

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