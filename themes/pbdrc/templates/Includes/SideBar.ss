<!-- SIDEBAR - RIGHTSIDE -->
<aside class="col-md-3">
    <div class="card bg-theme text-center">
        <div class="card-header">
            <h2>SPONSORS</h2>
        </div>
        <div class="card-body advert">
            <% control $GetSidebar() %>
                <% if $Active %>

                    <div class="col-md-12">
                        <div class="row">
                            <a href="$AdvertURL" target="_blank">
                                <img src="$AdvertImage.URL" class="advert-imgs img-fluid" alt="$AdvertAlt">
                            </a>
                        </div>
                    </div>

                <% end_if %>
            <% end_control %>
        </div>
    </div>
</aside>
