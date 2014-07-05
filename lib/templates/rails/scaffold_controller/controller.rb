class <%= controller_class_name %>Controller < InheritedResources::Base
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]
  <% if options[:singleton] -%>
    defaults :singleton => true
  <% end -%>

  private

  def set_<%= singular_table_name %>
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
  end

  def permitted_params
  <%- if attributes_names.empty? -%>
    params[:<%= singular_table_name %>]
  <%- else -%>
  params.require(:<%= singular_table_name %>).permit(<%= attributes_names.map { |name| name.to_sym } %>)
  <%- end -%>
  end
end
