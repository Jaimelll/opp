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


  form :title => 'Edicion Fichas' do |f|

      f.inputs  do



         f.input :numero_proveedor, :input_html => { :style =>  'width:30%'}
         f.input :num_documento_pais, :input_html => { :style =>  'width:30%'}
         f.input :des_proveedor, :input_html => { :style =>  'width:30%'}
         f.input :direccion_pais, :input_html => { :style =>  'width:30%'}
         f.input :telefono_pais, :input_html => { :style =>  'width:30%'}
         f.input :correo_pais, :input_html => { :style =>  'width:30%'}
         f.input :pag_weeb, :input_html => { :style =>  'width:30%'}
         f.input :nro_representante, :input_html => { :style =>  'width:30%'}
         f.input :des_representante, :input_html => { :style =>  'width:30%'}
         f.input :correo_representante, :input_html => { :style =>  'width:30%'}
         f.input :activo, :input_html => { :style =>  'width:30%'}
         f.input :fec_registro, :input_html => { :style =>  'width:30%'}
         f.input :mod_registro, :input_html => { :style =>  'width:30%'}
         f.input :tipo_proveedor, :input_html => { :style =>  'width:30%'}
         f.input :calificacion, :input_html => { :style =>  'width:30%'}
         f.input :observacion, :input_html => { :style =>  'width:30%'}
         f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden

                f.actions



      end
    end









end
