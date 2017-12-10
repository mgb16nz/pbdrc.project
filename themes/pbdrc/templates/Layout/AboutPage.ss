<!-- Main Content Area -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">

            <section class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$MainTitle</h2>
                    $Content
                </div>
            </section>

            <% if $AboutInfo %>
            <% loop $AboutInfo %>
            <section id="AboutInfo" class="card bg-theme">
                <div class="card-body">
                    <h2 class="card-title">$Title</h2>
                    $Content
                </div>
            </section>
            <% end_loop %>
            <% end_if %>



            <% if $Committee %>
            <section id="Committee" class="card bg-theme">
                <div class="card-body">
                    <h2>$CHeader</h2>
                    <table class="table table-responsive">
                        <tbody>
                        <% loop $Committee %>
                        <tr>
                            <th class="col-sm-3">$Title</th>
                            <td class="col-sm-9">$FirstName $LastName</td>
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