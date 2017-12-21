		<div class="container">
			<div class="row">
				<div class="col-sm-9">

					<% require themedCSS('blog', 'blog') %>

					<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">

						<% if $PaginatedList.Exists %>
							<% loop $PaginatedList %>

								<article class="card bg-theme">
									<div class="card-body">

										<% include PostSummary %>

									</div>
								</article>

							<% end_loop %>
							<% else %>
							<p><%t Blog.NoPosts 'No current Blog posted yet' %></p>
						<% end_if %>

					</div>

					<!-- blog pagination -->
					<div class="row blog-pagination">
						<% with $PaginatedList %>
							<% include Pagination %>
						<% end_with %>
					</div>

				</div>

				<% include SideBar %>

			</div><!-- end of /.row -->
		</div><!-- end of / .container-->