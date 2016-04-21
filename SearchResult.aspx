<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="STrackTest.SearchResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
    body{
        text-align:center;
    }
    
    #container{
         width:500px;
        margin-left:auto;
        margin-right:auto;
        margin-bottom:4px;
        text-align:left;
    }
    </style>
</head>

<body>
    <form id="form1" runat="server">
     <div id="container">
    
    
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <table style="border-bottom:5px solid black; background-color:#FFFFFF">
                  <tr>
                    <td>
                        <b>Name:</b>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("PERS_FNAME")%>'> 
                             </asp:Label> <asp:Label ID="Label6" runat="server" Text='<%#Eval("PERS_LNAME") %>'>
                            </asp:Label>
                    </td>
                        <td>
                        <b>uin:</b>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("UIN") %>'>
                            </asp:Label>
                    </td>
                      </tr> 
                    <tr>
                    <td>
                        <b>Gen:</b>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("SEX_DESC") %>'>
                            </asp:Label>
                    </td>
                    </tr> 
                     <tr>
                    <td>
                        <b>Citizen:</b>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("PERS_CITZN_TYPE_CD") %>'>
                            </asp:Label>
                    </td>
                    </tr> 
                    <tr>
                    <td>
                        <b>Ethnicity:</b>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("IPEDS_RACE_ETH_CATGRY_DESC") %>'>
                            </asp:Label>
                    </td>
                    </tr> 
                </table>   
            </ItemTemplate>
          
        </asp:Repeater>
         </div>
    </form>
</body>
</html>
