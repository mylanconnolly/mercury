# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :room

  broadcasts_to :room
end
