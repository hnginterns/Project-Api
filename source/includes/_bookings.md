# Bookings
Access to all bookings related things<br>
The Scope used in Authentication - <em> bookings.read </em>


The bookings API is able to get details of specific bookings. Most of the features of this API are accessible only by an admin. The available to a normal user scopes is read.
## Get details of a specific booking

>Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/bookings/booking_id?access_token");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
?>
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
                ],
                "utm_info": null
            }...

```
This endpoint Fetches booking details for a specific booking.

### HTTP Request

  
  `GET https://api.hotels.ng/internal/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials




