<div class="container">
    <h1>Designer Holder</h1>
    classname = $ClassName<br/>
    title = $Title <br/>
    <ul>
        <% loop $Menu(1) %>
            <li>
                <a href="$Link">$Title - $Model</a>
                <% if $Children %>
                    <ul>
                        <% loop $Children %>
                            <li>
                                Category
                                <%-- ProductCategory Loop --%>
                                <% if $ClassName = 'ProductCategory' %>
                                    <a href="$Link">$Title - $ClassName</a>
                                    <% if $Children %>
                                        <ul>
                                            <%-- ProductType Loop | Specify ClassName(DesignerProduct) --%>
                                            <% loop $Children %>
                                                <li>
                                                    <a href="$Link">$Title - $ClassName</a>
                                                </li>
                                            <% end_loop %>
                                        </ul>
                                    <% end_if %>
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    </ul>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
</div>
