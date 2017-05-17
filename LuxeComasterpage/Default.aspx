<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LuxeComasterpage.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container4">
   <table>
    <tr>
        <td><a href="furlatophandle.aspx" title="Furla Rosso Top Handle">
            <img src="Bag%20Photos/tophandlerosso1.jpg" alt="Furla Rosso Top Handle" height="250" width="300"/>
          
            <div class="productcaption">Furla Rosso Top Handle</div>
            <div class="productprice">BND 400</div>
          </a>
     </td>

        <td><a href="furlaaccacio.aspx" title="Furla Metropolis Acciaio">
           <img src="Bag%20Photos/MetropolisAcciaio1.jpg" alt="Furla Metropolis Accacio" height="250" width="300" />
        
           <div class="productcaption">Furla Metropolis Acciaio Crossbody</div>
           <div class="productprice">BND 320</div>
         </a>
    </td>

        <td><a href="furlatoni.aspx" title="Furla Tonipetrolio">
            <img src="Bag%20Photos/tonipetrolio1.jpg" alt="Furla Tonipetrolio" height="250" width="300" />
         
                   <div class="productcaption">Furla Tonipetrolio Crossbody</div>
                   <div class="productprice">BND 335</div>
             </a>
        </td>

    </tr>
    <tr>
        <td><a href="Furlastacy.aspx" title="Furla Stacy Bucket Bag">
            <img src="Bag%20Photos/Furla%20Stacy%20Bucket.jpg" alt="Furla Stacy Bucket Bag" height="250" width="300" />
                   <div class="productcaption">Furla Stacy Bucket Bag</div>
                   <div class="productprice">BND 400</div>
            </a>
        </td>

    <td><a href="Rubino.aspx" title="Furla Rubino Mini Crossbody">
        <img src="Bag%20Photos/Furla%20Crossbody%20Rubino%20A.jpg" alt="Furla Rubino Mini Crossbody" height="250" width="300" />
                   <div class="productcaption">Furla Rubino Mini Crossbody</div>
                   <div class="productprice">BND 350</div>
        </a>
    </td>

    <td><a href="Capriccio.aspx" title="Furla Capriccio">
        <img src="Bag%20Photos/furla%20capriccio.jpg" alt="Furla Capriccio" height="250" width="300" />
                   <div class="productcaption">Furla Capriccio Satchel Bag</div>
                   <div class="productprice">BND 450</div>
        </a>
    </td>

    </tr>
   <tr>
       <td><a href="mcmstark.aspx" title="MCM Stark Backpack">
           <img src="Bag%20Photos/StarkBagpack1.jpg" alt="MCM Stark Backpack" height="300" width="300"/>
                 <div class="productcaption">MCM Stark Backpack</div>
                 <div class="productprice">BND 1200</div>
           </a>
       </td>
       <td><a href="mcmbeeboo.aspx" title="MCM Stark BeeBoo">
           <img src="Bag%20Photos/StarkBeeboo1.jpg" alt="MCM Stark BeeBoo" height="300" width="300"/>
                  <div class="productcaption">MCM Stark BeeBoo X-MINI</div>
                  <div class="productprice">BND 1080</div>
           </a>
   </td>

       <td>
           <a href="mcmduchess.aspx" title="MCM Duchess Polke">
               <img src="Bag%20Photos/Duchesspolkestuds1.jpg" alt="MCM Duchess Polke" height="300" width="300" />
                 <div class="productcaption">MCM Duchess Polke Studs</div>
                 <div class="productprice">BND 1210</div>
               </a>

    </td>
        </tr>
            </table>        
    </div>
  
    <asp:Repeater ID="rptrProductDetails" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%# Eval ("ProductID", "Productdetails.aspx?Id={0}") %>"> <%#Eval("ProductName") %></a>
                <li>
            </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
           
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526897_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Product]">
       </asp:SqlDataSource>

           
    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1526897.studentwebserver.co.uk%2Fco5027%2FDefault.aspx">HTML Validation</a>
    
</asp:Content>


