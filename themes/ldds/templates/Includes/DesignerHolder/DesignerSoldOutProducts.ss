<% loop $Menu(1) %>
    <%--<% if $Classnasme="LDHolder" %>--%>
    <% if $ClassName="DesignerHolder" %>
        <% if $Children %>
            <% loop $Children %>
                <%-- ProductCategory Loop --%>
                <% if $ClassName = 'CollectionCategory' %>
                    <% if $First %>
                        <% if $Children %>
                            <%-- ProductType Loop | Specify ClassName(DesignerProduct) --%>
                            <div class="product-panels-wrapper">
                                <% loop $Children %>
                                    <% include DesignerPanel %>
                                <% end_loop %>
                            </div>
                        <% end_if %>
                    <% else %>
                        <% if $Children %>
                            <%-- ProductType Loop | Specify ClassName(DesignerProduct) --%>
                            <div class="product-panels-wrapper sold-out">
                                <% include StaticBanner %>
                                <% loop $Children %>

                                    <% include DesignerPanel %>
                                <% end_loop %>
                            </div>
                        <% end_if %>
                    <% end_if %>
                <% end_if %>
            <% end_loop %>
        <% end_if %>
    <% end_if %>
    <%--<% end_if %>--%>
<% end_loop %>
