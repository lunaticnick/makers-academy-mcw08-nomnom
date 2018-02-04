![USEDPOST](https://img.shields.io/badge/USES-RAILS-red.svg?style=for-the-badge) ![USEDPOST](https://img.shields.io/badge/USES-GIT-orange.svg?style=for-the-badge)


# Yelp

This clone of Yelp was created during week 8 of Makers' Academy by Keran Braich, Kesha Kumshayev, Rhys Kyte, Nikolaos Sakellarios, Calum Widdall and Tim Williamson. It was our first project using Rails and completed in 5 days.

The specifications given were as follows:

#### V1 Specification

- Visitors can create new restaurants using a form, specifying a name and description
- Restaurants can be edited and deleted
- Visitors can leave reviews for restaurants, providing a numerical score (1-5) and a comment about their experience
- The restaurants listings page should display all the reviews, along with the average rating of each restaurant
- [Validations](https://github.com/makersacademy/course/blob/master/walkthroughs/validations.md) should be in place for the restaurant and review forms - restaurants must be given a name and rating, reviews must be given a rating from 1-5 (comment is optional)

#### V2 Specification

* Users can register/login

* Some indication should be given on the page (as part of the layout) whether the user is currently logged in, along with links to the available actions (i.e. Logout/Edit account is signed in, otherwise Sign In/Sign Up)
* The email address of the reviewer should be displayed as part of the review
* *Optional* - Users can't review a restaurant which they created

#### V3 Specification

* A user must be logged in to create restaurants
* Users can only edit/delete restaurants **which they've created**
* Users can only leave **one review per restaurant**
* Users can delete their own reviews

## Solution
![Screenshot](/public/NomNom-screenshot.png)
Our finished app met all specifications, though given more time we would have liked to add profile images to restaurants and users, as well as tidying up the layout of the page.

## How to install


## How to install

First you need to clone the depository on your local machine. To do so, please open your favourite CLI and use the following commands:

```
git clone git@github.com:lunaticnick/makers-academy-mcw08-nomnom.git local_directory_name
cd local_directory_name
```

Then in order to run the all, please run ```rails s``` in your command line from the root directory, then visit localhost:3000 (or whichever port number is used) in your browser.
