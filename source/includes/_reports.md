# Reports
Access to All Reports Related Things - List of Scopes to be used in Authorization<br>
Facilities.read,<br>
Reports.create,<br>
Reports.delete,<br> 
Reports.update

The Reports API allows you to view the log concerning bookings that have been reviewed, count the number of
bookings, get multiple bookings by Id with the total count as well as the range of days
in a month in which bookings can be made. The API also allows you to create, read, delete and update
reports.
## Get Bookings that have Been Reviewed

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/reports/bookings/reviewed?access_token=");
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
This endpoint return bookings that have been reviewed.
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
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/reports/bookings/count?access_token=");
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
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/reports/bookings?access_token=");
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
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  },
]
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
total|integer|total number of counted bookings


## Get the Range of Days in a Month<br>in which Bookings Can be Made

>Example response:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/reports/bookings/utms/gclid?access_token=");
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

