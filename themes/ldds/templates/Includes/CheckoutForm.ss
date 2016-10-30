<form $FormAttributes>
    <% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset>
        <div id="Email" class="field email">
            <label class="left" for="{$FormName}_Email">Email</label>
            $Fields.dataFieldByName(Email)
        </div>

        <div id="Email" class="field password">
            <label class="left" for="{$FormName}_Password">Password</label>
            $Fields.dataFieldByName(Password)
        </div>

        $Fields.dataFieldByName(SecurityID)
    </fieldset>

    <% if $Actions %>
        <div class="Actions">
            <% loop $Actions %>$Field<% end_loop %>
        </div>
    <% end_if %>
</form>