<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Basing.aspx.cs" Inherits="WebAppCuba.Basing" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="margin: 30px">
        <tr>
            <td>
                Title
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                First Name
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Middle Name
            </td>
            <td>
                <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Suffix
            </td>
            <td>
                <asp:TextBox ID="txtSuffix" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Company Name
            </td>
            <td>
                <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView runat="server" ID="gvCustomer" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="FullName" HeaderText="Full Name"></asp:BoundField>
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnAdd" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>

            </td>
        </tr>
    </table>
</asp:Content>
