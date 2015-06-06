ActiveAdmin.register Recipe do
  index do
    column :title
    actions
  end
    permit_params :instructions, :quantities
form :html => {multipart: true} do |f|
  f.inputs "recipe" do
      f.label :instructions
      f.text_area :instructions, rows: 10 
      f.fields_for :quantities do |quantity| 
        f.render 'quantity_fields', f: quantity 
      end
    link_to_add_association 'add ingredient', f, :quantities, 'data-association-insertion-node' => "#recipe-ingredients ol", 'data-association-insertion-method' => "append", :wrap_object => Proc.new {|quantity| quantity.build_ingredient; quantity } 
 
 f.submit 
end
end
end

