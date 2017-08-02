class SheetsController < InheritedResources::Base

  private

    def sheet_params
      params.require(:sheet).permit(:codigo_ficha, :codigo_revision, :creada, :revisada, :descripcion_original, :descripcion, :grupo, :clase, :cna, :na, :soc, :caracteristica, :vigencia, :unidad_medida, :admin_user_id)
    end
end

