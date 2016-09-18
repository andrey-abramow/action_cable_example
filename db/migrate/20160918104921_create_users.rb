class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    %w{ Вася Петя Коля }.each_with_index do |name, index|
      User.create!(email: "#{index}@fakemail.com", password: 'password', name: name)
    end
  end

  def down
    User.destroy_all
  end
end
