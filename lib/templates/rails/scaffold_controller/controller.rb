class <%= controller_class_name %>Controller < InheritedResources::Base
  <% if options[:singleton] -%>
    defaults :singleton => true
  <% end -%>

  private

  def set<%= singular_table_name %>
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
  end

  def permitted_params
    <%- if attributes_names.empty? -%>
      params[:<%= singular_table_name %>]
    <%- else -%>
      params.permit(:<%= singular_table_name %> => <%= attributes_names.map { |name| ":#{name}" } %>
    <%- end -%>
  end
end
