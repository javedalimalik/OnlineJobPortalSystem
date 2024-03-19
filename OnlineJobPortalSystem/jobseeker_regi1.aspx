<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobseeker_regi1.aspx.cs" Inherits="jobseeker_regi1" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head id="head" runat="server"> </head>
    <form id="form1" runat="server">
    <p align="right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p align="right">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            &nbsp;&nbsp;&nbsp;
            <asp:View ID="View1" runat="server">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#E46115" Text="Login Details"></asp:Label>
                <br />
                <table frame="void" 
                    style="border-color: #000000; width: 100%; border-style: none solid solid solid; border-width: 1px">
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Username"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Password"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Confirm Password"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Retype Password" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Sequrity Question"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="246px">
                            </asp:DropDownList>
                            &nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Answer"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox14" ErrorMessage="Enter your answer"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#E46115" Text="Personal Details"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width: 100%">
                    <tr>
                        <td style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Firstname"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Enter First name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Middlename"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="Enter Middle name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Lastname"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="Enter Last name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Gender"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                                Font-Size="Small" ForeColor="#877361" GroupName="1" Text="Male" />
                            &nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Small" 
                                ForeColor="#877361" GroupName="1" Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label10" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="D.O.B"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            <cc1:CalendarExtender ID="TextBox10_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox10"></cc1:CalendarExtender>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="TextBox10" ErrorMessage="Select D.O.B"></asp:RequiredFieldValidator>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label16" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Location"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:Label ID="Label17" runat="server" Font-Size="Small" ForeColor="#877361" 
                                Text="Country"></asp:Label>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label18" runat="server" Font-Size="Small" ForeColor="#877361" 
                                Text="State"></asp:Label>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label19" runat="server" Font-Size="Small" ForeColor="#877361" 
                                Text="City"></asp:Label>
                            &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label15" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Full Address"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ErrorMessage="Enter contact no" ControlToValidate="TextBox13"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Contact no."></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server" MaxLength="10"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="TextBox9" ErrorMessage="Contact number"></asp:RequiredFieldValidator>
                            &nbsp; </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label12" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="email id "></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox11" runat="server" Height="16px" Width="103px"></asp:TextBox>
                            &nbsp;<asp:Label ID="Label13" runat="server" Font-Size="Medium" ForeColor="#877361" 
                                Text="@"></asp:Label>
                            &nbsp;<asp:TextBox ID="TextBox12" runat="server" Height="17px" Width="82px"></asp:TextBox>
                            &nbsp;<asp:Label ID="Label14" runat="server" Font-Size="Medium" ForeColor="#877361" 
                                Text=".com"></asp:Label>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="TextBox12" ErrorMessage="Enter email address "></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label51" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Profile Date"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ErrorMessage="Enter date" ControlToValidate="TextBox27"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#877361" 
                                BorderColor="#CC0000" Height="26px" onclick="Button1_Click" Text="Next" 
                                Width="64px" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#E46115" Text="Education Details"></asp:Label>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="S.S.C"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox15" runat="server" Width="62px"></asp:TextBox>
                            &nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                                ForeColor="#837669">%</asp:HyperLink>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="TextBox15" ErrorMessage="Enter percentage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label24" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="H.S.C"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox16" runat="server" Width="62px"></asp:TextBox>
                            &nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" 
                                ForeColor="#837669">%</asp:HyperLink>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="TextBox16" ErrorMessage="Enter percentage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label25" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Graduation"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">B.E.</asp:ListItem>
                                <asp:ListItem Value="2">B.com</asp:ListItem>
                                <asp:ListItem Value="3">B.Sc</asp:ListItem>
                                <asp:ListItem Value="4">B.B.A</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label26" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="Enter institute name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label27" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox17" runat="server" Width="62px"></asp:TextBox>
                            &nbsp; &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Large" 
                                ForeColor="#837669">%</asp:HyperLink>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="TextBox17" ErrorMessage="Enter percentage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label28" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Post Graduation"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">M.E</asp:ListItem>
                                <asp:ListItem Value="2">M.Com</asp:ListItem>
                                <asp:ListItem Value="3">M.C.A</asp:ListItem>
                                <asp:ListItem Value="4">M.B.A</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label29" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="TextBox8" ErrorMessage="Enter institute name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label30" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox18" runat="server" Width="62px"></asp:TextBox>
                            &nbsp; &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large" 
                                ForeColor="#837669">%</asp:HyperLink>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="TextBox18" ErrorMessage="enter percentage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label31" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Doctorate/PhD"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Ph.D/Doctorate</asp:ListItem>
                                <asp:ListItem Value="2">MPHIL</asp:ListItem>
                                <asp:ListItem Value="3">Other</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label32" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                ControlToValidate="TextBox19" ErrorMessage="Enter institute name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label33" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox20" runat="server" Width="62px"></asp:TextBox>
                            &nbsp; &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Large" 
                                ForeColor="#837669">%</asp:HyperLink>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                ControlToValidate="TextBox20" ErrorMessage="Enter percentage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label34" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Certification Course"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox21" runat="server" TextMode="MultiLine"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                ControlToValidate="TextBox21" ErrorMessage="Enter Certification course"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Next" 
                                BackColor="#877361" BorderColor="#FF3300" Width="67px" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#E46115" Text="Professional Details"></asp:Label>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label36" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Category"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList8_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label37" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Area"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList9" runat="server" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label38" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Company"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                ControlToValidate="TextBox22" ErrorMessage="Enter company name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label39" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Role"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                ControlToValidate="TextBox28" ErrorMessage="Enter Role"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label40" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Experience"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList11" runat="server">
                                <asp:ListItem Value="0">0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:Label ID="Label41" runat="server" Font-Size="Small" Text="Years and" 
                                ForeColor="#877361"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList12" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                            <asp:Label ID="Label42" runat="server" Font-Size="Small" Text="Months" 
                                ForeColor="#877361"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label43" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Annual Salary"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="DropDownList13" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                            <asp:Label ID="Label44" runat="server" Font-Size="Small" ForeColor="#877361" 
                                Text="Lacs"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList14" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>90</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                            <asp:Label ID="Label45" runat="server" Font-Size="Small" ForeColor="#877361" 
                                Text="Thousands"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton3" runat="server" Checked="True" 
                                Font-Size="Small" ForeColor="#877361" GroupName="2" Text="Rupees" />
                            &nbsp;
                            <asp:RadioButton ID="RadioButton4" runat="server" Font-Size="Small" 
                                ForeColor="#877361" GroupName="2" Text="US Dollars" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label46" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Skills"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox23" runat="server" Height="21px" TextMode="MultiLine" 
                                Width="204px">i.e. C/C++/.net</asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                ControlToValidate="TextBox23" ErrorMessage="Enter Skills"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;
                <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" ForeColor="#E46115" Text="Resume"></asp:Label>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label48" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Resume Headline"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:TextBox ID="TextBox24" runat="server" Height="53px" 
                                TextMode="MultiLine" Width="232px">i.e. BE Computer with 4 yrs. of 
                            experience in XYZ Industry</asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                ControlToValidate="TextBox24" ErrorMessage="Enter resume headline"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label49" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Uplaod Resume "></asp:Label>
                        </td>
                        <td>
                            <div ID="cvhlptxt" 
                                style="PADDING-RIGHT: 0px; MARGIN-TOP: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 10px; clear: both; font-style: normal; font-variant: normal; font-weight: normal; font-size: 11px; line-height: normal; font-family: verdana, arial; color: #6e6e6e; height: 20px;">
                                &nbsp; <font size="1">Upload MS Word (doc/rtf) file only. Max size limit 300 Kb</font></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label52" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="1 "></asp:Label>
                        </td>
                        <td>
                            <div ID="errordisp_browsecv" class="error" 
                                style="PADDING-RIGHT: 0px; DISPLAY: none; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px">
                                <font size="1"><span ID="errormsg_browsecv" class="ol2"></span></font>
                            </div>

                            <script language="javascript">

