<%@ Page Title="" Language="C#" MasterPageFile="~/Themes/Admincp/Admincp.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Aogirishop.Models.N412_GroupProduct>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp_NoiDung" runat="server">
    <div class="workplace">
        <div class="row-fluid">
            <div class="span12">
                <div class="head">
                    <div class="isw-grid"></div>
                    <h1><%= ViewBag.TitleForm %></h1>                               
                    <div class="clear"></div>
                </div>
                
                <div class="block-fluid table-sorting">
                    <div id="tSortable_2_wrapper" class="dataTables_wrapper" role="grid">
                        <table cellpadding="0" cellspacing="0" width="100%" class="table dataTable" id="tSortable_2" style="width: 100%;">
                            <thead>
                                <tr role="row">
                                    <th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 23px;">
                                        <div class="checker"><span><input type="checkbox" name="checkall" style="opacity: 0;"></span></div>
                                    </th>
                                    <th width="20px" class="sorting" role="columnheader" tabindex="0" aria-controls="tSortable_2" rowspan="1" colspan="1" aria-label="ID: activate to sort column ascending" style="width: 225px;">ID</th>
                                    <th class="sorting" role="columnheader" tabindex="0" aria-controls="tSortable_2" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 229px;">Name</th>
                                    <th width="20px" class="sorting" role="columnheader" tabindex="0" aria-controls="tSortable_2" rowspan="1" colspan="1" aria-label="E-mail: activate to sort column ascending" style="width: 233px;">E-mail</th>
                                    <th class="sorting" role="columnheader" tabindex="0" aria-controls="tSortable_2" rowspan="1" colspan="1" aria-label="Phone: activate to sort column ascending" style="width: 231px;">Phone</th></tr>
                            </thead>
                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                            <% foreach (var n in Model){ %>
                            <% int i = 0;%>

                                <%if(i%2==0){ %>
                                    <tr class="odd">
                                        <td class=" sorting_1"><div class="checker"><span><input type="checkbox" name="checkbox" style="opacity: 0;"></span></div></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_ID) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_Name) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_STT) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_Status) %></td> 
                                    </tr>                
                                <%} %>
                                <%else{ %>
                                    <tr class="even">
                                        <td class=" sorting_1"><div class="checker"><span><input type="checkbox" name="checkbox" style="opacity: 0;"></span></div></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_ID) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_Name) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_STT) %></td>
                                        <td class=" "><%= Html.DisplayFor(item=>n.GroupProduct_Status) %></td> 
                                    </tr> 
                                <%} %>
                            
                            <%} %>
                            </tbody>
                        </table>

                        <div class="dataTables_paginate paging_full_numbers" id="tSortable_2_paginate"><a tabindex="0" class="first paginate_button paginate_button_disabled" id="tSortable_2_first">First</a><a tabindex="0" class="previous paginate_button paginate_button_disabled" id="tSortable_2_previous">Previous</a><span><a tabindex="0" class="paginate_active">1</a><a tabindex="0" class="paginate_button">2</a></span><a tabindex="0" class="next paginate_button" id="tSortable_2_next">Next</a><a tabindex="0" class="last paginate_button" id="tSortable_2_last">Last</a></div></div>
                    <div class="clear"></div>
                </div>
                </div>  
        </div>
    </div>

</asp:Content>
