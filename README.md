## To Do
1. Prerequisite
2. Create an Open API
3. Test API using CURL
4. Add authentication in API

## Tables Involved
user
user_educations
user_workplaces
friends
pictures
status
videos
comments

## Prerequisite
1. Install Ruby 2.7.0
2. Install Rails 6.0.4

## Create an Open API
rails new test_api --api

## Test API using CURL

CURL - client URL Request. It is CLI tool to receiving data from URL

-X - It denotes HTTP verb
-H - It will denote Header (Content-Type: appication/json)

curl -X GET http://0.0.0.0:3000/users/1
curl -X POST -d "user[name]=honesttest&user[password]=iiiiii" http://0.0.0.0:3000/users
curl -X PUT -d "user[name]=honesttest&user[password]=iiiiii" http://0.0.0.0:3000/users/1
curl -X DELETE http://0.0.0.0:3000/users/10

## Add authentication in API

1. HTTP Basic Authentication
   http_basic_authenticate_with name: "me", password: "@home" - Use at controller
2. Authenticate with Username and password
   SHA1(digest/sha1) and bcrypt algorithms for Encryption
3. Authentication as a Service (AZURE and AWS providing IAM)
   Authentication handed over trusted third party like FB, Google and so on. It will happen via OAuth
4. Token Authentication - JWT(Json Web token)
5. CSRF Token Authentication - It will avoid CSRF attack from hacker
6. LDAP Authentication (Light Directory Access Protocol) ->  This is suitable for database will store authentication information

### RAILS API with JWT Token

1. Add Below Gems
  gem 'rack-cors' # It prevents api call from unknown origin .Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
  gem 'bcrypt' # Hasing the password for user. (Encryption Library) Use Active Model has_secure_password
  gem 'jwt'
