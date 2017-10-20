# Location
Acess to all Location Related Things - List of Scopes to be used in Authorization <br>
locations.read

##Show list of countries

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/hotels/{hotel_id}?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
?>
```

 > Example response:

```json
[
  {
    "data": {
      "0": {
        "id": 1,
        "name": "Afghanistan",
        "code": "AF",
        "continent_id": "3",
        "latitude": "0.00000",
        "longitude": "0.00000",
        "continent": {
          "id": 3,
          "name": "Asia",
          "latitude": "0.00",
          "longitude": "0.00"
        }
      },
      "1": {
        "id": 2,
        "name": "Albania",
        "code": "AL",
        "continent_id": "5",
        "latitude": "0.00000",
        "longitude": "0.00000",
        "continent": {
          "id": 5,
          "name": "Europe",
          "latitude": "0.00",
          "longitude": "0.00"
        }
      }
    },
    "status": "success"
  },

]
```
This endpoint shows the list of countries.

### HTTP Request

  `GET https://api.hotels.ng/location/countries?countries=&access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
countries| String | Countries list
access_token | String | Your access token



##Show list of properties around <br>a location

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "
https://api.hotels.ng/location/propertylocations/property_id/property?access_token=
");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);?>
```


 > Example response:

 ```json
 [
  {
    "status": "success",
    "data": null,
    "id": 3499,
    "property_id": 25449,
    "road_id": null,
    "area_id": 163,
    "city_id": 196,
    "state_id": 25,
    "address": "10-12 Agungi Road, Off Lekki - Ajah Expressway, Before Chevron Roundabout",
    "longitude": 3.5166,
    "latitude": 6.43788,
    "airport_code": null,
    "postal_code": null,
    "zip_code": null,
    "created_at": null,
    "updated_at": null,
    "deleted_at": null,
    "area": {
      "id": 163,
      "name": "Phase 1"
    },
    "road": null,
    "city": {
      "id": 196,
      "name": "Lekki",
      "country_code": "NG",
      "country": {
        "id": 154,
        "name": "Nigeria",
        "code": "NG",
        "continent_id": 1,
        "continent": {
          "id": 1,
          "name": "Africa"
        }
      }
    }
  },

]
```
This endpoint shows a list of properties around a location

### HTTP Request

`GET https://api.hotels.ng/location/propertylocations/property_id/property?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
property_id| String | Properties list
access_token | String | Your access token