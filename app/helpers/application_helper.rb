module ApplicationHelper

def render_navigation_menu_option(option, other_attr)
    if can?(:manage, Projectdetail) && option == :projectdetails
      url = projectdetails_path
      link_title = "Project Detail"
    elsif can?(:manage, Organization) && option == :organizations
      url = organizations_path
      link_title = "Organization"
    elsif (Role::LEADER) && option == :projectdetails
      url = projectdetails_path
      link_title = "Project Detail"
    end
    if url
    content_tag(:li, link_to(link_title, url)) 
    end
  end
end
