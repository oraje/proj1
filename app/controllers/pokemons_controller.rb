class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new
	end

	def create
        @pokemon = Pokemon.create(pokemon_params)
        @pokemon.health = 100
        @pokemon.level = 1
        @pokemon.trainer_id = current_trainer.id
        if @pokemon.save 
            redirect_to current_trainer 
        else
        	flash[:error] = @pokemon.errors.full_messages.to_sentence
            render "new" 
        end
    end

	def capture
		@pokemon = Pokemon.find(params[:id])
        @pokemon.trainer_id = current_trainer.id
        @pokemon.save
        redirect_to root_path
    end

    def show
		@pokemon = Pokemon.find(params[:id])
	end

    def damage
    	@pokemon = Pokemon.find(params[:id])
    	if @pokemon.health <= 1
           @pokemon.destroy
        else
           @pokemon.health -= 10
           @pokemon.save 
        end
        redirect_to current_trainer
    end

    def pokemon_params
        params.require(:pokemon).permit(:name) 
    end
end