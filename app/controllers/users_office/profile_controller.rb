class UsersOffice::ProfileController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_user

  def index
  end

  def edit
  end

  def update
    if @user.update(params_user)
      redirect_to users_office_diets_index_path, notice: 'Usuário atualizado com sucesso !'
     else
      render :edit
     end
  end

  private

  def set_user
   @user = User.find(current_user.id)
  end

  def params_user
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:picture)
   end

end
