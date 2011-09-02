class Admin::UploadedFilesController < Admin::BaseController
  resource_controller 
  
  create.before :attach_user
  
  # redirect to index (instead of r_c default of show view)
  create.response do |wants|
    wants.html {redirect_to collection_url}
  end
  
  destroy.success.wants.js { render_js_for_destroy }

  def download
    @uploaded_file = UploadedFile.find(params[:id])
    send_file("#{@uploaded_file.asset.path}",
      :disposition => 'attachment',
      :encoding => 'utf8',
      :type => @uploaded_file.asset_content_type,
      :filename => URI.encode(@uploaded_file.asset_file_name))
  end

  private 
  def collection 
    @search = UploadedFile.search(params[:search])
    @collection = @uploaded_files = @search.paginate(:per_page => Spree::Config[:admin_products_per_page], :page => params[:page])
  end

  def attach_user
    @uploaded_file.user = current_user
  end
end
