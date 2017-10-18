# Users

```
# Users
Our users vary from customers to clients .
## Get All Users
Using the endpoint below will help you to get all the users.
```ruby
require 'Users'

api = User::APIClient.authorize!('string')
api.Users.get
```


```python
import user

api = user.authorize('string')
api.users.get()
```


```shell
curl "http://example.com/api/users"
  -H "Authorization: string"
```


```javascript
const user = require('user');

let api = user.authorize('string');
let users = api.users.get();
```


> The above command returns JSON structured like this:


```json
 "/auth/hms/users": {
         "get": {
            "tags": [
               "Users"
            ],
            "description": "This endpoint shows the list of users.",
            "operationId": "list of users",
            "parameters": [
               {
                  "name": "access_token",
                  "in": "query",
                  "description": "Your Access Token",
                  "required": true,
                  "type": "string"
               }
            ],
               }
            }
         }
      },
     
```





### HTTP Request

`GET http://example.com/api/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_users | false | If set to true, the result will also include users.
available | true | If set to false, the result will include users that have already been adopted.

<aside class="success">
Remember — a happy user is an authenticated user!
</aside>

## Validation of user 
This endpoint helps in  validating users  .And always remember a  happy user is an authenicated user .

```ruby
require 'user'

api = user::APIClient.authorize!('string')
api.users.get(2)
```


```python
import user

api = user.authorize('string')
api.users.get(2)
```


```shell
curl "http://example.com/api/users/2"
  -H "Authorization: string"
```


```javascript
const user = require('user');

let api = user.authorize('string');
let max = api.users.get(2);
```


> The above command returns JSON structured like this:


```json
"/auth/users/authenticate": {
         "post": {
            "tags": [
               "Users"
            ],
            "description": "This endpoint helps in validating the users.",
            "operationId": "authenticate user",
            "parameters": [
               {
                  "name": "access_token",
                  "in": "query",
                  "description": "Your Access Token",
                  "required": true,
                  "type": "string"
               }
            ],
            "responses": {
               "200": {
                  "description": "successful",
                  "schema": {
                     "type": "array",
                     "items": {
                        
                     }
                  }
               },

```


This endpoint helps in validating  users.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/users/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

## Delete a Specific User

```ruby
require 'user'

api = user::APIClient.authorize!('string')
api.users.delete(2)
```


```python
import user

api = user.authorize('string')
api.users.delete(2)
```


```shell
curl "http://example.com/api/users/2"
  -X DELETE
  -H "Authorization: string"
```


```javascript
const user = require('user');

let api = user.authorize('string');
let max = api.users.delete(2);
```


> The above command returns JSON structured like this:


```json
{
  "id": 2,
  "deleted" : ":("
}
```


This endpoint retrieves a specific kitten.

### HTTP Request

`DELETE http://example.com/users/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to delete```