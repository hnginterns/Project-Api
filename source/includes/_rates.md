# Rates
Access to all Rates Flag <br>
The scope used for authentication: <em>rates.read</em><br>
The Rate API returns the rates at which rooms go for. Also, rate flags, rate Ids, multiple flag rates. <br>
The admin some certain priviledges.



##Get details about a single rate<br>by Id

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/rates/25449/detail');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxx'
));
try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
>Example response:

```json

{
  "status": "success",
  "message": "Rate",
  "data": {
    "id": 1,
    "property_id": 98319,
    "room_id": 10,
    "rate_tag_id": 1,
    "rack_price": 55000,
    "buying_price": 49500,
    "selling_price": 55000,
    "priority": 1,
    }
}

```


This Endpoint returns the details about a single rate by ID 
### HTTP Request

`https://api.hotels.ng/rates/rate_id/detail?access_token= `

### Query Parameters


Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials.
rate_id | Integer | Unique identifier for a rate.

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
room_id| Integer| Id of a particular room
  rate_tag_id| Integer | ID of the tag rate
 rack_price| Integer | Price of the rack
buying_price | Integer | Buying price
Selling_price | Integer | Selling price


##Get all available flags

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/rates/flags/all');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxx'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
> Example response:

```json

{
    "status": "success",
    "message": "Available Flags",
    "data": [
        [
            {
                "flag_name": "Vat inclusive",
                "id": 1
            },
            {
                "flag_name": "lunch inclusive",
                "id": 2
            },
           ]        
        ]
}
```

This Endpoint returns all the available Flags

### HTTP Request

`https://api.hotels.ng/rates/flags/all?access_token= `

### Query Parameters

Parameter | type | Description
--------- | ------- | -----------
access_token | String | Your Access Token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
  flag_name| String | Specific attributes/features of a hotel that a fixed rate is assigned.



##Get flags by rate ID

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('api.hotels.ng/rates/flags/29981');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxx'
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
> Example response:

```json


{
  "status": "success",
  "message": "All flags with rate 29981",
  "data": {
    "flag_name": "Lunch Inclusive",
    "id": 2
  }
},


```
This Endpoint returns all the Flags by rate id
### HTTP Request

`https://api.hotels.ng/rates/flag/id?access_token= `

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
id | Interger | Id to return all flag ratings

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
flag_name| String | Name of the flag rate
id| Integer| Id of the flag


##Fetch multiple flag rates by ID

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/rates/flags/multiple/fetch/');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxxxxx',
  'rate_ids' => '53146,53141,53140'
));
try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
?>
```
> Example response:



```json

{
    "status": "success",
    "message": "Rates with Flag Ids",
    "data": {
        "53140": [
            "1",
            "3"
        ],
        "53141": [
            "2",
            "5",
            "7"
        ],
        "53146": [
            "2"
        ]
    }
}

```
This Endpoint returns multiple rate flags by their ID.

### HTTP Request

`https://api.hotels.ng/rates/flags/multiple/fetch?rate_ids=&access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
rate_ids | String| ID of rates.Multiple ids can be use , using the delimiter ','

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
id| Integer | Customer user-supplied webhook identifier.
property_id | Integer | Id of the Property supplied
room_id| Integer| Id of a particular room
  rate_tag_id| Integer | Id of the tag rate
 rack_price| Integer | Price of the rack
buying_price | Integer | Buying price
selling_price | Integer | Selling price
priority| Integer| Priority of the rate flag



