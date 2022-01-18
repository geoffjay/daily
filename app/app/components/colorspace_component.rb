# frozen_string_literal: true

class ColorspaceComponent < ViewComponent::Base
  def initialize(color:)
    @color = color
  end
end