String.prototype.trim = function() { return this.replace(/^\s+|\s+$/, &apos;&apos;); };
var par = window.parent.document;
var parf = par.page1;
parf.isuploading.value = 0;
par.getElementById(&quot;uploadcvpath&quot;).value = &quot;&quot;;
par.getElementById(&quot;submitbtn&quot;).disabled = false;
//document.getElementById(&quot;errormsg_browsecv&quot;).innerHTML = &quot;&quot;;
//document.getElementById(&quot;errordisp_browsecv&quot;).style.display = &quot;none&quot;;

function rm_uploadCV() {
try {
	var upath = document.uploadform.BROWSECV.value.trim();
	var extn = &quot;&quot;;
	if ((idx=upath.lastIndexOf(&quot;.&quot;)) != -1)
		extn = upath.substr(idx+1);
	if (extn.toLowerCase() == &quot;doc&quot; || extn.toLowerCase() == &quot;rtf&quot; || upath == &quot;&quot;) {
		document.getElementById(&quot;errormsg_browsecv&quot;).innerHTML = &quot;&quot;;
		document.getElementById(&quot;errordisp_browsecv&quot;).style.display = &quot;none&quot;;
		if (upath == &quot;&quot;)
			return;
	}
	else {
		if ((ele = document.getElementById(&quot;uploadcvname&quot;)))
			ele.style.display = &quot;none&quot;;
		document.getElementById(&quot;errormsg_browsecv&quot;).innerHTML = &quot;There is a problem in uploading your file<ol 
                                type="\&quot;i\&quot;"><li> Your resume may currently be open or in use. Save it, close it and try again</li><li> Check that you are not uploading a docx or pdf format. Currently, we don&apos;t support them.</li></ol>&quot;;
		document.getElementById(&quot;errordisp_browsecv&quot;).style.display = &quot;&quot;;
    document.uploadform.BROWSECV.value = &quot;&quot;;
    window.parent.calcHeight(&apos;frmUpload&apos;);
    LogDocTypeError(extn, parf.USERNAME.value);
		return;
	}

	if ((ele = document.getElementById(&quot;uploadcvname&quot;)))
		ele.style.display = &quot;none&quot;;
	document.getElementById(&quot;progressbar&quot;).style.display = &quot;&quot;;
	parf.isuploading.value = 1;
  window.parent.calcHeight(&apos;frmUpload&apos;);
	par.getElementById(&quot;submitbtn&quot;).disabled = true;
	document.uploadform.submit();
} catch(e){ alert(&quot;There was an error while uploading the file&quot;); }
}

