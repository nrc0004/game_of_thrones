class CharactersController < ApplicationController
  # actions will go here
  def index
    @characters=Characters.all
  end

  def show
    @character= Character.find(params[:house_id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)

    redirect_to house_path(@house)
  end

  def edit
    @character = Character.find(params[:id])
  end
  # update
  def update
    @character = Character.find(params[:characters_id])
    @character.update(character_params)

    redirect_to @character
  end
  # destroy
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to houses_path
  end

  private
    def character_params
      params.require(:character).permit(:name, :photo_url, :status)
    end
end
