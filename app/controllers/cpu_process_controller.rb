class CpuProcessController < ActionController::Base

  def index
   @top_process = system 'top -b -n 1 | head -n 12  | tail -n 5'
   respond_to do |format|
    format.html # index.html.erb
    format.json  { render :json => @top_process.to_json }
   end
  end
end


