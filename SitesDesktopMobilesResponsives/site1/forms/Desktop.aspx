<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Desktop.aspx.cs" Inherits="SitesDesktopMobilesResponsives.site1.forms.Desktop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Coffe-Desktop</title>

    <link href="../css/Desktop.css?Version=1" rel="stylesheet" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <script src="https://kit.fontawesome.com/24e7002d97.js" crossorigin="anonymous"></script>

    <style type="text/css">
        
        .auto-style2 {
            text-align: center;
        }
       
       
    </style>
</head>
<body>
    <form id="form1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<%--                    // aconselho a remover as ligacoes com a base de dados se for a baixar e rodar--%>
       <%--   header-section--%>
        <header class="header">

            <asp:HyperLink ID="HyperLink1" NavigateUrl="navigateurl" CssClass="logo-div" runat="server">
                <asp:Image ID="Image1" runat="server" CssClass="logo" ImageUrl="~/site1/image/logos/logo.png" />
            </asp:HyperLink>
            <nav id="nav" runat="server" class="navbar">
                <asp:HyperLink ID="HyperLink2" CssClass="HyperLink" NavigateUrl="#home" runat="server">Principal</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" CssClass="HyperLink" NavigateUrl="#about" runat="server">Sobre</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" CssClass="HyperLink" NavigateUrl="#menu" runat="server">Menu</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" CssClass="HyperLink" NavigateUrl="#review" runat="server">Avaliações</asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" CssClass="HyperLink" NavigateUrl="#contact" runat="server">Contactar</asp:HyperLink>

            </nav>

            <div class="icons">


                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                   <i class="fas fa-shopping-cart " id="card-btn"></i>
                </asp:LinkButton>

                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                    <i class="fas fa-search" id="search-btn"></i>

                </asp:LinkButton>

                <asp:ImageButton ID="ImageButton3" runat="server" class="menu-btn" ImageUrl="~/site1/image/menu/burguer.png" OnClick="ImageButton3_Click" />


                <div class="fa-sharp fa-solid fa-bars" id=""></div>
            </div>
            <div id="search" runat="server" class="search-form">
                <asp:TextBox ID="TextBox1" TextMode="Search" CssClass="search-box" Placeholder="Pesquise Aqui . . ." runat="server" OnTextChanged="TextBox1_TextChanged1" />
                <svg xmlns="http://www.w3.org/2000/svg" fill="black" class="bi bi-search seachicon" viewBox="0 0 17 17">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                </svg>
            </div>
        </header>

        <%--   header-section--%>
        <section class="section1">
            <asp:Panel ID="Panel1" class="cart-items-container" runat="server" ScrollBars="both">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:coffedatatableConnectionString %>" SelectCommand="SELECT [coffecup_id], [coffecup_name], [coffecup_price], [coffecup_image], [coffecup_quantity] FROM [coffecuptable]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="datalistitem" EnableTheming="True" HorizontalAlign="Center" DataSourceID="SqlDataSource1">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <ItemTemplate>
                        <br />
                        <table class="auto-style2 table">

                            <tr>
                                <td class="auto-style2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" ImageUrl='<%# Eval("coffecup_image") %>' Width="76px" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("coffecup_name") %>'></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Button ID="Button1" CssClass="btn1" runat="server" CommandArgument='<%# Eval("coffecup_id") %>' CommandName="Cart" Text="Checkout" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" CssClass="datalistitem" />
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </asp:Panel>
        </section>

        <section class="home" id="home">
            <div class="content">
                <h3>Café fresco da manhã</h3>
                <p>
                    benefícios exclusivos do café baseados em evidências nutricionais O café faz mais do que aumentar sua energia. A
                     algumas xícaras diárias de café também podem reduzir o risco de diabetes tipo 2
                </p>
                <asp:HyperLink ID="HyperLink9" NavigateUrl="navigateurl" CssClass="btn-geral" runat="server">Get yours now</asp:HyperLink>
            </div>
        </section>

        <section class="about" id="about">
            <h1 class="heading"><span>Sobre</span>- Nos</h1>

            <div class="row">

                <div class="iamge">
                    <asp:Image ID="Image2" CssClass="supercoffe" ImageUrl="../image/coffecups/super%20coffe%202.png" runat="server" />

                </div>
                <div class="content">
                    <h3>O que torna nosso café especial</h3>
                    <p>
                        Antes mesmo de você servir aquela primeira xícara de delicioso java quente, esses grãos fizeram uma longa jornada por um caminho complicado. Existem vários estágios, incluindo primeiro crack, etc - e se
                              você não é cuidadoso, ir longe demais pode arruinar um lote inteiro
                    </p>
                    <p>
                        O café especial refere-se a todo o processo, do agricultor à xícara, usando café de origem única. E refere-se à forma como o café é torrado e como é extraído.
                    </p>
                    <asp:HyperLink ID="HyperLink10" NavigateUrl="navigateurl" CssClass="btn-geral" runat="server">Pegue o seu agora</asp:HyperLink>

                </div>

            </div>
        </section>

        <section class="menu" id="menu">
            <h1 class="heading">Nosso <span>Menu</span></h1>
            <div class="box-container">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:coffedatatableConnectionString %>" SelectCommand="SELECT [coffecup_id], [coffecup_name], [coffecup_price], [coffecup_image], [coffecup_quantity] FROM [coffecuptable]"></asp:SqlDataSource>
                <br />
                <asp:Panel ID="Panel2" class="box" HorizontalAlign="center" ScrollBars="both" runat="server">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" HorizontalAlign="Center" RepeatColumns="3" CssClass="datalistitem" CellSpacing="10" GridLines="Both" DataKeyField="coffecup_id">
                        <AlternatingItemStyle BackColor="#13131a" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#13131a" ForeColor="azure" CssClass="datalistitem2" />
                        <ItemTemplate>
                            <br />
                            <table>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" ImageUrl='<%# Eval("coffecup_image") %>' Width="76px" />
                                    </td>
                                    <td class="auto-style2">
                                        <h2 runat="server" id="coffecup_id">Item no carrinho:<%# Eval("coffecup_id") %></h2>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("coffecup_id") %>'></asp:Label>

                                        <p>
                                            O melhor que você pode tomar de manhã
                                        </p>
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("coffecup_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" CssClass="btn-geral" runat="server" CommandArgument='<%# Eval("coffecup_id") %>' CommandName="Cart" Text="Button" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </asp:Panel>

            </div>
        </section>

        <section class="review" id="review">
            <h1 class="heading">Avaliação <span>do cliente</span> </h1>
            <asp:Panel ID="Panel3" runat="server" CssClass="customerpanel" HorizontalAlign="Center" ScrollBars="Both">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:coffedatatableConnectionString %>" SelectCommand="SELECT [coffecustomer_id], [coffecustomer_name], [coffecustomer_image], [coffecustomer_discription] FROM [coffecustomers]"></asp:SqlDataSource>
                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" HorizontalAlign="Center" CssClass="DataList3" GridLines="Both" RepeatColumns="3" CellSpacing="3">
                    <ItemStyle CssClass="DataList3item" />
                    <ItemTemplate>
                        <div class="box-container">

                            <div class="box1">

                                <asp:Image ID="Image4" runat="server" CssClass="quote" ImageUrl="../image/customer/quotes2.png" />


                                <p><%# Eval("coffecustomer_discription") %></p>

                                <asp:Image ID="Image3" runat="server" CssClass="customerImage" ImageUrl='<%# Eval("coffecustomer_image") %>' />

                                <h3><%#Eval("coffecustomer_name") %></h3>

                                <div class="stars">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </section>

        <section class="contact" id="contact">
            <h1 class="heading">Contacta - te<span>- Nos</span></h1>
            <div class="row">
                <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2540.6437169523697!2d13.483951045337484!3d-8.893792784994712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1a51ffc4f3b863ab%3A0x1de95871374d4fe3!2sParque%20p%C3%BAblico%20Bloco%2012%20Sequele!5e1!3m2!1spt-PT!2szw!4v1687613251663!5m2!1spt-PT!2szw" width="400" height="300" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                <asp:Panel ID="Panel4" runat="server" CssClass="contactpanel">
                    <h3>Entrar em contacto</h3>
                    <div class="inputbox">
                        <i class="fa-regular fa-user"></i>
                        <asp:TextBox ID="TextBox2" CssClass="text" runat="server" PlaceHolder="Name"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <i class="fa-regular fa-envelope"></i>
                        <asp:TextBox ID="TextBox3" CssClass="text" runat="server" PlaceHolder="Email"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <i class="fa-solid fa-phone"></i>
                        <asp:TextBox ID="TextBox4" CssClass="text" runat="server" PlaceHolder="Numero"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button2" runat="server" CssClass="btn1" Text="Button" />
                </asp:Panel>


            </div>

        </section>

        <footer class="footer">
            <div class="share">

                <asp:HyperLink ID="HyperLink11" CssClass="fa-brands fa-twitter a" NavigateUrl="#" runat="server" />
                <asp:HyperLink ID="HyperLink12" CssClass="fa-brands fa-facebook a" NavigateUrl="#" runat="server" />
                <asp:HyperLink ID="HyperLink13" CssClass="fa-brands fa-linkedin a" NavigateUrl="#" runat="server" />
                <asp:HyperLink ID="HyperLink14" CssClass="fa-brands fa-instagram a" NavigateUrl="#" runat="server" />

            </div>
            <div class="links">

                <asp:HyperLink ID="HyperLink15" CssClass="b" NavigateUrl="#" runat="server" Text="Home" />
                <asp:HyperLink ID="HyperLink16" CssClass="b" NavigateUrl="#" runat="server" Text="About" />
                <asp:HyperLink ID="HyperLink17" CssClass="b" NavigateUrl="#" runat="server" Text="Menu" />
                <asp:HyperLink ID="HyperLink18" CssClass="b" NavigateUrl="#" runat="server" Text="Preview" />
                <asp:HyperLink ID="HyperLink19" CssClass="b" NavigateUrl="#" runat="server" Text="Contact" />

            </div>
        </footer>

</ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
