class AdsController < InheritedResources::Base

  def permitted_params
    params.permit(:ad => [:ad])
  end
end
