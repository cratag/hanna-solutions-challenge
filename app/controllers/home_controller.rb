class HomeController < ApplicationController
  def index
    @user_id = params['user'] # Get USER ID or become Nil if no user selected.
    @user = @user_id.nil? ? nil : User.find(params['user'])  # Find USER unless USER ID is nil.

    if @user_id # Only do this if we have an USER ID -- Don't use unnecesary memory.

      # Create query string from USER ID.
      query = "{
        user (id: \"#{@user_id}\"){
          fullName
          accounts {
            accountType
            accountTransactions {
              date
              amount
            }
          }
        }
      }"
      
      # Return a HASH to the frontend.
      @hashed_info = HannaSolutionsChallengeSchema.execute(query).to_h
    end
  end
  
end
