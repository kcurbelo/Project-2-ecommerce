class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
                                                # if you leave one of these out it will not save when you input stuff into the form.
    user = User.new(params.require(:user).permit(:f_name, :l_name, :email,:password))
    if user.save
      redirect_to new_session_path(user_created: 'true') #someone logs in here
    end
  end

  def show
    @user = User.find(session['user_id'])
  end
end