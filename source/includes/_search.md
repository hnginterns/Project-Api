# Search

With this endpoint, you can search for hotels based on some specific criteria of your choice. These criteria can be based on the type of property, locations, name of a hotel and so forth.

Search for Hotels with parameters <br>
Scope to be used in Authentication - <em>query</em> <br>
For a List of parameter values, see below <br>
property_type : <br>
*	`Villa`, <br>
*	`Apartment`,<br>
*	`Guest House`,<br>
*	`Hotel`, <br>
*	`Luxury Hotel`, <br>



##Search for hotels
	
	This endpoint allows you to search for Hotels

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/search');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXXXXXXXXXXXXX',
  'search_type' => 'property',
  'query' => '{"property_name":"eni"}',
  'with_images' => '1',
  'with_rates' => '0',
  'filters' =>  '{"sort_by":"default","page":1,"per_page":10' 
));

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}
<?
```

> Example response:

```json
{
    "data": [
        {
            "rating": 6.733333,
            "area_id": 0,
            "city_id": 3,
            "city_master_id": 1680,
            "property_type_id": 1,
            "activities_id": "2,11,16",
            "min_rate_ngn": 6614,
            "property_ref_code": "19831",
            "agency_uuid": "xxxxx-c292-4263-b4de-xxxxxx",
            "likes": 10,
            "country_code": "NG",
            "property_type": "Hotel",
            "id": 18789,
            "property_name": "Motel Bbisima Limited",
            "city": "Bonin",
            "deal_status": 5,
            "weight": 31.240808,
            "area": "",
            "facility_type_icons": "swimming.png,restaurant.png,bar.png,electricity.png,wireless.png,laundry.png,cabletv.png,security.png,,Wardrobe,desk.png,plasma.png,star.png",
            "agency": "Hotelsng",
            "country_id": 154,
            "continent": "Africa",
            "state": "Edo",
            "latitude": 6.211462,
            "city_code": "Bonin",
            "property_url": "19831-motel-bbbisima-limited-dodo",
            "status": "active",
            "max_rate_ngn": 22680,
            "facility_type_ids": "100,101,103,108",
            "description": "<p>Offering exceptional service at an affordable rate, Motel Bbbisima Limited is...</p>",
            "is_disabled": 0,
            "max_rate": 22680,
            "is_active": 1,
            "road_id": 0,
            "agency_id": "1",
            "currency_code": "NGN",
            "facility_type_names": "Swimming Pool,Restaurant(s) ,Bar/Lounge,24 Electricity,Wi-fi Internet",
            "min_rate": 6614,
            "address": "1 hdybb street, Off mus Road",
            "review_count": 3,
            "state_code": "Edo",
            "bookings_count": 90,
            "star_rating": 0,
            "is_deleted": 0,
            "continent_id": 1,
            "country": "Nigeria",
            "longitude": 5.635554,
            "meal_plan_ids": "",
            "location_tags_ids": "",
            "state_id": 13,
            "is_bookable": 1,
            "road": "",
            "images": [],
            "available_rates": []
        },
        {...}
          ],
    "status": "",
    "message": "",
    "meta": {
        "status": {
            "Message": "Success",
            "code": 0
        },
        "timestamp": "Thu, 26 Oct 1990 13:51:13 GMT",
        "type": "application/json",
        "total_count": "577"
    }
}
    
```



### HTTP Request

`GET https://api.hotels.ng/search?access_token=&with_images=&with_rates=&filters={}&search_type=&property_type=&query={}`

### Query Parameters

