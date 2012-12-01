ActionController::Routing::Routes.draw do |map|
  map.resources :bookmark_tags

  map.resources :books

  map.resources :bookmarks

  map.resources :join_team_requests

  # The priority is based upon order of creation: first created -> highest priority.
  
  # Sample of regular route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  # map.connect '', :controller => "welcome"

  map.connect 'question/select_questionnaire_type', :controller => "questionnaire", :action => 'select_questionnaire_type'

  map.connect 'bookmark/manage', :controller => "bookmarks", :action => 'manage_bookmarks'
  map.connect 'bookmark/view', :controller => "bookmarks", :action => 'view_bookmarks'
  map.connect 'bookmark/rating', :controller => "bookmarks", :action => 'view_rating_rubrics'
  map.connect 'bookmark/rating2', :controller => "bookmarks", :action => 'add_rating_rubric_form'
  map.connect 'bookmark/add_tag_bookmark', :controller => "bookmarks", :action => "add_tag_bookmark"
  map.connect 'bookmark/create_tag_bookmark', :controller => "bookmarks", :action => "create_tag_bookmark"

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'

  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  map.connect ':controller/:action/:id'

end