function trapKey(event, src) {
	if ((event &amp;&amp; event.keyCode == 9 &amp;&amp; event.shiftKey)) { // shift+tab key
    if(par.getElementById(&apos;id_addCertAnc&apos;).style.display == &quot;&quot;)
        par.getElementById(&apos;id_addCertAnc&apos;).focus();
    else
        par.getElementById(&apos;diploma2&apos;).focus();
		return false;
	}

	return true;
}
function XmlHttpRequestCreator()  {
  this.getXmlHttpRequestObject = function() {
    var requester = null;
    try {
      requester = new XMLHttpRequest();
    } catch (error) {
      try {
        requester = new ActiveXObject(&quot;Microsoft.XMLHTTP&quot;);
      } catch (error) {
        requester = null;
      }
    }
    return requester;
  }
}
function LogDocTypeError(fileExt, username)
{
  var objXmlHttpRequestCreator = new XmlHttpRequestCreator();
  var objXmlHttpRequest = objXmlHttpRequestCreator.getXmlHttpRequestObject();
  objXmlHttpRequest.onreadystatechange = function() {
    if ( objXmlHttpRequest.readyState == 4 ) {
      if ( objXmlHttpRequest.status == 200 ) {
      }
    }
  }
  var param = &quot;fileExt=&quot; + fileExt + &quot;&amp;UN=&quot; + username;
  objXmlHttpRequest.open(&quot;GET&quot;, &quot;/manager/DocUploadJsErrorLogger.php?&quot;+ param, false);
  objXmlHttpRequest.send(null);
}
</script>

                            &nbsp;&nbsp;
                            <asp:FileUpload ID="FileUpload1" runat="server" />

                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                ControlToValidate="FileUpload1" ErrorMessage="Add resume 1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px; height: 30px;">
                            <asp:Label ID="Label53" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="2"></asp:Label>
                        </td>
                        <td style="height: 30px">
                            &nbsp;&nbsp;
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                ControlToValidate="FileUpload2" ErrorMessage="Add resume 2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label54" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="3"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:FileUpload ID="FileUpload3" runat="server" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                ControlToValidate="FileUpload3" ErrorMessage="Add resume 3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label50" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="Attach Resume "></asp:Label>
                        </td>
                        <td>
                            &nbsp; <b style="color: #877361">&nbsp;(If you do not have a resume right now, you may 
                            still create your account. Please remember to upload your resume as soon as 
                            possible)
                            </b></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp; &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#877361" 
                    BorderColor="#FF3300" Font-Bold="True" Font-Size="Large" Height="41px" 
                    Text="Create my profile" Width="261px" onclick="Button5_Click" />
            </asp:View>
        </asp:MultiView>
    </p>
    <p align="right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    </form>
</asp:Content>

