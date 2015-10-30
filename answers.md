# Q0: Why is this error being thrown?
There is no Pokemon to trainer association created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They randomly appear in the wild and they all have a name and a level and a they dont have a trainer associated to them yet. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button called throw a pokeball. The id: @pokemon basically gives the parameters for the capture method to use.
capture_path(id: @pokemon) takes an id which the capture uses to 

# Question 3: What would you name your own Pokemon?
I would name my pokemon hello.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the current_trainer in the redirect_to. It is okay to not have a path because the current_trainer will automatically redirect it to the shows view.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

it converts the error page to a sentence that's easily readable.

# Give us feedback on the project and decal below!
project was hard becasue there was a lot i didnt know at first. And whenever I had a problem I didnt know where to begn to figure my problem. I think I just need more experience. 

# Extra credit: Link your Heroku deployed app
