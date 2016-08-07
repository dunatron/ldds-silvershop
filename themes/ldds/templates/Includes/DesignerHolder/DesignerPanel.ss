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


<% include DesignerModal %>