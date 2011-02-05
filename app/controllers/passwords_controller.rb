class PasswordsController < ApplicationController
  before_filter :authenticate_user!

  def show
    unless current_user.seed
      current_user.generate_seed
      current_user.save!
    end
    @seed = params[:seed] || current_user.seed
    srand(@seed.hex)
  end
end
