<div class="container holder-buffer">
    <%-- Loop Collection Categories --%>
    <% loop $Children(1) %>
        <% if $ClassName == 'CollectionCategory' %>
            <% include StaticBanner %>
            <h1 class="collection-title">$Title</h1>
            <div class="product-panels-wrapper">
                <% loop $Children() %>
                    <% if $AllowPurchase %>
                        <% include DesignerPanel %>
                        <% include DesignerModal %>
                    <% else %>
                        <% include DesignerPanel %>
                        <% include SoldOutModal %>
                    <% end_if %>
                <% end_loop %>
            </div>
        <% end_if %>
    <% end_loop %>
</div>
