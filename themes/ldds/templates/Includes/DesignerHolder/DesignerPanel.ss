<div class="product-panels">
    <div class="img-wrapper">
    <a data-toggle="modal" data-target="#designerModal-$ID">
        <% with $Image.CroppedImage(1140, 800) %>
            <img class="img-responsive" src="$URL" width="$Width" height="$Height">
        <% end_with %>
    </a>
    </div>
    <!-- Button trigger modal -->
    <%--<a type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#designerModal-$ID">--%>
        <%--Launch demo modal--%>
    <%--</a>--%>
</div>

<!-- Modal -->
<div class="modal fade designer-modal" id="designerModal-$ID" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">$Title</h4>
            </div>
            <div class="modal-body">

                <% with $Image %>
                    <img class="img-responsive" src="$URL" width="$Width" height="$Height">
                <% end_with %>
            </div>
            <div class="modal-footer">
                <a href="$addLink" class="add-product">ADD TO CART</a>
            </div>
        </div>
    </div>
</div>

