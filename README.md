## Accounting Software Challenge for Hanna Solutions

This repo contains the source code for the Minimalistic Accounting Software challenge using [Ruby on Rails](https://rubyonrails.org/) + [GraphQL](https://graphql.org/). While [React](https://reactjs.org/) is also implemented, it doesn't really make a big impact since the App was built using Ruby on Rails 7.0.4 which since >7.x uses Import Maps to control the JavaScript modules and is incompatible with React JSX.

The styling of the application is very basic: it offers a simple design while emphasizing functionality.

### Installation

1. Clone the repo and `cd` into the directory.
2. Run `bundle install` to install the required gems.
3. Run `rails db:migrate db:seed`. This will create the necesary database tables and will seed it with three `Users`, each one with two `Accounts` (one for **credit** and another for **debit**). It will also create two `Account Transactions` for each account, with today's date and a random `amount`, so you have a populated table instead of an empty one.
4. Run `rails server` and go to `localhost:3000`

### Usage

Once in `localhost:3000` you should be able to see an almost blank page with a dropdown in the top left, and a message in the center:

**Please select a user from the dropdown above.**

Proceed to select an user from the dropdown and you should now see:

- A section for creating `Account Transactions` defaulted to Today's date, an `Amount` number input and a dropdown to choose between `Accounts`.
- A table for `Account Transcations` for each `Account` the user has, with the account balance.

Once you create transactions you should be able to see them reflect in the same page, and the balance should be updated.

All queries and mutations are done using GraphQL as requested.

### Author

[Lucas Manuel Faner](https://www.linkedin.com/in/lucas-manuel-faner/).

Please do not hesitate to contact me at [l.manuel.faner@gmail.com](mailto:l.manuel.faner@gmail.com) or [devcratag@gmail.com](mailto:devcratag@gmail.com).
