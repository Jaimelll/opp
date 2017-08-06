ActiveAdmin.register Sheet do
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
ActiveAdmin.register Activity do
belongs_to :sheet
end

menu  priority: 4, label: "Fichas"


permit_params :codigo_ficha, :codigo_revision, :creada,
     :revisada, :descripcion_original, :descripcion,
     :grupo, :clase, :cna, :na, :soc, :caracteristica,
     :vigencia, :unidad_medida,
     :admin_user_id

     index :title => 'Lista de Fichas' do

       column("id") do |ficha|
        link_to "#{ficha.id} ", admin_sheet_activities_path(ficha.id)

     end

       column("codigo_ficha")
       column("codigo_revision")
       column("Creada", :sortable => :creada) do |ficha|
         if ficha.creada then
             ficha.creada.strftime("%d-%m-%Y")
         end
       end
       column("Revisada", :sortable => :revisada) do |ficha|
         if ficha.revisada then
             ficha.revisada.strftime("%d-%m-%Y")
         end
       end
       column("descripcion_original")

      column("descripcion")

      column("clase") do |ficha|
          if ficha.clase then
            List.where(id:ficha.clase).
              select('clase as dd').first.dd
         end
      end
      column("cna")
      column("na")
      column("soc")
      column("vigencia")

      column("unidad_medida")

           actions

       end

       form :title => 'Edicion Fichas' do |f|

           f.inputs  do



              f.input :codigo_ficha, :input_html => { :style =>  'width:30%'}
              f.input :codigo_revision, :input_html => { :style =>  'width:30%'}
              f.input :creada,:label => 'fecha creacion' ,:as =>:string, :input_html => { :style =>  'width:30%'}
              f.input :revisada,:label => 'fecha revision' ,:as =>:string, :input_html => { :style =>  'width:30%'}
              f.input :descripcion_original, :input_html => { :style =>  'width:30%'}
              f.input :descripcion, :input_html => { :style =>  'width:30%'}
              f.input :clase, :as => :select, :collection =>
                List.order('orden').map{|u| [u.clase+"-"+u.descripcion, u.orden]}

              f.input :cna, :input_html => { :style =>  'width:30%'}
              f.input :na, :input_html => { :style =>  'width:30%'}
              f.input :soc, :input_html => { :style =>  'width:30%'}
              f.input :caracteristica, :input_html => { :style =>  'width:30%'}
              f.input :unidad_medida, :input_html => { :style =>  'width:30%'}

              f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden

                     f.actions



           end
         end

         show :title => ' Fichas'  do

               attributes_table  do
                row :codigo_ficha
                row :codigo_revision
                row "fecha creacion" do |ficha|
                   ficha.creada
                end
               row "fecha revision" do |ficha|
                    ficha.revisada
                end

                row :descripcion_original
                row :descripcion


              row("clase") do |ficha|
                  if ficha.clase then
                    List.where(id:ficha.clase).
                      select('clase as dd').first.dd
                 end
              end

                row :cna
                row :na
                row :soc
                row :caracteristica
                row :vigencia
                row :unidad_medida








               end
             end













end
