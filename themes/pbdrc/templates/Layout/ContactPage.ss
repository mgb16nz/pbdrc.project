<!-- Content Area -->
<div class="container">
    <!-- Example row of columns -->
    <div class="row">

        <!-- Main content Area -->
        <div class="col-md-9">

            <!-- Contact Details -->
            <section class="card bg-theme">

                <div class="card-body">
                    <h2 class="card-title">Contact Details</h2>
                    <br>
                    <h4 class="card-subtitle">General Enquiries</h4>
                    <br>
                    $Content
                    <br>
                    <ul class="contact">
                        <%--<li><i class="fa fa-map-marker"></i><span>$SiteConfig.Address</span></li>--%>
                        <li><i class="fa fa-phone"></i><span>$SiteConfig.Mobile</span></li>
                        <li><i class="fa fa-envelope"></i><span>$SiteConfig.Email</span></li>
                    </ul>
                </div>

            </section>

            <!-- Other Enquires -->

            <section class="card bg-theme">
                <div class="card-body">
                    <h4>Other Enquiries</h4>
                    <br>

                    <table class="table table-responsive">
                        <thead>
                        <tr>
                            <th class="col-md-3">First Name</th>
                            <th>Last Name</th>
                            <th>Username</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </section>

            <!-- Google Maps -->
            <section class="card bg-theme">
                <div class="card-body">
                    <h4>Location of Pegasus Bay Drag Racing Club</h4>
                    <br>
                    <ul class="contact">
                        <li><i class="fa fa-map-marker"></i><span>$SiteConfig.Address</span></li>
                    </ul>
                    <br>
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d16009.928593224073!2d$Longitude!3d$Latitude!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d$Latitude!2d$Longitude!5e0!3m2!1sen!2snz!4v1507289623737" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>

            </section>

        </div>

        <!-- Sidebar / Sponsors Area -->
        <div class="col-md-3">
            <section class="card bg-theme">
                <div class="card-header"><h1>SPONSORS</h1></div>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </section>
        </div>

    </div>
</div> <!-- /container -->