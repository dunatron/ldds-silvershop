<%-- Carousel | Loop first categories items for slider --%>
<div class="carousel-wrapper">
    <div id="lddsCarousel" class="carousel slide" data-ride="carousel">
        <%-- Loop and render slides --%>
        <div class="carousel-inner" role="listbox">
            <% loop $Menu(1) %>
                <%--<% if $Classnasme="LDHolder" %>--%>
                <% if $ClassName="DesignerHolder" %>
                    <% if $Children %>
                        <% loop $Children %>
                            <%-- ProductCategory Loop --%>
                            <% if $ClassName = 'CollectionCategory' %>
                                <% if $First %>
                                        <% loop $CollectionShoot %>
                                            <div class="<% if $First%>item active<% else %>item<% end_if %>">
                                                <% with $ShootImage.CroppedImage(1140,400) %>
                                                    <%--<img class="img-responsive" src="$URL" width="$Width" height="$Height">--%>
                                                    <div class="slider-background-images" style="background-image:url('$URL');"></div>
                                                    <style>#preload-01 { background: url($URL) no-repeat -9999px -9999px; }</style>
                                                <% end_with %>
                                            </div>
                                        <% end_loop %>
                                <% end_if %>
                            <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                <% end_if %>
            <% end_loop %>
        </div>
        <%-- Controls --%>
        <div class="controls-wrapper">
            <!-- Left and right controls -->
            <a class="carousel-control left-btn" href="#lddsCarousel" role="button" data-slide="next">
                <%--<span class="fa fa-arrow-right" aria-hidden="true"></span>--%>
                <%--<span class="sr-only">Next</span>--%>
                <img src="$ThemeDir/images/svg/keyboard_arrow_right.svg">
            </a>
            <a class="carousel-control right-btn" href="#lddsCarousel" role="button" data-slide="prev">
                <%--<span class="fa fa-arrow-left" aria-hidden="true"></span>--%>
                <%--<span class="sr-only">Previous</span>--%>
                <img src="$ThemeDir/images/svg/keyboard_arrow_left.svg">
            </a>
        </div>
    </div>
</div>