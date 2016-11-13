<div class="panels-wrapper">
    <div class="ldds-panel col-md-4" id="art-panel">
        <% with $PrintImage.CroppedImage(850,1200) %>
            <a href="{$AbsoluteBaseURL}print"> <img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <%--<h2 id="art-panel-text">PRINT</h2>--%>
            <a href="{$AbsoluteBaseURL}print" class="print-panel-text">
                $PrintPanelTitle
            </a>
        </div>
    </div>
    <div class="ldds-panel col-md-4" id="designer-panel">
        <% with $RangesImage.CroppedImage(850,1200) %>
        <a href="{$AbsoluteBaseURL}ranges"><img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <%--<h2 id="designer-panel-text">LUKE DAWSON</h2>--%>
            <a href="{$AbsoluteBaseURL}ranges" class="ranges-panel-text">
                $RangesPanelTitle
            </a>
        </div>
    </div>
    <div class="ldds-panel col-md-4" id="ld-panel">
        <% with $BasicsImage.CroppedImage(850,1200) %>
        <a href="{$AbsoluteBaseURL}basics"><img id="testimonial-img" class="img-responsive" src="$URL" width="$Width" height="$Height"></a>
        <% end_with %>
        <div class="panel-title">
            <%--<h2 id="basics-panel-text">LD</h2>--%>
            <a href="{$AbsoluteBaseURL}basics" class="basics-panel-text">
                $BasicsPanelTitle
            </a>
        </div>
    </div>
</div>