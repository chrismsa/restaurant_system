I18n.load_path += Dir[Rails.root.join('lib', 'locales', '*.{rb,yml}')]

I18n.available_locales = [:en, :br]

I18n.default_locale = :br
