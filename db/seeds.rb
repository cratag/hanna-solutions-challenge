# Create three dummy users.
User.create(first_name: 'Manuel', last_name: 'Faner')
User.create(first_name: 'Mailen', last_name: 'Genser')
User.create(first_name: 'Dani', last_name: 'Tucumano')

# Create a debit and credit account for each user.
User.all.each do |u|
    Account.create(account_type: 'credit', user_id: u.id)
    Account.create(account_type: 'debit', user_id: u.id)
end

# Create two transactions for each account with a random amount spent.
Account.all.each do |a|
    2.times {
        AccountTransaction.create(date: DateTime.now, amount: rand(10.0..100.0).round(2), account_id: a.id)
    }
end
