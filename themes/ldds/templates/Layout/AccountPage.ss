<% require css("silvershop/css/account.css") %>
<% require themedCSS("shop") %>
<% require themedCSS("account") %>

<div class="container">
    <% include AccountNavigation %>
</div>

<div class="container holder-buffer">
    $Content
    <h2 class="pagetitle"><%t AccountPage.PastOrders 'Past Orders' %></h2>
    <% with $Member %>
        <% if $PastOrders %>
            <% include OrderHistory %>
        <% else %>
            <p class="message warning"><%t AccountPage.NoPastOrders 'No past orders found.' %></p>
        <% end_if %>
    <% end_with %>
</div>
