# Create three dummy users.
User.create(first_name: 'Manuel', last_name: 'Faner')
User.create(first_name: 'Mailen', last_name: 'Genser')
User.create(first_name: 'Dani', last_name: 'Tucumano')

# Create a debit and credit account for each user.
User.all.each do |u|
    Account.create(account_type: 'credit', user_id: u.id)
    Account.create(account_type: 'debit', user_id: u.id)
end
