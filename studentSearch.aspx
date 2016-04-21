<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentSearch.aspx.cs" Inherits="STrackTest.applist2010" %>

<!DOCTYPE html>
<!doctype html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
    margin: 8px;
    padding: 0;
}
form {
    margin: 0;
}
ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 12px sans-serif;
    display: block !important;
    display: inline-block;
    overflow: hidden;
}
li {
    float: left;
    clear: left;
}
label {
    display: block;
    width: 200px;
    height: 19px;
    line-height: 19px;
    position: relative;
    margin: 0 0 5px;
    cursor: pointer;
    text-align: right;
}



    </style>
</head>
   
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="top: 230px; left: 36px; position: absolute; height: 20px; width: 80px" Text="First Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="top: 184px; left: 38px; position: absolute; height: 21px; width: 50px" Text="UIN:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="top: 278px; left: 36px; position: absolute; height: 20px; width: 80px" Text="Last Name"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="top: 184px; left: 397px; position: absolute; height: 19px; width: 45px" Text="Email"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="top: 331px; left: 400px; position: absolute; height: 19px; width: 93px" Text="New Ethnicty"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="top: 332px; left: 35px; position: absolute; height: 19px; width: 89px" Text="Middle Name"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="top: 281px; left: 400px; position: absolute; height: 19px; width: 70px" Text="Ethnicity"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="top: 230px; left: 398px; position: absolute; height: 22px; width: 57px; bottom: 581px" Text="Gender"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="top: 275px; left: 738px; position: absolute; height: 19px; width: 63px" Text="Racial"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="top: 177px; left: 155px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="top: 221px; left: 154px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="top: 269px; left: 155px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="top: 176px; left: 505px; position: absolute; height: 22px; width: 207px; bottom: 635px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="top: 325px; left: 155px; position: absolute; height: 20px; width: 121px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" style="top: 227px; left: 507px; position: absolute; height: 21px; width: 78px" DataSourceID="SqlDataSource4" DataTextField="SEX_DESC" DataValueField="SEX_DESC">
            <asp:ListItem></asp:ListItem>
              </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:STRACKConnectionString %>" SelectCommand="SELECT DISTINCT SEX_DESC FROM DBO.T_STRACK_STUDENTS_BQ ORDER BY SEX_DESC ASC"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataValueField="IPEDS_RACE_ETH_CATGRY_DESC" AppendDataBoundItems="True" style="top: 276px; left: 507px; position: absolute; height: 20px; width: 179px; right: 428px" AutoPostBack="True" DataTextField="IPEDS_RACE_ETH_CATGRY_DESC">
            </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" style="top: 332px; left: 510px; position: absolute; height: 21px; width: 152px; right: 334px;">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Hispanic"></asp:ListItem>
            <asp:ListItem Value="None"></asp:ListItem>
             <asp:ListItem Value="Not hispanic or Latino"></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label10" runat="server" style="top: 332px; left: 739px; position: absolute; height: 19px; width: 80px" Text="Citizenship"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="IPEDS_RACE_ETH_DESC" DataValueField="IPEDS_RACE_ETH_DESC" AppendDataBoundItems="True" style="top: 271px; left: 839px; position: absolute; height: 20px; width: 126px" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Asian</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:STRACKConnectionString %>" SelectCommand="SELECT DISTINCT IPEDS_RACE_ETH_DESC FROM DBO.EDW_T_IPEDS_RACE_ETH_CD_HIST ORDER BY IPEDS_RACE_ETH_DESC"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERS_CITZN_TYPE_DESC" DataValueField="PERS_CITZN_TYPE_DESC" AppendDataBoundItems="True" style="top: 331px; left: 839px; position: absolute; height: 21px; width: 172px" AutoPostBack="True">
              </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:STRACKConnectionString %>" SelectCommand="SELECT DISTINCT PERS_CITZN_TYPE_DESC FROM DBO.T_STRACK_STUDENTS_BQ ORDER BY PERS_CITZN_TYPE_DESC ASC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STRACKConnectionString %>" SelectCommand="SELECT DISTINCT IPEDS_RACE_ETH_CATGRY_DESC FROM DBO.T_STRACK_STUDENTS_BQ ORDER BY IPEDS_RACE_ETH_CATGRY_DESC ASC"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" style="top: 85px; left: 775px; position: absolute; height: 26px; width: 56px" Text="Search" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="top: 85px; left: 835px; position: absolute; height: 26px; width: 56px" Text="Reset" />
        <p>
            &nbsp;</p>
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red" style="top: 97px; left: 337px; position: absolute; height: 19px; width: 338px"></asp:Label>
        <asp:DropDownList ID="DropDownList6" runat="server" style="top: 447px; left: 194px; position: absolute; height: 20px; width: 124px; bottom: 174px">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList7" runat="server" style="top: 491px; left: 630px; position: absolute; height: 18px; width: 147px; bottom: 130px;">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList8" runat="server" style="top: 482px; left: 192px; position: absolute; height: 22px; width: 120px; margin-bottom: 0px">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList9" runat="server" style="top: 449px; left: 629px; position: absolute; height: 19px; width: 165px">
        </asp:DropDownList>
        <asp:Label ID="Label12" runat="server" style="top: 486px; left: 36px; position: absolute; height: 18px; width: 120px; right: 828px;" Text="Graduation Term"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="top: 451px; left: 36px; position: absolute; height: 19px; width: 117px" Text="Registration Term"></asp:Label>
        <asp:Label ID="Label14" runat="server" style="top: 489px; left: 403px; position: absolute; height: 19px; width: 157px" Text="Academic year"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="top: 453px; left: 402px; position: absolute; height: 19px; width: 205px" Text="Leave of Absence Begin Term"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" style="top: 632px; left: 99px; position: absolute; height: 17px; width: 25px" />
        <asp:RadioButton ID="RadioButton2" runat="server" style="top: 697px; left: 100px; position: absolute; height: 21px; width: 23px" />
        <asp:RadioButton ID="RadioButton3" runat="server" style="top: 771px; left: 101px; position: absolute; height: 39px; width: 19px" />
        <asp:RadioButton ID="RadioButton4" runat="server" style="top: 628px; left: 346px; position: absolute; height: 39px; width: 200px" />
        <asp:RadioButton ID="RadioButton5" runat="server" style="top: 698px; left: 347px; position: absolute; height: 25px; width: 25px; right: 787px" />
        <p>
            &nbsp;</p>
        <asp:RadioButton ID="RadioButton6" runat="server" style="top: 774px; left: 351px; position: absolute; height: 22px; width: 17px; right: 791px" />
        <asp:Label ID="Label16" runat="server" style="top: 632px; left: 153px; position: absolute; height: 19px; width: 174px" Text="Community Health Sciences"></asp:Label>
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
