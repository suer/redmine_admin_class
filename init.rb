require 'admin_class_application_helper_patch'

Rails.configuration.to_prepare do
  unless ApplicationHelper.included_modules.include? AdminClass::ApplicationHelperPatch
    ApplicationHelper.send(:include, AdminClass::ApplicationHelperPatch)
  end
end

Redmine::Plugin.register :redmine_admin_class do
  name 'Redmine Admin Class plugin'
  author 'suer'
  description 'Add "admin" class to body tag if you are admin'
  version '0.0.1'
  url 'https://github.com/suer/redmine_admin_class'
  author_url 'http://d.hatena.ne.jp/suer'
end