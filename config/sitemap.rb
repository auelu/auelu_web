# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.teamauelu.me"
 
SitemapGenerator::Sitemap.create do
  Product.find_each do |product|
    add product_path(product), :lastmod => product.updated_at
  end
end