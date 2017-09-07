json.extract! employee, :id, :dni, :ape_pat, :ape_mat, :nombres, :direccion, :telefono, :correo, :fec_nacimiento, :estado, :tip_tra, :esta_civil, :afp, :admin_user_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
