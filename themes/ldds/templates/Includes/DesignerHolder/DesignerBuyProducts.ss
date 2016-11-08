<% loop $Menu(1) %>
    <%--<% if $Classnasme="LDHolder" %>--%>
    <% if $ClassName="DesignerHolder" %>
            <% if $Children %>
                    <% loop $Children %>
                        <%--<h1 class="collection-title">$Title</h1>--%>
                        <%-- ProductCategory Loop --%>
                        <% if $ClassName = 'CollectionCategory' %>
                            <%-- IN STORE --%>
                            <% if $First %>
                                <h1 class="collection-title">$Title</h1>

                                    <% if $Children %>
                                            <%-- ProductType Loop | Specify ClassName(DesignerProduct) --%>
                                            <div class="product-panels-wrapper">
                                                <div class="black-right-bg">

                                                </div>
                                                <% loop $Children %>
                                                    <% include DesignerPanel %>
                                                    <% include DesignerModal %>
                                                <% end_loop %>
                                            </div>
                                    <% end_if %>
                            <% else %>
                                <%-- SOLD OUT --%>
                                <% if $Children %>
                                    <% include StaticBanner %>
                                    <h1 class="collection-title">$Title</h1>
                                    <%-- ProductType Loop | Specify ClassName(DesignerProduct) --%>
                                    <div class="product-panels-wrapper sold-out">
                                        <div class="black-right-bg">

                                        </div>

                                        <% loop $Children %>

                                            <% include DesignerPanel %>
                                            <% include SoldOutModal %>
                                        <% end_loop %>
                                    </div>
                                <% end_if %>
                            <% end_if %>
                        <% end_if %>
                        <div class="end-collection"></div>
                    <% end_loop %>
            <% end_if %>
    <% end_if %>
    <%--<% end_if %>--%>
<% end_loop %>
