# Hotels
Access to all Hotel related things <br> 
The scope used for authentication - <em>properties.read</em>



The hotels API allows you to get the list of hotels, show details of a specific hotel and every thing associated to it. This API would also return details like directons to the hotel, website of the hotel and some other basic information about the hotel that might interest the user. 
## Get list of hotels


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/hotels');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXX-Your-Access_token-XXX'
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
    "data": {
      "0": {
        "id": 10000,
        "old_id": null,
        "name": "michael-cherith-guest-house-abuja",
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
        "driving_instructions": "From jane street, Zone...",
        "unique_url": "10000-michael-cherith-guest-house-abuja",
      }
    }
  },

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

## Show hotel information


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/12443');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXX-Your-Access_token-XXX'
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
        "description": "<p>Jambo Rambo Hotel is <strong>3-Star</strong>&nbsp;hotel...</p>",
        "status": "active",
        "currency_code": "NGN",
        "website": "http://lekkioxfordhotels.com",
        "checkin_time": null,
        "checkout_time": null,
        "payment_type": "all",
        "driving_instructions": "LANDMARK:\r\baba close \r\nTake....",
        "minrate": "8000.00000",
        "maxrate": "35000.00000",
        "unique_url": "25449-jombo-Rambo-hotels-lagos",
        "star_rating": "3",
        "policy": "<p>Check in: from 12:00pm<br />Check out: by 12:00pm<br />Children: free stay for Babies and kids<br />Payment: Cash<br />Pets: Not allowed.</p>",
        "property_type_id": "1",
        "meal_plan": null,
        "number_of_rooms": "0",
        "reference": [
            {
                "id": 3499,
                "property_id": "25449",
                "agent_uuid": "xxxxxx-56xxx-b4de-xxxxxxxx",
                "property_ref_code": "25449",
                "agency": "Hotelsng"
            }
        ]
    },
    "status": "success"
}

