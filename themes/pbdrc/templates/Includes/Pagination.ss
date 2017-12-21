        <% if $MoreThanOnePage %>
            <nav aria-label="...">
                <ul class="pagination">
                    <%-- Previous Page Chevron --%>
                    <% if $NotFirstPage %>
                        <li class="page-item">
                            <a class="page-link" href="{$PrevLink}" tabindex="-1" aria-label="Previous">
                                <span aria-hidden="true">Prev</span>
                            </a>
                        </li>
                    <% end_if %>

                    <%-- Pagiation Pages --%>
                    <% loop $PaginationSummary(4) %>
                        <% if $CurrentBool %>
                            <li class="page-item active">
                                <a class="page-link" href="$Link">$PageNum
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                        <% else %>
                            <% if $Link %>
                                <li class="page-item">
                                    <a class="page-link" href="$Link">$PageNum</a>
                                </li>
                            <% else %>
                                <span>...</span>
                            <% end_if %>
                        <% end_if %>
                    <% end_loop %>

                    <%-- Next Page Chevron --%>
                    <% if $NotLastPage %>
                        <li class="page-item">
                            <a class="page-link" href="{$NextLink}" aria-label="Next">
                                <span aria-hidden="true">Next</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    <% end_if %>
                </ul>
            </nav>
        <% end_if %>


        <%--<% if $MoreThanOnePage %>--%>
            <%--<p class="pagination">--%>
                <%--<% if $NotFirstPage %>--%>
                    <%--<a class="prev" href="{$PrevLink}">&larr;</a>--%>
                <%--<% end_if %>--%>

                <%--<% loop $PaginationSummary(4) %>--%>
                    <%--<% if $CurrentBool %>--%>
                        <%--<span>$PageNum</span>--%>
                    <%--<% else %>--%>
                        <%--<% if $Link %>--%>
                            <%--<a href="$Link">$PageNum</a>--%>
                        <%--<% else %>--%>
                            <%--<span>...</span>--%>
                        <%--<% end_if %>--%>
                    <%--<% end_if %>--%>
                <%--<% end_loop %>--%>

                <%--<% if $NotLastPage %>--%>
                    <%--<a class="next" href="{$NextLink}">&rarr;</a>--%>
                <%--<% end_if %>--%>
            <%--</p>--%>
        <%--<% end_if %>--%>


        <%--<nav aria-label="...">--%>
            <%--<ul class="pagination">--%>
                <%--<li class="page-item"><a class="page-link" href="#">Previous</a></li>--%>
                <%--<li class="page-item"><a class="page-link" href="#">1</a></li>--%>
                <%--<li class="page-item"><a class="page-link" href="#">2</a></li>--%>
                <%--<li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                <%--<li class="page-item"><a class="page-link" href="#">Next</a></li>--%>
            <%--</ul>--%>
        <%--</nav>--%>
