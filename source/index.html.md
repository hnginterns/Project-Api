---
title: Hotels.ng API Docs

language_tabs: # must be one of https://git.io/vQNgJ
  - php: PHP

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='internal/index.php'>Admin mode</a>

includes:
  - search
  - bookings
  - hotels
  - images
  - facilities
  - reviews
  - locations
  - rooms
  - rates
  
search: true
---

# Introduction

Welcome to the Hotels.ng API! You can use our API to integrate within your applications.

# Authentication

This Endpoint provides you with access Token

##Authenticating with OAUTH

> Example request:

```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/oauth/authenticate?grant_type=&client_id=&client_secret=&scope=");
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
  "access_token": "LdRcatkZa2vX8RjRdIf96WrUvnUN0w0QHE2WfOrp",
  "token_type": "Bearer",
  "expires_in": 3600
}
```


Hotels.ng uses <strong>client_id</strong> and <strong>client_secret</strong> to allow access to our API. The Client ID and Secret will provide an Access Token which will now grant you access to all our Hotels.ng Endpoints.<br> 
The default <strong>grant_type</strong> is <em>client_credentials.</em><br>
The List of <strong>scopes</strong> are available at the deck of all the endpoints you are consuming. <br>
You can make use of multiple scopes by using ',' as delimiter.<br>

<aside class="notice">
Make sure you sign up for a developer key
</aside>

### HTTP Request

`GET https://api.hotels.ng/oauth/authenticate?grant_type=&client_id=&client_secret=&scope=`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
grant_type| String|Level of access the API Supports 
client_id | String |ID of the user requesting access
client_secret | String |Your secret key
scope | String |Operation to perform. (<em>query, properties.read, images.read, facilities.read,...</em>)



### Response Body

Attributes | Type | Description
--------- | ------- | -----------
access_token| string|access token issued to the consumer
token_type | string |type of token issued
expires_in | integer |the duration of time the token is valid for

