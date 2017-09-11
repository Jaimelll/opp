ActiveAdmin.register Employee do

  menu  priority: 10, label: "Empleados"

  permit_params :dni, :ape_pat, :ape_mat,
       :nombres, :direccion, :telefono,
       :correo, :fec_nacimiento, :estado,
       :tip_tra, :esta_civil, :afp,
       :admin_user_id, :foto, :ape_nom,
       :correo_corp, :fec_inicon, :fec_tercon


filter :ape_pat
filter :ape_mat
filter :nombres

index :title => 'Lista de Empleados' do

        column("ape_pat")
        column("ape_mat")
        column("nombres")
        column("direccion")



         actions
     end


 form :title => 'Edicion Empleado'  do |f|


     f.inputs  do

       f.input :dni, :input_html => { :style =>  'width:30%'}
       f.input :ape_pat,:label => 'Apellido paterno', :input_html => { :style =>  'width:30%'}
       f.input :ape_mat,:label => 'Apellido materno', :input_html => { :style =>  'width:30%'}
       f.input :nombres, :input_html => { :style =>  'width:30%'}
       f.input :direccion, :input_html => { :style =>  'width:30%'}
       f.input :telefono, :input_html => { :style =>  'width:30%'}
       f.input :correo, :input_html => { :style =>  'width:30%'}

       f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden

       f.input :foto, :as => :file, :hint => f.object.foto.present? \
                ? image_tag(f.object.foto.url(:thumb))
                 : content_tag(:span, "no hay foto aun")



       f.actions

     end

   end

   show :title => ' Empleado'  do

           attributes_table  do


            row :ape_pat



           row :ape_mat







           end
         end


         sidebar "Foto" do

               if params[:id] then
              Employee.where(id:params[:id]).each do |item|

                unless item.foto.blank?
                 li   image_tag item.foto.thumb.url, size: "250"
                end


             end
           end



           end # de sider






end
