class CartsController < ApplicationController
  def new
    @cart = Cart.new
#todo look at documentation in depth to know how to call on these things
    # c = Cart.find(params[:id])

    # cj = c.Jacket.find(params[:id])
    # Found in show for jackets
    @j = Jacket.find(params[:jacket_id]) 

#This says that if someone is logged in set "u" to their id so that way we can have it available in the cart 
    if current_user != nil
    @u = User.find(params[:user_id])
    end

  end



end