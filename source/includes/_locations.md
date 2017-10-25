# Location
Acess to all Location Related Things - List of Scopes to be used in Authorization <br>
locations.read

The location API shows details about a location regarding a hotel, addresses, the latitude
and longitude, the continent the hotel is, properties around the hotel, It can viewed by all users
who might need location details about an hotel they want to book. The API has only the read scope peculiar to the normal user.

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


```
This endpoint shows the list of countries.

### HTTP Request

  `GET https://api.hotels.ng/location/countries?countries=&access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
countries| String | Countries list
access_token | String | Your access token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
name | string | Name of Country
continent_id| integer| Id of the Continent where the country is
  object_type| string |type of object supplied
 facility_name| string | name of facility supplied
img_url | string | link to the image of facility



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


```
This endpoint shows a list of properties around a location

### HTTP Request

`GET https://api.hotels.ng/location/propertylocations/property_id/property?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
property_id| String | Properties list
access_token | String | Your access token

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
property_id | integer | Id of the property supplied
road_id| string| Id of the road to the location
area_id| string | Id of the area to the location
 city_id| string | Id of the city to the location
 state_id| string | Id of the state to the location
 address| string | address to the location
 latitude|integer|latitude of the hotel's location
 longitude|integer|longitude of the hotel's location
 area.id|integer|Id of the area
 area.name|string|name of the area
 city.id|integer|Id of the city
 city.name|string|Name of the city
 city.country_code|string|country code of the city
 country.id|integer|Id of the country
 country.name|string|name of the country
 continent.id|integer|Id of the continent
 continent.code|integer|Id of the continent
 countinent.name|string|name of the continent

