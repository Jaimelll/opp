ActiveAdmin.register_page "Dashboard" do


menu  priority: 0
  action_item :only=> :index do

      link_to   'DJ', jefatura_admin_product_formula_path(1, :@num), method: :put
  end
  action_item :only=> :index do

      link_to   'SG', secretaria_admin_product_formula_path(1, :@num), method: :put
  end







end
