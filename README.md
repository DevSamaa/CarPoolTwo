# README

# R7 and R8 - Identification of the problem you are trying to solve by building this particular marketplace app. / Why is it a problem that needs solving?
### CMP1042-3.1

Just this week 11000 scientists published a statment in the BioScience journal saying that "The world’s people face untold suffering due to the climate crisis unless there are major transformations to global society". Transportation is one of the biggest contributers to greenhouse emissions. There are a meriad of ways to reduce greenhouse emissions caused by the transportation industry. One relatively easy way of doing this is increasing the amount of people per car. That's where carpooling platforms come in. They allow people to find other individuals who are travelling in the same direction as they are. They can meet up with those people and travel in one car from A to B and share fuelcosts. It a win for the driver because they will get others to chip in on fuel costs. It's also a win for the passangers because they can get to their destination much cheaper than they normally would using conventional means of transport such as airplanes, busses and trains. Carpooling websites are already a big hit in many European countries and they have helped relieve highways of congestion and reduce CO2 emissions.
The BDO Group conducted research and found out that in 2018 carpooling had reduced CO2 emissions by 1.6 million tonnes in Europe.
After extensive research I found that although many Facebook groups are trying to connect people who are interested in carpooling there is not one good app for that yet in Australia. 
That's why I decided to create a rails web app for carpooling. 
Let's assume you're planning on driving to Sydney next weekend to visit your relatives and you have two free seats. You can now go to HitchARide and advertise your ride. Someone who also wants to go to Sydney on that day might see your ad and decide to join you for the ride. They money they pay you will help you cover the fuel costs and rather than 2,3 or even 4 cars with just one person in them, there will now only be one car on the road. This means that there will be less traffic, less poultion, less use of fuel(which is a finite resource). That's why HitchARide is a win win win situation. The driver wins because they get money to cover some of their fuel costs, the passenger wins because they get a good deal, and all of humanity wins because it means that we'll be destroying our environment at a less rapid pace than before. 


# R9 - Link to the deployed app
<br>
HitchARide on Heroku:

