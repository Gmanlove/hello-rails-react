# app/models/message.rb
class Message < ApplicationRecord
  validates :content, presence: true, length: { minimum: 5, maximum: 200 }
end
