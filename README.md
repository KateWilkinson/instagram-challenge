Instagram Challenge
=======================

### An Instagram style web application built using Ruby on Rails

[![Code Climate](https://codeclimate.com/github/KateWilkinson/instagram-challenge/badges/gpa.svg)](https://codeclimate.com/github/KateWilkinson/instagram-challenge)

We were asked to build a web application for users to upload, comment on and like images - much like Instagram.

![Screenshot](./public/screenshots/screenshot1.jpg?raw=true)

## To install

Ensure Ruby and Rails are installed, then:

```
git clone https://github.com/makersacademy/instagram-challenge.git
cd instagram-challenge
bundle install
rake db:create
rake db:migrate
rails s
```
To run tests, run rspec from the command line.

## Basic functionality

- Users are able to sign up, log in and log out
- Users are able to upload images
- Users can see all uploaded images on the homepage, along with likes, comments and username of the creator
- Users can comment on images
- Users are able to 'like' images
- Users are only able to delete their own images and comments


## Still to complete/refactor

- User should only be able to 'like' an image once
- Adjust implementation of 'like' so it works without a page refresh
- Further styling to be implemented


## Technologies Used

- Code: Ruby
- Framework: Rails
- Testing: Rspec, Capybara, Shoulda
- Other: HTML, CSS with Bootstrap, PostgreSQL, Devise, Paperclip
