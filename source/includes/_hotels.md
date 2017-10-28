# Hotels
Access to all Hotel related information <br> 
The scope used for authentication - <em>`properties.read`</em>



The hotels API allows you to get the list of hotels, show details of a specific hotel and every thing associated to it. This API would also return details like directons to the hotel, website of the hotel and some other basic information about the hotel that might interest the user. 


The hotels endpoints allows you to get the list of hotels, show details of a specific hotel and every thing associated to it. This endpoint would also return details like; directions to the hotel, website of the hotel and some other basic information about the hotel that might interest the user. 

## Get list of hotels


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/hotels');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXxxxxxxxxxXXX'
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
    "data": [
    {
        "id": 10000,
        "name": "Sweet-guest-house-abuja",
        "description": "",
        "property_type_id": 1,
        "website": null,
        "currency_code": "NGN",
        "minrate": 0,
        "maxrate": 0,
        "is_bookable": 1,
        "property_type": "hotel",
        "number_of_rooms": 4,
        "policy": null,
        "rating": 3,
        "payment_type": "all",
        "driving_instructions": "From jane street, Zone...",
     
    },
   ]
  }

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
description | String | The information about the hotel, terms and conditions , and FAQ.
currency_code| string| code peculiar to the type of currency
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
is_bookable|integer|if the hotel
property_type|string|the type of property
rating|string|rating of the hotel
driving_instructions|string|directions to the place
min_rate|integer|minimum rate of hotel
max_rate|integer|maximum rate of hotel
is_bookable|boolean| the value return `1`, if there is any available room for booking.
property_type|string|the type of property(e.g `hotel`)
rating| string |the average rating of the property by guests, the maximum value is 10.
payment_type | string | The available payment option.
driving_instructions | string | directions to the place

## Show hotel information


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/12443');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXxxxxxxxxxXXX'
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

    "data": {
        "name": "Jambo Rambo Hotel",
        "description": " Jambo Rambo Hotel is 3-Star hotel...",
        "status": "active",
        "currency_code": "NGN",
        "website": "http://lekkioxfordhotels.com",
        "is_bookable": 1,
        "payment_type": "all",
        "driving_instructions": "LANDMARK: aba close Take...",
        "minrate": "8000.00000",
        "maxrate": "35000.00000",
        "unique_url": "25449-jombo-Rambo-hotels-lagos",
        "rating": "3",
        "policy": " Free stay for Babies and kids ,
        "property_type_id": "1",
        "number_of_rooms": "3",
    },
    "status": "success"
}

