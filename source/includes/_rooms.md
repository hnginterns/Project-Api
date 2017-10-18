# Rooms
Access to all Rooms related things - List of Scopes to be used in Authorization 
Rooms.read,
Rooms.create,
Rooms.delete, 
Rooms.update
```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/rooms/property/{hotel_id}?access_token=");
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
   >The response will look like this:
  ```
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
`GET http://staging.api.hng.tech/rooms/property/hotel_id?access_token=
### QUERY Parameters
arameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | Local id assigned to that hotel 
access_token | String | Generated access token from Oauth2 developer credentials