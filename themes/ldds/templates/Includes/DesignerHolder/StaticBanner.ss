<div class="static-banner-wrapper">
    <% if $CollectionShoot %>
        <% loop $CollectionShoot %>
            <% if $First %>
                <%--<img src="$URL" class="slider-background-images">--%>
                <div class="slider-background-images" style="background-image:url('$URL');"></div>
            <% end_if %>
        <% end_loop %>
    <% end_if %>
</div>

