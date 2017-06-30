class FormulasController < InheritedResources::Base

  private

    def formula_params
      params.require(:formula).permit(:product_id, :nombre, :descripcion, :string, :admin_user_id, :descripcion, :string, :orden, :obs, :cantidad, :numero, :pfecha)
    end
end

