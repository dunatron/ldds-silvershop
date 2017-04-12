<% require themedCSS(cart,shop) %>
<% if $Items %>
    <div class="Checkout-products-wrapper">
        <% loop $Items %>
            <div class="product-wrapper $EvenOdd <% if $Last %>Last<% end_if %>">
                <% if $ShowInTable %>
                    <% if $Image %>
                        <div class="image">
                            <a href="$Link"
                               title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">
                                <%--$Image.setWidth(45)--%>
                                <% with $Image.FocusFill(225, 225) %>
                                    <img src="$URL">
                                <% end_with %>
                            </a>
                        </div>
                    <% end_if %>
                    <% if $Link %>
                        <div class="product-title"><a href="$Link"
                                                      title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
                        </div>
                    <% else %>
                        <div class="product-title">$TableTitle</div>
                    <% end_if %>
                    <% if $SubTitle %>$SubTitle<% end_if %>
                    <% if $Product.Variations && $Up.Editable %>
                        <%t Shop.Change "Change" %>: $VariationField
                    <% end_if %>
                    <div class="product-price">
                        $UnitPrice.Nice
                    </div>

                    <% if $Up.Editable %>
                        <div class="product-quantity">x $QuantityField</div> <% else %>
                        <div class="product-quantity">x $Quantity</div> <% end_if %>
                    <div class="product-total">
                        $Total.Nice
                    </div>

                    <% if $Up.Editable %>
                        <% if $RemoveField %>
                            $RemoveField
                        <% else %>
                            <a href="$removeallLink"
                               title="<%t ShoppingCart.RemoveAllTitle "Remove all of &quot;{Title}&quot; from your cart" Title=$TableTitle %>">
                                <img src="silvershop/images/remove.gif" alt="x"/>
                            </a>
                        <% end_if %>
                    <% end_if %>
                <% end_if %>
            </div>
        <% end_loop %>
        <div class="form-details-wrapper">
            <div class="sub-total-wrapper">
                <%t Order.SubTotal "Sub-total" %>
                $SubTotal.Nice
            </div>

            <%--<% if $Editable %><td>&nbsp;</td><% end_if %>--%>
            <% if $ShowSubtotals %>
                <% if $Modifiers %>
                    <% loop $Modifiers %>
                        <% if $ShowInTable %>
                            <% if $Link %>
                                <a href="$Link"
                                   title="<%t Shop.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
                            <% else %>
                                $TableTitle
                            <% end_if %>

                            $TableValue.Nice
                            <% if $Up.Editable %>
                                <td>
                                    <% if $CanRemove %>
                                        <strong>
                                            <a class="ajaxQuantityLink" href="$removeLink"
                                               title="<%t ShoppingCart.RemoveTitle "Remove &quot;{Title}&quot; from your cart." Title=$TableTitle %>">
                                                <img src="silvershop/images/remove.gif" alt="x"/>
                                            </a>
                                        </strong>
                                    <% end_if %>
                                </td>
                            <% end_if %>
                            <% if $Form %>
                                $Form

                            <% end_if %>
                        <% end_if %>
                    <% end_loop %>
                <% end_if %>

                <div class="Total-cart-price">
                    $Total.Nice $Currency
                </div>

            <% end_if %>
        </div>

    </div>

<% else %>
    <p class="message warning">
        <%t ShoppingCart.NoItems "There are no items in your cart." %>
    </p>
<% end_if %>
