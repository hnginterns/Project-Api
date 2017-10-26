# Hotels
Access to all Hotel related things - List of Scopes to be used in Authorization <br>
properties.read


The hotels API allows you to get the list of hotels, show details for a hotel and every thing associated to it. This API vould also return details like directons to a hotel, website of the hotel and some other basic information about the hotel the user is looking for. The scopes unique to the User is read.
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
        "added_by_admin": 0,
        "unique_url": "10000-redeemers-cherith-guest-house-abuja",
        "is_priority": null,
        "boost": 1,
        "created_at": {},
        "updated_at": {},
        "deleted_at": null
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

## Shows hotel information


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/{hotel_id}');
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
        "name": "Jakande British Hotels",
        "description": "<p>Jakande British Hotel is <strong>3-Star</strong>&nbsp;hotel located at <strong>No. 125 Surulere road, off Lekki-Ajah Expressway.</strong>. It is situated in a serene and tranquil environment; and provides guests with excellent rejuvenating and relaxing facilities.<br /><br />Rooms at the Jakande British Hotel fall into the following categories: Royal room, Queen, Kings, Diplomatic Suite, and Ambassador Suite. These rooms come with an array of top-notch room facilities, which include: great spacing, luxurious double and single beds, sofas and center tables, study desks and chairs, wireless internet connection, flat-screen television sets with access to a variety of local and international channels, air conditioning, refrigerator and en-suite bathrooms with complimentary toiletries.<br /><br />Jakande British Hotel also offers great services such as: regular power supply, a restaurant, bar/lounge and guaranteed security facilitated by competent security personnel.<br /><br />Other services on offer at Jakande British Hotel include: laundry services, daily newspaper supply, airport pickup plus housekeeping and room services.</p>\r\n<p><strong>Places Of Interest Near Jakande British Hotels</strong><br />The Palms Shopping Mall<br />Lekki Conservation Centre<br />Elegushi beach<br />Bespoke Event Center<br />House on the Rock main Church<br />KFA events centre.</p>\r\n<p><strong>Terms and Conditions</strong><br />Check in: from 12:00pm<br />Check out: by 12:00pm<br />Children: free stay for Babies and kids<br />Payment: Cash<br />Pets: Not allowed.</p>\r\n<p><strong>FAQs</strong><br />Q: Does Jakande British Hotel have a restaurant?<br />A: Yes, there is a restaurant with seasoned chefs and cooks to cater to guests' nutritional needs</p>\r\n<p>Q: Does Jakande British Hotel offer airport pickup services?<br />A: Yes, but at an extra cost</p>\r\n<p>Q: Does Jakande British Hotel provide guests with internet accessibility?<br />A: At Jakande British Hotel, there is a provision of high-speed wireless internet <br />facilities for guests.</p>\r\n<p>Q: Are children allowed to lodge alongside their parents at Jakande British Hotel?<br />Yes. Babies and kids are allowed to stay for free.<br /><br />Q: Is a Bar/Lounge at Jakande British Hotel?<br />A: It has a bar stocked with different drinks and wines.</p>",
        "status": "active",
        "currency_code": "NGN",
        "website": "http://lekkioxfordhotels.com",
        "checkin_time": null,
        "checkout_time": null,
        "is_bookable": "1",
        "added_by_admin": "0",
        "payment_type": "all",
        "driving_instructions": "LANDMARK:\r\nLekki Phase 1 \r\nTake Emmanuel Abimbola Cole St and Freedom Way to Lagos-Epe Express Rd/Lekki - Epe Express Road in Lekki 7 min. Follow Lekki - Epe Express Road to Akanni Ajiran St\r\n9 min.Turn right at Philip Stores onto Akanni Ajiran St. Pass by Sterling Bank (on the right)\r\nDestination will be on the left",
        "minrate": "8000.00000",
        "maxrate": "35000.00000",
        "unique_url": "25449-jakande-British-hotels-lagos",
        "star_rating": "3",
        "policy": "<p>Check in: from 12:00pm<br />Check out: by 12:00pm<br />Children: free stay for Babies and kids<br />Payment: Cash<br />Pets: Not allowed.</p>",
        "property_type_id": "1",
        "meal_plan": null,
        "number_of_rooms": "0",
        "reference": [
            {
                "id": 3499,
                "property_id": "25449",
                "agent_uuid": "a965ed6e-c292-4263-b4de-d01057984441",
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




## Shows hotel details


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/{hotel_id}/details');
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
        "hotel": {
            "data": {
                "id": 25449,
                "old_id": null,
                "name": "Lekki Oxford Hotels",
                "description": "<p>Lekki Oxford Hotel is <strong>3-Star</strong>&nbsp;hotel located at <strong>No. 10-12 Agungi road, off Lekki-Ajah Expressway before Chevron Roundabout</strong>. It is situated in a serene and tranquil environment; and provides guests with excellent rejuvenating and relaxing facilities.<br /><br />Rooms at the Lekki Oxford Hotel fall into the following categories: Royal room, Queen, Kings, Diplomatic Suite, and Ambassador Suite. These rooms come with an array of top-notch room facilities, which include: great spacing, luxurious double and single beds, sofas and center tables, study desks and chairs, wireless internet connection, flat-screen television sets with access to a variety of local and international channels, air conditioning, refrigerator and en-suite bathrooms with complimentary toiletries.<br /><br />Lekki Oxford Hotel also offers great services such as: regular power supply, a restaurant, bar/lounge and guaranteed security facilitated by competent security personnel.<br /><br />Other services on offer at Lekki Oxford Hotel include: laundry services, daily newspaper supply, airport pickup plus housekeeping and room services.</p>\r\n<p><strong>Places Of Interest Near Lekki Oxford Hotels</strong><br />The Palms Shopping Mall<br />Lekki Conservation Centre<br />Elegushi beach<br />Bespoke Event Center<br />House on the Rock main Church<br />KFA events centre.</p>\r\n<p><strong>Terms and Conditions</strong><br />Check in: from 12:00pm<br />Check out: by 12:00pm<br />Children: free stay for Babies and kids<br />Payment: Cash<br />Pets: Not allowed.</p>\r\n<p><strong>FAQs</strong><br />Q: Does Lekki Oxford Hotel have a restaurant?<br />A: Yes, there is a restaurant with seasoned chefs and cooks to cater to guests' nutritional needs</p>\r\n<p>Q: Does Lekki Oxford Hotel offer airport pickup services?<br />A: Yes, but at an extra cost</p>\r\n<p>Q: Does Lekki Oxford Hotel provide guests with internet accessibility?<br />A: At Lekki Oxford Hotel, there is a provision of high-speed wireless internet <br />facilities for guests.</p>\r\n<p>Q: Are children allowed to lodge alongside their parents at Lekki Oxford Hotel?<br />Yes. Babies and kids are allowed to stay for free.<br /><br />Q: Is a Bar/Lounge at Lekki Oxford Hotel?<br />A: It has a bar stocked with different drinks and wines.</p>",
                "property_type_id": "1",
                "status": "active",
                "website": "http://lekkioxfordhotels.com",
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
                "driving_instructions": "LANDMARK:\r\nLekki Phase 1 \r\nTake Emmanuel Abimbola Cole St and Freedom Way to Lagos-Epe Express Rd/Lekki - Epe Express Road in Lekki 7 min. Follow Lekki - Epe Express Road to Akanni Ajiran St\r\n9 min.Turn right at Philip Stores onto Akanni Ajiran St. Pass by Sterling Bank (on the right)\r\nDestination will be on the left",
                "unique_url": "25449-lekki-oxford-hotels-lagos",
                "deleted_at": null,
                "reference": [
                    {
                        "id": 3499,
                        "property_id": "25449",
                        "agent_uuid": "a965ed6e-c292-4263-b4de-d01057984441",
                        "property_ref_code": "25449",
                        "agency": {
                            "id": 1,
                            "agency": "Hotelsng",
                            "agency_uuid": "a965ed6e-c292-4263-b4de-d01057984441"
                        }
                    }
                ],
                "agreement": {
                    "id": 520,
                    "property_id": "25449",
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
                "property_id": "25449",
                "road_id": null,
                "area_id": "163",
                "city_id": "196",
                "state_id": "25",
                "address": "10-12 Agungi Road, Off Lekki - Ajah Expressway, Before Chevron Roundabout",
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
                    "geotags_id": "18|32",
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
                    "description": "<p>Lagos State is Nigeria&rsquo;s and Africa&rsquo;s largest commercial hub. It is home to over 15 million people, making it the largest city in Africa. Being a metropolitan city, Lagos is always attracting business-minded individuals, tourists and people from various walks of life who come here for diverse reasons.<br /> <br /> There are so many luxury hotels and affordable hotels in Lagos to choose from. Need a hotel in Lagos Island or a hotel in Lagos Mainland? Be sure to go through the list of Lagos hotels on hotels.ng to make your pick. <br /> <br /> Discount hotel rates are also available for you to choose from on the site and you can view and compare hotel prices before making your booking.</p>",
                    "code": "Lagos",
                    "type": "state",
                    "province_code": null,
                    "latitude": "6.54894",
                    "longitude": "3.11660",
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
                "commission_percentage": "10",
                "deal_on": "2017-05-31 12:09:56",
                "deal_end": null,
                "deal_file": "https://panel.hotels.ng/media/deals/deal25449.pdf",
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
                    "name": "Mr. Ed Itohan",
                    "email": "followup@hotels.ng",
                    "title": "Very Bad Stay",
                    "location_id": null,
                    "comment": "I  didn't enjoy my stay at this hotel at all. I couldn't get water to use when I needed it and even when I got it, it was all brownish. The room was also quite dirty with cockroaches popping out of different corners in the room. Not a good one at all.",
                    "overall_rating": "4.80",
                    "is_published": "1",
                    "created_at": "2017-10-23 09:51:32",
                    "updated_at": "2017-10-23 09:52:08",
                    "deleted_at": null,
                    "published_at": "2017-10-23 09:52:08",
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
                {
                    "id": 14311,
                    "booking_id": null,
                    "property_id": "25449",
                    "user_id": null,
                    "name": "Mr. Mayowa",
                    "email": "followup@hotels.ng",
                    "title": "Horrible stay",
                    "location_id": null,
                    "comment": "My stay at the hotel was horrible. There was no water in the closet and they had to fetch water in a bucket for me. The power supply at the hotel was also very bad and the generator was not switched on. I had to leave the hotel for a friend's place having spent few hours there.",
                    "overall_rating": "2.00",
                    "is_published": "1",
                    "created_at": "2017-07-29 11:53:13",
                    "updated_at": "2017-09-19 14:33:50",
                    "deleted_at": null,
                    "published_at": "2017-09-19 14:33:50",
                    "scores": [
                        {
                            "id": 68676,
                            "review_id": "14311",
                            "criterion_id": "1",
                            "score": "2"
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
deal_status|integer|status of the deal 
