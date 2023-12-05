# frozen_string_literal: true

Dado("que esteja na Home Page") do
  @home_page = HomePage.new
  @home_page.load
end

Quando("realizar login com e-mail {string} e senha {string}") do |email, password|
  @home_page.form_login.exec_login(email, password)
end

Então("deverá realizar o login com sucesso") do
  @home_logada = HomeLogadaPage.new
  expect(@home_logada).to have_btn_logout
  expect(@home_logada.h1_message_welcome.text).to include 'Bem Vindo'
end
