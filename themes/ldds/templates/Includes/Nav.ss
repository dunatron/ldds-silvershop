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
            <a class="logo-link text-center center-block" href="$AbsoluteBaseURL"><img
                    src="$ThemeDir/images/logo/logo_web_60.png"
                    class="text-center center-block img-responsive"></a>
        </div>
        <%--Shopping Cart Account Icons etc--%>
        <div class="nav-wrapper-3 nav-icons col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xlg-4">
            <a href="$AbsoluteBaseURL/cart"> <i class="fa fa-shopping-cart pull-right" aria-hidden="true"></i></a>
            <% if CurrentMember %>
                <% loop CurrentMember %>
                    <span>Hi $Name</span>
                <% end_loop %>
            <% end_if %>

        </div>

    </div>


</div>

<div id="lddsSidenav" class="sidenav">
    <ul class="list-unstyled main-menu">
        <li class="text-right"><a href="#" id="nav-close" onclick="closeNav()">×</a></li>
    <li><a class="menu-item" href="$AbsoluteBaseURL/account">Account <span class="icon"></span></a>

        <!--Include your navigation here-->
        <% loop $Menu(1) %>
            <% if $ClassName != "LDDSCollectionHolder" %>
                <% if $ClassName != "ProductCategory" %>

                    <% if CurrentMember %>
                        <% if $ClassName != "RegistrationPage" %>
                        <li><a class="$LinkingMode menu-item" href="$Link">$Title <span class="icon"></span></a>
                        <% end_if %>
                    <% else %>
                        <% if $ClassName = "RegistrationPage" %>
                            <li><a class="$LinkingMode menu-item menu-item-login" href="Security/login">Login <span class="icon"></span></a>
                        <li><a class="$LinkingMode menu-item menu-item-register" href="$Link">$Title <span class="icon"></span></a>
                        <% else %>
                            <li><a class="$LinkingMode menu-item" href="$Link">$Title <span class="icon"></span></a>
                        <% end_if %>

                    <% end_if %>

                <% end_if %>
            <% end_if %>
        <% end_loop %>

        <% if CurrentMember %>
        <li><a class="menu-item menu-item-logout" href="Security/logout">Logout <span class="icon"></span></a>
        <% end_if %>

    </ul>
</div>

