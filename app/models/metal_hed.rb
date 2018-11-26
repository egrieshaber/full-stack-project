# frozen_string_literal: true

class MetalHed < ApplicationRecord
  belongs_to :new_band,
  foreign_key: 'new_band_id'
end
