require 'admin_class_application_helper_patch'

ApplicationHelper.prepend(AdminClass::ApplicationHelperWithAdminClass)

Redmine::Plugin.register :redmine_admin_class do
  name 'Redmine Admin Class plugin'
  author 'suer'
  description 'Add "admin" class to body tag if you are admin'
  version '0.0.2'
  url 'https://github.com/suer/redmine_admin_class'
  author_url 'http://d.hatena.ne.jp/suer'
end
