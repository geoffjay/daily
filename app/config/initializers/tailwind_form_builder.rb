class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, options={})
    default_options = {
      class: "font-bold mt-2 mb-2 text-slate-500 dark:text-slate-200 text-md leading-8 uppercase"
    }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end

  def text_field(method, options={})
    default_options = {
      class: "w-full bg-white my-4 p-4 flex border border-slate-100 dark:border-slate-600 focus:border-emerald-600 rounded"
    }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end

  def password_field(method, options={})
    default_options = {
      class: "w-full bg-white my-4 p-4 flex border border-slate-100 dark:border-slate-600 focus:border-emerald-600 rounded"
    }
    merged_options = default_options.merge(options)
    super(method, merged_options)
  end
end
