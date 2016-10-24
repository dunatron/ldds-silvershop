<div class="container holder-buffer">
    <div class="main-intro">This page is a list of all collections and categories <span class="info">Designer collections become sold out when a new collection is released i.e only the most recent designer collection is available for purchase</span>
    </div>

    <div class="designer-intro">Designer Collections
        <small>chronologically ordered</small>
    </div>
    <%-- loop DesignerCategories DataList containing CollectionCategory pages filtered by CollectionType{Designer} --%>
    <div class="cat-wrapper">
        <% loop $DesignerCategories %>
            <a class="category-link" href="$Link">$Title</a>
        <% end_loop %>
    </div>

    <div class="basics-intro">Basic Collections
        <small>chronologically ordered</small>
    </div>
    <%-- loop BasicCategories DataList containing CollectionCategory pages filtered by CollectionType{Basic} --%>
    <div class="cat-wrapper">
        <% loop $BasicCategories %>
            <a class="category-link" href="$Link">$Title</a>
        <% end_loop %>
    </div>

    <div class="general-intro">General Categories
        <small>alphabetically ordered</small>
    </div>
    <%-- loop ProductCategories DataList containing ProductCategory pages --%>
    <div class="cat-wrapper">
        <% loop $ProductCategories %>
            <a class="category-link" href="$Link">$Title</a>
        <% end_loop %>
    </div>

</div>