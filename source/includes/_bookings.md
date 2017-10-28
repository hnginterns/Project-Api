# Bookings
Access to all bookings related things - List of Scopes to be used in Authorization:<br> 

Bookings.read,<br>
Bookings.create,<br>
Bookings.update.<br>
Bookings.delete<br>

The booking API is able to get all bookings, details of specific bookings, total bookings made, create a new booking for a specific hotel. Most of the features of this API are accessible only by an admin. The available scopes are read, create, update and delete.
##Get all Bookings

>Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/bookings');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => '8ftHTakeoeClWEpmQuWQ8SiOcroWQK5Kr1eCjNO1'
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
    "data": {
        "total": 1,
        "bookings": [
            {
                "id": 1162083,
                "country": "154",
                "guest": {
                    "id": "1162083",
                    "fname": "Njoku",
                    "lname": "Chisom",
                    "gender": null,
                    "title": "Mrs",
                    "phone": "01234567898",
                    "email": "test@yahoo.com",
                    "address": "n/a",
                    "marital_status": null,
                    "guest_type": null,
                    "corporate_id": null,
                    "created_at": "2017-10-25 17:10:55",
                    "updated_at": "2017-10-25 17:10:55",
                    "guest_meta": []
                },
                "ptype": "hotel",
                "checkin": "2017-10-27 00:00:00",
                "checkout": "2017-10-28 00:00:00",
                "payment_status": null,
                "status": "NEW",
                "price": "16000",
                "currency_price": "0.00",
                "application_id": "wLV9nF9J8uo0SuaYXl7wCc9RV",
                "created_at": "2017-10-25 17:10:55",
                "updated_at": "2017-10-25 17:10:58",
                "currency_code": "NGN",
                "address": "10-12 Agungi Road, Off Lekki - Ajah Expressway, Before Chevron Roundabout",
                "city": "Lekki",
                "state": "Lagos",
                "country_name": "Nigeria",
                "continent": "Africa",
                "property_name": "Lekki Oxford Hotels",
                "property": 25449,
                "deal_status": "5",
                "deal_percentage": null,
                "property_labels": null,
                "property_url": "25449-lekki-oxford-hotels-lagos",
                "property_contacts": [
                    {
                        "id": 8781,
                        "type": "phone",
                        "value": "+2348168000001",
                        "role_id": "0",
                        "property_id": "25449",
                        "working": "",
                        "replied": "",
                        "notes": "Hotel Official Phone number",
                        "rating": null,
                        "created_at": null,
                        "updated_at": null,
                        "deleted_at": null
                    },
                ],
                "matched_pattern": [],
                "extra_info": {
                    "provider": "hotelsng",
                    "payment_type": "post-payment"
                },
                "rooms": [
                    {
                        "id": 442256,
                        "booking_id": "1162083",
                        "room_id": "388750",
                        "rate_id": "52169",
                        "b_rate": "14400",
                        "s_rate": "16000",
                        "currency": "null",
                        "currency_s_rate": "0.00",
                        "nights": "1",
                        "created_at": null,
                        "updated_at": null,
                        "roomtype": {
                            "id": 388750,
                            "name": "Standard Room (With Breakfast) (Exclusive Deal Based on Availability)",
                            "property_id": "73995",
                            "description": "",
                            "number_of_guests": "0",
                            "number_of_rooms": "0",
                            "minimum_stay_nights": "0",
                            "payment_type": "all",
                            "created_at": "2017-08-08 19:22:42",
                            "updated_at": "2017-08-08 19:22:42",
                            "deleted_at": null,
                            "room_id": "388750"
                        }
                    }
                ],
                "utm_info": null
            }
        ]
    },
    "status": "success"
}

```

This endpoint Fetches all Bookings
### HTTP Request

  `GET https://api.hotels.ng/internal/bookings?email=&access_token=&booking_ids=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier
  bookings|array|array of booking related information
  guest.id| integer|Id of the guest
  guest.fname | string | First name of the guest
  guest.lname|string|Last name of the guest
  guest.title|string|Title of the guest
  guest.phone|integer|phone number of the guest
  guest.email|string|email address of the guest
  guest.address|string|address of the guest
  state|string|state where the hotel is located
  currency_code|string|currency code of the the locality
  check_in|string date|check in date of the customer
  check_out|string date|check out date of thew customer
  price|integer|price of the hotel
  city|string|city where the hotel is located
  state|string|state where the hotel is located
  payment_type|string|type of payment used
  property_url|string|url of property
  rooms|array|array of rooms related information
  room_id|integer|Id of the rooms
  rate_id|integer|Id of the rate
  nights|integer|number of nights spent by the guest
  booking_id|integer|Id peculiar to the booking





