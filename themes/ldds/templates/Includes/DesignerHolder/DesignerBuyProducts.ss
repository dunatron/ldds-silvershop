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
                    <%-- DISCOUNT --%>
                    <% if $getCollectionDiscount %>
                        <% with $getCollectionDiscount %>
                            <div class="category-discount alert alert-danger alert-dismissable">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                                $Title
                                <strong>$getDiscountNice</strong> OFF all Products in this collection
                            </div>
                        <% end_with %>
                    <% end_if %>
                    <div class="product-panels-wrapper">
                        <div class="black-right-bg"></div>
                        <% loop $Children %>

                            <% if $AllowPurchase  %>
                                <div class="product-panels $Pos $EvenOdd">
                                    <div class="img-wrapper">

                                        <a data-toggle="modal" data-target="#designerModal-$ID">
                                            <div class="dark-overlay"></div>
                                            <div class="title">$Title</div>


                                            <% if $Up.getCollectionDiscount %>
                                                <%--<div class="price">--%>
                                                    <%--$Price - ${$Up.getCollectionDiscount.getDiscountValue($getPrice)}--%>
                                                <%--</div>--%>
                                                <div class="price">
                                                    Was <s>$Price</s> Now ${$SalePrice($Price, $Up.getCollectionDiscount.getDiscountValue($getPrice))}
                                                    <br />
                                                    Save ${$Up.getCollectionDiscount.getDiscountValue($getPrice)}
                                                </div>

                                            <% else %>
                                                <div class="price">$Price</div>
                                            <% end_if %>



                                            <%--<% with $Image.CroppedImage(300, 400) %>--%>
                                            <%--<img class="img-responsive" src="$URL" width="$Width" height="$Height">--%>
                                            <%--<% end_with %>--%>
                                            <% with $Image.FocusFill(300, 400) %>
                                                <img class="img-responsive" src="$URL" width="$Width" height="$Height">
                                            <% end_with %>
                                        </a>
                                    </div>
                                </div>
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
