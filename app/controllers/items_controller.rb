class ItemsController < InheritedResources::Base

  private

    def item_params
      params.require(:item).permit(:objetivo, :actividad, :responsable, :unidad, :programa, :pfecha, :admin_user_id)
    end
end

