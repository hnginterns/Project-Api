# Search


Search for Hotels with parameters 
Scope to be used in Authorization 
Query For a List
For a List of parameter values, *see below*
Property_type : 
*	`'Villa'`, 
*	`'Apartment'`,
*	`'Guest House'`,
*	`'Hotel'`, 
*	`'Luxury Hotel'`, 
*	`'Guest House'`

##/search
	
	This enpoint allows you to search For Hotels

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=");
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
[
  {
    "status": "success",
    "data": {
      "total": 0,
      "bookings": null
    }
  }
]```



### HTTP Request

`GET http://staging.api.hng.tech/search?access_token=&with_images=&with_rates=&filters=&search_type=&property_type=`

`

### Query Parameters

Parameter | Type | Description | Required
--------- | ------- | ----------- |----------
access_token | Number | Token generated with client_id and client_credentials | True
with_images | Boolean | Should the response include property's image url | False
with_rates | Boolean | Should the response include property's rate | False
filters | String | Filtering out the data not needed from the response | False
search_type | String |  | False
property_type | String | Type of property to request | False



## /search/nearby

	Fetches all the properties nearby

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/search/nearby?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/xml",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);
```
> Example response:

```json
{
    "data": [],
    "status": "success"
}
```

>###	 HTTP Request

>	GET `http://staging.api.hng.tech/search/nearby?access_token=`

### Query Parameters

Parameter |  Type | Description | Required |
--------- | ------- | ----------- | -----------
access_token | Number | Token generated with client_id and client_credentials | True


