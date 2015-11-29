
Given(/^I am on the Which television review page$/) do
    visit 'http://www.which.co.uk/reviews/televisions'
end

And(/^I can see the '(All Televisions|Best Buys|Advice Guides)' tab$/) do |tabs|
  page.has_content?(tabs)
end

And(/^I can choose the screen size between '(.*)'$/) do |name|
  find(:xpath, "//label",:text => name).click
end

Given /^I wait for (\d+) seconds to see my choice?$/ do |n|
  sleep(n.to_i)
end

And(/^I clear all the screen size selection$/) do
  page.has_content? 'Clear all'
  click_link('Clear all')
end

And(/^I sort by '(.*)'$/) do |choice|
  page.has_content? 'Sort by'
  find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select').click
  case choice
    when 'Most-recently tested'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[1]').click
    when 'Highest Which? score'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[2]').click
    when 'Price low to high'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[3]').click
    when 'Price high to low'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[4]').click
    when 'Screen size high to low'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[5]').click
    when 'Most-recently launched'
      find(:xpath,'//html/body/div[4]/div[1]/div[2]/form/div/select/option[6]').click
  end

end

When(/^I click on '(Best Buys|Advice Guides)' tab$/) do |tab|
  case tab
    when 'Best Buys'
      click_on('Best Buys')
    when 'Advice Guides'
      click_on('Advice Guides')
  end
end

Then(/^The Best Buys page is loaded$/) do
  page.has_content? 'Which? Best Buy televisions'
  page.has_content? 'How we find the best TVs'
end

Then(/^The Advice Guides page is loaded$/) do
  page.has_content? 'Televisions advice guides'
  page.has_content? 'What is 4K TV?'
end

And(/^I can filter by the screen size between (.*)$/) do |size|
  pending
end

And(/^I can filter by the (.*) and (.*)$/) do |brand,size|
  find(:xpath, "//label",:text => brand).click
  find(:xpath, "//label",:text => size).click
end

And(/^I filter by the (.*)$/) do |brand|
  find(:xpath, "//label",:text => brand).click
end

Then(/^I see right selection by (.*)$/) do |type|
  pending
end

When(/^I can filter by price between (\d+) and (\d+)$/) do |min_price, max_price|
  pending
end