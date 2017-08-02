class ActivitiesController < InheritedResources::Base

  private

    def activity_params
      params.require(:activity).permit(:fechap, :estado, :creada, :observ, :sheet_id, :admin_user_id)
    end
end

