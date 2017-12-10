<!-- Main Content Area -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <section class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$MainTitle</h2>
                    $Content
                </div>
            </section>

            <% if $RacerInfo %>
                <% loop $RacerInfo %>
                    <section id="AboutInfo" class="card bg-theme">
                        <div class="card-body">
                            <h2 class="card-title">$Title</h2>
                            $Content
                        </div>
                    </section>
                <% end_loop %>
            <% end_if %>

        </div>

        <% include SideBar %>

    </div><!-- end of /.row -->
</div><!-- end of / .container-->