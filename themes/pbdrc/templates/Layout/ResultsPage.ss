<!-- Main Content Area -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <% if $Results %>
            <% loop $Results %>
            <section class="card bg-theme map">
                <div class="card-body">
                    <h2>$Title</h2>
                    <p class="lead">$SubTitle</p>
                    <p><small><a href="$ResultsFile.URL" target="_blank">Click here to download PDF Results</a></small></p>
                    <br>
                    <img class="card-img" src="$ImageFile.URL" alt="current results">
                </div>
            </section>
            <% end_loop %>

                <% else %>

                <section class="card bg-theme map">
                    <div class="card-body">
                        <h2>No current Results posted yet</h2>
                    </div>
                </section>

            <% end_if %>

        </div>

        <% include SideBar %>

    </div><!-- end of /.row -->
</div><!-- end of / .container-->