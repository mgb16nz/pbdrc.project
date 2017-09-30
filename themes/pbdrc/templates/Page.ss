<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <% base_tag %>
    $MetaTags(false)
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></title>

    <!-- GoogleAnalytics -->
    $GoogleAnalytics
    <!-- End of GoogleAnalytics -->

</head>

<body>

    <% include Header %>
    <% include Navigation %>
    <% include BreadCrumbs %>

        $Layout
        <%--<% include SideBar %>--%>

    <% include Footer %>

</body>
</html>
