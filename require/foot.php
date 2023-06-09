<section class="defaultPadding mt4 footer">
    <div class="footer-row1">
        <div class="container">
            <div class="row flex">
                <ul class="ul1">
                    <li>
                        <a href="#">
                            <i class="uil uil-dialpad-alt"></i>
                            (088) 545-0123
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="uil uil-envelope-alt"></i>
                            info@E-Agri.com
                        </a>
                    </li>
                </ul>
                <ul class="ul2">
                    <li>
                        <a href="#">
                            <i class="uil uil-facebook-f"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="uil uil-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="uil uil-google"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="uil uil-linkedin-alt"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <?php if (isset($_GET['utm_source']) || isset($_SESSION['utm_source'])){ ?>
        <div class="footer-row2">
            <div class="container">
                <div class="row">
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Categories</h4>
                        </li>
                        <ul class="ul-sub">
                            <a href="view.php?n=6&k=&scat=1">
                                <li> Organic Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=2">
                                <li> Nitrogen Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=3">
                                <li> Phosphate Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=4">
                                <li> Potassium Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=5">
                                <li> Fertilizer Forms <li>
                            </a>
                        </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Usefull Links</h4>
                        </li>
                        <ul class="ul-sub">
                            <a href="view.php?n=6&k=&scat=1">
                                <li> Organic Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=5">
                                <li> Fertilizer Forms <li>
                            </a>
                            <a href="view.php?n=6&k=&scat=2">
                                <li> Nitrogen Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=4">
                                <li> Potassium Fertilizer </li>
                            </a>
                            <a href="view.php?n=6&k=&scat=3">
                                <li> Phosphate Fertilizer </li>
                            </a>
                        </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Top Cities</h4>
                        </li>
                        <ul class="ul-sub">
                            <a href="index.php?utm_source=20">
                                <li> Ozamiz </li>
                            </a>
                            <a href="index.php?utm_source=29">
                                <li> Aloran </li>
                            </a>
                            <a href="index.php?utm_source=19">
                                <li> Panaon </li>
                            </a>
                            <a href="index.php?utm_source=15">
                                <li> Tangub </li>
                            </a>
                            <a href="index.php?utm_source=25">
                                <li> Clarin </li>
                            </a>
                            <a href="index.php?utm_source=24">
                                <li> Concepcion </li>
                            </a>
                            <a href="index.php?utm_source=17">
                                <li> Sapang Dalaga </li>
                            </a>
                            <a href="index.php?utm_source=14">
                                <li> Tudela </li>
                            </a>
                        </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading thd">
                            <h4><b>News Letter</b></h4>
                        </li>
                        <ul class="ul-sub t flex nl">
                            <form action="#">
                                <input type="text" name="" placeholder="Email Address" />
                                <button><i class="uil uil-telegram-alt"></i></button>
                            </form>
                        </ul>
                    </ul>
                </div>
            </div>
        </div>
    <?php } else{ ?>
        <div class="footer-row2">
            <div class="container">
                <div class="row">
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Categories</h4>
                        </li>
                            <ul class="ul-sub">
                                <li> Organic Fertilizer </li>
                                <li> Nitrogen Fertilizer </li>
                                <li> Phosphate Fertilizer </li>
                                <li> Potassium Fertilizer </li>
                                <li> Fertilizer Forms <li>
                            </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Usefull Links</h4>
                        </li>
                            <ul class="ul-sub">
                                <li> Organic Fertilizer </li>
                                <li> Fertilizer Forms <li>
                                     Nitrogen Fertilizer 
                                <li> Potassium Fertilizer </li>
                                <li> Phosphate Fertilizer </li>
                            </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading">
                            <h4>Top Cities</h4>
                        </li>
                            <ul class="ul-sub">
                                <li> Ozamiz </li>
                                <li> Aloran </li>
                                <li> Panaon </li>
                                <li> Tangub </li>
                                <li> Clarin </li>
                                <li> Concepcion </li>
                                <li> Sapang Dalaga </li>
                                <li> Tudela </li>
                            </ul>
                    </ul>
                    <ul class="ul1">
                        <li class="heading thd">
                            <h4><b>News Letter</b></h4>
                        </li>
                        <ul class="ul-sub t flex nl">
                            <form action="#">
                                <input type="text" name="" placeholder="Email Address" />
                                <button><i class="uil uil-telegram-alt"></i></button>
                            </form>
                        </ul>
                    </ul>
                </div>
            </div>
        </div>
        <?php } ?>
    <div class="footer-3">
        <span> Copyright 2022 E-Agri. All rights reserved </span>
    </div>
</section>
<script src="assets/js/script.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>