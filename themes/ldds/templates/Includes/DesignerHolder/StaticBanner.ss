<div class="static-banner-wrapper">
    <% if $CollectionShoot %>
        <% loop $CollectionShoot %>
            <% if $First %>
                <% with $ShootImage.CroppedImage(1140,500) %>
                    <%--<img class="img-responsive" src="$URL" width="$Width" height="$Height">--%>
                    <%--<img src="$URL" class="slider-background-images">--%>
                    <div class="slider-background-images" style="background-image:url('$URL');"></div>
                <% end_with %>
            <% end_if %>
        <% end_loop %>
    <% end_if %>
</div>

