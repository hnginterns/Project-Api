# Users
# auth/hms/users
The end Point helps authenticate users 
```php 
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/auth/hms/users?access_token=");
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
   >The response will look like this:
  
   ``` 
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
  }
]
```
### HTTP Request
`GET http://staging.api.hng.tech/auth/hms/users?access_token=`
### QUERY Parameters
Parameter | Type | Description
--------- | ------- | -----------
user_id | Number | Local id assigned to that user 
access_token | String | Generated access token from Oauth2 developer credentials
### Authenticate Users 
The end point will authenticate users 
```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://staging.api.hng.tech/auth/users/authenticate?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Accept: application/json"
));

$response = curl_exec($ch);
curl_close($ch);

var_dump($response);Response
?>
```
   >The response will look like this:
  
   ``` 
   [
  {
    "status": "success",
    "data": {
      "id": 58574,
      "name": "Joy Okpe",
      "email": "test@hotels.ng",
      "phone": null,
      "role": "admin",
      "picture": "http://url-to-images/"
    }
  }
]
```
### HTTP Request
`POST http://staging.api.hng.tech/auth/users/authenticate?access_token=
