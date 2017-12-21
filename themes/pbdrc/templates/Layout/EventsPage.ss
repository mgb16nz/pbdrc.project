<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <% if $Event %>
            <% loop $Events %>
            <article class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">
                        <a href="$Link" title="Read more about '$Title'...">$Title</a>
                    </h2>
                    <p class="post-img">
                        <a href="$Link" title="Read more about '$Title'...">
                            $Image.ScaleWidth(250)
                        </a>
                    </p>
                    <p class="card-text">$Description.FirstParagraph</p>
                    <p class="card-text">
                        <a href="$Link" title="Read more about '$Title'...">Read More [...]</a>
                    </p>
                </div>
            </article>
            <% end_loop %>
            <% else %>
                <section class="card bg-theme map">
                    <div class="card-body">
                        <h2>No current Events posted yet</h2>
                    </div>
                </section>
            <% end_if %>

            <%--<nav aria-label="Page navigation example">--%>
                <%--<ul class="pagination justify-content-center">--%>
                    <%--<li class="page-item disabled">--%>
                        <%--<a class="page-link" href="#" tabindex="-1">Previous</a>--%>
                    <%--</li>--%>
                    <%--<li class="page-item"><a class="page-link" href="#">1</a></li>--%>
                    <%--<li class="page-item"><a class="page-link" href="#">2</a></li>--%>
                    <%--<li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                    <%--<li class="page-item">--%>
                        <%--<a class="page-link" href="#">Next</a>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</nav>--%>

        </div>

        <% include SideBar %>

    </div><!-- end of /.row -->
</div><!-- end of / .container-->