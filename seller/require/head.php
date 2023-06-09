<div class="head">
    <div class="ham-name">
        <div class="mnu vy" onclick="hide()" id="mn">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="mnu ty" onclick="op_n()" id="mn">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="nm">Dashbord</div>
    </div>
    <div class="profile">
        <a href="javascript:void(0)">
            <img src="assets/images/pic1.jpg" alt="" />
        </a>
        <div class="name">
            <span>
            <?php 
                print_r(explode(" ",seller_name($con))[0]);
            ?>
        </span>
            <small>seller</small>
        </div>
        <div class="hover-bot">
            <ul>
              <?php if (profle_verified($con)==1){ ?>
                 <li>
                    <input type="text" id="a" value="<?php echo R_v(); ?>" hidden="true">
                    <input type="text" id="b" value="<?php echo hash_code(); ?>" hidden="true">
                    <input type="text" id="c" value="<?php echo hash_code(); ?>" hidden="true">
                    <a href="javascript:void(0)" onclick="profileisapp1()">
                        <i class="uil uil-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="logout()">
                        <i class="uil uil-sign-out-alt"></i>
                        <span>Logout</span>
                    </a>
                </li>
                <?php } else{ ?>
                 <li>
                    <a onlick="javascript:void(0)" onclick="profileisapp0()">
                        <i class="uil uil-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="logout()">
                        <i class="uil uil-sign-out-alt"></i>
                        <span>Logout</span>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>