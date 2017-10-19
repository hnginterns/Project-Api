# Bookings
## Get Booking Details of a Specific Booking

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/hotels/{hotel_id}?access_token=");
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
 > The response is structured like this

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
### HTTP Request

  `GET http://staging.api.hng.tech/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials

## Get Total Bookings Made

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/hng/bookings?access_token=");
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
 > The response will look like this:

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
### HTTP Request

  `GET http://staging.api.hng.tech/hng/bookings?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials


## Get List of Contacts for a Property.


```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/finance/property/contacts?access_token=");
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
 > The response will look like this:

```json
[
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  },
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  },
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  },
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  },
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  }
]
```
### HTTP Request

  `GET https://staging.api.hng.tech/finance/property/contacts?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

## Get List of Contacts for a Property by id

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/finance/property/{id}/contacts?access_token=");
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
 > The response is structured like this:

```json
[
  {
    "status": "success",
    "message": "Rate",
    "data": {
      "id": null,
      "name": null,
      "country_id": null,
      "state_id": null,
      "hotel_star": null,
      "city": null,
      "sub_area": null,
      "address": null,
      "longitude": null,
      "latitude": null,
      "description": null,
      "status": null,
      "website": null,
      "addhoteldate": null,
      "driving_instructions": null,
      "currency": null,
      "date_modified": null,
      "unique_url": null,
      "airport_code": null,
      "postal_code": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": null,
      "added_by_admin": null,
      "is_priority": null,
      "deleted_at": null,
      "payment_type": null,
      "boost": null,
      "country_name": null,
      "hotelagreement": {
        "id": null,
        "hotel_id": null,
        "deal_status": null,
        "deal_percentage": null,
        "deal_on": null,
        "deal_end": null
      },
      "contacts": [],
      "labels": [],
      "rooms": [],
      "bank": [],
      "state": {
        "id": null,
        "statename": null,
        "description": null,
        "country_id": null
      }
    }
  }
]
```
### HTTP Request

  `GET http://staging.api.hng.tech/finance/property/id/contacts?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
id | String | Id of the property owner
access_token | String | Generated access token from Oauth2 developer credentials