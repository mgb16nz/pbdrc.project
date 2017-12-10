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
                            <a href="$URL" target="_blank">
                                <img src="$Image.URL" class="advert-imgs img-fluid" alt="$Alt">
                            </a>
                        </div>
                    </div>

                <% end_if %>
            <% end_control %>
        </div>
    </div>
</aside>
