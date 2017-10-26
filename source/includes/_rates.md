# Rates
Access to all Rates Flag <br>
List of Scopes that can be used in Authorization:<br>
rates.read


The Rate API returns the rates at which rooms go for, rate flags, rate Ids, multiple flag rates and it also gives the admin some certain priviledges. This API has only the read scope peculiar to the normal user.



##Get details about a single rate<br>by Id

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://staging.api.hng.tech/rates/25449/detail');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'igMDaCjMlYBMTiKWF55PPpVORl6WDhGepU8ARBZc'
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
  "status": "success",
  "message": "Rate",
  "data": {
    "id": 1,
    "property_id": 98319,
    "room_id": 10,
    "rate_name": null,
    "rate_tag_id": 1,
    "rack_price": 55000,
    "buying_price": 49500,
    "buying_price_usd\"": null,
    "selling_price": 55000,
    "selling_price_usd\"": null,
    "priority": 1,
    "start_date": {},
    "end_date": {},
    "active_start": {},
    "active_end": {},
    "active_mon": 1,
    "active_tue": 1,
    "active_wed": 1,
    "active_thu": 1,
    "active_fri": 1,
    "active_sat": 1,
    "active_sun": 1
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
room_id| Integer| ID of a particular room
  rate_tag_id| Integer | ID of the tag rate
 rack_price| Integer | Price of the rack
buying_price | Integer | Buying price
Selling_price | Integer | Selling price


##Get all available flags

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://staging.api.hng.tech/rates/flags/all');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'VSypekcmmnmgvCU6Wn1gCDXWfA0iTBes6oe2LCWI'
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

{
  "status": "success",
  "message": "Available Flags",
  "data": {
    "flag_name": "BreakFast Inclusive",
    "id": 1
  }
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
  flag_name| String | Name of the flag rate



##Get flags by rate Id

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('api.hotels.ng/rates/flags/29981');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'raQpeHeFlhwlr1EgSlPmvTsCjFcpQDKdVW8iP06j'
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


{
  "status": "success",
  "message": "All flags with rate 29981",
  "data": {
    "flag_name": "BreakFast Inclusive",
    "id": 1
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
ID | Number| ID to return all flag ratings

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
flag_name| String | Name of the flag rate
ID| Integer| ID of the flag


##Fetch multiple flag rates by ID

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://88.99.63.198:32619/rates/flags/multiple/fetch/');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'NxTIhWb1FBPtIeRVI6AYe9hTYddMJipmPMdvU5XQ',
  'rate_ids' => '53146,53141,53140'
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
rate_ids | String| More than one rate_ids

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
ID| Integer | Customer user-supplied webhook identifier.
property_id | Integer | ID of the Property supplied
room_id| integer| ID of a particular room
  rate_tag_id| Integer | ID of the tag rate
 rack_price| Integer | Price of the rack
buying_price | Integer | Buying price
Selling_price | Integer | Selling price
priority| Integer|priority of the rate flag



