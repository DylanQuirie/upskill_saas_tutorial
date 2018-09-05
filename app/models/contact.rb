class Contact < ActiveRecord::Base
  #Blueprint
  validates :name, presence=true # Checking if the name field has been filled out
  validates :email, presence=true # Checking if the email field has been filled out
  validates :comments, presence=true # Checking if the comment field has been filled out
end