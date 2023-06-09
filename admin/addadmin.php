<?php
require('require/top.php');
?>
<div class="wrwr">
    <div class="path" id="path">
        <a href="/"><i class="fa fa-home" aria-hidden="true"></i> Dashboard</a>
        <span>/</span>
        <a href="addadmin.php">Add Admin </a>
    </div>
    <div class="catbox-row">
        <div class="catboxp">
            <h1><?php echo "Add Admin";?> </h1>
            <div class="formrow">
                <div class="heading">
                    Username
                </div>
                <div class="catselect">
                    <input type="text" placeholder="Enter Username" id="aUsername">
                </div>
            </div>
            <div class="formrow">
                <div class="heading">
                    Password
                </div>
                <div class="catselect">
                    <input type="password" placeholder="Enter Password" id="aPassword">
                </div>
            </div>
            <div class="formrow">
                <div class="heading">
                    Privilege
                </div>
                    <select class="select" name="aPrivilege" id="aPrivilege">
                        <option value="#">Select Privilage</option>
                        <option value="1">Super Admin</option>
                        <option value="2">Admin</option>
                    </select>
            </div>
            <div class="formrow">
                <span id='pdstatus' style='font-size:1.3rem; color:#556ee6;'></span>
                <button class='add' onclick='add_neew_admin()'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                    Add</button>
            </div>
        </div>
    </div>
</div>
<?php
require('require/foot.php');
?>