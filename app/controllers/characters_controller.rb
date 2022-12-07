class CharactersController < ApplicationController
  before_action :set_character, only: %i[show update destroy]

  def index
    @characters = Characters.all
  end

  def show; end

  def create
    @character = Character.new(character_params)
    @character.save
  end

  def update
    @character.update(restaurant_params)
  end

  def destroy
    @character.destroy
  end

  private

  def character_params
    params.require(:character).permit(:name, :actor, :review, :image_url)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
