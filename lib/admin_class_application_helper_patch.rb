require_dependency 'application_helper'
module AdminClass
  module ApplicationHelperPatch
    def self.included(base)
      base.send(:include, ApplicationHelperMethods)
      base.class_eval do
        alias_method_chain :body_css_classes, :admin_class
      end
    end
  end

  module ApplicationHelperMethods
    def body_css_classes_with_admin_class
      body_css_classes_without_admin_class + (User.current.admin? ? ' admin' : '')
    end
  end
end
