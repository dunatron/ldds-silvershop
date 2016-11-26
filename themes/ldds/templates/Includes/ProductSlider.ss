<div id="verticalCarousel-$ID" class="vertical-slider carousel vertical slide col-md-12" data-ride="carousel" style="max-width: 600px;">
    <div class="row">
        <div class="col-md-12">
            <i data-slide="next" class="btn-vertical-slider fa fa-angle-up slider-up-arrow"></i>
        </div>
    </div>
    <!-- Carousel items -->

    <div class="carousel-inner">
        <% loop $DesignerImageSet %>

            <div class="item<% if $First %> active<% end_if %>">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <% with $ShootImage.SetRatioSize(600,950) %>
                            <img class="img-responsive" src="$URL" width="$Width" height="$Height">
                        <% end_with %>
                        <%--$Me.SetRatioSize(80,80)--%>
                    </div>
                </div>
                <!--/row-fluid-->
            </div>
        <% end_loop %>
    </div>
    <div class="row">
        <div class="col-md-12">
            <i data-slide="prev" class="btn-vertical-slider fa fa-angle-down slider-down-arrow"></i>
        </div>
    </div>
</div>