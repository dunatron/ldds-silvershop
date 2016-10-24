<div class="productItem">
    <% if $Image %>
        <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
            <div class="img-wrapper">

                <% with $Image.CroppedImage(270, 180) %>
                    <img src="$URL" alt="<%t Product.ImageAltText "{Title} image" Title=$Title %>"/>
                <% end_with %>
            </div>
        </a>
    <% else %>
        <a href="$Link" title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>"
           class="noimage"><!-- no image --></a>
    <% end_if %>
    <h3 class="productTitle"><a href="$Link"
                                title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">$Title</a>
    </h3>
    <% if $Model %><p><strong><%t Product.Model "Model" %>:</strong> $Model.XML</p><% end_if %>
    <div>
        <% if $Price %><strong class="price">$Price.Nice</strong> <span class="currency">$Currency</span><% end_if %>
        <% if $View %>
            <div class="view">
                <a href="$Link"
                   title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                    <%t Product.View "View Product" %>
                </a>
            </div>
        <% else %>
            <% if $canPurchase %>
                <div class="add">
                    <a href="$addLink"
                       title="<%t Product.AddToCartTitle "Add &quot;{Title}&quot; to your cart" Title=$Title %>">
                        <%t Product.AddToCart "Add to Cart" %>
                    </a>
                </div>
            <% else %>
                <div class="sold-out">
                    <h2>Sold out</h2>
                </div>
            <% end_if %>

        <% end_if %>
    </div>
</div>