# Reports
## Get Bookings that have Been Reviewed

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/reports/bookings/reviewed?access_token=");
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
> The response will look like this:

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
  }
]
```
### HTTP Request

`GET http://staging.api.hng.tech/reports/bookings/reviewed?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

## Count the Number of Bookings

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/reports/bookings/count?access_token=");
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
    "status": "succes",
    "data": {
      "bookings_count": 0
    }
  }
]
```
### HTTP Request

`GET http://staging.api.hng.tech/reports/bookings/count?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

## Get Bookings by Id and the Total Counts

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/reports/bookings?access_token=");
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
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  },
  {
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  },
  {
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  },
  {
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  },
  {
    "status": "succes",
    "data": {
      "bookings": null,
      "total": 0
    }
  }
]
```
### HTTP Request
`GET http://staging.api.hng.tech/reports/bookings?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials

## Get the Range of Days in a Month in which Bookings Can be Made

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/reports/bookings/utms/gclid?access_token=");
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
    "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
    "token_type": "Bearer",
    "expires_in": 3600
  },
  {
    "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
    "token_type": "Bearer",
    "expires_in": 3600
  },
  {
    "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
    "token_type": "Bearer",
    "expires_in": 3600
  },
  {
    "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
    "token_type": "Bearer",
    "expires_in": 3600
  },
  {
    "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
    "token_type": "Bearer",
    "expires_in": 3600
  }
]
```
### HTTP Request
`GEThttp://staging.api.hng.tech/reports/bookings/utms/gclid?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
