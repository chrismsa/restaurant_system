class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  around_action :switch_locale

  def switch_locale(&action)
    locale = extract_locale_from_tld || I18n.default_locale

    I18n.with_locale(locale, &action)
  end

  def extract_locale_from_tld
    parsed_locale = request.host.split('.').last

    return nil unless I18n.available_locales.map(&:to_s).include?(parsed_locale)

    parsed_locale
  end
end
