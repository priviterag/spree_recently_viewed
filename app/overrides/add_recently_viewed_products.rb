# Deface::Override.new(:virtual_path => 'spree/shared/_products',
#                      :name => 'add_recently_viewed_products_to_products_index',
#                      :insert_after => "#products[data-hook], [data-hook='products']",
#                      :partial => 'spree/shared/recently_viewed_products')

# Deface::Override.new(:virtual_path => 'spree/products/show',
#                      :name => 'add_recently_viewed_products_to_products_show',
#                      :insert_after => "#product_description[data-hook], [data-hook='product_description']",
#                      :partial => 'spree/shared/recently_viewed_products')


Deface::Override.new(
  :virtual_path => "spree/home/index",
  :insert_after => "[data-hook='homepage_sidebar_navigation']",
  :partial      => "spree/shared/recently_viewed_products",
  :name         => "add_recently_viewed"
)

Deface::Override.new(
  :virtual_path => "spree/products/index",
  :insert_after => "[data-hook='homepage_sidebar_navigation']",
  :partial      => "spree/shared/recently_viewed_products",
  :name         => "add_recently_viewed"
)

Deface::Override.new(
  :virtual_path => "spree/taxons/show",
  :insert_after => "[data-hook='taxon_sidebar_navigation']",
  :partial      => "spree/shared/recently_viewed_products",
  :name         => "add_recently_viewed"
)

