class OpportunitiesController < InheritedResources::Base
  before_action :set_opportunity, only: [:show, :edit, :update, :destroy]
  
  private

  def set_opportunity
    @opportunity = Opportunity.find(params[:id])
  end

  def opportunity_params
    params.require(:opportunity).permit([:title, :description, :image, :active, :country_id])
  end

  def permitted_params
    params.permit(:opportunity => [:title, :description, :image, :active, :country_id])
  end

end
