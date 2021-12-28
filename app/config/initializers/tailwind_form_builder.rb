class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, options={})
    default_options = { class: "font-bold h-6 mt-3 text-slate-600 dark:text-gray-400 text-md leading-8 uppercase" }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end

  def text_field(method, options={})
    default_options = { class: "w-full my-2 bg-white p-1 flex border border-gray-200 rounded" }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end

  def password_field(method, options={})
    default_options = { class: "w-full my-2 bg-white p-1 flex border border-gray-200 rounded" }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end
end
