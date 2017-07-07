ActiveAdmin.register_page "Dashboard" do

menu  priority: 1,label: proc{ I18n.t("active_admin.dashboard") }

menu  priority: 0
  action_item :only=> :index do
      link_to   'DJ', jefatura_admin_product_formula_path(1, :@num), method: :put
  end


  action_item :only=> :index do
      link_to   'SG', secretaria_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'OCI', oci_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'OSJ', osj_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'OPP', opp_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'UPP', upp_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'UR', ur_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'OGA', oga_admin_product_formula_path(1, :@num), method: :put
  end



  action_item :only=> :index do
      link_to   'OI', oi_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'DC', dc_admin_product_formula_path(1, :@num), method: :put
  end

  action_item :only=> :index do
      link_to   'DEM', dem_admin_product_formula_path(1, :@num), method: :put
  end


    action_item :only=> :index do
        link_to   'DEC', dec_admin_product_formula_path(1, :@num), method: :put
    end


  content title: proc{ I18n.t("active_admin.dashboard") } do

columns do
     column do
                @res=Formula.where(product_id:1,cantidad:1).
                    select('nombre as dd').first.dd
                @res1=Formula.where(product_id:1,cantidad:1).
                        select('orden as dd').first.dd

        panel  "Responsable de Ejecucion:"+@res.upcase do

                 table_for Item.where(responsable:@res1).order('actividad')  do

                      column("PROGRAMA" ) do |item|
                          item.actividad
                        end

                      column("ENE") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/01/01'and pfecha<'2017/02/01'").
                          sum(:cantidad)
                      end
                      column("FEB") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/02/01'and pfecha<'2017/03/01'").
                          sum(:cantidad)
                      end
                      column("MAR") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/03/01'and pfecha<'2017/04/01'").
                          sum(:cantidad)
                      end
                      column("ABR") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/04/01'and pfecha<'2017/05/01'").
                          sum(:cantidad)
                      end


                  end # de table_for




                      table_for Item.where(responsable:@res1).order('actividad')  do

                           column("AVANCE" ) do |item|
                               item.actividad
                             end

                           column("ENE") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/01/01'and pfecha<'2017/02/01'").
                               sum(:cantidad)
                           end
                           column("FEB") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/02/01'and pfecha<'2017/03/01'").
                               sum(:cantidad)
                           end
                           column("MAR") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/03/01'and pfecha<'2017/04/01'").
                               sum(:cantidad)
                           end
                           column("ABR") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/04/01'and pfecha<'2017/05/01'").
                               sum(:cantidad)
                           end


                       end # de table_for




                       table_for Item.where(responsable:@res1).order('actividad')  do

                            column("%AVANCE" ) do |item|
                                item.actividad
                              end

                            column("ENE") do |item|
                            @aa=  Detail.where(item_id:item.id,area:2).
                                where("pfecha>='2017/01/01'and pfecha<'2017/02/01'").
                                sum(:cantidad)
                            @bb=    Detail.where(item_id:item.id,area:1).
                                where("pfecha>='2017/01/01'and pfecha<'2017/02/01'").
                                sum(:cantidad)

                              if @bb>0 then
                                 @cc=(@aa*100/@bb)
                                else
                                 @cc=0
                                end

                              number_to_percentage(@cc, precision: 0)

                            end
                            column("FEB") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/02/01'and pfecha<'2017/03/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/02/01'and pfecha<'2017/03/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("MAR") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/03/01'and pfecha<'2017/04/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/03/01'and pfecha<'2017/04/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("ABR") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/04/01'and pfecha<'2017/05/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/04/01'and pfecha<'2017/05/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end


                        end # de table_for


                      end   #panel
                    end #column



    end #columns






end




end
