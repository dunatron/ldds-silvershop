<!-- Modal -->
<div class="modal fade designer-modal" id="designerModal-$ID" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                <%--<h4 class="modal-title" id="myModalLabel">$Title</h4>--%>
            <%--</div>--%>
            <div class="modal-body">
                <div class="ldds-modal-close">
                    <i class="fa fa-times" class="close" data-dismiss="modal" aria-hidden="true"></i>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                </div>



                <div class="slider-body-wrapper">
                    <% include VerticalSlider %>
                    <% include BuyTable %>

                </div>

            </div>
            <%--<div class="modal-footer">--%>
                <%--<a href="$addLink" class="add-product">ADD TO CART</a>--%>
            <%--</div>--%>
        </div>
    </div>
</div>

