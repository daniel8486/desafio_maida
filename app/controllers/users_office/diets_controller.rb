class UsersOffice::DietsController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_diet, only:[:show,:update,:edit,:destroy]
  before_action :set_select_user, only:[:new,:edit]
  before_action :set_select_meal, only:[:new,:edit]
  
  def index 
   #@diets = Diet.all
   @diets = Diet.where(params[:user_id]).page(params[:page]).per(6)
  end

  def show
  end

  def new
   @diet = Diet.new
  end

  def create
   @select_user == current_user.name
    
   @diet = Diet.new(params_diet)
   if @diet.save
   redirect_to users_office_diets_index_path, notice: 'Dieta ... criada com sucesso !'
   else
   render :new
   end
  end

  def update
   if @diet.update(params_diet)
    redirect_to users_office_diets_index_path, notice: 'Dieta... atualizada com sucesso !'
   else
    render :edit
   end 
  end 

  def destroy
   if @diet.destroy
    redirect_to users_office_diets_index_path, notice: 'Dieta ... excluida com sucesso !'
   else
    render :index
   end
  end
  
  private

  def set_user
    @user = User.find(current_user.id)
   end

  def set_diet
   @diet = Diet.find(params[:id])
  end

  def set_select_user
   @select_user = User.where(params[:user_id])
  end

  def set_select_meal
    @select_meal = Meal.all.pluck(:description,:id)
   end

  def params_diet
   params.require(:diet).permit(:date_initial,:date_final,:weight,:height,:ideal_weight,:schedule,:description,:user_id,:meal_id)
  end
end
