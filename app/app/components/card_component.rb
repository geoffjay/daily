# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(has_border: true, has_shadow: true)
    @has_border = has_border
    @has_shadow = has_shadow
  end
end
