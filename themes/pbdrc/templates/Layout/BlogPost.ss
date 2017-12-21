<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <section class="card bg-theme">
                <div class="card-body">

					<% require themedCSS('blog', 'blog') %>

					<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
						<article>
							<h1>$Title</h1>
							<% include EntryMeta %>

							<% if $FeaturedImage %>
                                <img class="img-fluid event-poster mx-auto d-block" src="$FeaturedImage.ScaleWidth(450).URL">
							<% end_if %>

							<div class="content">$Content</div>
						</article>

					</div>

                </div>
            </section>

        </div>

		<% include SideBar %>


    </div><!-- end of /.row -->
</div><!-- end of / .container-->

