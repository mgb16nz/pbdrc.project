    <!-- BREADCRUMBS -->
    <div class="container">
        <nav class="breadcrumb col-md-12">

            <% if $URLSegment = 'home' %>
            <% else %>
                <a href="$URL">Home</a>
                &raquo;
            <% end_if %>
                $Breadcrumbs
        </nav>
    </div>

</div>