[https://fathomless-citadel-09367.herokuapp.com]

### There are two test accounts that you can use and try out:
* email: test1@gmail.com , password: 123456
* email: test2@gmail.com , password: 123456

# R10 - Link to the GitHub repository
<br>
HitchARide on GitHub:

[https://github.com/DevSamaa/CarPoolTwo]

# R11 - Description of your marketplace app
- Purpose: The purpose of this website is to connect people with spare seats in their cars with people who want to join them and chip in for fuel costs. If you are planning on driving from Melbourne to Adelaide for instace, you could advertise that ride. Someone who wants to go to Adelaide that same day might see the add and decide to join you. There are already some Facebook groups out there that are trying to do this, however they are not as effective and don't offer payment methods.
- Functionality / features: The website is currently in its MVP (Minumally Viable Product) stage and does not contain any stying or functionality beyond the basics. At the time users can sign up with their name, phone number and email address. They can advertize a rides and book rides and they can view which rides they have booked and which rides that they advertized were booked by others. Users can also currently edit and delete their own rides. They cannot delete or edit other peoples rides. In the future I'm planning on adding more functionalities to the app, inlcuding: a dynamic search field fro cities, a search for the rides, sorting of the rides based on time of departure, and a messaging system.
- Sitemap:
![The Sitemap](app/assets/images/sitemap.png)

- Screenshots:

![Screenshot 4](app/assets/images/screenshot4.png)

![Screenshot 1](app/assets/images/screenshot1.png)

![Screenshot 2](app/assets/images/screenshot2.png)

![Screenshot 3](app/assets/images/screenshot3.png)

- Target audience: The target audience is anyone who has spare seats in their car and is interested in earing a bit of money as well as reducing their carbon footprint. The target audiance is also comprised of people who dont' have a car or cannot drive their car(at the moment), or chose not to drive a car for whatever reason and also want to reduce their carbon footprint while getting a good deal.
- Tech stack: The app is built with ruby on rails and contains some HTML and embedded ruby. It's deployed on Heroku. The website also makes use of gems and other third party services such as S3, devise, and Stripe.

# R12 - User stories
### CMP1042-6.1 

### Driver
As a driver, I want to be able to advertize my ride, so that others can join me and chip in for fuel money.
As a driver, I want to be able to see whether my ride was booked, and if so how many times and by whom, so that I know whether I can count on having passengers or not.
As a driver, I want to be able to edit or delete my rides in case something changes, so that I can remain flexible.

### Passenger
As a passenger, I want to be able to view all the rides available, so that I can decide whether I want to book any of them.
As a passanger, I want to be able to book a ride, so that I can travel from a to b.
As a passenger, I want to be able to see who my driver is and how I can contact them, so that if I have any questions about the ride I can reach out to them.

# R13 - Wireframes
### CMP1042-6.2

You can find all the wireframes on Figma: 
[https://www.figma.com/file/8LEAyCiIPGcPVcwm6iZRZ1/Rails-App?node-id=0%3A1]

* Welcome screen on mobile:
![Welcome](app/assets/images/iPhone.welcome.png)

* Welcome screen on computer:
![Welcome](app/assets/images/MacBook.welcome.png)

* Welcome screen on tablet:
![Welcome](app/assets/images/Tablet.welcome.png)

---

* All Rides screen on mobile:
![All Rides](app/assets/images/iPhone.all_rides.png)

* All Rides screen on computer:
![All Rides](app/assets/images/MacBook.all_rides.png)

* All Rides screen on mobile:
![All Rides](app/assets/images/Tablet.all_rides.png)

---
* Show Ride screen on mobile:
![Show Ride](app/assets/images/iPhone.show_ride.png)

* Show Ride screen on computer:
![Show Ride](app/assets/images/MacBook.show_ride.png)

* Show Ride screen on tablet:
![Show Ride](app/assets/images/Tablet.show_ride.png)

---
* New Ride screen on mobile:
![New Ride](app/assets/images/iPhone.new_ride.png)

* New Ride screen on computer:
![New Ride](app/assets/images/MacBook.new_ride.png)

* New Ride screen on mobile:
![New Ride](app/assets/images/Tablet.new_ride.png)

---
* Bookings screen on mobile:
![Bookings](app/assets/images/iPhone.bookings.png)

* Bookings screen on computer:
![Bookings](app/assets/images/MacBook.bookings.png)

* Bookings screen on tablet:
![Bookings](app/assets/images/Tablet.bookings.png)

# R14 - ERD
### PRG1048-1.1

![The ERD](app/assets/images/ERD.png)


# R15 - Explain the different high-level components (abstractions)
### CMP1042-1.2
The app is built with the Ruby on Rails Framework. 

Ruby on Rails normally follows the MVC setup, meaning that it's made up of models, views and controllers who each play their own roles in the app. 
* Active Record: 
Active Record is the M (model) part of the MVC. This is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database. So the models basically stipulate how the database will be sotring information and relating to other databases.
* Object Relational Mapping: 
It is an implementation of the Active Record pattern which itself is a description of an Object Relational Mapping system.
Object Relational Mapping, commonly referred to as its abbreviation ORM, is a technique that connects the rich objects of an application to tables in a relational database management system. Using ORM, the properties and relationships of the objects in an application can be easily stored and retrieved from a database without writing SQL statements directly and with less overall database access code. This means that rather than having to write SQL code everytime you want to interact with an object that is stored in the database, you can just utilize ruby code in the controller. 
* Form Helper:
As the name suggest, form helpers make it easer for the developer to implement a form. This rails app uses the form_with helper in order to create a form for a new ride as well as editing a ride. 
* Active Storage:
Active Storage facilitates uploading files to a cloud storage service like Amazon S3, Google Cloud Storage, or Microsoft Azure Storage and attaching those files to Active Record objects. I have added the active storage component to my app when I added the function for the users to be able to upload in image of their car to AWS S3. This can be seen in the form that the users fill out in order to create a new ride. 


# R16 - Detail any third party services that your app will use
### CMP1042-1.3 

The app uses the following third party services:
* Devise: Devise is a gem that I used in order to allow users to sign up and login. Without the use of devise I would have had to code all of the functionality myself which would have been significantly more work. I did however add more fields to the standard devise form. I added a name and phone number field. Devise is part of my 'user' table.
* Stripe: Stripe is the payment system that is incorporated in the app. One of the benefits of using a payment provider such as Stripe is that I don't have to code the entire functionality myself. Another benefit is that I don't have to worry about where and how I store and process credit card data. 
* AWS S3: When a user creates a new ride they have the ability to upload an image of their car. These images are stored in S3 on AWS. 

# R17 - Describe your projects models in terms of the relationships (active record associations) they have with each other
### CMP1042-3.3
This project has three models:
* user
* ride
* booking

Every user can have many rides and bookings. This is because every user should be able to advertise multiple rides, and the user should also be able to make bookings.
You can look at the user.rb in the model section to see this relationship: 
```ruby
class User < ApplicationRecord
  has_many :rides
  has_many :bookings
end
  ```

Every ride belongs to just one user(driver) but can have multiple bookings and through other users(passengers). The reason for this is that every ride can only be advertized by one person but multiple people can join the ride (a car has multiple seats for passengers). The ride model also establishes that one picture can be attached to a ride object. You can look at the ride.rb in the model section to see this relationship: 

```ruby
class Ride < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :picture
end
```

The booking.rb model is essentially a table that stores all the transactions. So once a user clicks on the buy button, enters their credit card details and purchases the ride, this will be recorded in the booking table. This allows both the passanger and the driver to get an overview of the rides that they have 'bought' and 'sold'. Every booking belongs to a user(passanger) and to a ride. You can look at the booking.rb in the model section to see this relationship: 

```ruby
class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ride
end
```



# R18 - Discuss the database relations to be implemented in your application
### CMP1042-4.2

The database is made up of three models. The models are called: user, ride and booking. Each one of these models is storing different kinds of data. The user model is set up through devise and contains the users name, phone number, email address and password. The ride model contains all the data that relates to a ride such as the departure city, arrival city, the departure time and date, the price of the ride as well as some characteristics of the car (make, color, picture) that'll make it easier for the passanger to recognize it later on. The third model that I created is the booking table. Without it, transactions could be made but neither the passanger nor the driver would be able to look them up anywhere. The booking table stores the ride id as well as the user id. The user id in this case is not the same that you'd find in the ride table. The user id in the booking table refers to the id of the user who is currently logged in when the purchase is made. That way you can retrieve both the name of the passanger as well as the name of the driver(through the ride table). The booking model stores the foreign keys of user id and ride id. The ride model stores the foreign key of the user id.


# R19 - Provide your database schema design
### CMP1042-4.3

```ruby
ActiveRecord::Schema.define(version: 2019_11_05_075059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ride_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ride_id"], name: "index_bookings_on_ride_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.bigint "user_id"
    t.string "departure_city"
    t.string "arrival_city"
    t.text "meeting_point"
    t.date "ride_date"
    t.time "ride_time"
    t.string "car_color"
    t.string "car_make"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rides_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookings", "rides"
  add_foreign_key "bookings", "users"
  add_foreign_key "rides", "users"
end
```

# R20 - Describe the way tasks are allocated and tracked in your project (Trello)
### CMP1042-6.3

I used Trello for keeping track of all the tasks that I was working on. I started off my creating cards for higher level tasks and then adding a check list with items that break down the task into multiple sub tasks.
You can see some of the screenshots from my Trello board below.

![Trello](app/assets/images/trello1.png)

![Trello](app/assets/images/trello2.png)

![Trello](app/assets/images/trello3.png)
