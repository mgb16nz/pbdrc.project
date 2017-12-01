<!-- Main Content Area -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <section class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$Title</h2>
                    $Content
                </div>
            </section>

            <section class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title"></h2>

                </div>
            </section>

            <% if $Committee %>
            <section id="Committee" class="card bg-theme">
                <div class="card-body">
                    <h2>$CHeader</h2>
                    <table class="table">
                        <%--<thead>--%>
                        <%--<tr>--%>
                            <%--<th class="col-md-2 col-sm-6" scope="col"><h4>Members Title</h4></th>--%>
                            <%--<th class="col-md-4 col-sm-6" scope="col"><h4>Members Name</h4></th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <tbody>
                        <% loop $Committee %>
                        <tr>
                            <th class="col-md-2 col-sm-6">$MemberTitle</th>
                            <td class="col-md-4 col-sm-6">$FirstName $LastName</td>
                        </tr>
                        <% end_loop %>
                        </tbody>
                    </table>
                </div>
            </section>
            <% end_if %>

        </div>

        <% include SideBar %>


    </div><!-- end of /.row -->
</div><!-- end of / .container-->