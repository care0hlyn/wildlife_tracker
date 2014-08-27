Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#index'})
  match('/species', { :via => :post, :to => 'species#create'})
  match('/species/:id', { :via => :delete, :to => 'species#delete'})
  match('/species/:id/edit', { :via => :get, :to => 'species#edit' })
  match('/species/:id', { :via => [:patch, :put], :to => 'species#update'})

  match('/species/:id', { :via => :get, :to => 'sightings#index'})
  match('/species/:id/sightings', { :via => :post, :to => 'sightings#create'})
  match('/species/:specie_id/sightings/:id', { :via => :delete, :to => 'sightings#delete'})
end
