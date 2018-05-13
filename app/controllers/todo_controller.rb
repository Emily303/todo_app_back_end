class TodoController < ApplicationController
    def index
        @todo_description = "Make the curriculum"
        @todo_pomodoro_estimate = 4
    end
    
    def show
        # Get the number the user typed in URL
        todo_id = params[:id]
        
        # Grab the todo with that id from the database
        @todo = Todo.find_by_id(todo_id)
        
        # Set the variable shared with template to the values we got
        # from the database
    end
    
    def new
    end
    
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    
end