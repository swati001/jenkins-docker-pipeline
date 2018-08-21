puts 'hello docker - ruby!!'
Given(/^I am an add_accounts_user$/) do
    puts "I am an add_accounts_user"
  end

  And(/^I am viewing add accounts$/) do
    puts "I am viewing add accounts"
  end

  Given(/^I am a no_new_accounts_user$/) do
   puts "I am a no_new_accounts_user"
  end

  Then(/^I see an error that I entered no accounts$/) do
    puts "I see an error that I entered no accounts"
  end

  Given(/^I am an invalid_accounts_user$/) do
    puts "I am an invalid_accounts_user"
  end

  Then(/^I submit invalid accounts$/) do
    puts "I submit invalid accounts"
  end

  Given(/^I am a view_all_accounts_user$/) do
    puts "I am a view_all_accounts_user"
  end

  Then(/^I see all my accounts$/) do
    puts "I see all my accounts"
  end
  