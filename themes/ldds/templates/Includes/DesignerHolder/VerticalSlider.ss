<div class="col-xs-12 col-sm-6 col-md-6">
    <% if $DesignerImageSet %>
        <div id="verticalCarousel-$ID" class="vertical-slider carousel vertical slide col-md-12" data-ride="carousel">
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
                                <img src="$URL">
                            </div>
                        </div>
                        <!--/row-fluid-->
                    </div>
                <% end_loop %>
                <% with $SizeChart %>
                    <div class="item" id="collapseThree-$ID">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <img src="$URL">
                            </div>
                        </div>
                        <!--/row-fluid-->
                    </div>
                <% end_with %>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <i data-slide="prev" class="btn-vertical-slider fa fa-angle-down slider-down-arrow"></i>
                </div>
            </div>
        </div>
    <% end_if %>
</div>



