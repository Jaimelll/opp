ActiveAdmin.register Supplier do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

menu  priority: 8, label: "Proveedores"

permit_params :numero_proveedor, :num_documento_pais, :des_proveedor,
 :direccion_pais, :telefono_pais, :correo_pais, :pag_weeb, :nro_representante,
 :des_representante, :correo_representante, :activo, :fec_registro, :mod_registro,
  :tipo_proveedor, :calificacion, :observacion, :admin_user_id


  








end
