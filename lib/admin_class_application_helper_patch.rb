require_dependency 'application_helper'
module AdminClass
  module ApplicationHelperWithAdminClass
    def body_css_classes
      super + (User.current.admin? ? ' admin' : '')
    end
  end
end