## Get Booking Details of a Specific Booking

>Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/bookings/1162843');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'tL7AmTFW9VCseDVoAm5aDWMkfvXtFyZyySL6WaMy'
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
    "data": {
        "total": 23,
        "bookings": [
            {
                "id": 1172077,
                "country": "154",
                "guest": {
                    "id": "1172077",
                    "fname": "Doe",
                    "lname": "John",
                    "gender": null,
                    "title": "Mrs",
                    "phone": "01234567898",
                    "email": "test@yahoo.com",
                    "address": "n/a",
                    "marital_status": null,
                    "guest_type": null,
                    "corporate_id": null,
                    "created_at": "2017-10-23 12:02:59",
                    "updated_at": "2017-10-23 12:02:59",
                    "guest_meta": []
                },
                   "ptype": "hotel",
                "checkin": "2017-10-24 00:00:00",
                "checkout": "2017-10-25 00:00:00",
                "payment_status": null,
                "status": "NEW",
                "price": "16000",
                "currency_price": "0.00",
                "application_id": "wLV9nF9J8uo0SuaYXl7wCc9RV",
                "created_at": "2017-10-23 12:02:59",
                "updated_at": "2017-10-23 12:03:03",
                "currency_code": "NGN",
                "address": "10-12 Agungi Road, Off Lekki - Ajah Expressway, Before Chevron Roundabout",
                "city": "Lekki",
                "state": "Lagos",
                "country_name": "Nigeria",
                "continent": "Africa",
                "property_name": "Lekki Oxford Hotels",
                "property": 25449,
                "deal_status": "5",
                "deal_percentage": null,
                "property_labels": null,
                "property_url": "25449-lekki-oxford-hotels-lagos",
                "property_contacts": [
                    {
                        "id": 8781,
                        "type": "phone",
                        "value": "+2348168000001",
                        "role_id": "0",
                        "property_id": "25449",
                        "working": "",
                        "replied": "",
                        "notes": "Hotel Official Phone number",
                        "rating": null,
                        "created_at": null,
                        "updated_at": null,
                        "deleted_at": null
                    },
              {      
              "extra_info": {
                    "provider": "hotelsng",
                    "payment_type": "post-payment"
                },
                
                "rooms": [
                    {
                    
                        "id": 442247,
                        "booking_id": "1162077",
                        "room_id": "388750",
                        "rate_id": "52169",
                        "b_rate": "14400",
                        "s_rate": "16000",
                        "currency": "null",
                        "currency_s_rate": "0.00",
                        "nights": "1",
                        "created_at": null,
                        "updated_at": null,
                        "roomtype": {
                            "id": 388750,
                            "name": "Standard Room (With Breakfast) (Exclusive Deal Based on Availability)",
                            "property_id": "73995",
                            "description": "",
                            "number_of_guests": "0",
                            "number_of_rooms": "0",
                            "minimum_stay_nights": "0",
                            "payment_type": "all",
                            "created_at": "2017-08-08 19:22:42",
                            "updated_at": "2017-08-08 19:22:42",
                            "deleted_at": null,
                            "room_id": "388750"
                        }
                    
                }
           
```
This endpoint shows the booking details of a specific booking.
### HTTP Request

  `GET https://api.hotels.ng/internal/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier
  bookings|array|array of booking related information
  guest.id| integer|Id of the guest
  guest.fname | string | First name of the guest
  guest.lname|string|Last name of the guest
  guest.title|string|Title of the guest
  guest.phone|integer|phone number of the guest
  guest.email|string|email address of the guest
  guest.address|string|address of the guest
  state|string|state where the hotel is located
  currency_code|string|currency code of the the locality
  check_in|string date|check in date of the customer
  check_out|string date|check out date of thew customer
  price|integer|price of the hotel
  city|string|city where the hotel is located
  state|string|state where the hotel is located
  payment_type|string|type of payment used
  property_url|string|url of property
  rooms|array|array of rooms related information
  room_id|integer|Id of the rooms
  rate_id|integer|Id of the rate
  nights|integer|number of nights spent by the guest
  booking_id|integer|Id peculiar to the booking


## Get booking handling/management details.

>Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/hng/bookings');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => '6OFDM5pw2YZqbduGIn8CTHWBqjZDztbzQkhffQZq'
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
    "data": {
        "bookings": [
            {
                "id": 1162083,
                "country": "154",
                "guest": {
                    "id": 1162083,
                    "fname": "Njoku",
                    "lname": "Chisom",
                    "gender": null,
                    "title": "Mrs",
                    "phone": "01234567898",
                    "email": "test@yahoo.com",
                    "address": "n/a",
                    "marital_status": null,
                    "guest_type": null,
                    "corporate_id": null,
                    "created_at": "2017-10-25 16:10:55",
                    "updated_at": "2017-10-25 16:10:55",
                    "guest_meta": []
                },
                "property": "25449",
                "ptype": "hotel",
                "checkin": "2017-10-27 00:00:00",
                "checkout": "2017-10-28 00:00:00",
                "payment_status": null,
                "status": "NEW",
                "price": "16000",
                "currency_price": "0.00",
                "application_id": "wLV9nF9J8uo0SuaYXl7wCc9RV",
                "created_at": "2017-10-25 16:10:55",
                "updated_at": "2017-10-25 16:10:58",
                "currency_code": "NGN",
                "rooms": [
                    {
                        "id": 442256,
                        "booking_id": "1162083",
                        "room_id": "388750",
                        "rate_id": "52169",
                        "b_rate": "14400",
                        "s_rate": "16000",
                        "currency": "null",
                        "currency_s_rate": "0.00",
                        "nights": "1",
                        "created_at": null,
                        "updated_at": null
                    }
                ],
                "extra_info": {
                    "provider": "hotelsng",
                    "payment_type": "post-payment"
                },
                "affiliate_request": null,
                "address": "10-12 Agungi Road, Off Lekki - Ajah Expressway, Before Chevron Roundabout",
                "city": "Lekki",
                "state": "Lagos",
                "country_name": "Nigeria",
                "property_name": "Lekki Oxford Hotels",
                "property_contacts": [
                    {
                        "id": 8781,
                        "type": "phone",
                        "value": "+2348168000001",
                        "role_id": "0",
                        "property_id": "25449",
                        "working": "",
                        "replied": "",
                        "notes": "Hotel Official Phone number",
                        "rating": null,
                        "contact_role": null
                    },
                ],
                "handler": 0,
                "booking_status": {
                    "id": "0",
                    "value": "Not handled yet"
                },
                "messages": [],
                "review_status": {
                    "id": "0",
                    "value": "Not called"
                },
                "followup_status": {
                    "id": "0",
                    "value": "Unknown"
                },
                "handle_created_at": "2017-10-25 16:11:00",
                "desk_person": null,
                "matched_pattern": [],
                "comments": [
                    {
                        "added_on": "2017-10-23 16:55:27",
                        "booking_id": "1162083",
                        "comment": "Client has checked in....Edidiong",
                        "id": 893771,
                        "user_id": "58577"
                    },
                    {
                        "added_on": "2017-10-23 11:39:35",
                        "booking_id": "1162083",
                        "comment": "Room available,012777888,Opeyemi,client informed",
                        "id": 893126,
                        "user_id": "92521"
                    }
                ]
            },
```
This endpoint shows bookings handling/management details.
### HTTP Request

  `GET https://api.hotels.ng/internal/hng/bookings?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier
  bookings|array|array of booking related information
  guest.id| integer|Id of the guest
  guest.fname | string | First name of the guest
  guest.lname|string|Last name of the guest
  guest.title|string|Title of the guest
  guest.phone|integer|phone number of the guest
  guest.email|string|email address of the guest
  guest.address|string|address of the guest
  state|string|state where the hotel is located
  currency_code|string|currency code of the the locality
  check_in|string date|check in date of the customer
  check_out|string date|check out date of thew customer
  price|integer|price of the hotel
  city|string|city where the hotel is located
  state|string|state where the hotel is located
  payment_type|string|type of payment used
  property_url|string|url of property
  rooms|array|array of rooms related information
  room_id|integer|Id of the rooms
  rate_id|integer|Id of the rate
  nights|integer|number of nights spent by the guest
  booking_id|integer|Id peculiar to the booking
  address|string|address of the hotel
  country_name|string|name of the country the hotel is located
  property_name|string|name of the hotel
  property_contacts|array|array of the contact details corresponding to the property
  comments|array|array of things pertaining to the comments
  cpmment|string|comment on details pertaining to the booking
  user_id|integer|Id of the user

 

##Create a new booking for a specific hotel


>Example request:

```php
<?php

$client = new http\Client;
$request = new http\Client\Request;

$body = new http\Message\Body;
$body->addForm(array(
  'checkin' => '2017-11-03',
  'checkout' => '2017-11-04',
  'title' => 'Miss.',
  'fname' => 'Ebi',
  'lname' => 'Ojeikere',
  'email' => 'ebi.ojeikere@fcmb.com',
  'phone' => '09123456789',
  'rooms[0][room_id]' => '15660',
  'rooms[0][rate_id]' => '12335',
  'rooms[0][s_rate]' => '12000',
  'rooms[0][b_rate]' => '10800',
  'rooms[0][currency]' => 'NGN',
  'rooms[0][currency_s_rate]' => '8000',
  'access_token' => 'iy53WWxmaBBEAvRwhUhVhKkZZaTPiF4z3uO8qAvN',
  'country' => '154',
  'currency_code' => 'NGN',
  'ip_address' => '172.22.0.1',
  'address' => 'n/a',
  'ptype' => 'hotel',
  'property' => '16334',
  'additional_info' => 'I would like to make a booking reservation',
  'payment_type' => 'post-payment',
  'on_behalf_of_fname' => '''',
  'on_behalf_of_lname' => '''',
  'ga_client_id' => '231265846.1507051119',
  'provider' => 'hotelsng',
  'coupon_code' => '''',
  'utmTags' => '{"utm_medium":"gclid","utm_source":"eaiaiqobchmit4c2z_en1wivvymych2hmwtueaayaiaaegk5ovd_bwe","utm_campaign":"eaiaiqobchmit4c2z_en1wivvymych2hmwtueaayaiaaegk5ovd_bwe","p":null,"client_id":"59d3c66c58245","page_link":"\\/hotels-in-ondo\\/owo","page_title":"Hotels in Owo | Ondo |  Hotels.ng","visited_at":1509008760}'
), NULL);

$request->setRequestUrl('http://api.hotels.ng/internal/bookings/create');
$request->setRequestMethod('POST');
$request->setBody($body);


$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();
```

 >Example response:

```json
{
    "data": {
        "id": 1162116,
        "country": "154",
        "guest": {
            "id": 1162116,
            "fname": "Ebi",
            "lname": "Ojeikere",
            "gender": null,
            "title": "Miss.",
            "phone": "09123456789",
            "email": "ebi.ojeikere@fcmb.com",
            "address": "n/a",
            "marital_status": null,
            "guest_type": null,
            "corporate_id": null,
            "created_at": "2017-10-27 22:59:55",
            "updated_at": "2017-10-27 22:59:55",
            "guest_meta": []
        },
        "property": "16334",
        "ptype": "hotel",
        "checkin": "2017-11-03 00:00:00",
        "checkout": "2017-11-04 00:00:00",
        "payment_status": null,
        "status": "NEW",
        "price": "12000",
        "currency_price": "8000.00",
        "application_id": "wLV9nF9J8uo0SuaYXl7wCc9RV",
        "created_at": "2017-10-27 22:59:56",
        "updated_at": "2017-10-27 22:59:57",
        "currency_code": "NGN",
        "rooms": [
            {
                "id": 442289,
                "booking_id": "1162116",
                "room_id": "15660",
                "rate_id": "12335",
                "b_rate": "10800",
                "s_rate": "12000",
                "currency": "NGN",
                "currency_s_rate": "8000.00",
                "nights": "1",
                "created_at": null,
                "updated_at": null
            }
        ],
        "extra_info": {
            "additional_info": "I would like to make a booking reservation",
            "provider": "hotelsng",
            "payment_type": "post-payment",
            "on_behalf_of_fname": "''",
            "on_behalf_of_lname": "''",
            "coupon_code": "''"
        },
        "affiliate_request": null
    },
    "status": "success"
}
```

This endpoint creates a new booking for a specific hotel

### HTTP Request

 `POST https://api.hotels.ng/internal/bookings/create?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
checkin|string date|date of check in
checkout|string date|date of check out
title|string|title of guest
fname|string|first name of guest
lname|string|last name of guest
email|string|email address of guest
additional_info|string|additional information about guest
phone|integer|phoone number of guest
rooms|array|array of items pertaining to rooms
currency_code|string|currency code pertaining to the guest
ip_address|string|ip address of guest
address|string|address of the guest
ptype|string|the type of property
property|integer|id of property
additional_info|string|additional info that the guest may provide
payment_type|string|type of payment in use
ga_client_id|integer
provider|string|provider of the services
utmTags|string


### Response Body

Attribute | Type | Description
--------- | ------- | -----------
checkin|string date|date of check in
checkout|string date|date of check out
title|string|title of guest
fname|string|first name of guest
lname|string|last name of guest
email|string|email address of guest
additional_info|string|additional information about guest
phone|integer|phoone number of guest
rooms|array|array of items pertaining to rooms
currency_code|string|currency code pertaining to the guest
ip_address|string|ip address of guest
address|string|address of the guest
ptype|string|the type of property
property|integer|id of property
additional_info|string|additional info that the guest may provide
payment_type|string|type of payment in use
ga_client_id|integer
provider|string|provider of the services

##Edit bookings

>Example request:

```php
<?php

$client = new http\Client;
$request = new http\Client\Request;

$body = new http\Message\Body;
$body->addForm(array(
  'checkin' => '2017-09-16',
  'checkout' => '2017-09-17',
  'title' => 'Mr',
  'fname' => 'David',
  'lname' => 'Dagunduro',
  'email' => 'doc@hotels.ng',
  'additional_info' => 'I will like to confirm if I can get a discount for staying for 8 nights.',
  'phone' => '091234567890',
  'rooms[0][room_id]' => '19260',
  'rooms[0][name]' => 'Standard room',
  'rooms[0][s_rate]' => '8000',
  'rooms[0][b_rate]' => '6800',
  'rooms[0][rate_id]' => '33717',
  'rooms[0][currency]' => 'NGN',
  'rooms[0][currency_s_rate]' => '8000',
  'rooms[0][payment_type]' => 'all',
  'token' => 'QYiJWYhhDOygTM5YWOiBDZjMHbh5WZrNyZu5ycsVGdvhGQsVmbhB3KlRmbphWZrNCZhhjNhljMwETNxAjZygTZ$%abbaa882819f9b0d',
  '__' => '1',
  'access_token' => 'kvaHd5MFFrUtDeMTkTjZihc2qZCEcvEbgPRcsiRs'
), NULL);

$request->setRequestUrl('http://api.hotels.ng/internal/bookings/1153200/edit');
$request->setRequestMethod('POST');
$request->setBody($body);

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();
```
 >Example response:


```json
{
    
	"code": 0,
    	
	"status": "error",
    
	"errors": [],
    
	"message": "Access to booking 1153200 denied"

}
```
This endpoint edits a booking details
### HTTP Request

  `POST https://api.hotels.ng/internal/bookings/booking_id/edit?access_token= `

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
access_token | String | Generated access token from Oauth2 developer credentials
checkin|string date|date of check in
checkout|string date|date of check out
title|string|title of guest
fname|string|first name of guest
lname|string|last name of guest
email|string|email address of guest
additional_info|string|additional information about guest
phone|integer|phoone number of guest
rooms|array|array of items pertaining to rooms
token|string|token issued by agency to guest

###Response Body
Attribute | Type | Description
--------- | ------- | -----------
code | Integer | code value
status | String | the status of the request
errors | Array | list of errors
message |String | request message