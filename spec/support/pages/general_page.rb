class GeneralPage < SitePrism::Page
  set_url '/'
  set_url_matcher(/\A?\Z/)

  element :alert_success, '.alert-success'
  element :alert_info,    '.alert-notice'
  element :alert_warning, '.alert-warning'
  element :alert_error,   '.alert-alert'

  element :submit, 'input[name="commit"]'

  #header
  element :logo, '.navbar-brand'
  element :sign_in_link,  :xpath, "//a[contains(@href, '/sign_in')]"
  element :sign_out_link, :xpath, "//a[contains(@href, '/sign_out')]"

  #admin
  element :admin, '.nav-link', text: 'Users'

  private

  def all_visible?(*item_list)
    item_list.all? { |item| send(item).visible? }
  end

  def exists_on_page?(*items)
    items.all? { |item| send("has_#{item}?") }
  end
end
