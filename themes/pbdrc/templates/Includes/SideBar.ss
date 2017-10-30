<!-- SIDEBAR - RIGHTSIDE -->
<aside class="col-md-3">
    <div class="card bg-theme">
        <div class="card-header"><h2>SPONSORS</h2></div>
        <div class="card-body">
            <% control $GetSidebar() %>
                <% if $Active %>
                    <div class="col-md-12">
                        <div class="row">
                            <%--<h1>Hello</h1>--%>
                            <a href="$AdvertURL" class="" target="_blank">
                                <img src="$AdvertImage.URL" class="img-fluid sponsor-imgs" alt="$AdvertAlt">
                            </a>
                        </div>
                    </div>
                <% end_if %>
            <% end_control %>
        </div>
    </div>
</aside>
