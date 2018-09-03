Given /^I am (an|a) "(.*?)"$/ do |arg, user|
    puts "I am an #{user}"
  end

  And("I am viewing add accounts") do
    puts "I am viewing add accounts"
  end

  # Given /^I am a "(.*?)"$/ do |user|
  #  puts "I am a #{user}"
  # end

  Then("I see an error that I entered no accounts") do
    puts "I see an error that I entered no accounts"
  end

  Then("I submit invalid accounts") do
    puts "I submit invalid accounts"
  end

  Then("I see all my accounts") do
    puts "I see all my accounts"
  end

  Then("I can see few of my accounts") do
    puts "I can see few of my accounts"
  end

  Then("I can see agent accounts only") do
    puts "I can see agent accounts only"
  end

  Then("I can update any accounts") do
    puts "I can update any accounts"
  end

  Then("I can not see existing accounts") do
    puts "I can not see existing accounts"
  end

  Then("I can not see any accounts") do
    puts "I can not see any accounts"
  end