class CataloguesController < InheritedResources::Base

  private

    def catalogue_params
      params.require(:catalogue).permit(:clase, :descripcion, :orden, :admin_user_id)
    end
end

