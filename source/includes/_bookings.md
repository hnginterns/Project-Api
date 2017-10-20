# Bookings
This endpoint Fetches all Bookings,bookings by email.
## Get Booking Details of a Specific Booking

>Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
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
This endpoint shows the booking details of a specific booking.
### HTTP Request

  ` GET https://api.hotels.ng/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials

## Get Total Bookings Made

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
    "data": {
      "id": 251238,
      "booking_id": 1156874,
      "agent": 95379,
      "desk_person": null,
      "booking_status_id": 2,
      "review_status_id": 0,
      "followup_status_id": 0,
      "paystack_status": null,
      "handler": 94649,
      "review_handler": null,
      "followup_handler": null,
      "handle_starttime": {}
    }
  },
  {
    "status": "success",
    "data": {
      "id": 251238,
      "booking_id": 1156874,
      "agent": 95379,
      "desk_person": null,
      "booking_status_id": 2,
      "review_status_id": 0,
      "followup_status_id": 0,
      "paystack_status": null,
      "handler": 94649,
      "review_handler": null,
      "followup_handler": null,
      "handle_starttime": {}
    }
  },
  {
    "status": "success",
    "data": {
      "id": 251238,
      "booking_id": 1156874,
      "agent": 95379,
      "desk_person": null,
      "booking_status_id": 2,
      "review_status_id": 0,
      "followup_status_id": 0,
      "paystack_status": null,
      "handler": 94649,
      "review_handler": null,
      "followup_handler": null,
      "handle_starttime": {}
    }
  },
  {
    "status": "success",
    "data": {
      "id": 251238,
      "booking_id": 1156874,
      "agent": 95379,
      "desk_person": null,
      "booking_status_id": 2,
      "review_status_id": 0,
      "followup_status_id": 0,
      "paystack_status": null,
      "handler": 94649,
      "review_handler": null,
      "followup_handler": null,
      "handle_starttime": {}
    }
  },
  {
    "status": "success",
    "data": {
      "id": 251238,
      "booking_id": 1156874,
      "agent": 95379,
      "desk_person": null,
      "booking_status_id": 2,
      "review_status_id": 0,
      "followup_status_id": 0,
      "paystack_status": null,
      "handler": 94649,
      "review_handler": null,
      "followup_handler": null,
      "handle_starttime": {}
    }
  }
]
```

