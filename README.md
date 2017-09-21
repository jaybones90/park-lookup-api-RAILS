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



|Usage | METHOD       | URL       | Params |
| --------|:------------:| ---------:| ------:|
|See All Parks | GET    | `localhost:3000/api/v1/parks` |  |
|See A Specific Park | GET    | `localhost:3000/api/v1/parks/:id` |  |
|Search By Park Name | GET    | `localhost:3000/api/v1/parks?name=` | _name_ |
|See A Random Park | GET    | `localhost:3000/api/v1/park/random` |  |
|Create A Park | POST    | `localhost:3000/api/v1/parks` | _name, city, state, category(national or state)_ |
|Update A Park | PATCH    | `localhost:3000/api/v1/parks/:id` | _name, city, state, category(national or state)_ |
|Delete A Park | DELETE    |`localhost:3000/api/v1/parks/:id`|   | |






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
