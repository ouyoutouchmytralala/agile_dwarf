match 'adburndown/(:action(/:id))', :controller => 'adburndown'
match 'adsprintinl/(:action(/:id))', :controller => 'adsprintinl'
match 'adsprints/(:action(/:id))', :controller => 'adsprints'
match 'adtaskinl/(:action(/:id))', :controller => 'adtaskinl'
match 'adtasks/(:action(/:id))', :controller => 'adtasks'
match 'all_sprints/(:action(/:id))', :controller => 'all_sprints'
resources :custom_field_types, only: [:create, :destroy]
resources :sprint_custom_fields, only: [:update] do
  collection do
    put '' => :update_by_type, as: :update_by_type
  end
end
