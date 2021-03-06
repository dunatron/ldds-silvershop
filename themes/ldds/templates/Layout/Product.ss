<%--<% require themedCSS(product,shop) %>--%>
<div class="container holder-buffer">
    <%-- PRODUCT --%>
    <div id="Product" class="typography">
        <h1 class="pageTitle">$Title</h1>
        <div class="breadcrumbs">$Breadcrumbs</div>
        <%-- if ImageSet Loop Product Image Set --%>
        <% if $DesignerImageSet %>
            <% include ProductSlider %>
            <%-- else if $Image --%>
        <% else_if $Image %>
            <% with $Image.FocusFill(620,620) %>
                <img class="productImage img-responsive" src="$URL"
                     alt="<%t Product.ImageAltText "{Title} image" Title=$Title %>"/>
            <% end_with %>
            <%-- Else render no image text --%>
        <% else %>
            <div class="noimage"><%t Product.NoImage "no image" %></div>
        <% end_if %>
        <% if $AllowPurchase %>
            <div class="productDetails">
                <% if $InternalItemID %><p><%t Product.Code "Product Code" %> : {$InternalItemID}</p><% end_if %>
                <% if $Model %><p><%t Product.Model "Model" %> : $Model.XML</p><% end_if %>
                <% if $Size %><p><%t Product.Size "Size" %> : $Size.XML</p><% end_if %>
                <%--<% include ColorSwatches %>--%>
                <% if $PriceRange %>
                    <div class="price" style="width: 100%;">
                        <strong class="value">$PriceRange.Min.Nice</strong>
                        <% if $PriceRange.HasRange %>
                            - <strong class="value">$PriceRange.Max.Nice</strong>
                        <% end_if %>
                        <span class="currency">$Price.Currency</span>
                    </div>
                <% else %>
                    <% if $Price %>
                        <div class="price" style="width: 100%;">
                            <strong class="value">$Price.Nice</strong> <span class="currency">$Price.Currency</span>
                        </div>
                    <% end_if %>
                <% end_if %>
                $Form
            </div>
        <% end_if %>
        <% if $Content %>
            <div class="productContent typography">
                $Content
            </div>
        <% end_if %>
    </div>
    <%-- SIDEBAR--%>
    <div id="Sidebar">
        <% with $Parent %>
            <% include ProductMenu %>
        <% end_with %>
        <div class="cart">
            <% include SideCart %>
        </div>
    </div>
</div>

