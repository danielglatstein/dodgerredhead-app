class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order('created_at DESC')
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe 
    else 
      render 'new'
    end
  end

  def show
    @recipe = recipe.find(params[:id ])
  end

  def edit
    @recipe = recipe.find(params[:id ])
  end

  def update
    @recipe = recipe.find(params[:id ])

    if @recipe.update(params[:recipe].permit(:title, :instructions, :description, :image, {:quantities_id => [ ] }, {:ingredients_id => [ ] }))
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipes = Recipe.find(params[:id ])
    @recipes.destroy 
      redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :instructions, :description, :image, :quantity_id, :ingredient_id)
  end

end


