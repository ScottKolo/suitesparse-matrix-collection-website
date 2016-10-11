# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://sparse.tamu.edu"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # Add static pages
  add '/about'
  add '/other_interfaces'
  add '/submit'

  # Add group listing
  add '/groups'
  
  # Add all matrices
  Matrix.all.each do |matrix|
    add "/#{matrix.group}/#{matrix.name}"
  end
  
  # Add all groups
  Group.all.each do |group|
    add "/#{group.name}"
  end

end
