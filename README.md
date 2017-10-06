# Bill Tracker Api
This app is designed for a property owner to be able to track various expenses (i.e., water, sewage, insurance, property taxe, etc.) related to specific property(ies). The app was created with HTML, CSS, bootstrap, jQuery, and Javascript on the front end. The back end was constructed with PostgreSQL and Ruby on Rails.

There are three(3) tables on the backend - a users, houses, and expenses table. The Users have many houses and many expenses, and houses have many expenses. For more information, look at this quick and rough sketch of the ERD here https://imgur.com/iqKis79

## Dependencies
The Api was constructed upon a template from General Assembly. Install the following dependencies with `bundle install`:

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

Until Rails 5 is released, this template should follow the most recent released
version of Rails 4, as well as track `master` branches for `rails-api` and
`active_model_serializers`.

## Routes
The routes include:

  Prefix Verb     URI Pattern                    Controller#Action

expenses GET      /expenses(.:format)            expenses#index
         POST     /expenses(.:format)            expenses#create
 expense GET      /expenses/:id(.:format)        expenses#show
         PATCH    /expenses/:id(.:format)        expenses#update
         PUT      /expenses/:id(.:format)        expenses#update
         DELETE   /expenses/:id(.:format)        expenses#destroy

  houses GET      /houses(.:format)              houses#index
         POST     /houses(.:format)              houses#create
   house GET      /houses/:id(.:format)          houses#show
         PATCH    /houses/:id(.:format)          houses#update
         PUT      /houses/:id(.:format)          houses#update
         DELETE   /houses/:id(.:format)          houses#destroy

examples GET      /examples(.:format)            examples#index
         POST     /examples(.:format)            examples#create
 example GET      /examples/:id(.:format)        examples#show
         PATCH    /examples/:id(.:format)        examples#update
         PUT      /examples/:id(.:format)        examples#update
         DELETE   /examples/:id(.:format)        examples#destroy

 sign_up POST     /sign-up(.:format)             users#signup
 sign_in POST     /sign-in(.:format)             users#signin
         DELETE   /sign-out/:id(.:format)        users#signout
         PATCH    /change-password/:id(.:format) users#changepw
         
   users GET      /users(.:format)               users#index
    user GET      /users/:id(.:format)           users#show

See the links to the app below.

Client Deployed - Github Page URL -- https://ma-je.github.io/capstone-front-end/ Front-end repository - https://github.com/ma-je/capstone-front-end Api repository - https://github.com/ma-je/capstone-api Api deployed url -- http://floating-anchorage-61832.herokuapp.com



## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
