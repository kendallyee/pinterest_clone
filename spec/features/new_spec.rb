require "rails_helper"

RSpec.feature "New", :type => :feature do
  # happy path
  scenario "User creates a new accoutn with valid details" do
    visit "/signup"
    fill_in "user[name]", :with => "google"
    fill_in "user[email]", :with => "google@gmail.com"
    fill_in "user[password]", :with => "google"
    fill_in "user[password_confirmation]", :with => "google"
    click_button "Submit"
    expect(page).to have_text("google")
  end
  # edgy path
  scenario "User creates a new account with invalid email" do
    visit "/signup"
    fill_in "user[name]", :with => "google"
    fill_in "user[email]", :with => "google"
    fill_in "user[password]", :with => "google"
    fill_in "user[password_confirmation]", :with => "google"
    click_button "Submit"
    expect(page).to have_text("Signup!")
  end
end
