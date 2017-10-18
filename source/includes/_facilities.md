# Facilities
Access to All reviews Related Things - List of Scopes to be used in Authorization<br>
    Facilities.read,<br>
    Facilities.create,<br>
    Facilities.delete, <br>
    Facilities.update<br>
## Show facilities for a hotel

```ruby

```
> Example response

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://private-13543-hotelsng1.apiary-mock.com/hotels/{hotel_id}/facilities?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);Response
```

```shell

```

```javascript

```

> Example response

```json
[
  {
    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }
  },
  {
    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }
  },
  {
    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }
  },
  {
    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }
  },
  {
    "status": "success",
    "message": "Object facilities",
    "data": {
      "id": 1967,
      "object_id": 25449,
      "facility_type_id": 100,
      "facility_type_count": null,
      "object_type": "hotel",
      "created_at": {},
      "updated_at": null,
      "facility_name": "Restaurant",
      "img_url": "restaurant.png"
    }
  }
]
```

This endpoint shows the facilities available for a specific hotel.

### HTTP Request

`GET /hotels/hotel_id/facilities`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token


## Show bank details for a hotel

```ruby

```
> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://private-13543-hotelsng1.apiary-mock.com/hng/bank_details/{hotel_id}?access_token=");
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

```shell

```

```javascript

```

> Example response:

```json
[
  {
    "status": "success",
    "data": {
      "id": 406,
      "property_id": 49583,
      "account_name": "Avalon Intercontinental nigeria LTD",
      "account_number": "035274049",
      "bank_name": "FCMB",
      "sort_code": null
    }
  },
  {
    "status": "success",
    "data": {
      "id": 406,
      "property_id": 49583,
      "account_name": "Avalon Intercontinental nigeria LTD",
      "account_number": "035274049",
      "bank_name": "FCMB",
      "sort_code": null
    }
  },
  {
    "status": "success",
    "data": {
      "id": 406,
      "property_id": 49583,
      "account_name": "Avalon Intercontinental nigeria LTD",
      "account_number": "035274049",
      "bank_name": "FCMB",
      "sort_code": null
    }
  },
  {
    "status": "success",
    "data": {
      "id": 406,
      "property_id": 49583,
      "account_name": "Avalon Intercontinental nigeria LTD",
      "account_number": "035274049",
      "bank_name": "FCMB",
      "sort_code": null
    }
  }
]
```

This endpoint shows the banks details of a specific hotel.

### HTTP Request

`GET hng/bank_details/hotel_id`

### URL Parameters
Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your access token