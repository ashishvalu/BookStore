ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :publisher_id, :categary_id, :isbn10, :isbn13,
                :language, :price, :discount_type, :discount
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :publisher_id, :categary_id, :isbn10, :isbn13, :language, :price, :discount_type, :discount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
