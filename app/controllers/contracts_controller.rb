class ContractsController < InheritedResources::Base

  private

    def contract_params
      params.require(:contract).permit(:employee_id, :num_cont, :fec_inicon, :fec_tercon, :puesto, :cod_hor, :remuneracion, :area, :tipo_contra, :fec_retiro, :motivo_retir, :obs, :admin_user_id)
    end
end

