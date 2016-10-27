<div class="panels-wrapper">
    <div class="ldds-panel col-md-4" id="art-panel">
        <% with $ArtImage.CroppedImage(850,1200) %>
            <a href="{$AbsoluteBaseURL}art"> <img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <h2 id="art-panel-text">ART</h2>
        </div>
    </div>
    <div class="ldds-panel col-md-4" id="designer-panel">
        <% with $DesignerImage.CroppedImage(850,1200) %>
        <a href="{$AbsoluteBaseURL}lukedawson"><img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <h2 id="designer-panel-text">LUKE DAWSON</h2>
        </div>
    </div>
    <div class="ldds-panel col-md-4" id="ld-panel">
        <% with $LDImage.CroppedImage(850,1200) %>
        <a href="{$AbsoluteBaseURL}basics"><img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <h2 id="ld-panel-text">LD</h2>
        </div>
    </div>
</div>