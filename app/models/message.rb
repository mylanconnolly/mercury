# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  belongs_to :room

  broadcasts_to :room
end
