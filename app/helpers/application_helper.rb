module ApplicationHelper
  def bootstrap_form_for(object, options = {}, &block)
    options[:builder] = BootstrapFormBuilder
    form_for(object, options, &block)
  end

  def search_field_value params = {}
    return "Search" unless params[:query].present?
    params[:query]
  end
end
