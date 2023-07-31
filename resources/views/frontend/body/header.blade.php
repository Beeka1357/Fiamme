<!-- Header  -->
<header class="header-area header-style-1 header-height-2">
    @php
    $setting = App\Models\SiteSetting::find(1);
    if($setting){
        $logo = $setting->logo;
        $support_phone = $setting->support_phone;
        $fb = $setting->facebook;
        $twi = $setting->twitter;
        $yt = $setting->youtube;
        $copyright = $setting->copyright;
    }else{
        $logo = '';
        $support_phone = 9090909090;
        $fb = '';
        $twi = '';
        $yt = '';
        $copyright = '';
    }
    @endphp
    <div class="header-middle header-middle-ptb-1 d-none d-lg-block">
        <div class="container">
            <div class="header-wrap">
                <div class="logo logo-width-1">
                <!-- if ($setting !== null) { -->
    <!-- $setting = $setting->logo; -->
                    <a href="{{ url('/') }}"><img src="{{asset($logo)}}" alt="logo" /></a>
                <!-- } else { -->
                    <!-- $setting = '{{asset('upload/logi/logo.webp')}}'; -->
                <!-- } -->
                </div>
                @php
                $categories = App\Models\Category::orderBy('category_name','ASC')->get();
                @endphp
                <div class="header-right">
                    <div class="search-style-2">
                        <form action="{{ route('product.search') }}" method="post">
                            @csrf

                            <select class="select-active">
                                <option>All Categories</option>
                                @foreach($categories as $item)

                                <option value="">{{ $item->category_name }}</option>
                                @endforeach
                            </select>

                            <input onfocus="search_result_show()" onblur="search_result_hide()" name="search" id="search" placeholder="Search for items..." />
                            <div id="searchProducts"></div>
                        </form>
                    </div>
                    <div class="header-action-right">
                        <div class="header-action-2">
                            <!-- <div class="search-location">
                                <form action="#">
                                    <select class="select-active">
                                        <option>Your Location</option>
                                        <option>Alabama</option>
                                        <option>Alaska</option>
                                        <option>Arizona</option>
                                        <option>Delaware</option>
                                        <option>Florida</option>
                                        <option>Georgia</option>
                                        <option>Hawaii</option>
                                        <option>Indiana</option>
                                        <option>Maryland</option>
                                        <option>Nevada</option>
                                        <option>New Jersey</option>
                                        <option>New Mexico</option>
                                        <option>New York</option>
                                    </select>
                                </form>
                            </div> -->

                            <!-- <div class="header-action-icon-2">
                                <a href="{{ route('compare') }}">
                                    <img class="svgInject" alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-compare.svg')}}" />
                                </a>
                                <a href="{{ route('compare') }}"><span class="lable ml-0">Compare</span></a>
                            </div> -->

                            <div class="header-action-icon-2">
                                <a href="{{ route('wishlist') }}">
                                    <img class="svgInject" alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-heart.svg') }}" />
                                    <span class="pro-count blue" id="wishQty">0 </span>
                                </a>
                                <a href="{{ route('wishlist') }}"><span class="lable"></span></a>
                            </div>


                            <div class="header-action-icon-2">
                                <a class="mini-cart-icon" href="{{ route('mycart') }}">
                                    <img alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-cart.svg') }}" />
                                    <span class="pro-count blue" id="cartQty">2</span>
                                </a>
                                <a href="{{ route('mycart') }}"><span class="lable"></span></a>
                                <div class="cart-dropdown-wrap cart-dropdown-hm2">


                                    <!--   // mini cart start with ajax -->
                                    <div id="miniCart">

                                    </div>

                                    <!--   // End mini cart start with ajax -->


                                    <div class="shopping-cart-footer">
                                        <div class="shopping-cart-total">
                                            <h4>Total <span id="cartSubTotal"> </span></h4>
                                        </div>
                                        <div class="shopping-cart-button">
                                            <a href="{{ route('mycart') }}" class="outline">View cart</a>
                                            <a href="{{ route('checkout') }}">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="header-action-icon-2">
                                <a href="{{ route('login') }}">
                                    <img class="svgInject" alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-user.svg') }}" />
                                </a>
                                @auth
                                <a href="page-account.html"><span class="lable ml-0">{{(auth()->user())?auth()->user()->name:'Account'}}</span></a>
                                <div class="cart-dropdown-wrap cart-dropdown-hm2 account-dropdown">
                                    <ul>
                                        <li>
                                            <a href="{{ route('dashboard') }}"><i class="fi fi-rs-user mr-10"></i>My Account</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('user.track.order') }}"><i class="fi fi-rs-location-alt mr-10"></i>Order Tracking</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('dashboard') }}"><i class="fi fi-rs-label mr-10"></i>My Voucher</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('wishlist') }}"><i class="fi fi-rs-heart mr-10"></i>My Wishlist</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('dashboard') }}"><i class="fi fi-rs-settings-sliders mr-10"></i>Setting</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('user.logout') }}"><i class="fi fi-rs-sign-out mr-10"></i>Sign out</a>
                                        </li>
                                    </ul>
                                </div>

                                @else
                                <!-- <a href="{{ route('login') }}"><span class="lable ml-0">Login</span></a> -->

                                <!-- <span class="lable" style="margin-left: 2px; margin-right: 2px;"> | </span> -->


                                <!-- <a href="{{ route('register') }}"><span class="lable ml-0">Register</span></a> -->

                                @endauth




                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    @php
    $categories = App\Models\Category::orderBy('category_name','ASC')->get();
    @endphp



    <div class="header-bottom header-bottom-bg-color sticky-bar">
        <div class="container">
            <div class="header-wrap header-space-between position-relative">
                <div class="logo logo-width-1 d-block d-lg-none">
                    <a href="{{ url('/') }}"><img src="{{  asset($logo)}}" alt="logo" /></a>
                </div>
                <div class="header-nav d-none d-lg-flex">
                    <div class="main-categori-wrap d-none d-lg-block">
                        <!-- <a class="categories-button-active" href="#">
                            <span class="fi-rs-apps"></span> All Categories
                            <i class="fi-rs-angle-down"></i>
                        </a> -->
                        <div class="categories-dropdown-wrap categories-dropdown-active-large font-heading">
                            <div class="d-flex categori-dropdown-inner">
                                <ul>
                                    @foreach($categories as $item)
                                    <li>
                                        <a href="shop-grid-right.html"> <img src="{{ asset( $item->category_image ) }}" alt="" /> {{ $item->category_name }} </a>
                                    </li>
                                    @endforeach
                                </ul>
                                <ul class="end">
                                    @foreach($categories as $item)
                                    <li>
                                        <a href="shop-grid-right.html"> <img src="{{ asset( $item->category_image ) }}" alt="" /> {{ $item->category_name }} </a>
                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                            <div class="more_slide_open" style="display: none">
                                <div class="d-flex categori-dropdown-inner">
                                    <ul>
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-1.svg') }}" alt="" />Milks and Dairies</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-2.svg') }}" alt="" />Clothing & beauty</a>
                                        </li>
                                    </ul>
                                    <ul class="end">
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-3.svg') }}" alt="" />Wines & Drinks</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-4.svg') }}" alt="" />Fresh Seafood</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="more_categories"><span class="icon"></span> <span class="heading-sm-1">Show more...</span></div>
                        </div>
                    </div>
                    <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                        <nav>
                            <ul>

                                <!-- <li>
                                    <a class="active" href="{{ url('/') }}">Home </a>

                                </li> -->
                                @php
                                $categories = App\Models\Category::orderBy('category_name','ASC')->limit(7)->get();
                                @endphp

                                @foreach($categories as $category)
                                <li class="position-static">
                                    <a href="{{ url('product/category/'.$category->id.'/'.$category->category_slug) }}">{{ $category->category_name }} <i class="fi-rs-angle-down"></i></a>
                                    @php
                                    $subcategories = App\Models\SubCategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get();
                                    @endphp
                                    @if($subcategories->count() > 0)
                                    <ul class="mega-menu d-flex justify-content-between">
                                        @foreach($subcategories as $subcategory)
                                        <li class="sub-mega-menu sub-mega-menu-width-10" style="display: flex; justify-content: space-between;">
                                            <div>
                                          
                                            <a href="{{ url('product/subcategory/'.$subcategory->id.'/'.$subcategory->subcategory_slug) }}">{{ $subcategory->subcategory_name }}</a>
                                            @php
                                            $subsubcategory = App\Models\SubSubCategory::where('sub_category_id',$subcategory->id)->orderBy('subsubcategory_name','ASC')->get();
                                            @endphp
                                                <div class="offers">
                                            @if ($subcategory->subcategory_slug == 'panties-pack-of-3')
                                            <img src="{{ asset('frontend/assets/imgs/offer1.webp') }}" alt="" style="width:70%; margin-top:20px; ">
                                            @endif
                                            @if ($subcategory->subcategory_slug == 'premium-bras')
                                            <img src="{{ asset('frontend/assets/imgs/offer2.webp') }}" alt="" style="width:70%; margin-top:20px;">
                                            @endif
                                            @if ($subcategory->subcategory_slug == 'printed-bras')
                                            <img src="{{ asset('frontend/assets/imgs/offer3.webp') }}" alt="" style="width:70%; margin-top:20px;">
                                            @endif
                                            @if ($subcategory->subcategory_slug == 'trendy-lace-sets')
                                            <img src="{{ asset('frontend/assets/imgs/offer4.webp') }}" alt="" style="width:70%; margin-top:20px;">
                                            @endif
                                                </div>
                                            <ul>

                                            @if ($subcategory->subcategory_slug == 'bridal')
                                            <img src="{{ asset('frontend/assets/imgs/Bridal.webp') }}" alt="" style="width:50%; margin-top:20px;">
                                            @endif
                                            @if ($subcategory->subcategory_slug == 'new-arrival')
                                            <img src="{{ asset('frontend/assets/imgs/newarrival.webp') }}" alt="" style="width:50%; margin-top:20px;">
                                            @endif
                                            @if ($subcategory->subcategory_slug == 'printed')
                                            <img src="{{ asset('frontend/assets/imgs/Printed.webp') }}" alt="" style="width:50%; margin-top:20px;">
                                            @endif
                                            @foreach($subsubcategory as $subcatego)
                                                <li><a href="shop-product-right.html"> {{ $subcatego->subsubcategory_name}}</a></li>
                                               

                                            @endforeach
                                            </ul>
                                            </div>
                                            @if ($subcategory->subcategory_slug == 'sports-bra')
                                            <img src="{{ asset('frontend/assets/imgs/sport.webp') }}" alt="" style="width:50%;">
                                            @endif
                                        </li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                @endforeach

                                <!-- <li class="position-static">
                                    <a href="#">Mega menu <i class="fi-rs-angle-down"></i></a>
                                    <ul class="mega-menu">
                                        <li class="sub-mega-menu sub-mega-menu-width-22">
                                            <a class="menu-title" href="#">Woman Clothing</a>
                                            <ul>
                                                <li><a href="shop-product-right.html"></a></li>
                                                <li><a href="shop-product-right.html">Fresh Vegetables</a></li>
                                                <li><a href="shop-product-right.html">Herbs & Seasonings</a></li>
                                                <li><a href="shop-product-right.html">Cuts & Sprouts</a></li>
                                                <li><a href="shop-product-right.html">Exotic Fruits & Veggies</a></li>
                                                <li><a href="shop-product-right.html">Packaged Produce</a></li>
                                            </ul>
                                        </li>
                                        <li class="sub-mega-menu sub-mega-menu-width-22">
                                            <a class="menu-title" href="#">Lingerie</a>
                                            <ul>
                                                <li><a href="shop-product-right.html">Discount Products</a></li>
                                                <li><a href="shop-product-right.html">Butter and Margarine</a></li>
                                                <li><a href="shop-product-right.html">Eggs Substitutes</a></li>
                                                <li><a href="shop-product-right.html">Marmalades</a></li>
                                                <li><a href="shop-product-right.html">Sour Cream</a></li>
                                                <li><a href="shop-product-right.html">Cheese</a></li>
                                            </ul>
                                        </li>
                                        <li class="sub-mega-menu sub-mega-menu-width-22">
                                            <a class="menu-title" href="#">Meat & Seafood</a>
                                            <ul>
                                                <li><a href="shop-product-right.html">Breakfast Sausage</a></li>
                                                <li><a href="shop-product-right.html">Dinner Sausage</a></li>
                                                <li><a href="shop-product-right.html">Chicken</a></li>
                                                <li><a href="shop-product-right.html">Sliced Deli Meat</a></li>
                                                <li><a href="shop-product-right.html">Wild Caught Fillets</a></li>
                                                <li><a href="shop-product-right.html">Crab and Shellfish</a></li>
                                            </ul>
                                        </li>
                                        <li class="sub-mega-menu sub-mega-menu-width-34">
                                            <div class="menu-banner-wrap">
                                                <a href="shop-product-right.html"><img src="{{ asset('frontend/assets/imgs/banner/banner-menu.png') }}" alt="Nest" /></a>
                                                <div class="menu-banner-content">
                                                    <h4>Hot deals</h4>
                                                    <h3>
                                                        Don't miss<br />
                                                        Trending
                                                    </h3>
                                                    <div class="menu-banner-price">
                                                        <span class="new-price text-success">Save to 50%</span>
                                                    </div>
                                                    <div class="menu-banner-btn">
                                                        <a href="shop-product-right.html">Shop now</a>
                                                    </div>
                                                </div>
                                                <div class="menu-banner-discount">
                                                    <h3>
                                                        <span>25%</span>
                                                        off
                                                    </h3>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li> -->
                                <!-- <li>
                                    <a href="{{ route('home.blog') }}">Blog</a> -->
                                <!-- <ul class="sub-menu"> -->
                                <!-- <li><a href="blog-category-grid.html">Blog Category Grid</a></li>
                                        <li><a href="blog-category-list.html">Blog Category List</a></li>
                                        <li><a href="blog-category-big.html">Blog Category Big</a></li>
                                        <li><a href="blog-category-fullwidth.html">Blog Category Wide</a></li> -->
                                <!-- <li>
                                            <a href="#">Single Post <i class="fi-rs-angle-right"></i></a>
                                            <ul class="level-menu level-menu-modify">
                                                <li><a href="blog-post-left.html">Left Sidebar</a></li>
                                                <li><a href="blog-post-right.html">Right Sidebar</a></li>
                                                <li><a href="blog-post-fullwidth.html">No Sidebar</a></li>
                                            </ul>
                                        </li> -->
                                <!-- </ul> -->
                                <!-- </li> -->
                                <!-- <li>
                                    <a href="#">Pages <i class="fi-rs-angle-down"></i></a>
                                    <ul class="sub-menu">
                                        <li><a href="page-about.html">About Us</a></li>
                                        <li><a href="page-contact.html">Contact</a></li>
                                        <li><a href="page-account.html">My Account</a></li>
                                        <li><a href="page-login.html">Login</a></li>
                                        <li><a href="page-register.html">Register</a></li>
                                        <li><a href="page-forgot-password.html">Forgot password</a></li>
                                        <li><a href="page-reset-password.html">Reset password</a></li>
                                        <li><a href="page-purchase-guide.html">Purchase Guide</a></li>
                                        <li><a href="page-privacy-policy.html">Privacy Policy</a></li>
                                        <li><a href="page-terms.html">Terms of Service</a></li>
                                        <li><a href="page-404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="page-contact.html">Contact</a>
                                </li> -->
                            </ul>
                        </nav>
                    </div>
                </div>


                <div class="hotline d-none d-lg-flex">
                    <img src="{{ asset('frontend/assets/imgs/theme/icons/icon-headphone.svg') }}" alt="hotline" />
                    <p>{{ $support_phone }}<span>24/7 Support Center</span></p>
                </div>
                <div class="header-action-icon-2 d-block d-lg-none">
                    <div class="burger-icon burger-icon-white">
                        <span class="burger-icon-top"></span>
                        <span class="burger-icon-mid"></span>
                        <span class="burger-icon-bottom"></span>
                    </div>
                </div>
                <div class="header-action-right d-block d-lg-none">
                    <div class="header-action-2">
                        <div class="header-action-icon-2">
                            <a href="{{ route('wishlist') }}">
                                <img alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-heart.svg') }}" />
                                <span class="pro-count white" id="wishQty">0</span>
                                
                            </a>
                        </div>
                        <div class="header-action-icon-2">
                            <a class="mini-cart-icon" href="{{ route('mycart') }}">
                                <img alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-cart.svg') }}" />
                                <span class="pro-count white" id="cartQty">0</span>
                            </a>
                            <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                <!--   // mini cart start with ajax -->
                                <div id="miniCart">

                                </div>

                                <!--   // End mini cart start with ajax -->
                                <!-- <ul> -->
                                <!-- <li> -->
                                <!-- <div class="shopping-cart-img">
                                            <a href="shop-product-right.html"><img alt="Nest" src="{{ asset('frontend/assets/imgs/shop/thumbnail-3.jpg') }}" /></a>
                                        </div> -->
                                <!-- <div class="shopping-cart-title">
                                            <h4><a href="shop-product-right.html">Plain Striola Shirts</a></h4>
                                            <h3><span>1 × </span>$800.00</h3>
                                        </div> -->
                                <!-- <div class="shopping-cart-delete">
                                            <a href="#"><i class="fi-rs-cross-small"></i></a>
                                        </div> -->
                                <!-- </li> -->
                                <!-- <li> -->
                                <!-- <div class="shopping-cart-img">
                                            <a href="shop-product-right.html"><img alt="Nest" src="{{ asset('frontend/assets/imgs/shop/thumbnail-4.jpg') }}" /></a>
                                        </div> -->
                                <!-- <div class="shopping-cart-title">
                                            <h4><a href="shop-product-right.html">Macbook Pro 2022</a></h4>
                                            <h3><span>1 × </span>$3500.00</h3>
                                        </div> -->
                                <!-- <div class="shopping-cart-delete">
                                            <a href="#"><i class="fi-rs-cross-small"></i></a>
                                        </div> -->
                                <!-- </li> -->
                                <!-- </ul> -->
                                <div class="shopping-cart-footer">
                                    <div class="shopping-cart-total">
                                        <h4>Total <span id="cartSubTotal"> </span></h4>
                                    </div>
                                    <div class="shopping-cart-button">
                                        <a href="{{ route('mycart') }}">View cart</a>
                                        <a href="{{ route('checkout') }}">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- End Header  -->

