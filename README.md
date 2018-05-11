# README

## Overview

1. Summary
2. Installation
3. User Stories
4. Wire framing
5. User Journeys
6. Entity Relationship Diagram
7. List of Tools Used
8. Project Management
9. Future Updates

------------------

Link : [hambahamba.com](https://hambahamba.herokuapp.com/)

## 1. Summary

This app was designed as part of the CoderAcademy assignment to build a two-sided marketplace.

**PROBLEM DEFINITION**: Imagine a  little old lady who needs to pick up a new fridge she just bought but drives a tiny  car. Imagine a mom needing to send a care package to a loved one in another state but the mail service in her country is notorious for losing packages. Imagine a law firm needs documents urgently delivered to the court house but no one in the firm has the time. People always need something moved from point A to point B but many time don't have the time or they resources to actually move that thing.

**SOLUTION**: An application where users that require something moved or delivered can post the job to the application. The job post will contain information about the delivery including the addresses, size and price they are willing to pay. Potential movers can browse the jobs on the application and offer to do a job that interests them. If jobs are urgent or special a premium price can be paid by the job poster to ensure the job is listed on the home page.This provides a solution for people who need to move something from point A to point B and also provides flexible, part time work for the movers.

The name of the application  **Hamba** comes from the zulu word for move.

A lot of web browsing is done on the phone so it was important for this web web application to be responsive.

## 2. Installation

------------------

1. Clone/Download [git hub repo](https://github.com/ShaunSpinelli/hamba)

2. While in the root of the **hamba** file in the console run.

``$ bundle`` - this will install all the dependencies

3. Set up environmental variables by creating a ``.env`` file in the root on the directory and updating the following values.

```ruby

HAMBA_DATABASE_PASSWORD=
GOOGLE_API_MAPS=
MAILGUN_API=
CLOUDINARY_KEY=
CLOUDINARY_API=
SENDGRID_USERNAME=
SENDGRID_PASSWORD=
GMAIL_USERNAME=
GMAIL_PASSWORD=
STRIPE_PUBLISHABLE_KEY=
STRIPE_SECRET_KEY=

```

4. Set Up database

This app uses postgres. Update username and port to match your local setting in your ```database.yml``` file.

```yml
#config/database.yml

development:
  <<: *default
  database: hamba_development
  username: postgres
  password: <%= ENV['HAMBA_DATABASE_PASSWORD'] %>
  port: 5433

```

now in the console run

``$ rails db:migrate``- this will set up the database


## 3. User Stories

------------------


![user stories](/app/assets/images/userstories.png)

## 4. Wire framing

------------------

Browse Jobs

![Browse Jobs](/app/assets/images/browsejobs.png)

Individual Job

![Show Job](/app/assets/images/jobshow.png)

Applications for job seen by job poster

![Applicants](/app/assets/images/applications.png)

Login Screen

![Login](/app/assets/images/login.png)

Profile

![Profile](/app/assets/images/profile.png)


## 5. User Journeys

------------------

![user journey of a visitor](/app/assets/images/ujvister.png)

![user journey of a mover](/app/assets/images/ujmover.png)

![user journey of a job poster](/app/assets/images/ujjopposter.png)

## 6. Entity Relationship Diagram

------------------

 ![entity relation diagram](/app/assets/images/ERD.png)

## 7. List of Tools Used

------------------

[**Ruby on Rails**](https://rubyonrails.org/)- web development framework

[**Devise**](https://github.com/plataformatec/devise)- for user authentication.

[**Geocoder**](https://github.com/alexreisner/geocoder)- for geocoding locations from addresses and calculating distances.

[**Google**](https://developers.google.com/maps/documentation/javascript/tutorial)- displaying maps

[**Stripe**](https://stripe.com/docs/checkout/rails) - for processing payments from users.

[**Rolify**](https://github.com/RolifyCommunity/rolify) - for authorisation of admin users.

[**Cloudinary**](https://cloudinary.com) - as a CDN for images on the webpage.

[**Carrierwave**](https://github.com/carrierwaveuploader/carrierwave) - handling uploads of images from users.

[**Postgresql**](https://www.postgresql.org/) - database solution.

[**Better Errors**](https://github.com/charliesome/better_errors)- improved error page during development.

[**DotEnv**](https://github.com/bkeepers/dotenv)- storing environmental variables.

[**Semantic-UI**](https://semantic-ui.com/)- styling framework.

[**Git**](https://git-scm.com/) and [**GitHub**](http://github.com)- version control

[**VScode**](https://code.visualstudio.com)- text editor

[**Draw.io**](www.draw.io)- diagrams

[**Balsamiq**](https://balsamiq.com/)- wire framing

[**Trello**](https://trello.com)-user stories and project management

[**Heroku**](www.heroku.com)- web hosting

------------------

## 8. Project Management

------------------

Trello was used to manage and plan the project.

1. An estimated time of completion was given for each user story

2. User story cards that were part of the MVP were highlighted

3. User story cards where the placed in one of three columns denoting what point they were at **Working On**,**Completed** and **For tomorrow** which was updated at the end of ech work day.

Project Board can be viewed at [**Trello**](https://trello.com/b/Qc5k3uvb/hamba-double-sided-market-place)

![trello boards](/app/assets/images/trelloboard.png)

[**Git**](https://git-scm.com/) was used for version control. A master was originally created with the base rails app. When ever a new feature was to be added (a user story) a new branch would be created and worked on. Once complete it would be merged with the master branch.

Branches were named from the feature that was being worked on:

View branches [here](https://github.com/ShaunSpinelli/hamba/branches/yours)

* **US** - general user stories

* **USM** - user stories related to the move, job applicant

* **JP** - job posters user stories

* **AD** - admin

* **UI** - all style related changes

![git branches](/app/assets/images/branches.png)

Code reviews were done during different situations throughout out the project.

The following code review was done by [Revel Roestorf](https://github.com/revelroestorf) after I asked for some advice on my views.

![coder review comment](/app/assets/images/codereview.png)

## 9. Future Updates

------------------

* Add Stripe Connect so that when a job poster pays a move hamba get a percentage.

* Add internal messaging system.

* Introduce user ratings system.

* Show routes for the delivery using google maps
