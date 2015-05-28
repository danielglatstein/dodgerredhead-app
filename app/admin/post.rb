ActiveAdmin.register Post do
  index do
    column :title
    column :category
    column :image
    actions
  end
  permit_params :title, :body, :category, :image
  form :html => {multipart: true} do |f|
  	f.inputs "dodgerredhead posts" do
      div :class => "title" do  
    	  f.label :title 
    		f.text_field :title
      end
      div :class => "body" do 
    		f.label :body 
    		f.text_area :body
      end
    	f.input :category, :as => :select, :collection => Post::VALID_CATEGORIES
      f.label :image 
      f.file_field :image
      f.label :video 
      f.file_field :video
    	f.submit 
    end
  end
end


