ActiveAdmin.register Formula do

menu false
permit_params  :nombre, :descripcion,  :orden,
   :cantidad, :admin_user_id, :product_id,  :numero,
   :pfecha



      action_item :view, only: :show do
        link_to 'Ir a Productos', admin_products_path()
      end
     filter :nombre
       filter :orden
       filter :numero

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
