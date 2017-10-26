# Search

With this endpoint, you can search of hotels based on some specific criteria of your choice and these criteria can be based on the type of property, based on your current location, it could even be based on the name of a hotel you know of.

Search for Hotels with parameters 
Scope to be used in Authorization 
Query For a List
For a List of parameter values, *see below*
Property_type : 
*	`Villa`, <br>
*	`Apartment`,<br>
*	`Guest House`,<br>
*	`Hotel`, <br>
*	`Luxury Hotel`, <br>

##Search for hotels
	
	This endpoint allows you to search For Hotels

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "[
  {
    \"state\": \"id ullamco in\"
  },
  {
    \"country\": \"elit aliquip\",
    \"city\": \"minim commodo\",
    \"state\": \"exercitation pariatur non cupidatat\"
  }
]");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);

?>
```

> Example response:

```json
{
    "data": [
        {
            "rating": 0,
            "area_id": 0,
            "city_id": 136,
            "city_master_id": 1813,
            "property_type_id": 1,
            "activities_id": "",
            "min_rate_ngn": 160000,
            "property_ref_code": "1015245",
            "agency_uuid": "a965ed6e-c292-4263-b4de-d01057984441",
            "likes": 3,
            "country_code": "NG",
            "property_type": "Hotel",
            "id": 1015245,
            "property_name": "Casa Millie",
            "city": "Ikeja GRA",
            "deal_status": 0,
            "weight": 0,
            "area": "",
            "facility_type_icons": "wireless.png,star.png,electricity.png,plasma.png,bathroom.png,dining.png,dining.png,bathroom.png,laundry.png,laundry.png,security.png,security.png,security.png,,housekeeping.png",
            "agency": "Hotelsng",
            "country_id": 154,
            "continent": "Africa",
            "state": "Lagos",
            "latitude": 0,
            "city_code": "Ikeja GRA",
            "property_url": "1015245-casa-millie",
            "status": "active",
            "max_rate_ngn": 160000,
            "facility_type_ids": "103,105,115,119,123,130,142,160,170,174,178,204,210,1796,2797,2940",
            "description": "",
            "is_disabled": 0,
            "max_rate": 0,
            "is_active": 1,
            "road_id": 0,
            "agency_id": "1",
            "currency_code": "NGN",
            "facility_type_names": "Wireless Internet,Air Conditioning,24 hours Electricity,Flatscreen TV,Private Bathroom,In House Dining,Kitchen,Jacuzzi,Clothing Iron,Ironing,Accessible bathroom,Security,Security,Security Guard,Fenced compound,House Keeping,Beach towels ",
            "min_rate": 0,
            "address": "",
            "review_count": 0,
            "state_code": "Lagos",
            "bookings_count": 2,
            "star_rating": 0,
            "is_deleted": 0,
            "continent_id": 1,
            "country": "Nigeria",
            "longitude": 0,
            "meal_plan_ids": "",
            "location_tags_ids": "",
            "state_id": 25,
            "is_bookable": 1,
            "road": "",
            "images": [
                {
                    "id": 74758,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/bd12e82df7d209c34dd50a62df6109da.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:36",
                    "updated_at": "2017-05-12 11:03:36"
                },
                {
                    "id": 74757,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/f56fa165feccffab4401a6ed120880d7.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:34",
                    "updated_at": "2017-05-12 11:03:34"
                },
                {
                    "id": 74755,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/98cb2d8771ec35fe17c04429bbb5afa8.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:32",
                    "updated_at": "2017-05-12 11:03:32"
                },
                {
                    "id": 74754,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/ee44e339153641f06ebf9ff1871cb1ff.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:30",
                    "updated_at": "2017-05-12 11:03:30"
                },
                {
                    "id": 74753,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/e358c75d85d6f65aa83cefd6e4aa0c00.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:29",
                    "updated_at": "2017-05-12 11:03:29"
                },
                {
                    "id": 74751,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/4c0b771189f25fdb19caf8e24f11fd5e.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:27",
                    "updated_at": "2017-05-12 11:03:27"
                },
                {
                    "id": 74749,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/0de1c09ec30d56f9628dc4838db45790.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:25",
                    "updated_at": "2017-05-12 11:03:25"
                },
                {
                    "id": 74748,
                    "application_id": "1",
                    "object_id": 1015245,
                    "title": "",
                    "description": "",
                    "url": "https://media.api.hng.tech/img/big/8e6b11b8308f995bb442874a9fc9d08d.JPG",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "0",
                    "created_at": "2017-05-12 11:03:23",
                    "updated_at": "2017-05-12 11:03:23"
                }
            ],
            "available_rates": [
                {
                    "availability": {
                        "total": 160000,
                        "total_buying_price": 144000,
                        "discount": false,
                        "total_rackprice": 160000,
                        "rates": {
                            "2017-10-25": {
                                "id": "41692",
                                "property_id": "1015245",
                                "room_id": "36096",
                                "rate_name": null,
                                "rate_tag_id": "1",
                                "rack_price": "160000.00",
                                "buying_price": "144000.00",
                                "buying_price_usd": null,
                                "selling_price": "160000.00",
                                "selling_price_usd": null,
                                "priority": "1",
                                "start_date": "2017-05-12 00:00:00",
                                "end_date": "2027-05-12 00:00:00",
                                "active_start": "2017-05-12 00:00:00",
                                "active_end": "2027-05-12 00:00:00",
                                "active_mon": "1",
                                "active_tue": "1",
                                "active_wed": "1",
                                "active_thu": "1",
                                "active_fri": "1",
                                "active_sat": "1",
                                "active_sun": "1",
                                "deleted_at": null,
                                "created_at": "2017-05-12 11:16:30",
                                "updated_at": "2017-05-12 11:16:30",
                                "tag": "general",
                                "stay_date": "2017-10-25"
                            }
                        },
                        "avg_rate": 160000,
                        "avg_rate_rack": 160000,
                        "avg_buying_rate": 144000
                    },
                    "provider": "hotelsng",
                    "room_id": 36096
                }
            ]
        },
```



### HTTP Request

`GET https://api.hotels.ng/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=`

### Query Parameters

Parameter | Type | Description | Required
--------- | ------- | ----------- |----------
access_token | String | Token generated with client_id and client_credentials | True
with_images | Boolean | Should the response include property's image url | Optional
with_rates | Boolean | Should the response include property's rate | Optional
filters | String | Filtering out the data not needed from the response | optional
search_type | String | Type of Search request | Optional
property_type | String | Type of property to request | Optional


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

	Fetches all the properties nearby

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search/nearby?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);?>
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
            "agency_uuid": "a965ed6e-c292-4263-b4de-d01057984441",
            "likes": 683,
            "country_code": "NG",
            "property_type": "Hotel",
            "id": 18456,
            "property_name": "Garden City Marriott Hotel",
            "city": "Port Harcourt",
            "deal_status": 5,
            "weight": 32.346737,
            "area": "",
            "facility_type_icons": "parking.png,restaurant.png,cabletv.png,refridgerator.png,bar.png,electricity.png,parking_letter.png,POS,laundry.png,security.png,hall.png,restaurant.png,Taxi Pickup,cctv.png,electronic_access.png,mug.png,,wireless.png,star.png,desk.png,telephone.png,Wardrobe,plasma.png,cabletv.png,refridgerator.png,Shower,Wine/water,mug.png,room_service.png,bar.png",
            "agency": "Hotelsng",
            "country_id": 154,
            "continent": "Africa",
            "state": "Rivers",
            "latitude": 9.066667,
            "city_code": "Port Harcourt",
            "property_url": "18456-bay-marriot-hotel-rivers",
            "status": "active",
            "max_rate_ngn": 100000,
            "facility_type_ids": "100,110,113,116,117,119,121,122,128,130,143,151,153,172,178,182,184,203,205,216,233,264,271,274,281,284",
            "description": "<p><span id=\"\" style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"{\" data-sheets-userformat=\"{\">Garden City Marriott Hotel is a top hotel located in <strong>39 Tombia Street by Le Meridien Road, GRA, Port Harcourt.</strong> The hotel is very appropriate for guests on a business trip. <br /><br />The hotel features rooms fitted with air-conditioners, wardrobes, telephone, refrigerator, TV with satellite reception, coffee/tea makers, sofas, work table/chairs, king-sized beds and en-suite bathrooms. The rooms are classified into deluxe, super deluxe, ambassadorial and royal suite.<br /><br />The hotel offers breakfast daily at a surcharge<strong>.</strong> Other meals may be ordered at the on-site restaurant which serves continental and local dishes and guests can enjoy an array of alcoholic and non-alcoholic drinks stocked at the bar. <br /><br />The hotel features conference facilities to host social and corporate events. Airport pickup, laundry, and car hire services are available at a fee. Room service is available to help with all guests requirement. The premises are guarded by security personnel and onsite parking is allowed. <br /><br /><strong>Terms and Conditions</strong><br />Check In- 10:00 am (ID Required)<br />Check Out- 12:00 pm<br />Payments- cash, visa and master card<br />Children- kids are welcome to stay at no extra cost.<br /><br /><strong>Interesting Places to Visit Near Garden City Marriott Hotel</strong><br />Polo club<br />Blue Elephant Restaurant<br />Film House<br />Shoprite</span></p>",
            "is_disabled": 0,
            "max_rate": 100000,
            "is_active": 1,
            "road_id": 0,
            "agency_id": "1",
            "currency_code": "NGN",
            "facility_type_names": "Adequate Parking,Restaurant(s) ,DSTV,Refrigerator,Bar,24 hours Electricity,Parking Garage,POS,Laundry,Security Guard,Event Hall,Restaurant(s) ,Taxi Pickup,CCTV camera,Key Card system,Coffee Tea Maker,King sized bed,Wi-fi Internet Access,Air Conditioning,Study Desk,Telephone,Wardrobe,Television,DSTV,Refrigerator,Shower,Wine/water,Coffee Tea Maker,Room Service,Mini Bar In Room",
            "min_rate": 10000,
            "address": "39 Tombia Street by Le Meridien Road, GRA, Port Harcourt",
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
                    "id": 5206,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/bay-marriot-hotel-rivers-60269.jpg",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "1",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                },
                {
                    "id": 5181,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/bay-marriot-hotel-rivers-19253.jpg",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "2",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                },
                {
                    "id": 5193,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/bay-marriot-hotel-rivers-25975.png",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "3",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                },
                {
                    "id": 5189,
                    "application_id": "1",
                    "object_id": 18456,
                    "title": null,
                    "description": null,
                    "url": "https://media.api.hng.tech/img/big/bay-marriot-hotel-rivers-25971.png",
                    "room_id": null,
                    "facility_id": null,
                    "priority": "4",
                    "created_at": "2017-03-07 13:56:12",
                    "updated_at": "2017-03-07 13:56:12"
                },
```

###	HTTP Request
  
`GET https://api.hotels.ng/search/nearby?access_token= `

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token| String | Token generated with client_id and client_credentials | True

### Response Body
Attribute | Type | Description
--------- | ------- | -----------
 Properties| String| Properties around the locale
 Message | String |Message about property
 Name | String | Name of owner


## Get hotel count in a location

	This endpoint will return the number of hotels that are around a particular location, you will be required to provide the location and your access token as query parameters in order to get a successful response. The location can be an address in a country or region.

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search/location/count/bulk?access_token=&property_type=&location_type=&location=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);?>
```
> Example response:

```json
{
    "status": "success",
    "data": {
        "Lugbe": {
            "city": "Lugbe",
            "description": "",
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

GET `https://api.hotels.ng/search/location/count/bulk?access_token=&property_type=&location_type=&location=`

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token | String | Token generated with client_id and client_credentials | True
property_type | String | Type of property | Optional
location_type | String | Type of place | Optional
location | Array | Location of places | True

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
 number_properties|integer|number of counted properties
 location_id|integer|the id of the location when counted
 id|integer|customer web hook identifier
