# frozen_string_literal: true

module Forms
  class FormLogin < SitePrism::Section
    element  :input_email, '[data-testid="email"]'
    element  :input_password, 'input[data-testid="senha"]'
    element  :btn_access, 'button[data-testid="entrar"]'

    def exec_login(email, password)
      input_email.set email
      input_password.set password
      btn_access.click
    end
  end
end
