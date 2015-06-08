class PermissionsController < InheritedResources::Base

	def abc
	  render json: {a: 12, b: 13, name: "hello"}
	end

	def xyz
	  render text: params[:id]
	end

	def data
		@permissions = Permission.all
		@tasks = Task.all
		@count = @permissions.size
      #render text: 'Data'
	end
  private

    def permission_params
      params.require(:permission).permit(:perm_name, :perm_code)
    end
end

