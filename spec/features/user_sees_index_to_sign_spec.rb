require 'rails_helper'
  describe 'user should visit index page' do
    it 'should click link to sign up' do
      username = "funbucket13"
      visit '/'

      click_on "Sign Up"

      expect(current_path).to eq(new_user_path)

      fill_in :user_username, with: username
      fill_in :user_password, with: "test"

      click_on "Create User"

      expect(page).to have_content("Welcome, #{username}!")
    end
  end
