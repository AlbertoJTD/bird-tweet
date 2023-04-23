# Bird Tweet 🐦

This is a clon of Twitter

<p align="center">
  <img src="https://user-images.githubusercontent.com/89556233/233819375-17a82675-24bc-4d0a-b4f8-3b87fd73f44c.png" width="1000" height="550" style="text-align:center;">
</p>


## Minimum requirements
- Ruby 3.2.1
- Rails 7.0.4

# Libraries
- [Stimulus JS](https://stimulus.hotwired.dev)
- [Tailwind CSS](https://tailwindcss.com/)
- [Turbo](https://turbo.hotwired.dev/)
- [PosgreSQL](https://www.postgresql.org/)

## Configuration
1. Create the data base and run the migrations:
```ruby
rails db:create db:migrate
```

2. Install the gems
```ruby
bundle install
```

## Start the server
After pre-configuring the application, use one of the following commands to run the server:
```ruby
rails s
./bin/dev
```

