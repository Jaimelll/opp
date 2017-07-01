class DetailsController < InheritedResources::Base

  private

    def detail_params
      params.require(:detail).permit(:area, :pfecha, :descripcion, :item_id, :admin_user_id)
    end
end

