<%--<% if $NoticeMessage %>--%>
<%--<div class="container">--%>
    <%--<div class="row">--%>
        <%--<div class="col-sm-12">--%>

            <%--<section class="card text-center bg-theme">--%>
                <%--<div class="card-body">--%>
                    <%--<h3 class="card-title">$NoticeMessage</h3>--%>
                    <%--<h1>NEXT DRAG RACING EVENT</h1>--%>
                <%--</div>--%>
            <%--</section>--%>
        <%--</div>--%>
    <%--</div><!-- end of /.row -->--%>
<%--</div><!-- end of / .container-->--%>
<%--<% else %>--%>

<%--<% end_if %>--%>

<div class="container">
    <div class="row">
        <div class="col-md-9">

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

        <% include SideBar %>

    </div>
</div> <!-- /container -->