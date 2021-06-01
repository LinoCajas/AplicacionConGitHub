<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AplicacionConGitHub.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <table class="auto-style1">
                        <tr>
                            <td colspan="3">
                                <div class="col-md-12 mb-3">
                                    <% if (Session["mensaje"] != null)
                                        {
                                    %>
                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <%
                                            Session["mensaje"] = null;
                                        }
                                    %>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">CRUD CON LINQ&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align="center">
                                <table width="40%">
                                    <tr>
                                        <td>NOMBRE</td>
                                        <td align="center">
                                            <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>DIRECCION</td>
                                        <td align="center">
                                            <asp:TextBox ID="txt_dire" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>EDAD</td>
                                        <td align="center">
                                            <asp:TextBox ID="txt_edad" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td align="center">
                                            <asp:Button ID="btn_inset" runat="server" Text="Insertar" OnClick="btn_inset_Click" />
                                            &nbsp;<asp:Button ID="btn_update" runat="server" Text="Actualizar" OnClick="btn_update_Click" />
                                            &nbsp;<asp:Button ID="btn_delete" runat="server" Text="Borrar" OnClick="btn_delete_Click" OnClientClick="return confirm('Esta seguro que desea eliminar')" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:BoundField DataField="per_id" HeaderText="Id" />
                                                    <asp:BoundField DataField="per_nombre" HeaderText="Nombre" />
                                                    <asp:BoundField DataField="per_direccion" HeaderText="Direccion" />
                                                    <asp:BoundField DataField="per_edad" HeaderText="Edad" />

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnk_ver" runat="server" OnClick="lnk_ver_Click"
                                                                CommandArgument='<%#Eval ("per_id") %>'>Seleccionar</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
