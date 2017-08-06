class ListsController < InheritedResources::Base

  private

    def list_params
      params.require(:list).permit(:clase, :descripcion, :orde, :n, :admin_user_id)
    end
end

