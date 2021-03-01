# README

The application is a rails application. I decided to do it this way for the following reasons:

1. Given that a citation can be reviewed by any number of users, I wanted to have this as a multi-user access, and a web app was an easy way to show this
2. I needed to be able to store the reviewers and their review status, and a rails app has the storage built in

## Running

Before running, please ensure:

1. Ruby version is 2.5.5
2. Sqlite is installed
3. Install the required gems via `bundle install`
4. Create the database via `bundle exec rake db:create`
5. Seed the database via `bundle exec rake db:seed`
6. Start the server via `bundle exec rails s`
7. In your broswer, go to `http://localhost:3000`

## Create new user

If you have logged in for the first time, you will be asked to create a new user. Entering a user name here is enough

## Citations list

After creating a new user (if required), you will be presented with the citations list. It displays the first twenty citations title, along with publication date and it's stauts (included, excluded, undecided)

Clicking on the Review link will take you to the show page

## Citation show page

This page displays all the information about the citation, including the abstract

At the bottom is a table that shows who has reviewed the citation and when, along with their review status

If the user has not yet reviewed the citation, there will be two buttons at the bottom for Relevant or Not Relevant for the user to mark the citation

## Running tests

Tests have been written using rspec.

To run, `bundle exec rpsec`
