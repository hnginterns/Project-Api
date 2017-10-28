# Rates
Access to all Rates Flag - List of Scopes that can be used in Authorization:<br>
rates.read<br>
rates.create<br>
rates.delete<br>
rates.update<br>

The Ratings API returns the rates of at which rooms go for, rate flags, rate Ids, multiple flag rates and it also gives the admin priviledges like adding a custom rate, and getting corporate rates. This API has read,create,delete and update scopes.


##Get details about a single rate<br>by Id

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/rates/25449/detail');
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
[
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
]

```
This Endpoint returns the details about a single rate by ID 
### HTTP Request

`GET https://api.hotels.ng/internal/rates/rate_id/detail?access_token= `

###Query Parameters


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
$request->setUrl('http://api.hotels.ng/internal/rates/flags/all');
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
[
  {
    "status": "success",
    "message": "Available Flags",
    "data": {
      "flag_name": "BreakFast Inclusive",
      "id": 1
    }
  }
]

```

This Endpoint returns all the available Flags

### HTTP Request

`GET https://api.hotels.ng/internal/rates/flags/all?access_token= `

### Query Parameters

Parameter | type | Description
--------- | ------- | -----------
access_token | string | your access token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
  flag_name| string | Name of the flag rate
         id| integer| Id of the flag


##Get flags by rate Id

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('api.hotels.ng/internal/rates/flags/29981');
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

[
  {
    "status": "success",
    "message": "All flags with rate 29981",
    "data": {
      "flag_name": "BreakFast Inclusive",
      "id": 1
    }
  },
]

```
This Endpoint returns all the Flags by rate id
### HTTP Request

`GET https://api.hotels.ng/internal/rates/flag/id?access_token= `

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | string | Generated access token from Oauth2 developer credentials
id | Number| id to return all flag ratings

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
  flag_name| string | Name of the flag rate
  id       | integer | Id of the flag


##Add rates.


>Example request:

```php
<?php

$client = new http\Client;
$request = new http\Client\Request;

$body = new http\Message\Body;
$body->addForm(array(
  'property_id' => '98894',
  'room_id' => '4702',
  'rate_tag_id' => '1',
  'rack_price' => '9000',
  'buying_price' => '5100',
  'buying_price_usd' => '''',
  'selling_price' => '6000',
  'selling_price_usd' => '''',
  'priority' => '2',
  'start_date' => '2017-10-26',
  'end_date' => '2027-10-26',
  'active_start' => '2017-10-26',
  'active_end' => '2027-10-26',
  'active_mon' => '0',
  'active_tue' => '0',
  'active_wed' => '0',
  'active_thu' => '0',
  'active_fri' => '0',
  'active_sat' => '1',
  'active_sun' => '1',
  'user_id' => '24856',
  'access_token' => 'XXX-Your Access token-XXX'
), NULL);

$request->setRequestUrl('http://api.hotels.ng/internal/rates/add');
$request->setRequestMethod('POST');
$request->setBody($body);

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();
```

 >Example response:

```json
{
    "status": "success",
    "message": "Rate added",
    "data": {
        "id": 54215,
        "property_id": "98894",
        "room_id": "4702",
        "rate_name": null,
        "rate_tag_id": "1",
        "rack_price": "9000.00",
        "buying_price": "5100.00",
        "buying_price_usd": "0.00",
        "selling_price": "6000.00",
        "selling_price_usd": "0.00",
        "priority": "2",
        "start_date": "2017-10-26 00:00:00",
        "end_date": "2027-10-26 00:00:00",
        "active_start": "2017-10-26 00:00:00",
        "active_end": "2027-10-26 00:00:00",
        "active_mon": "0",
        "active_tue": "0",
        "active_wed": "0",
        "active_thu": "0",
        "active_fri": "0",
        "active_sat": "1",
        "active_sun": "1",
        "rate_tag": {
            "id": 1,
            "tag": "general"
        }
    }
}
```

This endpoint adds a rate.

### HTTP Request

 `POST https://api.hotels.ng/internal/rates/add?`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
room_id| integer| Id of a particular room
  rate_tag_id| integer | Id of the tag rate
 rack_price| integer | Price of the rack
buying_price | integer | Buying price
start_date|string date|date at when the rates start
end_date|string|date at when the rates end
buying_price_usd | integer | Buying price in us dollars
Selling_price | integer | Selling price
Selling_price_usd | integer | Selling price in us dollars
priority| integer|priority of the rate flag


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
room_id| integer| Id of a particular room
  rate_tag_id| integer | Id of the tag rate
 rack_price| integer | Price of the rack
buying_price | integer | Buying price
Selling_price | integer | Selling price
priority| integer|priority of the rate flag


##Fetch multiple flag rates by Id

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
This Endpoint returns multiple rate flags by their id

### HTTP Request

`GET https://api.hotels.ng/internal/rates/flags/multiple/fetch?rate_ids=&access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
rate_ids | String| ID of rates.Multiple ids can be use , using the delimiter ','


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
room_id| integer| Id of a particular room
  rate_tag_id| integer | Id of the tag rate
 rack_price| integer | Price of the rack
buying_price | integer | Buying price
Selling_price | integer | Selling price
priority| integer|priority of the rate flag


##Get corporate rates

> Example request:

```php
<?php

$client = new http\Client;
$request = new http\Client\Request;

