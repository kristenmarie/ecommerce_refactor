# E-Commerce Site
#### Ruby on Rails Epicodus Independent Project, 12.08.2017

![image](image link here)

#### By Kristen Marie Kulha

## Description

This simple web application allows admin users to add, update and delete products. Users can click on products to view their detail page and add them to their cart.

##User Stories

* Admins can add, update and delete new products
* Users can click an individual product to see the detail page.
* Users can add a product to their cart.

## New Features

* AJAX added so the following can be done without a page reload:
  * Users can add products to shopping cart from index page. The item is added and the number of items in the navbar will be updated.
  * Users can click product to hide/show product details.
  * Users can remove items from shopping card. When the delete link is clicked, the item will be removed from the card and the total price will be updated.
* Users can't order a negative number of items.
* New flash messages will display for signing up, signing in, and singing out.
* Admins now have product update and delete functionality.
* Admin update and delete functionality include flash messages.
* Product price allows other than whole dollar amounts for admin product creating (for example 3.99).
* Product validations have been added.


## Setup/Installation Requirements
* Clone this repository
* In terminal, navigate to this projects root directory (ecommerce_refactor)
* In terminal (while still in root directory), enter the following commands:
  * ``` $ bundle install ```
  * ``` $ rails db:setup ```
  * ``` $ rails db:test:prepare ```
  * ``` $ rails db:seed```
  * ``` $ rails serve ```
* Then navigate to http://localhost:3000/ in web browser of choice.



## 🐛Known Bugs🐛

There are no known bugs at this time.

## Future functionality

* Add Paperclip for product image upload.
* Add Stripe so users can pay when finalizing orders.
* Add password validations to ensure a user's password is sufficiently complex.
* Add admin links to navbar so admins can easily add, update and delete products.
* Fix the row height for products, which can quickly become uneven.
* Add integration testing for AJAX functionality.
* Add further AJAX functionality where it might be useful.

## 📧Support and contact details📧

Feel free to contact me at kristen.m.kulha@gmail.com

## Technologies Used

_Ruby on Rails, RSpec, Capybara, AJAX, Materialize_ 

### License

This software is licensed under the MIT license.
Copyright (c) 2017 **_Kristen Marie Kulha_**
