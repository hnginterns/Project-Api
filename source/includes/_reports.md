# Reports
Access to all reports related things - List of Scopes to be used in Authorization:<br>
Facilities.read,<br>
Reports.create,<br>
Reports.delete,<br> 
Reports.update

The Reports API allows you to view the log concerning bookings that have been reviewed, count the number of
bookings, get multiple bookings by Id with the total count as well as the range of days
in a month in which bookings can be made. The API also allows you to create, read, delete and update
reports.
## Get Bookings that have Been Reviewed for a particular

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/reports/bookings/reviewed');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxxxxxxxxxxxxxx',
  '__' => ''1'',
  'exclude_review' => ''4,5,6'',
  'exclude_status' => ''3,4,12,7,18,13,15,16,5,6,19,17'',
  'per_page' => ''1'',
  'checkout_until' => ''2017-09-30'',
  'checkout_since' => ''2017-09-01''
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
[
  {
    "status": "success",
    "data": {
      "ret_type": "compound",
      "total": 0,
      "total_outstanding": 0,
      "total_completed": 0,
      "bookings": [],
      "checkout_from": null,
      "checkout_to": null,
      "checkin_from\"": null,
      "checkin_to": null
    }
  },
]
```
This endpoint return bookings that have been reviewed for a period
### HTTP Request

`GET https://api.hotels.ng/internal/reports/bookings/reviewed?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
ret_type|string|    |
total|integer|total number of reports
total_outstanding|integer|total number of outstanding bookings
total_completed|integer|total number of completed bookings


## Count the Number of Bookings

>Example request:

```php
<?php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/reports/bookings/count');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'ZOkZmWlvrvMPw3WO0oF6b1KkRuu9KCdwuPglRkEq',
  '__a' => '1',
  'handler' => '70307'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
```
>Example response:

```json
[
  {
    "status": "succes",
    "data": {
      "bookings_count": 0
    }
  }
]
```
This endpoint counts number of bookings.
### HTTP Request

`GET https://api.hotels.ng/internal/reports/bookings/count?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
bookings_count|integer|number of counted bookings



## Get Bookings by Id and the Total Counts

>Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/reports/bookings');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxx',
  '__' => '1',
  'no_cache' => '1',
  'handler' => '0',
  'after_time' => '2017-10-03 10:23:41'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
```
>Example response:

```json
{
    "data": {
        "bookings": [
            {
                "id": 1162104,
                "country": "0",
                "guest": {
                    "id": "1162104",
                    "fname": "Abdulrahman",
                    "lname": "Abdulkarim",
                    "gender": null,
                    "title": "Mr",
                    "phone": "0703613",
                    "email": "jik@cg.com",
                    "address": null,
                    "marital_status": null,
                    "guest_type": null,
                    "corporate_id": null,
                    "created_at": "2017-10-26 20:57:28",
                    "updated_at": "2017-10-26 20:57:28",
                    "guest_meta": []
                },
                "property": null,
                "ptype": "hotel",
                "checkin": "2017-10-27 00:00:00",
                "checkout": "2017-10-28 00:00:00",
                "payment_status": null,
                "status": "NEW",
                "price": "0",
                "currency_price": "0.00",
                "application_id": "wLV9nF9J8uo0SuaYXl7wCc9RV",
                "created_at": "2017-10-26 20:57:28",
                "updated_at": "2017-10-26 20:57:31",
                "currency_code": "NGN",
                "paystack_status": null,
                "handler": "0",
                "booking_status_id": "0",
                "followup_status_id": "0",
                "review_status_id": "0",
                "handle_created_at": "2017-10-26 20:57:32",
                "desk_person": null,
                "address": null,
                "city": null,
                "state": null,
                "country_name": "",
                "continent": "",
                "property_name": null,
                "deal_status": null,
                "deal_percentage": null,
                "property_labels": null,
                "property_url": null,
                "property_contacts": [],
                "matched_pattern": [],
                "extra_info": {
                    "provider": "hotelsng",
                    "payment_type": "atm"
                },
                "rooms": [
                    {
                        "id": 442277,
                        "booking_id": "1162104",
                        "room_id": "22293",
                        "rate_id": "0",
                        "b_rate": "0",
                        "s_rate": "0",
                        "currency": "null",
                        "currency_s_rate": "0.00",
                        "nights": "1",
                        "created_at": null,
                        "updated_at": null,
                        "roomtype": {
                            "id": 22293,
                            "name": "Economy Room",
                            "property_id": "13639",
                            "description": "",
                            "number_of_guests": null,
                            "number_of_rooms": null,
                            "minimum_stay_nights": null,
                            "payment_type": "all",
                            "created_at": null,
                            "updated_at": null,
                            "deleted_at": null,
                            "room_id": "22293"
                        }
                    }
                ],
                "utm_info": null,
                "messages": [],
                "affiliate_request": null,
                "booking_status": {
                    "id": "0",
                    "value": "Not handled yet"
                },
                "review_status": {
                    "id": "0",
                    "value": "Not called"
                },
                "followup_status": {
                    "id": "0",
                    "value": "Unknown"
                },
                "comments": [
                    {
                        "added_on": "2017-10-23 13:29:54",
                        "booking_id": "1162104",
                        "comment": "contact not reachable. client informed",
                        "id": 893334,
                        "user_id": "94652"
                    }
                ],
                "property_comments": {
                    "25449": [],
                    "": []
                }
            },
```
This endpoint fetches bookings by ID and the total count.
### HTTP Request
`GET https://api.hotels.ng/internal/reports/bookings?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
Bookings|Array|Array list of all bookings and their specific details
ID | Integer | Unique ID of each booking
Country | Integer | A number that maps to a country's name
Guest | Array | An array of guest personal details
Ptype | String | Type of property
Checkin | String | Date and time of checkin
Checkout | String | Date and time of checkout
Created_at | String | Date and time of order creation
Updated_at | String | Date and time order was updated
Currency code | String | Currancy used for making payment
Rooms | Array | All the details about a room for each booking
Comments | Array | Client comments and comments about property


## Get the Range of Days in a Month<br>in which Bookings Can be Made

>Example response:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/reports/bookings/utms/gclid');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'ZOkZmWlvrvMPw3WO0oF6b1KkRuu9KCdwuPglRkEq',
  'range' => 'April 1, 2017 - April 30, 2017',
  'base_url' => 'http://marketing.hng.tech/medium/gclid?range=April 1, 2017 - April 30, 2017',
  'start' => 'April 1, 2017',
  'end' => 'April 30, 2017'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
```
>Example response:

```json
[
  {
    "status": "success",
    "data": {
      "range": {
      "start": "2017-10-01 00:00:00",
      "end": "2017-10-31 23:59:59"
        },
        "results": [],
        "overview": {
        "pagination": "",
        "page": null,
        "value": null,
         "number": "0",
         "ideal_commissions_value": null
        }
    },
 
  }
]
```
This endpoint returns the range of days in a calendar month in which bookings can be made.
### HTTP Request
`GEThttps://api.hotels.ng/internal/reports/bookings/utms/gclid?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
start|string date|date from when bookings can be made
end|string date|date at when bookings end
number|integer|number of bookings returned during the date range

