<%@ Page Title="" Language="C#" MasterPageFile="~/Themes/Admincp/Admincp.Master" Inherits="System.Web.Mvc.ViewPage<Aogirishop.Models.N412_GroupProduct>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp_NoiDung" runat="server">
    <div class="workplace">
        <div class="row-fluid">

            <div class="span12">
                <% using(Html.BeginForm()){ %>
                <div class="head">
                    <div class="isw-documents"></div>
                    <h1><%= ViewBag.TitleForm %></h1>
                    <div class="clear"></div>
                </div>

                <div class="block-fluid">  
                    <div class="row-form">
                        <div class="span3">Tên nhóm sản phẩm</div>
                        <div class="span9"><%= Html.TextBox("GroupProduct_Name") %></div>
                        <div class="clear"></div>
                    </div>
                    <div class="row-form">
                        <div class="span3">Vị trí</div>
                        <div class="span9"><%= Html.TextBox("GroupProduct_STT") %></div>
                        <div class="clear"></div>
                    </div>
                    <div class="row-form">
                        <div class="span3">Hình ảnh</div>
                        <div class="span9"><%= Html.TextBox("GroupProduct_Image") %></div>
                        <div class="clear"></div>
                    </div>
                    <div class="row-form">
                        <div class="span3">Đường dẫn</div>
                        <div class="span9"><%= Html.TextBox("GroupProduct_Link") %></div>
                        <div class="clear"></div>
                    </div>
                    <div class="row-form">
                        <div class="span3"></div>
                        <div class="span9"><button class="btn btn-block" type="submit" style="width:100px">Submit</button></div>
                        <div class="clear"></div>
                    </div>
                </div>
                <%} %>
            </div>
        </div>
    </div>
</asp:Content>
