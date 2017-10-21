# Hotels
Access to all Hotel related things - List of Scopes to be used in Authorization <br>
properties.read


## Get list of hotels


> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
```

> Example response:

```json
[
  {
    "status": "success",
    "data": {
      "0": {
        "id": 10000,
        "old_id": null,
        "name": "Redeemers Cherith Guest House",
        "description": "",
        "property_type_id": 1,
        "status": "active",
        "website": null,
        "currency_code": "NGN",
        "minrate": 0,
        "maxrate": 0,
        "checkin_time": null,
        "checkout_time": null,
        "is_bookable": 1,
        "property_type": "hotel",
        "number_of_rooms": null,
        "star_rating": null,
        "policy": null,
        "rating": 0,
        "payment_type": "all",
        "meal_plan": null,
        "driving_instructions": "From Wuse Market, Zone 4, Abuja Head west on Wuse Market Rd toward Kashim Ibrahim Way 72 m Turn right at Leilas Mobile Massage onto Kashim Ibrahim Way  Pass by Sterling Bank Abuja Main (on the right in 400 m) 1.3 km Turn right onto Ahmadu Bello Way  Drive along Eden Place Apartments (on the right for 190 m) 800 m Turn left onto Ademola Adetokunbo Cres 140 m Turn right at Hair Studio onto Cairo Cres/Cairo Street  Pass by Ecobank (on the left) 350 m Turn left onto Cairo Cres/Cairo Street/Kampala St/Kampala Cres Destination will be on the right",
        "unique_url": "10000-redeemers-cherith-guest-house-abuja",
        "is_priority": null,
        "created_at": {},
        "updated_at": {},
        "deleted_at": null
      }
    }
  },
]
```

This endpoint returns an array of Hotels.

### HTTP Request

`GET https://api.hotels.ng/hotels?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Your access token


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
name | string | name of the hotel
currency_code| string| code peculiar to the type of currency
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
is_bookable|integer|the number of booking available
property_type|string|the type of property
rating|string|rating of the hotel
driving_instructions|string|directions to the place

## Show details for a hotel


> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
```


> Example response:

```json
[
  {
    "status": "success",
    "data": {
      "name": "Adidas International Hotel",
      "description": null,
      "status": "active",
      "currency_code": "NGN",
      "website": null,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": 1,
      "payment_type": "all",
      "driving_instructions": "From Lagos State University Lagos Badagry Road, Ojo, Head northeast on Lagos State University toward LASU MAIN Rd 97 m Turn right onto LASU MAIN Rd  Pass by Tito Cakes and Events (on the left) 800 m Turn right onto Lagos - Badagry Expy 300 m Turn left toward F100/Lagos - Badagry Exp y12 m Merge onto F100/Lagos - Badagry Expy 850 m Turn right toward Alhaji Adisa Osiefa Street 55 m Turn right onto Alhaji Adisa Osiefa Street\"",
      "minrate": 0,
      "maxrate": 0,
      "unique_url": "10002-adidas-international-hotel-lagos",
      "star_rating": null,
      "policy": null,
      "property_type_id": 1,
      "meal_plan": null,
      "number_of_rooms": null,
      "reference": {
        "0": {
          "id": 1804,
          "property_id": 10002,
          "property_ref_code": 10002,
          "agency": "Hotelsng"
        }
      }
    }
  }
]
```

This endpoint shows the details of a particular hotel.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
name | string | name of the hotel
currency_code| string| code peculiar to the type of currency
status|string|status of the hotel
is_bookable|integer|bookings available for a hotel
payment_type|string|type of payment employed
driving_instructions|string|directions to the place
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
unique_url|string|url unique to the hotel
property_type_id|integer|Id of the type of property
id| integer|Id peculiar to reference
property_id|integer|Id of property
agent_uuid|string|Internal Id peculiar to the agent
propert_ref_code|integer|ref code peculiar to the property
agency|string|the agency involved




## Show details for a hotel with <br>everything associated to it


> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}/details?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
```


> Example response:

```json
[
  {
    "status": "success",
    "data": {
      "id": 10002,
      "old_id": null,
      "name": "Adidas International Hotel",
      "description": null,
      "property_type_id": 1,
      "status": "active",
      "website": null,
      "currency_code": "NGN",
      "minrate": 0,
      "maxrate": 0,
      "checkin_time": null,
      "checkout_time": null,
      "is_bookable": 1,
      "property_type": "hotel",
      "number_of_rooms": null,
      "star_rating": null,
      "policy": null,
      "rating": 0,
      "payment_type": "all",
      "meal_plan": null,
      "driving_instructions": "From Lagos State University Lagos Badagry Road, Ojo, Head northeast on Lagos State University toward LASU MAIN Rd 97 m Turn right onto LASU MAIN Rd  Pass by Tito Cakes and Events (on the left) 800 m Turn right onto Lagos - Badagry Expy 300 m Turn left toward F100/Lagos - Badagry Exp y12 m Merge onto F100/Lagos - Badagry Expy 850 m Turn right toward Alhaji Adisa Osiefa Street 55 m Turn right onto Alhaji Adisa Osiefa Street\"",
      "unique_url": "10002-adidas-international-hotel-lagos",
      "is_priority": null,
      "created_at": {},
      "updated_at": {},
      "deleted_at": null,
      "reference": {
        "0": {
          "id": 1804,
          "property_id": 10002,
          "agent_uuid": "a965ed6e-c292-4263-b4de-d01057984441",
          "property_ref_code": 10002,
          "agency": {
            "id": 1,
            "agency": "Hotelsng",
            "agreement": {
              "id": 3252,
              "property_id": 10002,
              "deal_status": 1,
              "deal_percentage": null,
              "commission_percentage": null,
              "deal_on": {},
              "deal_end": null,
              "deal_file": null,
              "created_at": null,
              "updated_at": null,
              "deleted_at": null
            }
          }
        }
      }
    }
  },
] 
```
This endpoint gets details of a hotel and everything associated to it

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id/details?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token

Attribute | Type | Description
--------- | ------- | -----------
name | string | name of the hotel
currency_code| string| code peculiar to the type of currency
is_bookable|integer|bookings available for a hotel
payment_type|string|type of payment employed
driving_instructions|string|directions to the place
status|string|status of the hotel
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
unique_url|string|url unique to the hotel
property_type_id|integer|Id of the type of property
id| integer|Id peculiar to user
property_id|integer|Id of property
agency|string|the agency involved
deal_status|integer|status of the deal 
