    <!-- NAVBAR -->

    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">

                <ul class="navbar-nav mr-auto">

                    <% loop $Menu(1) %>

                        <% if $Children %>
                            <li class="nav-item dropdown <% if $LinkingMode = 'current' %>active<% end_if %>">
                                <a class="nav-item nav-link dropdown-toggle" href="$Link" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    $MenuTitle <% if $LinkingMode = 'current' %><span class="sr-only">(current)</span><% end_if %>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <% loop $Children %>
                                        <a class="dropdown-item" href="$Link">$MenuTitle</a>
                                    <% end_loop %>
                                </div>
                            </li>

                        <% else %>
                            <li class="nav-item <% if $LinkingMode = 'current' %>active<% end_if %>">
                                <a class="nav-link" href="$Link">$MenuTitle<% if $LinkingMode = 'current' %><span class="sr-only"> (current)</span><% end_if %></a>
                            </li>
                        <% end_if %>

                    <% end_loop %>

                </ul>

            </div>

        </div>
    </nav>

    <%--<!-- about dropdown menu -->--%>
    <%--<li class="nav-item dropdown">--%>
    <%--<a class="nav-item nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About Us</a>--%>
    <%--<div class="dropdown-menu" aria-labelledby="dropdown01">--%>
    <%--<a class="dropdown-item" href="#">The Club</a>--%>
    <%--<a class="dropdown-item" href="#">The Committee</a>--%>
    <%--<a class="dropdown-item" href="#">The History</a>--%>
    <%--</div>--%>
    <%--</li>--%>