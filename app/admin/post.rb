ActiveAdmin.register Post do
  index do
    column :title
    column :category
    column :image
    actions
  end
  permit_params :title, :body, :category, :image
  form do |f|
  	f.inputs "dodgerredhead posts" do
	  	f.label :title 
		f.text_field :title 
		f.label :body 
		f.text_area :body
	  	f.input :category, :as => :select, :collection => Post::VALID_CATEGORIES
      f.label :image 
      f.file_field :image
	  	f.submit 
  	end
  end
end


