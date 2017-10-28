# Facilities
The facilities API shows the facilities a hotel has, like a restaurant, as well as images of the faciility.


List of Scopes to be used in Authorization<br>
<em> Facilities.read</em>


## Show facilities for a hotel


> Example request:

```php
<?php

$request = new HttpRequest();
$request->setUrl('https://api.hotels.ng/hotels/12345/facilities');
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
```

> Example response:

```json

{  
  "status":"success",
  "message":"Object facilities",
  "data":[  
    {  
      "id":,
      "object_id":"25449",
      "facility_type_id":"100",
      "object_type":"hotel",
      "created_at":"2017-01-22 19:54:01",
      "updated_at":null,
      "facility_name":"Restaurant(s) ",
      "img_url":"restaurant.png"
    },
    {  
      "id":,
      "object_id":"25449",
      "facility_type_id":"101",
      "object_type":"hotel",
      "created_at":"2017-01-22 19:54:01",
      "updated_at":null,
      "facility_name":"Bar\/Lounge",
      "img_url":"bar.png"
    },
    {  
      "id":1969,
      "object_id":"25449",
      "facility_type_id":"105",
      "object_type":"hotel",
      "created_at":"2017-01-22 19:54:01",
      "updated_at":null,
      "facility_name":"Wireless Internet",
      "img_url":"wireless.png"
    }
  ]
}


```

This endpoint shows the facilities available for a specific hotel.

### HTTP Request

`GET https://api.hotels.ng/hotels/hotel_id/facilities?access_token=`

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
hotel_id | Number | id of the Hotel
access_token | String | Your generated access token



###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier
object_id | integer | Id of the object supplied
facility_type_id| integer| Id of the facility
object_type| string | Type of object supplied
facility_name| string | name of facility supplied
img_url | string | link to the image of facility

