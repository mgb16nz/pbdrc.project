<div class="post-summary">
	<h2>
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

	<% include EntryMeta %>

    <p class="post-img">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			$FeaturedImage.SetWidth(250)
		</a>
	</p>

	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <p>
			<a href="$Link">
				<%t Blog.ReadMoreAbout "Read more [...]" %>
			</a>
		</p>

</div>
