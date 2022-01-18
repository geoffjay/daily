require "test_helper"

class CardComponentTest < ViewComponent::TestCase
  def test_component_renders_content
    assert_equal(
      %(<div class="
          bg-cobalt-50
          border border-slate-300
          dark:bg-cobalt-700 dark:border-slate-600
          shadow-md
          flex-auto max-w-sm p-10 pb-20 rounded-lg"
        >
          foo
        </div>
       ),
      render_inline(CardComponent.new().with_content("foo").to_html)
    )
  end
end
