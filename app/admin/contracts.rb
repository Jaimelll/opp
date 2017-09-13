ActiveAdmin.register Contract do
  menu false

  permit_params :employee_id, :num_cont, :fec_inicon,
       :fec_tercon, :puesto, :cod_hor, :remuneracion,
       :area, :tipo_contra, :fec_retiro, :motivo_retir,
       :obs, :admin_user_id


  filter :centro

  index :title => 'Lista de Contratos' do




          column("num_cont")
          column("fec_inicon")
          column("fec_tercon")
          column("puesto")
          column("cod_hor")


           actions
       end

       form :title => 'Edicion Estudios'  do |f|


           f.inputs  do


             f.input :num_cont, :input_html => { :style =>  'width:30%'}

             f.input :fec_inicon,:label => 'Inicio de contrato',:as =>:string, :input_html => { :style =>  'width:30%'}
             f.input :fec_tercon,:label => 'Término de contrato',:as =>:string, :input_html => { :style =>  'width:30%'}

             f.input :puesto, :input_html => { :style =>  'width:30%'}
             f.input :cod_hor,:label => 'Horario', :input_html => { :style =>  'width:30%'}

             f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden


             f.actions

           end

         end

         show :title => ' Empleado'  do

                 attributes_table  do

                  row :num_cont
                  row :fec_inicon
                  row :fec_tercon
                  row :puesto
                  row :cod_hor
                  row :remuneracion
                  row :area
                  row :tipo_contra
                  row :fec_retiro
                  row :motivo_retir
                  row :obs







                 end
               end


               sidebar "Foto" do

                     if params[:employee_id] then
                    Employee.where(id:params[:employee_id]).each do |item|
                      @nomb=item.ape_nom.upcase
                      unless item.foto.blank?
                       li   image_tag item.foto.thumb.url, size: "250"
                      end


                   end
                 end
                if params[:employee_id] then

                 li link_to "Nombre: "+"#{@nomb}", admin_employee_path(params[:employee_id])

                end

                 end # de sider








  sidebar "Contrato", only: :index  do
    @conta=0
   Contract.where(employee_id:params[:employee_id]).each do |contr|
     if contr.fec_inicon<=Time.now and  contr.fec_tercon>=Time.now then
        ul do
           li "Inicio de contrato: "+contr.fec_inicon.to_s
           li "Fin de contrato: "+contr. fec_tercon.to_s
           li "Puesto:  "+contr.puesto
           li "Estado: ACTIVO"
           li "Ingreso: "+Contract.where(employee_id:params[:employee_id],
               tipo_contra:contr.tipo_contra).minimum('fec_inicon').to_s
       end

          Employee.where(id:params[:employee_id]).update_all( fec_inicon:Contract.
              where(employee_id:params[:employee_id],
              tipo_contra:contr.tipo_contra).minimum('fec_inicon') ,
              fec_tercon:contr.fec_tercon,estado:1)

          @conta=1
     end
   end

     if   @conta==0 then
       ul do

          li "Estado: INACTIVO"
       end

       Employee.where(id:params[:employee_id]).update_all( fec_inicon:nil,
       fec_tercon:nil,estado:2)

     end



end
end
