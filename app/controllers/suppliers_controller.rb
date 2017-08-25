class SuppliersController < InheritedResources::Base

  private

    def supplier_params
      params.require(:supplier).permit(:numero_proveedor, :num_documento_pais, :des_proveedor, :direccion_pais, :telefono_pais, :correo_pais, :pag_weeb, :nro_representante, :des_representante, :correo_representante, :activo, :fec_registro, :mod_registro, :tipo_proveedor, :calificacion, :observacion, :admin_user_id)
    end
end

