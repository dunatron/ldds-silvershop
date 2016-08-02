

<div class="navbar navbar-fixed-top ldds-navbar">
    <div class="container-fluid nav-inner-wrapper">

        <!--Include your brand here-->

        <div class="nav-wrapper col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xlg-4">
            <%--<div class="navbar-header pull-right  col-md-4">--%>
                <%--<a id="nav-expander" class="nav-expander fixed">--%>
                    <%--MENU &nbsp;<i class="fa fa-bars fa-lg white"></i>--%>
                <%--</a>--%>
            <%--</div>--%>
            <div class="ldds-hamburger-btn" onclick="openNav()">
                <i class="fa fa-bars fa-lg white"></i>
            </div>
        </div>

        <div class="nav-wrapper-2 col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xlg-4">
            <a class="logo-link text-center center-block" href="$AbsoluteBaseURL"><img src="$ThemeDir/images/logo/logo_web_60.png"
                                                                                       class="text-center center-block img-responsive"></a>
        </div>
         <%--Shopping Cart Account Icons etc--%>
        <div class="nav-wrapper-3 nav-icons col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xlg-4">
            <% if CurrentMember %>
                <% loop CurrentMember %>
                    <span>Hi $Name <a href="Security/logout"><i class="fa fa-sign-out pull-right"></i></a></span>
                <% end_loop %>
            <% else %>
                <a href="Security/login" class="login-text"><i class="fa fa-sign-in pull-right"></i></a>
            <% end_if %>
            <a href="$AbsoluteBaseURL/cart"> <i class="fa fa-shopping-cart pull-right" aria-hidden="true"></i></a>
        </div>

    </div>


</div>

<div id="lddsSidenav" class="sidenav">
    <ul class="list-unstyled main-menu">
        <li class="text-right"><a href="#" id="nav-close" onclick="closeNav()">×</a></li>
    <li><a class="" href="$AbsoluteBaseURL/account">Account <span class="icon"></span></a>

        <!--Include your navigation here-->
        <% loop $Menu(1) %>
            <% if $ClassName != "LDDSCollectionHolder" %>
                <% if $ClassName != "ProductCategory" %>
                <li><a class="$LinkingMode" href="$Link">$Title <span class="icon"></span></a>
                <% end_if %>
            <% end_if %>
        <% end_loop %>

        <%--Collections--%>
        <li><a href="#">Collections</a>
            <ul class="list-unstyled">
                <% loop $Menu(1) %>
                    <% if $ClassName == "LDDSCollectionHolder" %>
                        <li class="sub-nav $LinkingMode"><a href="$Link">$MenuTitle<span class="icon"></span></a></li>
                    <% end_if %>

                <% end_loop %>
            </ul>
        </li>

        <%--CATEGORIES--%>
        <li><a href="#">Categories</a>
            <ul class="list-unstyled">
                <% loop $Menu(1) %>
                    <% if $ClassName == "ProductCategory" %>
                        <li class="sub-nav $LinkingMode"><a href="$Link">$MenuTitle<span class="icon"></span></a></li>
                    <% end_if %>

                <% end_loop %>
            </ul>
        </li>

    </ul>
</div>

