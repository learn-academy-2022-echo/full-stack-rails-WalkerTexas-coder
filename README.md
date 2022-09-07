# Full stack application 
  # set up commands
  $ rails new full_stack -d postgresql -T
  $ cd full_stack
  $ rails db:create
  $ rails s
  $ git remote add origin https://github.com/learn-academy-2022-echo/full-stack-rails-WalkerTexas-coder.git
  $ git add .
  $ git commit -m "Initial commit, full stack rails working"
  $ git push origin main
  $ git checkout -b index
  $ rails g model Hike name:string description:string
      invoke  active_record
      create    db/migrate/20220907172424_create_hikes.rb
      create    app/models/hike.rb
  $ rails g controller Hike
      create  app/controllers/hike_controller.rb
      invoke  erb
      create    app/views/hike
      invoke  helper
      create    app/helpers/hike_helper.rb
  $ rails db:migrate


# CRUD ACTIONS
# Read
  ### RESTful action Index - to see all the data from the DB
  - create a method called index taht retirves all the Hike data
  - create a file called index.html.erb that displays all the Hike info
  - create a route that allows our project to accept url requests for index
  - styled my returned values

  ### RESTful Action Show - to see just one item from the database
  - create a method called show that retrieves only one item from the DB using the ID /primary key as params
  - create a route that allows our project to accept url requests with a param of an id
  - create a view that shows all the data for one hike

# Create 
# Update
# Delete