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
  - create a method called index that retrieves all the Hike data  
  - create a file called index.html.erb that displays all the Hike info
    - use map to iterate over the array and show the different values  
  - create a route that allows our project to accept url requests for index  
  - styled my returned values

  ### RESTful Action Show - to see just one item from the database
  - create a method called show that retrieves only one item from the DB using the ID /primary key as params
  - create a route that allows our project to accept url requests with a param of an id
  - create a view that shows all the data for one hike
    - make sure that the show view has a link_to home or '/'

  #### Updates to index.html.erb
  - make sure that index only shows name and that when you click the name it link_to the show page for the right item

# Create 
  ## route alias 
  - uses the key word "as:"
  get 'hikes' => 'hike#index', as: 'hikes'
  get 'hikes/:id' => 'hike#show', as: 'hike'
  - using the alias name rails expects "_path" appended to the end of the alias name
    ex. hikes_path
  - update the existing link_to's to utilize the route aliases
  ## RESTful Action New - gives us an HTML Form to fill out
  - create a method stub called new
  - create a view for new
  - create a route for new
    - route should have an alias of 'new_hike'
  - Create a form to fill out for the new hike
  ### form_with
  - [form_with](https://apidock.com/rails/v5.2.3/ActionView/Helpers/FormHelper/form_with) method
    - takes arguments of 
      - url:
      - model:
      - method:
      - local:
  - form.label
  - form.text_field

  ## Create
  - create a create method that assigns a variable to an active record query 
  - create a route that allows an HTTP post request to be called to our application and maps to create method

  ### Private
  private methods are methods defined under the private keyword. Private methods can only be used within the class definition; they’re for internal usage. The only way to have external access to a private method is to call it within a public method. so the private method splits the class in two. everything above it can be seen by things outside of this class explicitly and and anything inside it can only be seen by other methods in the class.

  #### Strong Params
 -  utelizing the params method and the require we can identify what we are allowing to be sent into our application and reject everything else

 ### updating the New View and controller
  Currently our view does not allow for the information to be published to our database. Require is calling on a symbol of :hike that should represent a generic object for our class. TO navigate this we need to 
  - change the form_with method from using
    - url: 'table_name', local: true 
    to
    - model: @instance_variable
  
  This means we need a generic instance of our class to send over from the new method with we can creat by assigning an @instance_variable to ModelName.new
  - in my case @hike = Hike.new

# Update
# Delete