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
                        <li><i class="fa fa-phone"></i><p><span>$SiteConfig.Mobile</span></p></li>
                        <li><i class="fa fa-envelope"></i><p><span><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></span></p></li>
                    </ul>
                </div>
            </section>

            <!-- Google Maps -->
            <section class="card bg-theme">
                <div class="card-body">
                    <h4>Location of Pegasus Bay Drag Racing Club</h4>
                    <br>
                    <ul class="contact">
                        <li><i class="fa fa-map-marker"></i><p><span>$SiteConfig.Address<br>$SiteConfig.Suburb<br>$SiteConfig.City</span></p></li>
                    </ul>
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d16009.928593224073!2d$Longitude!3d$Latitude!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d$Latitude!2d$Longitude!5e0!3m2!1sen!2snz!4v1507289623737" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </section>
        </div>

        <!-- Sidebar / Sponsors Area -->
        <% include SideBar %>

    </div><!-- /row -->
</div> <!-- /container -->