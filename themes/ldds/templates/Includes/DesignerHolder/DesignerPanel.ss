<div class="product-panels $Pos $EvenOdd">
    <div class="img-wrapper">
    <a data-toggle="modal" data-target="#designerModal-$ID">
        <% with $Image.CroppedImage(300, 400) %>
            <img class="img-responsive" src="$URL" width="$Width" height="$Height">
        <% end_with %>
    </a>
    </div>
</div>


