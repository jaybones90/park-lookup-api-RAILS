# State and National Park Lookup API

This is API that returns details about state and national parks. You can search by park name as well and there is a route for returning a random park.

### Setup/Install Requirements

 Run these following commands in the terminal
 ```bash
 git clone https://github.com/jaybones90/park-lookup-api-RAILS.git
 cd park-lookup-api-RAILS
 bundle install
 rails db:create
 rails db:migrate
 rails db:seed
 rails server
```

# API Endpoints

### See All Parks
* Method: `GET`
* URL: `localhost:3000/parks`

### See A Specific Park
* Method: `GET`
* URL: `localhost:3000/parks/:id`

### Search By Park Name
* Method: `GET`
* URL: `localhost:3000/parks?name=`

### Random Park
* Method: `GET`
* URL: `localhost:3000/park/random`

### Create A Park
* Method: `POST`
* URL: `localhost:3000/parks`
* Required Params: _name, city, state, category(national or state)_

### Update A Park
* Method: `PATCH`
* URL: `localhost:3000/parks/:id`
* Required Params: _name, city, state, category(national or state)_

### Delete A Park
* Method: `DELETE`
* URL: `localhost:3000/parks/:id`







### Known Bugs
* No known bugs. Please submit a pull request, leave a comment, or email with any discovered bugs.

### Technologies Used
* Ruby 2.4.1

* Rails 5.1.2

* PostgreSQL

### By Authors
Jason Ainsworth
### Support and contact details
jasoncruze@gmail.com
### License
_MIT_
Copyright (c) 2017 **Jason Ainsworth**
