module ApplicationHelper
  def flash_classes(flash_type)
    flash_base = 'px-2 py-4 mx-auto font-sans font-medium text-center text-white'
    {
      notice: "bg-gold-600 #{flash_base}",
      error: "bg-crimson-600 #{flash_base}",
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def button_class(options = {})
    variant = options[:variant]
    theme = options[:theme]

    style_button(variant, theme_button(theme))
  end

  private

  def theme_button(theme)
    themes = {
      primary: 'primary',
      secondary: 'secondary',
      transparent: 'transparent',
      dark: 'dark'
    }

    case theme
    when themes[:primary]
      'bg-cobalt-300 hover:bg-cobalt-400 text-white'
    when themes[:secondary]
      'bg-emerald-300 hover:bg-emerald-400 text-white'
    when themes[:transparent]
      'bg-transparent hover:bg-slate-100 text-slate-700'
    when themes[:dark]
      'bg-slate-700 text-white shadow-sm hover:bg-slate-800'
    else
      'bg-white border border-slate-300 shadow-sm hover:bg-slate-100'
    end
  end

  def style_button(variant, theme)
    base = 'font-medium cursor-pointer rounded tr-mt absolute text-center'

    case variant
    when 'large'
      "px-5 py-4 text-lg #{base} #{theme}"
    when 'small'
      "py-2 px-4 text-sm #{base} #{theme}"
    when 'expanded'
      "p-3 w-full block #{base} #{theme}"
    else
      "px-5 py-2 text-base #{base} #{theme}"
    end
  end
end
