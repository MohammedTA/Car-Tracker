<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarsMapForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div role="main" class="main">
        <section style="text-align: right;" class="page-header page-header-color page-header-quaternary page-header-more-padding custom-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>
                            - خرائط جوجل <span>عرض كافة المركبات القريبة </span>
                        </h1>
                    </div>
                </div>
            </div>
        </section>
        <!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
        <div id="default" style="height: 700px;" class="google-map mt-xlg mb-none"></div>
        <br/>
        <div class="container">
            <div class="row pt-xs pb-xl mb-md">
                <div class="col-md-12">
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="custom-input-box input-group date" id="datetimepicker1">
                                        <asp:TextBox runat="server" data-msg-required="الرجاء إدخال التاريخ" maxlength="100" class="form-control" id="fromDate" placeholder="من تاريخ" TextMode="DateTime"></asp:TextBox>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="custom-input-box input-group date" id="datetimepicker2">
                                        <asp:TextBox runat="server" data-msg-required="الرجاء إدخال التاريخ" maxlength="100" class="form-control" id="toDate" placeholder="إلى تاريخ" TextMode="DateTime"></asp:TextBox>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="custom-input-box">
                                    <asp:TextBox runat="server" data-msg-required="الرجاء إدخال نوع المركبة" maxlength="100" class="form-control" id="txtType" placeholder="نوع المركبة"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <asp:Button Text="بحث" OnClick="btnFilter_OnClick" ID="btnFilter" runat="server" value="Filter" class="btn btn-borders custom-border-width btn-primary custom-border-radius font-weight-semibold text-uppercase mb-xlg" data-loading-text="Loading..."/>

                    </div>
                </div>

                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Width="100%">
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass"/>

                            <Columns>
                                <asp:TemplateField HeaderText="رقم الجهاز">
                                    <ItemTemplate>
                                        <asp:Label ID="ModemId" runat="server"
                                                   Text='<%# Eval("ModemId") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" CssClass="cell" Width="20%"/>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="التاريخ">
                                    <ItemTemplate>
                                        <asp:Label ID="ServerTimestamp" runat="server"
                                                   Text='<%# Eval("ServerTimestamp") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" Width="20%"/>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="خط الطول">
                                    <ItemTemplate>
                                        <asp:Label ID="Long" runat="server"
                                                   Text='<%# Eval("Long") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" Width="20%"/>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="خط العرض">
                                    <ItemTemplate>
                                        <asp:Label ID="Lat" runat="server"
                                                   Text='<%# Eval("Lat") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" Width="20%"/>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="اتجاه المركبة">
                                    <ItemTemplate>
                                        <asp:Label ID="Direction" runat="server"
                                                   Text='<%# Eval("Direction") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" Width="10%"/>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="السرعة ">
                                    <ItemTemplate>
                                        <asp:Label ID="Speed" runat="server"
                                                   Text='<%# Eval("Speed") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"
                                               VerticalAlign="Middle" Width="10%"/>
                                </asp:TemplateField>
                            </Columns>


                        </asp:GridView>
                        <ul class="pagination">
                            <asp:Repeater ID="RpPager" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <asp:LinkButton ID="btnPage" CssClass='<%# Eval("class") %>' runat="server" Text='<%# Eval("page") %>'
                                                        OnClick="btnPage_OnClick"/>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <asp:UpdateProgress runat="server">
                            <ProgressTemplate>
                                <img src="/Content/loading.gif"/>
                            </ProgressTemplate>
                        </asp:UpdateProgress>

                    </ContentTemplate>
                </asp:UpdatePanel>
                <div runat="server" id="NoData" class="alert alert-warning">عذرا .. لا يوجد بيانات</div>

            </div>
        </div>
    </div>
</asp:Content>