<style>
    #searchProducts {
        position: absolute;
        top: 100%;
        left: 0;
        width: 100%;
        background: #ffffff;
        z-index: 999;
        border-radius: 8px;
        margin-top: 5px;
    }
</style>

<script>
    function search_result_show() {
        $("#searchProducts").slideDown();
    }

    function search_result_hide() {
        $("#searchProducts").slideUp();
    }
</script>




<div class="mobile-header-active mobile-header-wrapper-style">
    <div class="mobile-header-wrapper-inner">
        <div class="mobile-header-top">
            <div class="mobile-header-logo">
                <a href="{{ url('/') }}"><img src="{{ asset($logo)  }}" alt="logo" /></a>
            </div>
            <div class="mobile-menu-close close-style-wrap close-style-position-inherit">
                <button class="close-style search-close">
                    <i class="icon-top"></i>
                    <i class="icon-bottom"></i>
                </button>
            </div>
        </div>
        <div class="mobile-header-content-area">
            <div class="mobile-search search-style-3 mobile-header-border">
                <form action="{{ route('product.search') }}" method="post">
                    @csrf
                    <input onfocus="search_result_show()" onblur="search_result_hide()" name="search" id="search" placeholder="Search for items..." />
                    <div id="searchProducts"></div>
                    <button type="submit"><i class="fi-rs-search"></i></button>
                </form>
            </div>
            <div class="mobile-menu-wrap mobile-header-border">
                <!-- mobile menu start -->
                <nav>
                    <ul class="mobile-menu font-heading">
                        <!-- <li class="menu-item-has-children">
                            <a href="{{ url('/') }}">Home</a>
                        </li> -->
                        @php
                        $categories = App\Models\Category::orderBy('category_name','ASC')->limit(6)->get();
                        @endphp

                        @foreach($categories as $category)
                        <li class="menu-item-has-children">
                            <a href="{{ url('product/category/'.$category->id.'/'.$category->category_slug) }}">{{ $category->category_name }} </a>
                            @php
                            $subcategories = App\Models\SubCategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get();
                            @endphp
                            <ul class="dropdown">
                                @foreach($subcategories as $subcategory)
                                <li><a href="{{ url('product/subcategory/'.$subcategory->id.'/'.$subcategory->subcategory_slug) }}">{{ $subcategory->subcategory_name }}</a></li>
                                @endforeach
                                <!-- <li class="menu-item-has-children">
                                    <a href="#">Single Product</a>
                                    <ul class="dropdown">
                                        <li><a href="shop-product-right.html">Product – Right Sidebar</a></li>
                                        <li><a href="shop-product-left.html">Product – Left Sidebar</a></li>
                                        <li><a href="shop-product-full.html">Product – No sidebar</a></li>
                                        <li><a href="shop-product-vendor.html">Product – Vendor Infor</a></li>
                                    </ul>
                                </li> -->
                                <!-- <li><a href="shop-filter.html">Shop – Filter</a></li>
                                <li><a href="shop-wishlist.html">Shop – Wishlist</a></li>
                                <li><a href="shop-cart.html">Shop – Cart</a></li>
                                <li><a href="shop-checkout.html">Shop – Checkout</a></li>
                                <li><a href="shop-compare.html">Shop – Compare</a></li> -->
                                <!-- <li class="menu-item-has-children"> -->
                                <!-- <a href="#">Shop Invoice</a> -->
                                <!-- <ul class="dropdown">
                                        <li><a href="shop-invoice-1.html">Shop Invoice 1</a></li>
                                        <li><a href="shop-invoice-2.html">Shop Invoice 2</a></li>
                                        <li><a href="shop-invoice-3.html">Shop Invoice 3</a></li>
                                        <li><a href="shop-invoice-4.html">Shop Invoice 4</a></li>
                                        <li><a href="shop-invoice-5.html">Shop Invoice 5</a></li>
                                        <li><a href="shop-invoice-6.html">Shop Invoice 6</a></li>
                                    </ul> -->
                                <!-- </li> -->
                            </ul>
                        </li>
                        @endforeach
                        <!-- <li class="menu-item-has-children">
                            <a href="#">Mega menu</a>
                            <ul class="dropdown">
                                <li class="menu-item-has-children">
                                    <a href="#">Women's Fashion</a>
                                    <ul class="dropdown">
                                        <li><a href="shop-product-right.html">Dresses</a></li>
                                        <li><a href="shop-product-right.html">Blouses & Shirts</a></li>
                                        <li><a href="shop-product-right.html">Hoodies & Sweatshirts</a></li>
                                        <li><a href="shop-product-right.html">Women's Sets</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Men's Fashion</a>
                                    <ul class="dropdown">
                                        <li><a href="shop-product-right.html">Jackets</a></li>
                                        <li><a href="shop-product-right.html">Casual Faux Leather</a></li>
                                        <li><a href="shop-product-right.html">Genuine Leather</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Technology</a>
                                    <ul class="dropdown">
                                        <li><a href="shop-product-right.html">Gaming Laptops</a></li>
                                        <li><a href="shop-product-right.html">Ultraslim Laptops</a></li>
                                        <li><a href="shop-product-right.html">Tablets</a></li>
                                        <li><a href="shop-product-right.html">Laptop Accessories</a></li>
                                        <li><a href="shop-product-right.html">Tablet Accessories</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li> -->
                        <!-- <li class="menu-item-has-children">
                            <a href="{{ route('home.blog') }}">Blog</a>
                        </li> -->
                        <!-- <li class="menu-item-has-children">
                            <a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="page-about.html">About Us</a></li>
                                <li><a href="page-contact.html">Contact</a></li>
                                <li><a href="page-account.html">My Account</a></li>
                                <li><a href="page-login.html">Login</a></li>
                                <li><a href="page-register.html">Register</a></li>
                                <li><a href="page-forgot-password.html">Forgot password</a></li>
                                <li><a href="page-reset-password.html">Reset password</a></li>
                                <li><a href="page-purchase-guide.html">Purchase Guide</a></li>
                                <li><a href="page-privacy-policy.html">Privacy Policy</a></li>
                                <li><a href="page-terms.html">Terms of Service</a></li>
                                <li><a href="page-404.html">404 Page</a></li>
                            </ul>
                        </li> -->
                        <!-- <li class="menu-item-has-children">
                            <a href="#">Language</a>
                            <ul class="dropdown">
                                <li><a href="#">English</a></li>
                                <li><a href="#">French</a></li>
                                <li><a href="#">German</a></li>
                                <li><a href="#">Spanish</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </nav>
                <!-- mobile menu end -->
            </div>
            <div class="mobile-header-info-wrap">
                <!-- <div class="single-mobile-header-info">
                    <a href="page-contact.html"><i class="fi-rs-marker"></i> Our location </a>
                </div> -->
                <div class="single-mobile-header-info" style="display: flex; gap: 2px;">
                    <a href="{{route('login')}}" style="display:flex;"><i class="fi-rs-user"></i>Log In /  <a href="{{route('register')}}"> Sign Up </a></a>
                </div>
                <div class="single-mobile-header-info">
                    <a href="#"><i class="fi-rs-headphones"></i>{{ $support_phone }} </a>
                </div>
            </div>
            <div class="mobile-social-icon mb-50">
                <h6 class="mb-15">Follow Us</h6>
                <a href="{{ $fb }}"><img src="{{ asset('frontend/assets/imgs/theme/icons/icon-facebook-white.svg') }}" alt="" /></a>
                <a href="{{ $twi }}"><img src="{{ asset('frontend/assets/imgs/theme/icons/icon-twitter-white.svg') }}" alt="" /></a>
                <a href="#"><img src="{{ asset('frontend/assets/imgs/theme/icons/icon-instagram-white.svg') }}" alt="" /></a>
                <a href="#"><img src="{{ asset('frontend/assets/imgs/theme/icons/icon-pinterest-white.svg') }}" alt="" /></a>
                <a href="{{ $yt }}"><img src="{{ asset('frontend/assets/imgs/theme/icons/icon-youtube-white.svg') }}" alt="" /></a>
            </div>
            <div class="site-copyright">
                <p class="font-sm mb-0"> <strong class="text-brand">Fiamme</strong> - {{ $copyright }}</p>
            </div>
        </div>
    </div>
</div>