# frozen_string_literal: true

class NewBand < ApplicationRecord
  has_many :metal_heds
  belongs_to :user
end
