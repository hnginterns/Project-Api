# Bookings
Access to all bookings related things - List of Scopes to be used in Authorization<br> 
Bookings.read

## Get Bookings by email

>Example request:

```php
<?php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/bookings?email=&access_token=&booking_ids=");
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
 >Example response:

```json
[
  {
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  },
  {
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  },
  {
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  }
]

```

This endpoint Fetches all Bookings,bookings by email.

### HTTP Request

  `GET https://api.hotels.ng/internal/bookings?email=&access_token=&booking_ids=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials


## Get details of a specific booking

>Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/bookings/booking_id?access_token");
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
 >Example response:

```json
[
  {
    "status": "success",
    "data": null
  },
  {
    "status": "success",
    "data": null
  },
  {
    "status": "success",
    "data": null
  },
  {
    "status": "success",
    "data": null
  },
  {
    "status": "success",
    "data": null
  }
]
```
This endpoint Fetches booking details for a specific booking.

### HTTP Request

  
  `GET https://api.hotels.ng/internal/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials




