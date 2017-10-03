
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
        <div class="col-md-8">

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

        <div class="col-md-4">
            <section class="card bg-theme">
                <div class="card-header"><h2>SPONSORS</h2></div>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </section>
        </div>

    </div>

</div> <!-- /container -->