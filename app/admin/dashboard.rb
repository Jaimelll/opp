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
                        column("Unidad " ) do |item|
                              Formula.where(product_id:3,orden:  item.unidad).select('nombre as dd').first.dd
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
                      column("MAY") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/05/01'and pfecha<'2017/06/01'").
                          sum(:cantidad)
                      end
                      column("JUN") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/06/01'and pfecha<'2017/07/01'").
                          sum(:cantidad)
                      end
                      column("JUL") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/07/01'and pfecha<'2017/08/01'").
                          sum(:cantidad)
                      end
                      column("AGO") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/08/01'and pfecha<'2017/09/01'").
                          sum(:cantidad)
                      end
                      column("SET") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/09/01'and pfecha<'2017/10/01'").
                          sum(:cantidad)
                      end
                      column("OCT") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/10/01'and pfecha<'2017/11/01'").
                          sum(:cantidad)
                      end
                      column("NOV") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/11/01'and pfecha<'2017/12/01'").
                          sum(:cantidad)
                      end
                      column("DIC") do |item|
                          Detail.where(item_id:item.id,area:1).
                          where("pfecha>='2017/12/01'and pfecha<'2018/01/01'").
                          sum(:cantidad)
                      end



                  end # de table_for




                      table_for Item.where(responsable:@res1).order('actividad')  do

                           column("AVANCE" ) do |item|
                               item.actividad
                             end
                             column("Unidad " ) do |item|
                                   Formula.where(product_id:3,orden:  item.unidad).select('nombre as dd').first.dd
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
                           column("MAY") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/05/01'and pfecha<'2017/06/01'").
                               sum(:cantidad)
                           end
                           column("JUN") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/06/01'and pfecha<'2017/07/01'").
                               sum(:cantidad)
                           end
                           column("JUL") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/07/01'and pfecha<'2017/08/01'").
                               sum(:cantidad)
                           end
                           column("AGO") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/08/01'and pfecha<'2017/09/01'").
                               sum(:cantidad)
                           end
                           column("SET") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/09/01'and pfecha<'2017/10/01'").
                               sum(:cantidad)
                           end
                           column("OCT") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/10/01'and pfecha<'2017/11/01'").
                               sum(:cantidad)
                           end
                           column("NOV") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/11/01'and pfecha<'2017/12/01'").
                               sum(:cantidad)
                           end
                           column("DIC") do |item|
                               Detail.where(item_id:item.id,area:2).
                               where("pfecha>='2017/12/01'and pfecha<'2018/01/01'").
                               sum(:cantidad)
                           end

                       end # de table_for




                       table_for Item.where(responsable:@res1).order('actividad')  do

                            column("%AVANCE" ) do |item|
                                item.actividad
                              end
                            column("Unidad " ) do |item|
                                  Formula.where(product_id:3,orden:  item.unidad).select('nombre as dd').first.dd
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
                            column("MAY") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/05/01'and pfecha<'2017/06/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/05/01'and pfecha<'2017/06/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("JUN") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/06/01'and pfecha<'2017/07/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/06/01'and pfecha<'2017/07/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("JUL") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/07/01'and pfecha<'2017/08/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/07/01'and pfecha<'2017/08/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("AGO") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/08/01'and pfecha<'2017/09/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/08/01'and pfecha<'2017/09/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("SET") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/09/01'and pfecha<'2017/10/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/09/01'and pfecha<'2017/10/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("OCT") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/10/01'and pfecha<'2017/11/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/10/01'and pfecha<'2017/11/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("NOV") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/11/01'and pfecha<'2017/12/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/11/01'and pfecha<'2017/12/01'").
                                  sum(:cantidad)

                                if @bb>0 then
                                   @cc=(@aa*100/@bb)
                                  else
                                   @cc=0
                                  end

                                number_to_percentage(@cc, precision: 0)
                            end
                            column("DIC") do |item|
                              @aa=  Detail.where(item_id:item.id,area:2).
                                  where("pfecha>='2017/12/01'and pfecha<'2018/01/01'").
                                  sum(:cantidad)
                              @bb=    Detail.where(item_id:item.id,area:1).
                                  where("pfecha>='2017/12/01'and pfecha<'2018/01/01'").
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
