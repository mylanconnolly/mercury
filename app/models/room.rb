# frozen_string_literal: true

class Room < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  has_many :messages, dependent: :destroy

  broadcasts
end
