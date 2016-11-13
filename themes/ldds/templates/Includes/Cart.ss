<% require themedCSS(cart,shop) %>
<% if $Items %>
    <div class="cart" summary="<%t ShoppingCart.TableSummary "Current contents of your cart." %>">

        <% loop $Items %>
            <% if $ShowInTable %>
                <div id="$TableID" class="cart-item $Classes $EvenOdd $FirstLast">
                    <div class="image-wrapper">
                        <% if $Image %>
                            <div class="image">
                                <a href="$Link"
                                   title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">
                                    $Image.SetRatioSize(180, 220)
                                </a>
                            </div>
                        <% end_if %>
                    </div>
                    <div class="title-wrapper" id="$TableTitleID">
                        <h3>
                            <% if $Link %>
                                <a href="$Link"
                                   title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
                            <% else %>
                                $TableTitle
                            <% end_if %>
                        </h3>
                        <% if $SubTitle %><p class="subtitle">$SubTitle</p><% end_if %>
                        <% if $Product.Variations && $Up.Editable %>
                            <%t Shop.Change "Change" %>: $VariationField
                        <% end_if %>
                    </div>
                    <div class="unit-price">$UnitPrice.Nice</div>
                    <div class="quantity"><% if $Up.Editable %>$QuantityField<% else %>$Quantity<% end_if %></div>
                    <div class="product-total" id="$TableTotalID">$Total.Nice</div>
                    <% if $Up.Editable %>
                        <div class="remove-product">
                            <% if $RemoveField %>
                                <%--$RemoveField--%>
                                <a href="$removeallLink"
                                   title="<%t ShoppingCart.RemoveAllTitle "Remove all of &quot;{Title}&quot; from your cart" Title=$TableTitle %>">
                                    <img src="silvershop-ldds/images/remove.gif" alt="x"/>
                                </a>
                            <% else %>
                                <a href="$removeallLink"
                                   title="<%t ShoppingCart.RemoveAllTitle "Remove all of &quot;{Title}&quot; from your cart" Title=$TableTitle %>">
                                    <img src="silvershop-ldds/images/remove.gif" alt="x"/>
                                </a>
                            <% end_if %>
                        </div>
                    <% end_if %>
                </div>
            <% end_if %>
        <% end_loop %>
        <div class="cart-footer">
            <div class="subtotal">
                <th colspan="4" scope="row"><%t Order.SubTotal "Sub-total" %></th>
                <td id="$TableSubTotalID">$SubTotal.Nice</td>
                <% if $Editable %>
                    <td>&nbsp;</td><% end_if %>
            </div>
        </div>
    </div>
<% else %>
    <p class="message warning">
        <%t ShoppingCart.NoItems "There are no items in your cart." %>
    </p>
<% end_if %>
