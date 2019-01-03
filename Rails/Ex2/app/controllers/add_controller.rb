class AddController < ApplicationController
    def json_sum
        required = [:num1, :num2]
        if required.all? {|k| params.has_key? k}         
            @sum = params[:num1].to_i + params[:num2].to_i
            result_in_json = {:result => @sum}
            render :json => result_in_json      
        else
            render json: {status: :unprocessable_entity} 
        end
      
    end
end
