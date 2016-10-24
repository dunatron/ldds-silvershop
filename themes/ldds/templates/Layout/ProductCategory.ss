<div class="container holder-buffer">
    <% require themedCSS(productcategory,shop) %>

    <div id="ProductGroup" class="typography">
        <h1 class="pageTitle">$Title</h1>
        <% if $Content %>
            <div class="content-wrapper">
                $Content
            </div>
        <% end_if %>

        <% if $Products %>
            <div id="Products" class="category">
                <% include Sorter %>
                <div class="clear"><!-- --></div>
                <ul class="productList">
                    <% loop $Products %>
                        <% include ProductGroupItem %>
                    <% end_loop %>
                </ul>
                <div class="clear"><!-- --></div>
                <% include ProductGroupPagination %>
            </div>
        <% end_if %>
    </div>

    <div id="Sidebar">
        <% include ProductMenu %>
        <div class="cart">
            <% include SideCart %>
        </div>
    </div>
</div>
