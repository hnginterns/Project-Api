# Search

With this endpoint, you can search of hotels based on some specific criteria of your choice and these criteria can be based on the type of property, based on your current location, it could even be based on the name of a hotel you know of.

Search for Hotels with parameters 
Scope to be used in Authorization 
Query For a List
For a List of parameter values, *see below*
Property_type : 
*	`Villa`, <br>
*	`Apartment`,<br>
*	`Guest House`,<br>
*	`Hotel`, <br>
*	`Luxury Hotel`, <br>

##Search for hotels
	
	This endpoint allows you to search For Hotels

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "[
  {
    \"state\": \"id ullamco in\"
  },
  {
    \"country\": \"elit aliquip\",
    \"city\": \"minim commodo\",
    \"state\": \"exercitation pariatur non cupidatat\"
  }
]");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
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
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  }

```



### HTTP Request

`GET https://api.hotels.ng/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=`

### Query Parameters

Parameter | Type | Description | Required
--------- | ------- | ----------- |----------
access_token | String | Token generated with client_id and client_credentials | True
with_images | Boolean | Should the response include property's image url | False
with_rates | Boolean | Should the response include property's rate | False
filters | String | Filtering out the data not needed from the response | False
search_type | String |  | False
property_type | String | Type of property to request | False


###Response Body

Attribute | Type | Description
--------- | ------- | -----------
 Total | integer| Total result searched



##Search for properties nearby

	Fetches all the properties nearby

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search/nearby?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
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
    "data": {
      "total": 0,
      "bookings": null
    }
  }
```

###	HTTP Request
  
`GET https://api.hotels.ng/search/nearby?access_token= `

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token| String | Token generated with client_id and client_credentials | True

### Response Body
Attribute | Type | Description
--------- | ------- | -----------
 Properties| String| Properties around the locale
 Message | String |Message about property
 Name | String | Name of owner


## Get hotel count in a location

	This endpoint will return the number of hotels that are around a particular location, you will be required to provide the location and your access token as query parameters in order to get a successful response. The location can be an address in a country or region.

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/search/location/count/bulk?access_token=&property_type=&location_type=&location=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
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
    "data": {
      "total": 0,
      "bookings": null
    }
  },
  {
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  }
```

###	 HTTP Request

GET `https://api.hotels.ng/search/location/count/bulk?access_token=&property_type=&location_type=&location=`

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token | String | Token generated with client_id and client_credentials | True
property_type | String |  | False
location_type | String |  | False
location | Array | Token generated with client_id and client_credentials | True

Attribute | Type | Description
--------- | ------- | -----------
 Count| Integer| Number of hotels around
 