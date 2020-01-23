# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:

  Model: refers to the data, data structure & data superstructure of your application.

  View: how the user interacts with and experiences the data model in your application

  controller: all the behaviors that the application user can perform on the data model (i.e. CRUD)

  Researched answer:

  Matt:

  Model: Data
  View: "Shapes the payload"
  Controller: "Orchestrates the dance"

  Model–view–controller (usually known as MVC) is a software design pattern commonly used for developing user interfaces which divides the related program logic into three interconnected elements. This is done to separate internal representations of information from the ways information is presented to and accepted from the user. This kind of pattern is used for designing the layout of the page.

  Model
  The central component of the pattern. It is the application's dynamic data structure, independent of the user interface. It directly manages the data, logic and rules of the application.

  View
  Any representation of information such as a chart, diagram or table. Multiple views of the same information are possible, such as a bar chart for management and a tabular view for accountants.

  Controller
  Accepts input and converts it to commands for the model or view.
  In addition to dividing the application into these components, the model–view–controller design defines the interactions between them.

  The model is responsible for managing the data of the application. It receives user input from the controller.

  The view means presentation of the model in a particular format.

  The controller responds to the user input and performs interactions on the data model objects. The controller receives the input, optionally validates it and then passes the input to the model.

  As with other software patterns, MVC expresses the "core of the solution" to a problem while allowing it to be adapted for each system. Particular MVC designs can vary significantly from the traditional description here.

  Source: https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the controller in the file PROJECT/app/controllers/model_controller.rb
  ```
  class ModelController < ApplicationController
    def index
      @models = Model.all
      render json: @models
    end
  end
  ```

  Step 3: Create the View in the file PROJECT/app/views/about.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.

  /users/       method="GET"     # :controller => 'users', :action => 'index'

  By convention the "index" method of our model controller displays the list of all instances of our model (in this case users) using the HTTP verb "GET"

  /users/1      method="GET"     # :controller => 'users', :action => 'show'

  By convention the "show" method of our model controller displays a single instance of our model using the HTTP verb "GET". This is typically based on the :id we passed into the URL (i.e. /users/:id). In this case we would be displaying user 1.

  /users/new    method="GET"     # :controller => 'users', :action => 'new'

  By convention the "new" method of our model controller displays a form to create a new instance of our model (in this case a new user) using the HTTP verb "GET". This will not be persisted to the database until...

  /users/       method="POST"    # :controller => 'users', :action => 'create'

  By convention the "create" method of our model controller persists a new instance of our model to our database (in this case a new user) using the HTTP verb "POST"

  /users/1/edit method="GET"     # :controller => 'users', :action => 'edit'

  By convention the "edit" method of our model controller displays an instance of our model and allows a user to make changes to that instance of our model (in this case to change the data of a single, existing user) using the HTTP verb "GET". This will not be persisted to the database until...

  /users/1      method="PUT"     # :controller => 'users', :action => 'update'

  By convention the "update" method of our model controller persists an updated instance of our model to our database (in this case an updated user) using the HTTP verb "PUT"

  /users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

  By convention the "destroy" method of our model controller removes an individual instance of our model (in this case user 1) using the HTTP verb "DELETE"

3b. Which of the above routes must always be passed params and why?

  The show, edit, update, & destroy routes must all be passed params as they all work on individual instances of our data model

4. What is the public folder used for in Rails?

  Your answer:

  I assume for files that need to be available regardless if the server is reachable.

  Researched answer:

  The public directory contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. Files that are inside this directory are available in https://appname.com/filename directly.

  source: https://www.sitepoint.com/a-quick-study-of-the-rails-directory-structure/


5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

GET "/game/:guess" => "main#show"


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: No Idea.

  Researched answer:

    The HTML action Attribute is used to specify where the formdata is to be sent to the server after submission of the form. It can be used in the <form> element.

    <form action="URL">

    URL: I t is used to specify the URL of the document where the data to be sent after the submission of the form.
    The possible values of the URL are:

    absolute URL: It points to another website link. For Example: www.gfg.org
    relative URL: It is used to point to a file within a webpage.

    source: https://www.geeksforgeeks.org/html-action-attribute/

    Matt: <%= form_tag action: '/main/game', method: :get do %>
          ...
          <% end %>

7. Name two rails generator commands and what files they create:

  Your answer:
    rails g:
      Model your-model-name key0:value key1:value...
        generates a data model file your-model-name.rb in /app/models/
        generates a migration file your-model-name.rb in /db/migrate

      Controller
        generates a controller file your-model-names_controller.rb in /app/controllers/

      Resource
        generates a data model file your-model-name.rb in /app/models/
        generates a migration file your-model-name.rb in /db/migrate
        generates a controller file your-model-names_controller.rb in /app/controllers/

      They also update some other files, but we won't get into that!

  Researched answer:


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. By convention, partial files are prefixed with an underscore.

2. The easiest way to work with Rails is to store all external data as UTF-8. If you don't, Ruby libraries and Rails will often be able to convert your native data into UTF-8, but this doesn't always work reliably, so you're better off ensuring that all external data is UTF-8.

3. http_basic_authenticate_with will protect HTTP request with an authentication

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: A piece of data stored on your computer used to track information such as if you're logged in or not.

  Researched answer:

An HTTP cookie (also called web cookie, Internet cookie, browser cookie, or simply cookie) is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit-card numbers.

  source: https://en.wikipedia.org/wiki/HTTP_cookie

  A cookie is a bit of data stored by the browser and sent to the server with every request.

  A session is a collection of data stored on the server and associated with a given user (usually via a cookie containing an id code)

  source: https://stackoverflow.com/questions/6339783/what-is-the-difference-between-sessions-and-cookies-in-php
