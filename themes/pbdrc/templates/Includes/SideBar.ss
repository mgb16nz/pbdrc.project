<!-- SIDEBAR - RIGHTSIDE -->
<aside class="col-md-3">
    <div class="card bg-theme text-center">
        <div class="card-header"><h2>SPONSORS</h2></div>
        <div class="card-body">
            <% control $GetSidebar() %>
                <% if $Active %>
                    <div class="col-md-12">
                        <div class="row">
                            <a href="$AdvertURL" class="advert" target="_blank">
                                <img src="$AdvertImage.URL" class="img-fluid sponsor-imgs" alt="$AdvertAlt">
                            </a>
                        </div>
                    </div>
                    <% else %>
                    <div class="col-md-12">
                        <div class="row">
                            <p>Sorry no Advert or Sponsors listed here as yet</p>
                        </div>
                    </div>
                <% end_if %>
            <% end_control %>
        </div>
    </div>
</aside>
