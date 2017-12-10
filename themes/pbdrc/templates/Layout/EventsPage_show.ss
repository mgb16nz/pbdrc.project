<!-- Content Area -->
<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-9">

            <% with $Event %>
            <article class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$Title</h2>
                    <p class="post-img">
                        <img class="img-fluid event-poster mx-auto d-block" src="$Image.ScaleWidth(450).URL">
                    </p>
                    <p class="card-text">$Description</p>
                </div>
            </article>
            <% end_with %>

        </div>

        <% include SideBar %>

    </div>
</div> <!-- /container -->