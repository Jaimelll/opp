ActiveAdmin.register Employee do

  menu  priority: 10, label: "Empleados"

  permit_params :dni, :ape_pat, :ape_mat,
       :nombres, :direccion, :telefono,
       :correo, :fec_nacimiento, :estado,
       :tip_tra, :esta_civil, :afp,
       :admin_user_id


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

       f.actions

     end

   end










end
