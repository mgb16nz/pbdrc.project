<% if $NoticeMessage %>
<div class="container">
    <div class="row">
        <section class="col-sm-12 bulitin">
            <h3 style="text-align: center">$NoticeMessage</h3>
        </section>
    </div><!-- end of /.row -->
</div><!-- end of / .container-->
<% else %>

<% end_if %>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-9">

            <section class="card bg-theme">
                <img class="card-img" src="$PosterImage.URL" alt="$PosterAlt">
            </section>

            <section class="card text-center bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$TitleHeader</h2>
                    $Content
                </div>
            </section>

        </div>

        <% include SideBar %>

    </div>

</div> <!-- /container -->