Parameter | Type | Description | Required
--------- | ------- | ----------- |----------
access_token | String | Token generated with client_id and client_credentials | True
filters | json string | Sorting out the data needed, from the response, in specific manner(e.g <em> `"sort_by":"default","page":1,"per_page":10`. | True
with_images | Boolean | Should the response include property's image url | Optional
with_rates | Boolean | Should the response include property's rate | Optional
search_type | String | Type of Search request(e.g <em>`property`,`location`<em>) | True
query | json string | The hotel,city, state  country of search(e.g <em>`"property_name":"eni"`,</em>) | True


###Response Body
Attribute | Type | Description
--------- | ------- | -----------
 country | string| name of country
 continent|string|The continent the hotel is in
 longitude|integer|Longitude of the hotel
 latitude|integer|Latitude of the hotel
 location_type|string|Type of location
 state|string|state where the hotel is located
 city_code|string|city code of the hotel
 country_code|string|country code of the hotel
 number_properties|integer|number of counted properties
 location_id|integer|the id of the location when counted
 id|integer|customer web hook identifier
 discount|boolean|is there a discount?
 state_code|string|the identifying code of the state
 facility_type_names|string|names of the facility types available
 property_ref_code|integer|the ref code unique to the property
 provider|string|provider of the hotel finder services
 room_id|integer|Id unique to the room
 stay_date|string date|date at when the customer started staying
 rating|integer|rating of the hotel
 city|string|city the hotel is situated




##Search for properties nearby

	This fetches all the properties(hotels) near a particular hotel's location 

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/search/nearby');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXXxxxxxxxxxxxxx',
  'property_type' => 'hotel',
  'property_id' => '255789'
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
    "data": [
        {
            "rating": 6.4,
            "area_id": 0,
            "city_id": 274,
            "city_master_id": 1951,
            "property_type_id": 1,
            "activities_id": "",
            "min_rate_ngn": 10000,
            "property_ref_code": "18456",
            "agency_uuid": "xxxxxe-cx12-4263-b4de-d01xxxxxx",
            "likes": 34,
            "country_code": "NG",
            "property_type": "Hotel",
            "id": 18456,
            "property_name": "People city resort",
            "city": "Port Harcourt",
            "deal_status": 5,
            "weight": 32.346737,
            "area": "",
            "facility_type_icons": "parking.png,restaurant.png,cabletv.png,refridgerator.png,bar.png,electricity.png,parking_letter.png...",
            "agency": "hng",
            "country_id": 154,
            "continent": "Africa",
            "state": "Rivers",
            "latitude": 9.066667,
            "city_code": "Port Harcourt",
            "property_url": "18456-People city resort--rita",
            "status": "active",
            "max_rate_ngn": 100000,
            "facility_type_ids": "100,110,113,116,117,119,121,122,128,130,143",
            "description": "<p><span id=\"\" style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"{\" data-sheets-userformat=\"{\">people city resort is a top hotel located in <strong>39 Tommy Street by la la Road, GRA, Port Harcourt.</strong>...",
            "is_disabled": 0,
            "max_rate": 100000,
            "is_active": 1,
            "road_id": 0,
            "agency_id": "1",
            "currency_code": "NGN",
            "facility_type_names": "Adequate Parking,Restaurant(s) ,DSTV,Refrigerator,Bar,24 hours Electricity,Parking Garage,POS,Laundry,Security Guard,Event Hall,Restaurant(s) CCTV camera...",
            "min_rate": 10000,
            "address": "39 Tombia Street by La la Road, Port Harcourt",
            "review_count": 26,
            "state_code": "Rivers",
            "bookings_count": 366,
            "star_rating": 0,
            "is_deleted": 0,
            "continent_id": 1,
            "country": "Nigeria",
            "longitude": 7.483333,
            "meal_plan_ids": "",
            "location_tags_ids": "",
            "state_id": 33,
            "is_bookable": 1,
            "road": "",
            "images": [
              
                {
                    "id": 5181,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/people-rivers-19253.jpg",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "2",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                },
               
                {
                    "id": 5189,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/bay-people-hotel-rivers-25971.png",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "4",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                }
            ]
        }...  
    ]
    "status": "success"
}
```

###	HTTP Request
  
`GET https://api.hotels.ng/search/nearby?access_token=
&property_type=
&property_id=`

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token| String | Token generated with client_id and client_credentials | True
property-type| String |Type of property to(e.g<em>`hotel`</em>) request | True
property_id | String | Id associated to a property | True

### Response Body
Attribute | Type | Description
--------- | ------- | -----------
 Properties| String| Properties around the locale
 Message | String |Message about property
 Name | String | Name of owner


## Get hotel count in a location

	This endpoint retrieves detailed information about a city/state in a country.The information includes;the number of properties,brief description of the city, the city code and so forth.</br> 
    To fetch this information, you will be required to provide the location and your access token as query parameters in order to get a successful response. </br>
    The location can be a state/city in a country or region.
    

> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/search/location/count/bulk');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'property_type' => 'hotel',
  'location_type' => 'city',
  'locations' => '["uyo","calabar"]',
  'country' => 'nigeria',
  'access_token' => 'XXXXXXXXXXXXXX'
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
    "data": {
        "Lugbe": {
            "city": "Lugbe",
            "description": "Lugbe is a fine city...",
            "area": "",
            "country": "Nigeria",
            "continent": "Africa",
            "longitude": 0,
            "location_type": "city",
            "state": "Abuja",
            "tag": "",
            "city_code": "Lugbe",
            "country_code": "NG",
            "number_properties": 29,
            "latitude": 0,
            "state_code": "",
            "location_id": 201,
            "id": 1878,
            "road": ""
        }
    }
}
```

###	 HTTP Request

GET `https://api.hotels.ng/search/location/count/bulk?property_type=
&location_type=
&locations=[]
&country=
&access_token=`

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token | String | Token generated with client_id and client_credentials | True
property_type | String | Type of property | True
location_type | String | Type of place (e.g <em>city,state</em>)| True
location | Array | Location of places(e.g <em>lagos,Uyo,Akwa Ibom</em>). Information about multiple location can be gotten using the delimiter ','| True
country | String | The location's country | True

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
 country | string| name of country
 continent|string|the continent the hotel is in
 longitude|integer|longitude of the hotel
 latitude|integer|latitude of the hotel
 location_type|string|type of location
 state|string|state where the hotel is located
 city_code|string|city code of the hotel
 country_code|string|country code of the hotel
 number_properties|integer|number of counted properties(hotels) in the location.
 location_id|integer|the id of the location when counted
 id|integer|customer web hook identifier
