ActiveAdmin.register VideoUpload do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment  
  permit_params :name, :description, :thumbnail, :video#, :product_id
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name
      f.input :description
      # f.input :product_id
      f.input :thumbnail, as: :file
      f.input :video, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :description
      # row :product_id
      row :thumbnail do |ad|
        image_tag url_for(ad.thumbnail),size: "300x200" #, controls: true 
      end
      row :video do |vi|
        video_tag url_for(vi.video), size: "300x200", controls: true 
        # video_tag url_for(vi.video), controls: true 
      end
    end
  end
  

  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
