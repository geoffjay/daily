class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, opts={})
    default_opts = { class: "font-bold h-6 mt-3 text-slate-600 text-xs leading-8 uppercase" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def text_field(method, opts={})
    default_opts = { class: "w-full my-2 bg-white p-1 flex border border-gray-200 rounded" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def password_field(method, opts={})
    default_opts = { class: "w-full my-2 bg-white p-1 flex border border-gray-200 rounded" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
end
