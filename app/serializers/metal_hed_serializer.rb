# frozen_string_literal: true

class MetalHedSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :instrument, :band
end
