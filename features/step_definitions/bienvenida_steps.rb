Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^deberia ver el titulo "([^"]*)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Then(/^deberia ver el campo "([^"]*)"$/) do |campo|
  last_response.should have_xpath("//label[@name=\"#{campo}\"]")
end

Then(/^deberia ver el boton "([^"]*)"$/) do |boton|
  last_response.should have_xpath("//input[@name=\"#{boton}\"]")
end

When(/^ingreso en "([^"]*)" el valor "([^"]*)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

When(/^presiona el boton "([^"]*)"$/) do |boton|
  click_button(boton)
end

Then(/^deberia ver "([^"]*)"$/) do |mensaje|
  #  last_response.body.should =~ /#{mensaje}/m
    expect(last_response.body).to eq(mensaje)
end
