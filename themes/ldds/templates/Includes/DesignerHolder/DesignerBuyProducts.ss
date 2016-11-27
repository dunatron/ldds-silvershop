<% loop $Menu(1) %>
    <%--<% if $Classnasme="LDHolder" %>--%>
    <% if $ClassName="DesignerHolder" %>
        <% if $Children %>
            <% loop $Children %>
                <%--<h1 class="collection-title">$Title</h1>--%>
                <%-- ProductCategory Loop --%>
                <% if $ClassName = 'CollectionCategory' %>
                    <% if $First %>
                    <% else %>
                        <% include StaticBanner %>
                    <% end_if %>
                    <h1 class="collection-title">$Title</h1>
                        <div class="product-panels-wrapper">
                            <div class="black-right-bg"></div>
                            <% loop $Children %>
                                <% if $AllowPurchase  %>
                                    <% include DesignerPanel %>
                                    <% include DesignerModal %>
                                <% else %>
                                    <% include DesignerPanel %>
                                    <% include SoldOutModal %>
                                <% end_if %>
                            <% end_loop %>
                        </div>
                <% end_if %>
                <div class="end-collection"></div>
            <% end_loop %>
        <% end_if %>
    <% end_if %>
    <%--<% end_if %>--%>
<% end_loop %>
