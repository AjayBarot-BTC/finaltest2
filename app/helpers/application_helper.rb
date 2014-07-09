module ApplicationHelper

def render_navigation_menu_option(option, other_attr)
    case option
    when :projectdetails
      url = projectdetails_path
      link_title = "Project Detail"

    when :organizations
      url = organizations_path
      link_title = "Organization"
    else
    end
    content_tag(:li, link_to(link_title, url)) if current_user.has_permission?(option)
  end
end
