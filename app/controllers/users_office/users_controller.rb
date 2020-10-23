class UsersOffice::UsersController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_user, only:[:show,:edit,:update,:destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
   @user = User.new
  end

  def create
   @user = User.new(params_user)
   if @user.save
    redirect_to users_office_users_index_path, notice: 'Usuário criado com sucesso !'
   else
    render :new
   end
  end

  def update
   if @user.update(params_user)
    redirect_to users_office_users_index_path, notice: 'Usuário atualizado com sucesso !'
   else
    render :edit
   end
  end

  def destroy
   if @user.destroy
    redirect_to users_office_users_index_path, notice: 'Usuário excluido com sucesso !'
   else
    render :index
   end
  end

  private

  def set_user
   @user = User.find(params[:id])
  end

  def params_user
   params.require(:user).permit(:name,:email,:password,:password_confirmation,:picture)
  end
end
