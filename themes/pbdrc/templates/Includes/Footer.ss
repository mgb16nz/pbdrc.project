<!-- FOOTER -->

<div class="container-fluid">

    <footer class="footer">

        <div class="container">
            <div class="row">

                <!-- Club info -->
                <div class="col-sm-4 footer-widget">
                    <h4>Club Mission</h4>
                    <p>$SiteConfig.CIText</p>
                </div>

                <!-- Contact Details -->
                <div class="col-sm-4 footer-widget">
                    <h4>Contact Details</h4>
                    <ul class="footer-contact">
                        <li><i class="fa fa-map-marker"></i><span>$SiteConfig.Address</span></li>
                        <li><i class="fa fa-phone"></i><span>$SiteConfig.Mobile</span></li>
                        <li><i class="fa fa-envelope"></i><span>$SiteConfig.Email</span></li>
                    </ul>
                </div>

                <!-- Social Media -->
                <div class="col-sm-4 footer-widget">
                    <h4>Follow Us</h4>
                    <ul class="footer-social">
                        <% if $SiteConfig.FacebookLink %>
                        <li><!-- Facebook Icon -->
                            <a href="$SiteConfig.FacebookLink" title="$SiteConfig.FBTitle" alt="facebook" target="_blank">
                              <span class="fa-stack fa-lg">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-facebook fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.TwitterLink %>
                        <li><!-- Twitter Icon -->
                            <a href="$SiteConfig.TwitterLink" title="$SiteConfig.TTitle" alt="twitter" target="_blank">
                              <span class="fa-stack fa-lg">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-twitter fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.YoutubeLink %>
                        <li><!-- YouTube Icon -->
                            <a href="$SiteConfig.YoutubeLink" title="$SiteConfig.YTTitle" alt="youtube" target="_blank">
                              <span class="fa-stack fa-lg">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-youtube fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.GooglePlusLink %>
                            <li><!-- Goggle Plus Icon -->
                                <a href="$SiteConfig.GooglePlusLink" title="$SiteConfig.GPTitle" alt="google-plus" target="_blank">
                          <span class="fa-stack fa-lg">
                            <i class="fa fa-square fa-stack-2x"></i>
                            <i class="fa fa-google-plus fa-icons fa-stack-1x"></i>
                          </span>
                                </a>
                            </li>
                        <% end_if %>
                    </ul>
                </div>

            </div>

            <hr>

            <div class="row">

                <p class="footer-copyright">Copyright &copy; $Now.Year <a href="$AbsoluteBaseURL" target="_blank">$SiteConfig.Title</a>, All Rights Reserved</p>

            </div>

        </div>
    </footer>

</div>