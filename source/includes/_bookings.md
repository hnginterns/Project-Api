# Bookings
Access to all bookings related things<br>
The Scope used in Authentication - <em> bookings.read </em>
</br>

The bookings API is able to get details of specific bookings. Most of the features of this API are accessible only by an admin. The available to a normal user scopes is read.
## Get details of a single booking

>Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/bookings/');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'booking_id' => '13',
  'access_token' => 'xxxxxxxxxxxxxxxxxxxx'
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
                    "guest_meta": []
                },
                   "ptype": "hotel",
                "payment_status": null,
                "status": "NEW",
                "price": "16000",
                "currency_price": "0.00",
                "application_id": "xxxxxxxxxxxxxxxxxxxxxx",
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
                        "notes": "Hotel Official Phone number",
                        "rating": null,
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
                        "roomtype": {
                            "id": 388750,
                            "name": "Standard Room (With Breakfast) (Exclusive Deal Based on Availability)",
                            "property_id": "73995",
                            "description": "",
                            "number_of_guests": "0",
                            "number_of_rooms": "0",
                            "minimum_stay_nights": "0",
                            "payment_type": "all",
                            "room_id": "388750"
                        }
                    }
                

```
This endpoint Fetches booking details for a specific booking.

### HTTP Request

  
  `GET https://api.hotels.ng/bookings/booking_id?access_token=`

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
room_type|object|details of information pertaining to room type
property_contacts|array|array of information showing the contact details of a property
notes|string|message showing information about the contact details
type|string|type of device used for contact
value|string|value for contact device destination 
provider|string|customer service provider
roomtype.name|string|type of room available
roomtype.property_id|string|property Id of the room type
roomtype.room_id|string|Id of the room type
roomtype.payment_type|string|type of payment in use
nights|string|number of nights to be spent
