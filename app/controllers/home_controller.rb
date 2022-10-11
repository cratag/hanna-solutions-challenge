class HomeController < ApplicationController
  def index
    @user_id = params['user'].present? ? params['user'] : nil # Get USER ID or become Nil if no user selected.
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
  
  def create_account_transaction
    mutation = "mutation {
      createTransaction(input: {
        accountId: #{User.find(params['user']).accounts.find_by(account_type: params['type'].downcase).id},
        date: \"#{params['date'].to_date}\",
        amount: #{params['amount']}
      }) {
        accountTransaction {
          id
        }
        errors
      }
    }"

    mutation_response = HannaSolutionsChallengeSchema.execute(mutation).to_h
    if mutation_response['errors'].nil?
      redirect_to root_path(:user => params['user'])
    else
      redirect_to root_path(:user => params['user']), notice: "Create transaction failed: #{mutation_response['errors'][0]['message']}"
    end
      
  end
end
