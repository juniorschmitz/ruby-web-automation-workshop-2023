# frozen_string_literal: true

require 'faker'

module Factory
  class Dynamic
    def self.valid_user
      {
        name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: '123456&',
        administrador: 'true',
        additional_info: Faker::Lorem.sentence(word_count: 8),
        city: Faker::Address.city
      }
    end

    def self.product_review
      {
        title: Faker::Coffee.blend_name,
        content: Faker::Lorem.sentence(word_count: 8)
      }
    end
  end
end
