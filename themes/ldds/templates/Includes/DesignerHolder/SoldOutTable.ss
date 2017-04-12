<div class="col-xs-12 col-sm-6 col-md-6">
    <div class="product-accordion-wrapper">

        <div class="product-title">
            $Title
        </div>
        <div class="product-price">
            $Price.Nice
        </div>
        <div class="sold-out">
            <h2>Sold Out</h2>
        </div>
        <div id="accordion-$ID" role="tablist" aria-multiselectable="true" class="product-table-wrapper">
            <div class="panel panel-default">
                <a data-toggle="collapse" data-parent="#accordion-$ID" href="#collapseOne-$ID" aria-expanded="true"
                   aria-controls="collapseOne-$ID">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">

                            Description

                        </h4>
                    </div>
                </a>
                <div id="collapseOne-$ID" class="panel-collapse collapse in" role="tabpanel"
                     aria-labelledby="headingOne">
                    <div class="content">
                        $Content
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordion-$ID" href="#collapseTwo-$ID"
                   aria-expanded="false" aria-controls="collapseTwo-$ID">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">

                            Delivery & Returns

                        </h4>
                    </div>
                </a>
                <div id="collapseTwo-$ID" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="content">
                        $SiteConfig.DesignerPolicy
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordion-$ID" href="#collapseThree-$ID"
                   aria-expanded="false" aria-controls="collapseThree-$ID">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">

                            $SiteConfig.DesignerPolicy

                        </h4>
                    </div>
                </a>
                <div id="collapseThree-$ID" class="panel-collapse collapse" role="tabpanel"
                     aria-labelledby="headingThree">
                    <% with $SizeChart %>
                        $Me.FocusFill(460, 500)
                        <%--<img src="$URL">--%>
                    <% end_with %>
                </div>
            </div>
        </div>
    </div>
</div>