ActiveAdmin.register Post do
  index do
    column :title
    column :category
    actions
  end
  permit_params :title, :body, :category
  form do |f|
  	f.inputs "dodgerredhead posts" do
	  	f.label :title 
		f.text_field :title 
		f.label :body 
		f.text_area :body
	  	f.input :category, :as => :select, :collection => Post::VALID_CATEGORIES
	  	f.submit 
  	end
  end
end


