<%@ Page Title="" Language="C#" MasterPageFile="~/USER/altj.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project.net.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .home-img {
            width: 1900px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="logout" id="class">
         <table style="width:1900px; height:30px">
             <tr style="background-color:#CC651F">
                 <td colspan="2" style="text-align:right" class="auto-style1">
                     <asp:Label ID="Label1" runat="server" style="text-align:left" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                     <asp:HyperLink ID="hplLogout" runat="server" Font-Bold="True" NavigateUrl="~/USER/Login.aspx" Height="40px" Font-Size="Medium">Click To Login</asp:HyperLink>
                     <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" ForeColor="White" OnClick="btnLogout_Click" />

                 </td>
             </tr>
         </table>
    </div>
   
        
    


    
    <asp:Panel ID="Panel3" runat="server">
         <!--home section-->
    <section class="home" id="home">
        <div class="home-content">

            <h3>ALT-J</h3>
            <h1>Music Store</h1>
            <h3>The best <span>fake</span> music store in the business</h3>
            <p>Looking for high-quality musical instruments? Look no further! We have saxophones, trumpets, and cellos for sale, all crafted from the finest materials to produce rich and beautiful sounds. Whether you're a beginner or an experienced musician, our instruments are perfect for anyone looking to create music that truly resonates. Shop now and elevate your musical experience to the next level!</p>

            <div class="socials">
                <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                <a href="#"><i class='bx bxl-linkedin'></i></a>
                <a href="#"><i class='bx bxl-tiktok'></i></a>
            </div>

            <a href="products.aspx" class="btn">Click here to browse for instruments</a>

        </div>
        
        <div class="home-img">
            <img src="../images/home-img.jpg" />
        </div>
    </section>

    <!--products section-->
<section class="products" id="products">
    <h2 class="heading">My <span>Products</span></h2>

    <div class="products-container">
        <div class="products-box">
            <img src="../images/saxophone (1).png" />
            <div class="products-layer">
                <h4>Saxophone</h4>
                <p>Discover the soulful sound of the saxophone with our collection of high-quality instruments for sale. Crafted from top-grade materials, our saxophones produce rich, smooth tones that are perfect for jazz, blues, and everything in between. Whether you're a seasoned player or just starting out, our saxophones are the perfect choice for any musician looking to express themselves through music.</p>
                <a href="products.aspx"><i class='bx bx-link-external'></i></a>
            </div>
        </div>

        <div class="products-box">
            <img src="../images/trumpet (1).png" />
            <div class="products-layer">
                <h4>Trumpet</h4>
                <p>Add a touch of brilliance to your music with our collection of trumpets for sale. Expertly crafted from premium materials, our trumpets deliver crisp, clear tones that are perfect for classical, jazz, and other musical styles. Whether you're performing on stage or practicing at home, our trumpets offer the perfect blend of style and substance to take your music to the next level.</p>
                <a href="products.aspx"><i class='bx bx-link-external'></i></a>
            </div>
        </div>

        <div class="products-box">
            <img src="../images/cello (1).png" />
            <div class="products-layer">
                <h4>Cello</h4>
                <p>Experience the deep and resonant sound of the cello with our range of high-quality instruments for sale. Expertly crafted from the finest materials, our cellos produce warm, full-bodied tones that are perfect for classical and contemporary music. Whether you're a professional musician or just starting out, our cellos are the perfect choice for anyone looking to express themselves through the beauty of music.</p>
                <a href="products.aspx"><i class='bx bx-link-external'></i></a>
            </div>
        </div>
    </div>
</section>

    <!--events section-->
<section class="events" id="events">
    <h2 class="heading">Featured <span>Events</span></h2>
    <div class="events-container">
        <div class="events-box">
            <i class='bx bx-music'></i>
            <h3>Canary Wharf Jazz Festival</h3>
            <p>No we don’t mean that it’s scary free jazz, but rather that going along costs nothing, nada, zero, zilch. Friday’s first act is on at 7pm, while the Saturday and Sunday programmes start from 1.30pm and continue through
                till late evening.</p>
            <a href="#" class="btn">Read More</a>
        </div>
        
        <div class="events-box">
            <i class='bx bx-music'></i>
            <h3>EFG London Jazz Festivalt</h3>
            <p>Fancy some free jazz? The EFG London Jazz Festival returns from November 13-22 2015 with over 300 gigs across the city. Don’t let a lack of funds hold you back: there are plenty of free shows at LJF to get you grooving
              for gratis. Here’s our pick of the best.</p>
            <a href="#" class="btn">Read More</a>
        </div>

        <div class="events-box">
            <i class='bx bx-music'></i>
            <h3>Musicians From Here Playing Music From There</h3>
            <p>Listen to music by the Anbessa Orchestra, who are Israeli musicians based in Brooklyn (and now L.A.) who are fans of the “golden age” of Ethiopian music. From their most recent record, Negestat, which means
              Kings in Amharic, hear the Ethio-groove laden title track.</p>
            <a href="#" class="btn">Read More</a>
        </div>
    </div>
</section>

    <!--about section-->
<section class="about" id="about">
    <div class="about-img">
        <img src="../images/about.jpg" />
    </div>

    <div class="about-content">
        <h2 class="heading">About <span>Alt-J</span></h2>
        <h3>Music Store</h3>
            <p>Welcome to our jazz music store, where the rhythm never stops and the beat always swings! <p />
                <p>We are passionate about jazz music and are dedicated to bringing you the best selection of jazz albums, sheet music, and instruments.</p>
                <p>From smooth and sultry saxophones to soulful and groovy drums, we have everything you need to bring the jazz spirit to life.</p>
                <p>Our expert staff are jazz enthusiasts themselves and are always ready to share their knowledge and love of the genre with you. Whether you're a seasoned jazz musician or just starting to explore the rich sounds of this timeless art form, we've got you covered.</p>
                <p>So come on in, browse our wide selection, and let the music transport you to a world of rhythm and harmony.
        </p>
        
    </div>
</section>


    <!--contact section-->
<section class="contact" id="contact">
    <h2 class="heading">Contact <span>Me!</span></h2>

    <div class="form">
        <div class="input-box">
            <input type="text" placeholder="Full Name">
            <input type="email" placeholder="Email Address">
        </div>
        <div class="input-box">
            <input type="number" placeholder="Mobile Number">
            <input type="text" placeholder="Email Subject">
        </div>
        <textarea name="" id="" cols="30" rows="10" placeholder="Your Message"></textarea>
        <input type="submit" value="Send Message" class="btn">
    </div>
        
         
        
</section>

       

    </asp:Panel>
    
   
   


</asp:Content>


