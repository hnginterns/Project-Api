# Users

The Users endpoints allows you to view the list of registered users in the organisation, authenticate users and also shows details of the user. </br>
The endpoint can  only be accessed by the admins.
</br>
The scopes to be used for authentication -  <em>bookings.read, bookings.create</em>

##Show list of users of an application</br>
 
> Example request:

```php 
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/auth/hms/users');
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
[
  {
    "status": "success",
    "data": {
      "id": 1,
      "name": "Administrator",
      "email": "management@hotels.ng",
      "phone": null,
      "picture": "http:\\/\\/url-to-images\\/",
      "hms": {
        "user_id": 1,
        "permission_id": 2,
        "custom_rights": [],
        "uuid": "ecf4c217-b203-47c6-aca5-dd92c1851e63",
        "app_id": 1,
        "role_id": 2,
        "can_create": 1,
        "can_read": 1,
        "can_update": 1,
        "can_delete": 1,
        "name": "admin",
        "use_otp": 1,
        "permission": {
          "can_create": true,
          "can_read": true,
          "can_update": true,
          "can_delete": true,
          "app": {
            "name": "HMS",
            "use_otp": 0,
            "role": {
              "id": 2,
              "uuid": "ecf4c217-b203-47c6-aca5-dd92c1851e63",
              "name": "admin",
              "use_otp": 1
            }
          }
        }
      }
    }
  },
 ]
 ```
This endpoint shows the list of users of an application.

### HTTP Request
`GET https://api.hotels.ng/internal/auth/{application}/users?access_token=`

### URL Parameters
Parameter | Type | Description
--------- | ------- | -----------
user_id | Number | Local id assigned to that user 
access_token | String | Generated access token from Oauth2 developer credentials
applicaton|string|

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
name| string | Name of the user
email | string | Email of the user
picture|string|picture of user
user_id| integer| Id of the user
permission_id| integer |Id for the user to get permission
 uuid| string | Internal Id
app_id | integer |id peculiar to the app 
role_id | integer | id peculiar to the role
can_create|boolean|does the admin have permission to create?
can_read|boolean|does the admin have permission to read?
can_update|boolean|does the admin have permission to update?
can_delete|boolean|does the admin have permission to update?


##Authenticate users</br>

> Example request:


 ```php
<?php
$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/auth/users/authenticate');
$request->setMethod(HTTP_METH_POST);
$request->setBody(array(
  'access_token' => 'XXX-Your-Access_token-XXX',
  'email' => 'Doe@hotels.ng',
  'token' => 'ftduyhicvbhcncbxxxxxxxxxxxxxxx',
  'do_jwt_reauth' => '1',
  'application' => 'hms'
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
    "data": {
        "id": "9999",
        "name": "John Doe",
        "email": "Doe@hotels.ng",
        "phone": null,
        "role": "admin",
        "picture": "http://url-to-images/"
    },
    "status": "success"
}
```
This endpoint helps authenticate the users.

### HTTP Request

 `POST  https://api.hotels.ng/internal/auth/users/authenticate?access_token= `

### URL Parameters

Parameter | Type | Description
--------- | ------- | -----------
token | String | Local id assigned to that user 
access_token | String | Generated access token from Oauth2 developer credentials
email | String | The user's email address as provided by the organisation
token | String | The name of application been logged into.

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
id|string|user-supplied webhook identifier
name | String | The user's full name
email | String | The user's email address as provided by the organisation
phone | String | The user's mobile number
picture | String | The image of the user

##Log in users</br>

> Example request:


 ```php
<?php

$request = new HttpRequest();
$request->setUrl('http://api.hotels.ng/internal/auth/users/login');
$request->setMethod(HTTP_METH_GET);

$request->setQueryData(array(
  'access_token' => 'xxxxxYYYYYYZZZZZZZx',
  'email' => 'doc@hotels.ng',
  'password' => 'xyz',
  'application' => 'hms',
  'do_sign_in' => '1',
  'do_jwt_token' => '1',
  'action' => 'CRM_AUTH',
  '__i' => '1'
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
                "data": {
                    "id": "12345",
                    "name": "Test User",
                    "email": "test@hotels.ng",
                    "phone": null,
                    "role": "admin",
                    "picture": "http://api.crm.hotels.ng/media/users/12345.jpg",
                    "auth_token": "xxxxxYYYYYYZZZZZZZ",
                    "can_create": false, //custom permissions (to add to role)
                    "can_read":   true,  //custom permissions (to add to role)
                    "can_update": false, //custom permissions (to add to role)
                    "can_delete": false  //custom permissions (to add to role)
                },
                "status": "success"
            }
```
This endpoint logs in users.

### HTTP Request
 `POST http://api.hotels.ng/internal/auth/users/login `

### URL Parameters

Parameter | Type | |Description
--------- | ------- | -----|-----------
 application | string | required|Name of Application being logged into e.g. panel 
 email|string|required|User email e.g. test@hotels.ng
 password    |string |required| 
       otp   |string|not required|one time password - required for applications set to require otp

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
name| string | Name of the user
email | string | Email of the user
picture|string|picture of user
user_id| integer| Id of the user
 auth_token| string | authentication token 
role | integer| role of the user
can_create|boolean|does the admin have permission to create?
can_read|boolean|does the admin have permission to read?
can_update|boolean|does the admin have permission to update?
can_delete|boolean|does the admin have permission to update?

