Given(/^estoy en la pagina de inicio$/) do
  visit '/'
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