$request->setRequestUrl('http://api.hotels.ng/internal/rates2/properties/1012309/valid');
$request->setRequestMethod('GET');
$request->setQuery(new http\QueryString(array(
  'access_token' => 'RV8kXZ0ctGvcr6nRYlg2loK2ZVGHtqhoxM4ZTLSo',
  'tags[0]' => 'General',
  'tags[1]' => 'corporate',
  'tags[2]' => 'solinagroupng'
)));


$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();
```
> Example response:

```json
{
    "status": "success",
    "message": "Property 1012309 valid room rates",
    "data": {
        "30963": {
            "General": {
                "32405": {
                    "id": "32405",
                    "property_id": "1012309",
                    "room_id": "30963",
                    "rate_name": null,
                    "rate_tag_id": "1",
                    "rack_price": "13800.00",
                    "buying_price": "13800.00",
                    "buying_price_usd": null,
                    "selling_price": "13800.00",
                    "selling_price_usd": null,
                    "priority": "1",
                    "start_date": "2016-11-21 00:00:00",
                    "end_date": "2019-11-21 00:00:00",
                    "active_start": "2016-11-21 00:00:00",
                    "active_end": "2019-11-21 00:00:00",
                    "active_mon": "1",
                    "active_tue": "1",
                    "active_wed": "1",
                    "active_thu": "1",
                    "active_fri": "1",
                    "active_sat": "1",
                    "active_sun": "1",
                    "deleted_at": null,
                    "created_at": "2016-11-21 09:30:05",
                    "updated_at": "2017-03-10 11:23:08",
                    "tag": "general"
                }
            },
            "corporate": [],
            "solinagroupng": []
        },
        "30964": {
            "General": [],
            "corporate": [],
            "solinagroupng": []
        },
        "30965": {
            "General": {
                "46720": {
                    "id": "46720",
                    "property_id": "1012309",
                    "room_id": "30965",
                    "rate_name": null,
                    "rate_tag_id": "1",
                    "rack_price": "31500.00",
                    "buying_price": "24840.00",
                    "buying_price_usd": null,
                    "selling_price": "27600.00",
                    "selling_price_usd": null,
                    "priority": "1",
                    "start_date": "2017-06-21 00:00:00",
                    "end_date": "2027-06-21 00:00:00",
                    "active_start": "2017-06-21 00:00:00",
                    "active_end": "2027-06-21 00:00:00",
                    "active_mon": "1",
                    "active_tue": "1",
                    "active_wed": "1",
                    "active_thu": "1",
                    "active_fri": "1",
                    "active_sat": "1",
                    "active_sun": "1",
                    "deleted_at": null,
                    "created_at": "2017-06-21 13:25:22",
                    "updated_at": "2017-06-21 13:25:22",
                    "tag": "general"
                }
            },
        "30968": {
            "General": {
                "46721": {
                    "id": "46721",
                    "property_id": "1012309",
                    "room_id": "30968",
                    "rate_name": null,
                    "rate_tag_id": "1",
                    "rack_price": "35650.00",
                    "buying_price": "32085.00",
                    "buying_price_usd": null,
                    "selling_price": "35650.00",
                    "selling_price_usd": null,
                    "priority": "1",
                    "start_date": "2017-06-21 00:00:00",
                    "end_date": "2027-06-21 00:00:00",
                    "active_start": "2017-06-21 00:00:00",
                    "active_end": "2027-06-21 00:00:00",
                    "active_mon": "1",
                    "active_tue": "1",
                    "active_wed": "1",
                    "active_thu": "1",
                    "active_fri": "1",
                    "active_sat": "1",
                    "active_sun": "1",
                    "deleted_at": null,
                    "created_at": "2017-06-21 13:29:25",
                    "updated_at": "2017-06-21 13:29:25",
                    "tag": "general"
                }
            },
            "corporate": [],
            "solinagroupng": []
        },
        "31575": {
            "General": [],
            "corporate": [],
            "solinagroupng": []
        },
        "50436": {
            "General": {
                "46719": {
                    "id": "46719",
                    "property_id": "1012309",
                    "room_id": "50436",
                    "rate_name": null,
                    "rate_tag_id": "1",
                    "rack_price": "16100.00",
                    "buying_price": "14490.00",
                    "buying_price_usd": null,
                    "selling_price": "16100.00",
                    "selling_price_usd": null,
                    "priority": "1",
                    "start_date": "2017-06-21 00:00:00",
                    "end_date": "2027-06-21 00:00:00",
                    "active_start": "2017-06-21 00:00:00",
                    "active_end": "2027-06-21 00:00:00",
                    "active_mon": "1",
                    "active_tue": "1",
                    "active_wed": "1",
                    "active_thu": "1",
                    "active_fri": "1",
                    "active_sat": "1",
                    "active_sun": "1",
                    "deleted_at": null,
                    "created_at": "2017-06-21 13:17:05",
                    "updated_at": "2017-06-21 13:17:05",
                    "tag": "general"
                }
            },
            "corporate": [],
            "solinagroupng": []
        }
    }
}

```
This Endpoint returns company's rates

### HTTP Request

`GET http://api.hotels.ng/internal/rates2/properties/1012309/valid `

### Query Parameters

Parameter | type | Description
--------- | ------- | -----------
access_token|String | Generated access token from Oauth2 developer credentials
tags|array|array of corporate related details

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
room_id| integer| Id of a particular room
  rate_tag_id| integer | Id of the tag rate
 rack_price| integer | Price of the rack
buying_price | integer | Buying price
Selling_price | integer | Selling price
priority| integer|priority of the rate flag
























