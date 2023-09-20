const root = window.location.origin;
const BeforeLogin = `
<div class="nav_1">
<div class="header-img">
    <img src="${root}/assets/images/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
        <li> <a href="${root}/index.html">Home</a></li>
        <li>
            <div class="dropdown">
      <p class="dropbtn">Shop</p>
      <div class="dropdown-content">
        
            </div>
              </div>
        </li>
        
        <li> <a href="">Kits</a>
        </li>
        <li><a href=""> Contact us</a></li>
        <li><a href="">About us</a> </li>
        <a href="/pages/Signup page.html"><button id="button">Sign Up</button></a> 
    </ul>
</div>
</div>`

const AfterLogin = `
<div class="nav_1">
<div class="header-img">
    <img src="${root}/assets/images/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
        <li> <a href="${root}/index.html">Home</a></li>
        <li>
        <div class="dropdown">
        <p class="dropbtn">Shop</p>
        <div class="dropdown-content">
         
              </div>
                </div>
        </li>
        <li> <a href="">Kits</a>
        </li>
        <li><a href=""> Contact us</a></li>
        <li><a href="">About us</a> </li>
        <li><a href="${root}/pages/wishlist.html"><i class="fa-regular fa-heart"></i></a></li>
        <li><a href=""><i class="fa-solid fa-wallet"></i></a></li>
        <li><a href="${root}/pages/profile.html"><i class="fa-solid fa-user"></i></a></li>
        <li><a href="${root}/pages/add_to_cart.html"> <i class="fa-solid fa-cart-shopping"></i></a></li>
        <button id="logout" type="submit">Logout</button>
    </ul>
</div>
</div>`

		if(loggedInEmail == null) {
					
		}
