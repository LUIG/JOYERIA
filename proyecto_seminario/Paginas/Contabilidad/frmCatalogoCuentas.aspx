﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmCatalogoCuentas.aspx.vb" Inherits="proyecto_seminario.frmCatalogoCuentas" %>
<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


</head>
<body>
    <form id="form1" runat="server">
    


         <ext:ResourceManager ID="rmCatalogoCuentas" runat="server" />
        <ext:Viewport ID="vpctl" runat="server" Layout="AbsoluteLayout" AnchorVertical="100%">
            <Items>
                <ext:GridPanel ID="GridMaquinaria" runat="server" AnchorHorizontal="100%" AnchorVertical="100%" Scroll="Both" AutoScroll="true" StripeRows="true" Resizable="true">
                    <Store>
                        <ext:Store runat="server" ID="stCuenta">
                            <Model>
                                <ext:Model runat="server" ID="mgCatalogoCuentas">
                                    <Fields>
                                        <ext:ModelField Name="idcuenta" Type="Int" />
                                        <ext:ModelField Name="nombre" Type="string" />
                                    </Fields>
                                </ext:Model>
                            </Model>
                        </ext:Store>
                    </Store>

                    <TopBar>
                        <ext:Toolbar ID="Toolbar5" runat="server">
                            <Items>
                                <ext:ToolbarFill ID="ToolbarFill2" runat="server" />
                                <ext:ToolbarSeparator />

                                

                                <ext:Button ID="btnAgregar" runat="server" Width="120" Text="Agregar Cuenta" Icon="Add" >
                                    <Listeners>
                                        <Click Handler="App.direct.fcrearVentanaCuentas(1,0,0)"></Click>
                                    </Listeners>
                                </ext:Button>


                                

                                <ext:ToolbarSeparator />
                            </Items>
                        </ext:Toolbar>
                    </TopBar>
                    <BottomBar>
                        <ext:PagingToolbar ID="PagingToolbar1" runat="server" DisplayInfo="true" DisplayMsg="Mostrando {0} - {1} of {2}"
                            EmptyMsg="No hay datos que mostrar" />
                    </BottomBar>
                    <SelectionModel>
                        <ext:RowSelectionModel ID="rowSelectionModel1" runat="server">
                        </ext:RowSelectionModel>
                    </SelectionModel>
                    <ColumnModel>
                        <Columns>
                            <ext:Column runat="server" ID="ColumnCodigo" Text="Codigo" Width="125" Align="Center" DataIndex="idcuenta" />
                            <ext:Column runat="server" ID="ColumnTipo" Text="Nombre de la Cuenta" Flex="1" Align="Center" DataIndex="nombre" />
                            
                            <ext:CommandColumn ID="CommandColumn1" runat="server" Width="300" Text="Operaciones" Align="Center">
                                <Commands>
                                    <ext:GridCommand Icon="PageWhiteEdit" CommandName="Editar" Text="Editar" ToolTip-Text="Editar datos" />
                                    <ext:GridCommand Icon="Delete" CommandName="Eliminar" Text="Eliminar" ToolTip-Text="Eliminar Cuenta" />
                                </Commands>
                                <Listeners>
                                    <%--    <Command Handler="ejecutarActualizarEliminar(command,record);" />--%>
                                </Listeners>
                            </ext:CommandColumn>

                        </Columns>
                    </ColumnModel>
                </ext:GridPanel>


            </Items>

        </ext:Viewport>












    </form>
</body>
</html>
