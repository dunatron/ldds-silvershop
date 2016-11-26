<%-- Loop Art Pieces --%>
<div class="art-container container">
    <div class="row">
        <% loop $ArtPieces %>
            <div class="art-piece">
                <%-- Art Image --%>
                <a href="#" data-toggle="modal" data-target="#art-piece-$ID">
                    <% with $ArtImage.CroppedImage(585,400) %>
                        <img src="$URL" class="img-responsive">
                    <% end_with %>
                </a>
            </div>
            <!-- Modal -->
            <div id="art-piece-$ID" class="modal fade art-modal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                            <img class="close-modal" data-dismiss="modal" aria-hidden="true" src="$ThemeDir/images/svg/cross.svg">
                            <%--<h4 class="modal-title">Modal Header</h4>--%>
                        </div>
                        <div class="modal-body">
                            <div class="large-art-image-holder">
                                <% with $ArtImage.SetRatioSize(1200,800) %>
                                    <img src="$URL" class="img-responsive">
                                <% end_with %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <% end_loop %>
    </div>
</div>