module NavigationHelpers
  def path_to(page_name)
    page_name = 'the ' + page_name unless page_name =~ /^the$/
    page_name += ' page' unless page_name =~ / page$/
    case page_name
    when /the admin dashboard page/ then '/admin'
    when /the admin movies page/    then '/admin/movies'
    when /the admin new movie page/ then '/admin/movies/new'
    when /the movies page/          then '/movies'
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World(NavigationHelpers)