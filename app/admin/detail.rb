ActiveAdmin.register Detail do
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

menu  false

scope :Avance, :default => true do |deta|
         deta.where(area:2)
       end


scope :Plan, :default => true do |deta|
           deta.where(area:1)
    end





#filter :area, label:'Plan o Avance', :as => :select, :collection =>
  #   Formula.where(product_id:4).order('nombre ASC').map{|u| ["#{u.nombre}", u.orden]}

filter :descripcion
filter :pfecha, label:'Fecha'


permit_params :area, :pfecha,:descripcion,  :admin_user_id,
              :item_id, :cantidad

index :title => "Lista de Partes" do


  column("area") do |detail|
      Formula.where(product_id:4,orden:detail.area).select('nombre as dd').first.dd.to_s
   end

  column("Fecha", :sortable => :pfecha) do |detail|
        detail.pfecha.strftime("%d-%m-%Y")
  end

  column("descripcion")
  column("cantidad")


    actions
end

form :title => 'Edicion Parte'  do |f|


        f.inputs  do

          f.input :area,:label => 'Plan o Avance', :as => :select, :collection =>
            Formula.where(product_id:4).order('nombre').map{|u| [u.nombre, u.orden]}

         f.input :pfecha, :label => 'fecha' ,:as =>:string, :input_html => { :style =>  'width:30%'}

          f.input :descripcion
          f.input :cantidad
          f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden

                 f.actions

          end

end


show :title => ' Partes'  do

      attributes_table  do


       row :area do |deta|
         Formula.where(product_id:4, orden:deta.area).
          select('nombre as dd').first.dd
       end

      row "Fecha" do |deta|
         deta.pfecha
      end
        row :descripcion
        row :cantidad



      end
    end

    sidebar "Datos de Actividad" do
      if params[:item_id] then
         n1=Item.where(id:  params[:item_id]).
                  select('actividad as dd').first.dd.capitalize

          n2=Item.where(id:  params[:item_id]).
                   select('responsable as dd').first.dd



          nn=Formula.where(product:1,orden:n2).
               select('nombre as dd').first.dd.capitalize


      ul do
        li "Responsable:   "+nn
        li "Actividad: "+n1

      end


    end# de if
    end # de sider







end
