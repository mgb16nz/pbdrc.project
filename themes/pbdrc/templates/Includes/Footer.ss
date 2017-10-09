<!-- FOOTER -->
<div class="container-fluid">

    <footer class="footer">

        <div class="container footer-content">
            <div class="row">

                <!-- Club info -->
                <div class="col-sm-4 footer-widget">
                    <h4>Club Mission</h4>
                    <hr>
                    <p>$SiteConfig.CIText</p>
                </div>

                <!-- Contact Details -->
                <div class="col-sm-4 footer-widget">
                    <h4>Contact Details</h4>
                    <hr>
                    <ul class="footer-contact">
                        <li><i class="fa fa-map-marker"></i><span>$SiteConfig.Address</span></li>
                        <li><i class="fa fa-phone"></i><span>$SiteConfig.Mobile</span></li>
                        <li><i class="fa fa-envelope"></i><span><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></span></li>
                    </ul>
                </div>

                <!-- Social Media -->
                <div class="col-sm-4 footer-widget">
                    <h4>Get In Touch</h4>
                    <hr>
                    <ul class="footer-social">
                        <% if $SiteConfig.FacebookLink %>
                            <li><!-- Facebook Icon -->
                                <a href="mailto:$SiteConfig.Email" title="E-mail us today" alt="email" target="_blank">
                              <span class="fa-stack fa-2x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-envelope fa-icons fa-stack-1x"></i>
                              </span>
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.FacebookLink %>
                        <li><!-- Facebook Icon -->
                            <a href="$SiteConfig.FacebookLink" title="$SiteConfig.FBTitle" alt="facebook" target="_blank">
                              <span class="fa-stack fa-2x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-facebook fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.TwitterLink %>
                        <li><!-- Twitter Icon -->
                            <a href="$SiteConfig.TwitterLink" title="$SiteConfig.TTitle" alt="twitter" target="_blank">
                              <span class="fa-stack fa-2x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-twitter fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.YoutubeLink %>
                        <li><!-- YouTube Icon -->
                            <a href="$SiteConfig.YoutubeLink" title="$SiteConfig.YTTitle" alt="youtube" target="_blank">
                              <span class="fa-stack fa-2x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-youtube fa-icons fa-stack-1x"></i>
                              </span>
                            </a>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.GooglePlusLink %>
                            <li><!-- Goggle Plus Icon -->
                                <a href="$SiteConfig.GooglePlusLink" title="$SiteConfig.GPTitle" alt="google-plus" target="_blank">
                          <span class="fa-stack fa-2x">
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

                <p id="footer-copyright" class="col-sm-6 col-md-6 col-xs-12">Copyright &copy; $Now.Year <a href="$AbsoluteBaseURL" target="_blank">$SiteConfig.Title</a>, All Rights Reserved</p>
                <p id="footer-right" class="col-sm-6 col-md-6 col-xs-12">Developed By<a href="http://www.snapwebdesigns.co.nz/" target="_blank"> SNAP Web Designs</a></p>

            </div>

        </div>
    </footer>

</div>