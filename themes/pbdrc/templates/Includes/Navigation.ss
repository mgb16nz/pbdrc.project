    <!-- NAVBAR -->

    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">

                <ul class="navbar-nav mr-auto">

                    <% loop $Menu(1) %>
                        <li class="$LinkingMode nav-item">
                            <a class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %> nav-link" href="$Link"  title="Go to the $Title page">$MenuTitle</a>

                        <% if $isSection %>
                            <% if $Children %>
                                <ul class="secondary dropdown-menu" aria-labelledby="dropdown01">
                                    <% loop $Children %>
                                        <li class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
                                            <a href="$Link dropdown-item">$MenuTitle</a>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                        <% end_if %>


                        </li>
                    <% end_loop %>

                    <%--<li class="nav-item active">--%>
                        <%--<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
                    <%--</li>--%>

                    <%--<!-- about dropdown menu -->--%>
                    <li class="nav-item dropdown">
                        <a class="nav-item nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About Us</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">The Club</a>
                            <a class="dropdown-item" href="#">The Committee</a>
                            <a class="dropdown-item" href="#">The History</a>
                        </div>
                    </li>

                    <%--<!-- racer into dropdown menu -->--%>
                    <%--<li class="nav-item dropdown">--%>
                        <%--<a class="nav-item nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Racer Info</a>--%>
                        <%--<div class="dropdown-menu" aria-labelledby="dropdown02">--%>
                            <%--<a class="dropdown-item" href="#">Racing Details</a>--%>
                            <%--<a class="dropdown-item" href="#">Rules and Regulations</a>--%>
                            <%--<a class="dropdown-item" href="#">Drivers Profile</a>--%>
                        <%--</div>--%>
                    <%--</li>--%>

                    <%--<!-- events dropdown menu -->--%>
                    <%--<li class="nav-item dropdown">--%>
                        <%--<a class="nav-item nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Events</a>--%>
                        <%--<div class="dropdown-menu" aria-labelledby="dropdown03">--%>
                            <%--<a class="dropdown-item" href="#">Event 1</a>--%>
                            <%--<a class="dropdown-item" href="#">Event 2</a>--%>
                            <%--<a class="dropdown-item" href="#">Event 3</a>--%>
                        <%--</div>--%>
                    <%--</li>--%>

                    <%--<!-- results dropdown menu -->--%>
                    <%--<li class="nav-item dropdown">--%>
                        <%--<a class="nav-item nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Results</a>--%>
                        <%--<div class="dropdown-menu" aria-labelledby="dropdown04">--%>
                            <%--<a class="dropdown-item" href="#">Drag Results</a>--%>
                            <%--<a class="dropdown-item" href="#">Track Records</a>--%>
                        <%--</div>--%>
                    <%--</li>--%>

                    <%--<li class="nav-item">--%>
                        <%--<a class="nav-link" href="#">Contact Us</a>--%>
                    <%--</li>--%>
                </ul>

            </div>

        </div>
    </nav>