```

This endpoint shows information of a particular hotel.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token

### Response Body

Attribute | Type | Description
--------- | ------- | -----------
name | string | name of the hotel
description | String | The information about the hotel, terms and conditions , and FAQ
status|string| the availability of the hotel
currency_code| string| code peculiar to the type of currency
is_bookable|integer|the value return `1`, if there is any available room for booking
payment_type|string| the available payment option
driving_instructions|string|directions to the place
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
unique_url|string|url unique to the hotel
rating| string |the average rating of the property by guests, the maximum value is 10
policy | string | the policy proposed by the property management 
property_type_id|integer|Id of the type of property
property_id|integer|Id of property
number_of_rooms | interger | the number of available rooms in the property





## Show hotel details


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/97874/details');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXxxxxxxxXXX'
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
    "data": {
    
        "status": "success"
        {
        "hotel": {
            "data": {
                "id": 2549,
                "name": "Hotel wanda",
                "description": "Hotel wanda Hotel is 3-Star;hotel located at No. 10-12 Drive way,Expressway before school....",
                "property_type_id": "1",
                "status": "active",
                "website": "http://hotelwanda.com",
                "currency_code": "NGN",
                "minrate": "8000.00000",
                "maxrate": "35000.00000",
                "is_bookable": "1",
                "property_type": "hotel",
                "number_of_rooms": "0",
                "rating": "3",
                "policy": "No pets allowed.",
                "rating": "7.0",
                "payment_type": "all",
                "driving_instructions": Pass through, turn right",
                "unique_url": "25449-wanda-oxand-hotels-lagos",
                
            },
        "review_summary": {
            "data": [
                {
                    "avg_score": "6.4571",
                    "avg_overall_rating": "6.822857",
                    "criterion_name": "Comfort"
                },
                {
                    "avg_score": "6.9143",
                    "avg_overall_rating": "6.822857",
                    "criterion_name": "Cleanliness"
                },
                {
                    "avg_score": "6.8000",
                    "avg_overall_rating": "6.822857",
                    "criterion_name": "Service Quality"
                },
                {
                    "avg_score": "7.0286",
                    "avg_overall_rating": "6.822857",
                    "criterion_name": "Security"
                },
                {
                    "avg_score": "6.9143",
                    "avg_overall_rating": "6.822857",
                    "criterion_name": "Location"
                }
            ]
        },
        
        "location": {
            "data": 
            {
            
                "city_id": "196",
                "state_id": "25",
                "address": "No.45hhjjx, Before Church Roundabout...",
                "longitude": "3.5166",
                "latitude": "6.43788",
                "postal_code": null,
                "city": {
                    "id": 196,
                    "name": "Lekki",
                    "code": "Lekki",
                    "state_id": "25",
                    "latitude": null,
                    "longitude": null,
                    "country_code": "NG",
                    "country": {
                        "id": 154,
                        "name": "Nigeria",
                        "code": "NG",
                        "continent_id": "1",
                        "latitude": "0.00000",
                        "longitude": "0.00000",
                        "continent": {
                            "id": 1,
                            "name": "Africa",
                            "latitude": "0.00",
                            "longitude": "0.00",
                           
                        }
                    }
                },
                "state": {
                    "id": 25,
                    "name": "Lagos",
                    "description": "Lagos State is Nigeria&rsquo;s and Africa&rsquo;s largest commercial hub...",
                    "code": "Lagos",
                    "type": "state",
                    "province_code": null,
                    "latitude": "6.000004",
                    "longitude": "3.000660",
                    "country_code": "NG",
                    "country": {
                        "id": 154,
                        "name": "Nigeria",
                        "code": "NG",
                        "continent_id": "1",
                        "latitude": "0.00000",
                        "longitude": "0.00000",
                        "continent": {
                            "id": 1,
                            "name": "Africa",
                            "latitude": "0.00",
                            "longitude": "0.00",
                          
                        }
                    }
                }
            }
        },
        
        "facilities": {
            "data": [
                {
                    "id": 1967,
                    "facility_type_id": "100",
                    "facility_type": {
                        "id": 100,
                        "facility_category_id": "3",
                        "name": "Restaurant(s) ",
                        "img_url": "restaurant.png",
                        }
                    }
                  ]
                },
                
        
        "reviews": {
            "data": [
                {
                    "id": 14776,
                    "booking_id": null,
                    "property_id": "25449",
                    "user_id": null,
                    "name": "Mr. John Doe",
                    "email": "followup@hotels.ng",
                    "title": "jkxnnx",
                    "location_id": null,
                    "comment": "My stay ....",
                    "overall_rating": "4.80",
                    "created_at": "1990-10-23 09:51:32",
                    "scores": [
                        {
                            "id": 71001,
                            "review_id": "14776",
                            "criterion_id": "1",
                            "score": "2"
                        },
                    ],
                
                },

                
            

```
This endpoint fetchs all the  details of a particular hotel. This details consist of the hotel's location, review summary, facilities and reviews by previous guests.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id/details?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token

### Response Body
Attribute | Type | Description
--------- | ------- | -----------
name | string | name of the hotel
description | String | The information about the hotel, terms and conditions , and FAQ
status|string| the availability of the hotel
currency_code| string| code peculiar to the type of currency
is_bookable|integer|the value return `1`, if there is any available room for booking
payment_type|string| the available payment option
driving_instructions|string|directions to the place
minrate| integer |the minimum rate
maxrate| integer | the maximum rate
unique_url|string|url unique to the hotel
rating| string |the average rating of the property by guests, the maximum value is 10
policy | string | the policy proposed by the property management 
property_type_id|integer|Id of the type of property
property_id|integer|Id of property
number_of_rooms | interger | the number of available rooms in the property
avg_score | string | the average score the hotel has for a specific criterion
avg_overall_rating | string | the overall guest score
criterion_name | string | the name of the review criterion (e.g `cleanliness`)
latitude| string |Latitude of country
longitude| string |Longitude of country
continent| object |Details of Continent where country is located
code | string | code of the location
object_id | integer | Id of the object supplied
facilities |  object | Detailed information about the facilities in the hotel.
facility_type_id| integer| Id of the facility
object_type| string | Type of object supplied
reviews | object | All reviews made by guests about the hotel. it encomprises  guests name, comments, overall rating and email address of commenter. 
comment| string | comment of the reviewer
overall_rating | integer | The overall rating of the hotel by the guest.
review_id | integer | Id of the review
score | integer | Scores given to each criterion.

