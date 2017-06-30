class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:nombre, :descripcion, :orden, :obs, :admin_user_id)
    end
end

