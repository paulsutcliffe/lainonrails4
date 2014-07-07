class OpportunitiesController < InheritedResources::Base
  load_and_authorize_resource
  before_action :set_opportunity, only: [:show, :edit, :update, :destroy]

  def index
    if @country
      if current_admin
        @opportunities = @country.opportunities.ordered
      else
        @opportunities = @country.opportunities.actives.ordered
      end
    end
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    @opportunity.country_id = @country.try(:id)
    create!(:notice => "Oportunidad guardada correctamente.")
  end

  def update
    @opportunity.country_id = @country.try(:id)
    update!(:notice => "Oportunidad actualizada correctamente.")
  end

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
