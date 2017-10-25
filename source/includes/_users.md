# Users

The Users API allows you to view the list of users, and also gives you admin privileges like
authenticating the user. It also shows details of the user. The API cannot be viewed by ordinary
 users, only the admins.
##The end Point shows list of  users</br>
 
> Example request:

```php 
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/auth/hms/users?access_token=");
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
 This endpoint shows the list of users.

### HTTP Request
`GET https://api.hotels.ng/internal/auth/hms/users?access_token=`

### URL Parameters
Parameter | Type | Description
--------- | ------- | -----------
user_id | Number | Local id assigned to that user 
access_token | String | Generated access token from Oauth2 developer credentials


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


##The end point will authenticate users</br>

> Example request:


 ```php
<?php
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.hotels.ng/internal/auth/users/authenticate?access_token=");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

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
This endpoint helps authenticate the users.
### HTTP Request
 `POST  https://api.hotels.ng/internal/auth/users/authenticate?access_token= `
### URL Parameters
Parameter | Type | Description
--------- | ------- | -----------
user_id | Number | Local id assigned to that user 
access_token | String | Generated access token from Oauth2 developer credentials

###Response Body

Attribute | Type | Description
--------- | ------- | -----------
        id| integer | Customer user-supplied webhook identifier.
name| string | Name of the user
email | string | Email of the user
role| string| role of the user
  picture| string |url to the image of the user
 