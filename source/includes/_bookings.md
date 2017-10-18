# Bookings
## Get Bookings By Id

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/hotels/{hotel_id}?access_token=");
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
 > The response will look like this:

```
{
  "data": {
          "total":0,
          "bookings":[]
      },
  "status":"success"
}
```
### HTTP Request

  `GET http://staging.api.hng.tech/bookings/booking_id?access_token=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
booking_id | Number | Local id assigned to that booking
access_token | String | Generated access token from Oauth2 developer credentials