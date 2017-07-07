ActiveAdmin.register Formula do

menu false
permit_params  :nombre, :descripcion,  :orden,
   :cantidad, :admin_user_id, :product_id,  :numero,
   :pfecha

   member_action :jefatura, method: :put do
            @num=Formula.where(product_id: 1, orden:1).
                   select('id as dd').first.dd
           Formula.where( product_id:1 ).update_all( cantidad:0 )
           Formula.where( product_id:1 ,orden:1).update_all( cantidad:1 )
           redirect_to admin_dashboard_path
   end


   member_action :secretaria, method: :put do
            @num=Formula.where(product_id: 1, orden:2).
                   select('id as dd').first.dd
           Formula.where( product_id:1 ).update_all( cantidad:0 )
           Formula.where( product_id:1 ,orden:2).update_all( cantidad:1 )
           redirect_to admin_dashboard_path
   end

   member_action :oci, method: :put do
            @num=Formula.where(product_id: 1, orden:3).
                   select('id as dd').first.dd
           Formula.where( product_id:1 ).update_all( cantidad:0 )
           Formula.where( product_id:1 ,orden:3).update_all( cantidad:1 )
           redirect_to admin_dashboard_path
   end



member_action :osj, method: :put do
         @num=Formula.where(product_id: 1, orden:4).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:4).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end

member_action :opp, method: :put do
         @num=Formula.where(product_id: 1, orden:5).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:5).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end



member_action :upp, method: :put do
         @num=Formula.where(product_id: 1, orden:6).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:6).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end

member_action :ur, method: :put do
         @num=Formula.where(product_id: 1, orden:7).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:7).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end

member_action :oga, method: :put do
         @num=Formula.where(product_id: 1, orden:8).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:8).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end



member_action :oi, method: :put do
         @num=Formula.where(product_id: 1, orden:9).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:9).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end




member_action :dc, method: :put do
         @num=Formula.where(product_id: 1, orden:10).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:10).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end

member_action :dem, method: :put do
         @num=Formula.where(product_id: 1, orden:11).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:11).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end


member_action :dec, method: :put do
         @num=Formula.where(product_id: 1, orden:12).
                select('id as dd').first.dd
        Formula.where( product_id:1 ).update_all( cantidad:0 )
        Formula.where( product_id:1 ,orden:12).update_all( cantidad:1 )
        redirect_to admin_dashboard_path
end






      action_item :view, only: :show do
        link_to 'Ir a Productos', admin_products_path()
      end
     filter :nombre
       filter :orden
       filter :cantidad

      index do
        column("nombre")do |formula|
          link_to "#{formula.nombre}", admin_products_path()
        end
        column("descripcion")
        column("orden")
        column("cantidad")
        column("numero")
        column("pfecha")
          actions
      end








          form do |f|


               nn=Product.where(id:params[:product_id]).
                        select('nombre as dd').first.dd.capitalize
              f.inputs "#{nn}" do
              f.input :product_id, :label => 'Producto' ,
                       :input_html => { :value => params[:product_id]}, :as => :hidden
              f.input :nombre, :input_html => { :style =>  'width:30%'}
              f.input :descripcion
              f.input :orden, :input_html => { :style =>  'width:30%'}
              f.input :cantidad, :input_html => { :style =>  'width:30%'}
                f.input :numero, :input_html => { :style =>  'width:30%'}
              f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden
           end
              f.actions
        end



show do


          attributes_table do

            nn=Product.where(id:params[:product_id]).
                     select('nombre as dd').first.dd.capitalize

            row :product_id do |formula|
              link_to "#{nn}", admin_product_formulas_path(formula.product_id)
            end
            row :nombre
            row :descripcion
            row :orden
            row :cantidad
            row :obs
            row :admin_user_id
          end

      end







end
