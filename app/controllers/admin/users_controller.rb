class Admin::UsersController < AdminController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  def index
    @admin_users = User.admin_users
    @players = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to admin_users_path, :notice => "User Updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, :notice => "User Deleted!"
  end
end
