class UsersOffice::GraphicsController < UsersOfficeController
  before_action :authenticate_user!
  def index
    @diets = Diet.group(:weight).count(:meal_id)
  end
end