```

This endpoint shows information for a particular hotel.

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




## Show hotel details


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/97874/details');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'XXXx-Your-Access_token-XXX'
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
        "hotel": {
            "data": {
                "id": 2549,
                "old_id": null,
                "name": "Hotel wanda",
                "description": "<p>Hotel wanda Hotel is <strong>3-Star</strong>&nbsp;hotel located at <strong>No. 10-12 Drive way,Expressway before school....</p>",
                "property_type_id": "1",
                "status": "active",
                "website": "http://hotelwanda.com",
                "currency_code": "NGN",
                "minrate": "8000.00000",
                "maxrate": "35000.00000",
                "checkin_time": null,
                "checkout_time": null,
                "is_bookable": "1",
                "property_type": "hotel",
                "number_of_rooms": "0",
                "star_rating": "3",
                "policy": "<p>Check in: from 12:00pm<br />Check out: by 12:00pm<br />Children: free stay for Babies and kids<br />Payment: Cash<br />Pets: Not allowed.</p>",
                "rating": "0.00",
                "payment_type": "all",
                "meal_plan": null,
                "driving_instructions": "LANDMARK:\r\nPass through, turn right",
                "unique_url": "25449-wanda-oxford-hotels-lagos",
                "deleted_at": null,
                "reference": [
                    {
                        "id": 3499,
                        "property_id": "2549",
                        "agent_uuid": "x5647cc-c292-4263-b4de-xfgh67889",
                        "property_ref_code": "25449",
                        "agency": {
                            "id": 1,
                            "agency": "Hotelsng",
                            "agency_uuid": "xxxxxxe-x455x-4263-b4de-xxxxxxxx"
                        }
                    }
                ],
                "agreement": {
                    "id": 520,
                    "property_id": "2549",
                    "deal_status": "5",
                    "deal_percentage": null,
                    "vat": null,
                    "commission_percentage": "10",
                    "deal_on": "2017-05-31 12:09:56",
                    "deal_end": null,
                    "deal_file": "https://panel.hotels.ng/media/deals/deal25449.pdf",
                    "created_at": null,
                    "updated_at": null,
                    "deleted_at": null
                }
            },
            "status": "success"
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
        "bookings": 7,
        "location": {
            "data": {
                "id": 3499,
                "property_id": "2549",
                "road_id": null,
                "area_id": "160",
                "city_id": "196",
                "state_id": "25",
                "address": "No.45hhjjx, Before Church Roundabout...",
                "longitude": "3.5166",
                "latitude": "6.43788",
                "airport_code": null,
                "postal_code": null,
                "zip_code": null,
                "created_at": null,
                "updated_at": null,
                "deleted_at": null,
                "city": {
                    "id": 196,
                    "name": "Lekki",
                    "code": "Lekki",
                    "state_id": "25",
                    "geotags_id": "9|32",
                    "latitude": null,
                    "longitude": null,
                    "country_code": "NG",
                    "is_orphan": "0",
                    "created_at": null,
                    "updated_at": null,
                    "deleted_at": null,
                    "country": {
                        "id": 154,
                        "name": "Nigeria",
                        "code": "NG",
                        "continent_id": "1",
                        "latitude": "0.00000",
                        "longitude": "0.00000",
                        "created_at": null,
                        "updated_at": null,
                        "deleted_at": null,
                        "continent": {
                            "id": 1,
                            "name": "Africa",
                            "latitude": "0.00",
                            "longitude": "0.00",
                            "created_at": null
                        }
                    }
                },
                "state": {
                    "id": 25,
                    "name": "Lagos",
                    "description": "<p>Lagos State is Nigeria&rsquo;s and Africa&rsquo;s largest commercial hub...</p>",
                    "code": "Lagos",
                    "type": "state",
                    "province_code": null,
                    "latitude": "6.000004",
                    "longitude": "3.000660",
                    "country_code": "NG",
                    "created_at": null,
                    "updated_at": "2017-08-16 12:23:29",
                    "deleted_at": null,
                    "country": {
                        "id": 154,
                        "name": "Nigeria",
                        "code": "NG",
                        "continent_id": "1",
                        "latitude": "0.00000",
                        "longitude": "0.00000",
                        "created_at": null,
                        "updated_at": null,
                        "deleted_at": null,
                        "continent": {
                            "id": 1,
                            "name": "Africa",
                            "latitude": "0.00",
                            "longitude": "0.00",
                            "created_at": null
                        }
                    }
                }
            }
        },
        "agreements": {
            "data": {
                "id": 520,
                "property_id": "25449",
                "deal_status": "5",
                "deal_percentage": null,
                "vat": null,
                "commission_percentage": "1",
                "deal_on": "2017-05-31 12:09:56",
                "deal_end": null,
                "deal_file": "https://uncle.els.ng/media/peter/deal25449.pdf",
                "created_at": null,
                "updated_at": null,
                "deleted_at": null
            }
        },
        "facilities": {
            "data": [
                {
                    "id": 1967,
                    "object_id": "25449",
                    "facility_type_id": "100",
                    "facility_type_count": null,
                    "object_type": "hotel",
                    "created_at": "2017-01-22 20:54:01",
                    "updated_at": null,
                    "facility_type": {
                        "id": 100,
                        "facility_category_id": "3",
                        "name": "Restaurant(s) ",
                        "img_url": "restaurant.png",
                        "created_at": "2017-01-04 15:48:12",
                        "updated_at": null}
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
                    "is_published": "1",
                    "created_at": "1990-10-23 09:51:32",
                    "updated_at": "1990-10-23 09:52:08",
                    "deleted_at": null,
                    "published_at": "1990-10-23 09:52:08",
                    "scores": [
                        {
                            "id": 71001,
                            "review_id": "14776",
                            "criterion_id": "1",
                            "score": "2"
                        },
                    ],
                    "tags": [],
                    "comments": []
                },

                
            

```
This endpoint gets details for a particular hotel.

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
facility_type.img_url|string|image url of the type of facility
