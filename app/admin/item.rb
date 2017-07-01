ActiveAdmin.register Item do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
ActiveAdmin.register Detail do
belongs_to :item
end


menu  priority: 3, label: "Actividades"

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :objetivo, :actividad, :responsable,
     :unidad, :programa, :pfecha,
     :admin_user_id

filter :actividad

filter :responsable, label:'Responsable de Ejecucion', :as => :select, :collection =>
     Formula.where(product_id:1).order('nombre ASC').map{|u| ["#{u.nombre}", u.orden]}

filter :objetivo, label:'Objetivo estrategico Institucional', :as => :select, :collection =>
      Formula.where(product_id:2).order('descripcion ASC').map{|u| ["#{u.descripcion}", u.orden]}

filter :unidad, label:'Unidad de Medida', :as => :select, :collection =>
     Formula.where(product_id:3).order('nombre ASC').map{|u| ["#{u.nombre}", u.orden]}






index :title => 'Lista de Actividades' do

  column("id") do |item|
   link_to "#{item.id} ", admin_item_details_path(item)

end

  column("actividad")

  column("Responsable de Ejecucion")do |item|
             Formula.where(product_id:1, orden:item.responsable).
              select('nombre as dd').first.dd
  end

  column("Objetivo estrategico Institucional", :sortable => :objetivo) do |item|
             Formula.where(product_id:2, orden:item.objetivo).
              select('descripcion as dd').first.dd
  end



  column("Unidad de medida")do |item|
             Formula.where(product_id:3, orden:item.unidad).
              select('nombre as dd').first.dd
  end




      actions
  end



  form :title => 'Edicion Actividades' do |f|

      f.inputs  do



         f.input :responsable,:label => 'Area Responsable', :as => :select, :collection =>
           Formula.where(product_id:1).order('nombre').map{|u| [u.nombre, u.orden]}

         f.input :objetivo,:label => 'Objetivo estrategico Institucional', :as => :select, :collection =>
           Formula.where(product_id:2).order('descripcion').map{|u| [u.descripcion, u.orden]}

         f.input :actividad

         f.input :unidad,:label => 'Unidad de medida', :as => :select, :collection =>
             Formula.where(product_id:3).order('nombre').map{|u| [u.nombre, u.orden]}

         f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden

                f.actions



      end
    end




    show :title => ' Actividades'  do

          attributes_table  do


           row :responsable do |item|
             Formula.where(product_id:1, orden:item.responsable).
              select('nombre as dd').first.dd
           end

           row "Objetivo estrategico Institucional" do |item|
              Formula.where(product_id:2, orden:item.objetivo).
               select('descripcion as dd').first.dd
           end

          row :actividad do |item|
                 item.actividad
          end

          row "Unidad de medida" do |item|
             Formula.where(product_id:3, orden:item.unidad).
              select('nombre as dd').first.dd
          end



          end
        end










end
