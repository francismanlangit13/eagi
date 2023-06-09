"use strict";
const S = "success";
const W = "warning";
let plan_has;
plan_has = false;
let control = {
  globalShow: function (e) {
    document.getElementById(e).style.display = "initial";
  },
  globalShowFlex: function (e) {
    document.getElementById(e).style.display = "flex";
  },
  globalShowGrid: function (e) {
    document.getElementById(e).style.display = "grid";
  },
  globalHide: function (e) {
    document.getElementById(e).style.display = "none";
  },
  getInput: function (e) {
    let value;
    value = document.getElementById(e).value;
    return value;
  },
  getintInput: function (e) {
    let value;
    value = parseInt(document.getElementById(e).valueAsNumber);
    return value;
  },
  putValue: function (e, k) {
    document.getElementById(e).value = k;
  },
  html: function (e, tml) {
    document.getElementById(e).innerHTML = tml;
  },
  reload: function () {
    window.location.href = window.location;
  },
  readonly: function (e) {
    document.getElementById(e).setAttribute("readonly", true);
  },
  disable: function (e) {
    document.getElementById(e).setAttribute("disabled", true);
  },
  enable: function (e) {
    document.getElementById(e).setAttribute("disabled", false);
  },
  popup: function (e, state = "") {
    if (state == "") {
      swal(e);
    } else {
      swal(e, "", state);
    }
  },
  get: (e) => {
    return document.getElementById(e);
  },
  redirect: (path) => {
    window.location.href = path;
  },
};
function hide() {
  var left = control.get("lft");
  var mn = control.get("mn");
  left.style.overflow = "hidden";
  left.style.flexBasis = "0%";
  mn.setAttribute("onclick", "op_en()");
}
function op_en() {
  if (window.innerWidth > 860) {
    var left = control.get("lft");
    var mn = control.get("mn");
    left.style.overflow = "hidden";
    left.style.flexBasis = "33%";
    mn.setAttribute("onclick", "hide()");
  } else {
    var left = control.get("lft");
    var mn = control.get("mn");
    left.style.transform = "translateX(0%)";
  }
}
function op_n() {
  var left = control.get("lft");
  var mn = control.get("mn");
  left.style.transform = "translateX(0%)";
}

function close_res_nav() {
  var left = control.get("lft");
  var mn = control.get("mn");
  left.style.transform = "translateX(-120%)";
  mn.setAttribute("onclick", "op_en()");
}
window.addEventListener("resize", () => {
  if (window.innerWidth > 860) {
    op_en();
  } else {
    var left = control.get("lft");
    left.style.overflow = "visible";
  }
});
function show_preview(e, f) {
  if (validatefile(f)) {
    var reader = new FileReader();
    reader.onload = function () {
      var output = document.getElementById(e);
      output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
  } else {
    swal("File should be in JPEG,JPG or PNG format", "", "warning");
  }
}
function validatefile(e) {
  var fileInput = document.getElementById(e);
  var filePath = fileInput.value;
  var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
  if (!allowedExtensions.exec(filePath)) {
    fileInput.value = "";
    return 0;
  } else {
    return 1;
  }
}
function view(e) {
  let div = control.get("mi");
  div.src = e.src;
}
function login() {
  var username = control.getInput("username");
  var password = control.getInput("password");
  var Uinput = username[0];
  var s = control.getInput("username");
  const first2Str = String(s).slice(0, 2);
  const ans = Number(first2Str);
  var Epattern = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
  if ((Uinput >= 'a' && Uinput <= 'z') || (Uinput >= 'A' && Uinput <= 'Z')){
    if (username == "") {
      control.popup("Enter Email or Mobile", W);
    } else if (document.getElementById('username').value.match(Epattern)) {
      if (password == "") {
        control.popup("Enter Password", W);
      } else {
        control.html("lgbtn", "wait...");
        $.ajax({
          url: "../../assets/backend/auth/validate.php",
          type: "post",
          data: "username=" + username + "&password=" + password,
          success: function (htl) {
            var html = JSON.parse(htl);
            if (html.status != 1) {
              control.popup(html.msg, W);
              control.html("lgbtn", "Login");
            } else {
              control.redirect("../../");
            }
          },
        });
      }
    } else{
      control.popup("Invalid Email Address", W);
    }
  } else{
    if (username == "") {
      control.popup("Enter Email or Mobile", W);
    } else if (password == "") {
      control.popup("Enter Password", W);
    } if (document.getElementById('username').value.length!=11) {
      control.popup("Enter 11 Digit Mobile Number", W);
    } else if (ans == '09'){
        control.html("lgbtn", "wait...");
        $.ajax({
          url: "../../assets/backend/auth/validate.php",
          type: "post",
          data: "username=" + username + "&password=" + password,
          success: function (htl) {
            var html = JSON.parse(htl);
            if (html.status != 1) {
              control.popup(html.msg, W);
              control.html("lgbtn", "Login");
            } else {
              control.redirect("../../");
            }
          },
        });
      } else{
          control.popup("Enter 09 Before Number Digit", W);
        }
    }
}
function profileisapp1() {
  var a = control.getInput("a");
  var b = control.getInput("b");
  var c = control.getInput("c");
    control.redirect("profile.php?"+a+"="+b+"&v="+c);
}
function profileisapp0() {
  var isapp = 0;
    if(isapp == 0){
      control.popup("This fuction is not available unless you complete your requirements.", W);
    }
}
function logout() {
  var email = 0;
  $.ajax({
    url: "assets/backend/auth/logout.php",
    type: "post",
    data: "email=" + email,
    success: function (htl) {
      control.reload();
    },
  });
}
function register() {
  var email = control.getInput("email");
  var mobile = control.getInput("mobile");
  var password = control.getInput("password");
  var s = control.getInput("mobile");
  const first2Str = String(s).slice(0, 2);
  const ans = Number(first2Str);
  var Mpattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
  var Epattern = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
  if (email == "") {
    control.popup("Enter Email", W);
  } else if (document.getElementById('email').value.match(Epattern)) {
    if (password == "") {
      control.popup("Enter Password", W);
    } else if (document.getElementById('password').value.match(Mpattern)) {
      if (mobile == "") {
        control.popup("Enter Mobile", W);
      } else if (document.getElementById('mobile').value.length!=11) {
        control.popup("Enter 11 Digit Mobile Number", W);
      } else if (ans == '09') {
        control.html("lgbtn", "wait...");
        $.ajax({
          url: "../assets/backend/auth/register.php",
          type: "post",
          data: "email=" + email + "&password=" + password + "&mobile=" + mobile,
          success: function (htl) {
            var html = JSON.parse(htl);
            if (html.status != 1) {
              control.popup(html.msg, W);
              control.html("lgbtn", "Register");
            } else {
              control.redirect("../");
            }
          },
        });
      }else {
        control.popup("Enter 09 Before Number Digit", W);
      }
    }else{
      control.popup("Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters", W);
    }
  }else{
    control.popup("Invalid Email Address", W);
    }
}
function getstatelist() {
  var country = control.getInput("fsc");
  $.ajax({
    url: "assets/backend/location/getstatelist.php",
    type: "post",
    data: "id=" + country,
    success: function (html) {
      control.html("fscb", html);
    },
  });
}
function getcitylist() {
  var country = control.getInput("fscb");
  $.ajax({
    url: "assets/backend/location/getcitylist.php",
    type: "post",
    data: "id=" + country,
    success: function (html) {
      control.html("fscb2", html);
    },
  });
}
function getpinlist() {
  var country = control.getInput("fscb2");
  $.ajax({
    url: "assets/backend/location/getpinlist.php",
    type: "post",
    data: "id=" + country,
    success: function (html) {
      control.html("fscb3", html);
    },
  });
}
function assign(id) {
  let dv = control.getInput("dvselect");
  $.ajax({
    url: "assets/backend/delivery/assign.php",
    type: "post",
    data: "oid=" + id + "&dboy=" + dv,
    success: function (html) {
      control.reload();
    },
  });
}
function out(oid) {
  $.ajax({
    url: "assets/backend/delivery/out.php",
    type: "post",
    data: "oid=" + oid,
    success: function (html) {
      control.redirect("order_packed.php");
    },
  });
}
function delivered(oid){
  $.ajax({
    url: "assets/backend/delivery/delivered.php",
    type: "post",
    data: "oid=" + oid,
    success: function (html) {
      control.redirect("outfordelivery.php");
    },
  });
}
function plan() {
  var plan_selected = control.getInput("isplan");
  if (plan_selected == 2) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else if (plan_selected == 3) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else if (plan_selected == 4) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else if (plan_selected == 5) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else if (plan_selected == 6) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else if (plan_selected == 7) {
    control.globalShowFlex("isplan0");
    control.globalShowFlex("isplan1");
    control.globalShowFlex("isplan2");
    control.globalShowFlex("isplan3");
    control.globalShowFlex("isplan4");
  } else {
    control.globalHide("isplan0");
    control.globalHide("isplan1");
    control.globalHide("isplan2");
    control.globalHide("isplan3");
    control.globalHide("isplan4");
    
  }
}
function completep1(rt) {
  if (rt != 1) {
    let fullname,
      email,
      mobile,
      address,
      type,
      bname,
      bcrft,
      cntry,
      state,
      city,
      pin,
      adhar,
      pan;
    fullname = control.getInput("seller_full_name");
    email = control.getInput("email");
    mobile = control.getInput("mobile");
    address = control.getInput("address");
    type = control.getInput("seller_b_type");
    bname = control.getInput("seller_b_name");
    bcrft = document.getElementById("seller_b_crft");
    cntry = control.getInput("fsc");
    state = control.getInput("fscb");
    city = control.getInput("fscb2");
    pin = control.getInput("fscb3");
    adhar = document.getElementById("seller_adhar");
    pan = document.getElementById("seller_pan");
    if (fullname == "") {
      control.html("pdstatus", "Enter Full Name");
    } else if (email == "") {
      control.html("pdstatus", "Enter Email");
    } else if (mobile == "") {
      control.html("pdstatus", "Enter Mobile");
    } else if (address == "") {
      control.html("pdstatus", "Enter Address");
    } else if (type == "#") {
      control.html("pdstatus", "Select Business Type");
    } else if (bname == "") {
      control.html("pdstatus", "Enter Business Name");
    } else if (bcrft.files.length == 0) {
      control.html("pdstatus", "Choose Business Certificate");
    } else if (cntry == "#") {
      control.html("pdstatus", "Select Country");
    } else if (state == "#") {
      control.html("pdstatus", "Select State");
    } else if (city == "#") {
      control.html("pdstatus", "Select City");
    } else if (pin == "#") {
      control.html("pdstatus", "Select Zipcode");
    } else if (adhar.files.length == 0) {
        control.html("pdstatus", "Choose BIR Certifiate");
      } else if (pan.files.length == 0) {
        control.html("pdstatus", "Choose Barangay Clearance");
      } else {
        add_details();
      }
  } else{
      edit_complete_profile();
    }
}
function completep2(rt) {
  if (rt != 1) {
    let fullname,
      email,
      mobile,
      address,
      type,
      bname,
      cntry,
      state,
      city,
      pin,
      plan,
      acn,
      ach,
      bank,
      branch;
    fullname = control.getInput("seller_full_name");
    email = control.getInput("email");
    mobile = control.getInput("mobile");
    address = control.getInput("address");
    type = control.getInput("seller_b_type");
    bname = control.getInput("seller_b_name");
    cntry = control.getInput("fsc");
    state = control.getInput("fscb");
    city = control.getInput("fscb2");
    pin = control.getInput("fscb3");
    plan = control.getInput("isplan");
    if (fullname == "") {
      control.html("pdstatus", "Enter Full Name");
    } else if (email == "") {
      control.html("pdstatus", "Enter Email");
    } else if (mobile == "") {
      control.html("pdstatus", "Enter Mobile");
    } else if (address == "") {
      control.html("pdstatus", "Enter Address");
    } else if (type == "#") {
      control.html("pdstatus", "Select Business Type");
    } else if (bname == "") {
      control.html("pdstatus", "Enter Business Name");
    } else if (cntry == "#") {
      control.html("pdstatus", "Select Country");
    } else if (state == "#") {
      control.html("pdstatus", "Select State");
    } else if (city == "#") {
      control.html("pdstatus", "Select City");
    } else if (pin == "#") {
      control.html("pdstatus", "Select Zipcode");
    } if (plan == "#") {
      control.html("pdstatus", "Select Subscription");
    } else if (plan == "1") {
      add_r_s();
    } else{
      plan_has = true;
      acn = control.getInput("seller_ac");
      ach = control.getInput("seller_bank_holder");
      bank = control.getInput("seller_bank_name");
      branch = control.getInput("seller_branch_name");
      if (acn == "") {
        control.html("pdstatus", "Enter Account Number");
      } else if (ach == "") {
        control.html("pdstatus", "Enter Account Holder Name");
      } else if (bank == "") {
        control.html("pdstatus", "Enter Bank Name");
      } else if (branch == "") {
        control.html("pdstatus", "Enter Branch Name");
      } else {
        add_r_s();
        }
      }
    }
}
function add_details() {
  control.html("pdstatus", "Adding Details..");
  var fd = new FormData();
  var files = $("#seller_b_crft")[0].files;
  fd.append("file", files[0]);
  control.html("pdstatus", "Adding Business certificate..");
  $.ajax({
    url: "assets/backend/profile/addbscfrt.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of Business Certificate Is Not supported") {
        control.html("pdstatus", html);
      } else {
        control.html("pdstatus", "Business Certificate added..");
        if (plan_has) {
          add_adhar(html, 0); 
        } else {
          add_adhar(html);
        }
      }
    },
  });
}
function add_gstcfrt(bc) {
  control.html("pdstatus", "Adding GST certificate..");
  var fd = new FormData();
  var files = $("#seller_gst_crft")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/profile/addgstcfrt.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of GST Certificate Is Not supported") {
        control.html("pdstatus", html);
      } else {
        control.html("pdstatus", "GST certificate added..");
        add_adhar(bc, html);
      }
    },
  });
}
function add_adhar(bc, gstc) {
  control.html("pdstatus", "Adding Barangay Certificate..");
  var fd = new FormData();
  var files = $("#seller_adhar")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/profile/addadhar.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of Barangay Certificate Is Not supported") {
        control.html("pdstatus", html);
      } else {
        control.html("pdstatus", "Barangay Certificate added...");
        add_pan(bc, gstc, html);
      }
    },
  });
}
function add_pan(bc, gstc, adhar) {
  control.html("pdstatus", "Adding BIR Certificate...");
  var fd = new FormData();
  var files = $("#seller_pan")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/profile/addpan.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of BIR Certificate Is Not supported") {
        control.html("pdstatus", html);
      } else {
        control.html("pdstatus", "BIR Certificate Added..");
        add_r_d(bc, gstc, adhar, html);
      }
    },
  });
}
function add_r_d(bc, gstc, adhar, pan) {
  control.html("pdstatus", "Adding Details...");
  let fullname,
    email,
    mobile,
    address,
    type,
    bname,
    cntry,
    state,
    city,
    pin;
  email = control.getInput("email");
  mobile = control.getInput("mobile");
  address = control.getInput("address");
  fullname = control.getInput("seller_full_name");
  type = control.getInput("seller_b_type");
  bname = control.getInput("seller_b_name");
  cntry = control.getInput("fsc");
  state = control.getInput("fscb");
  city = control.getInput("fscb2");
  pin = control.getInput("fscb3");
  $.ajax({
    url: "assets/backend/profile/addall_d.php",
    type: "post",
    data:
      "fullname=" +
      fullname +
      "&type=" +
      type +
      "&bname=" +
      bname +
      "&cntry=" +
      cntry +
      "&state=" +
      state +
      "&city=" +
      city +
      "&pin=" +
      pin +
      "&bc=" +
      bc +
      "&adhar=" +
      adhar +
      "&pan=" +
      pan +
      "&email=" +
      email +
      "&address=" +
      address +
      "&mobile=" +
      mobile,
    success: function (html) {
      if (html == 1) {
        swal("Added Successfully", "", "success").then((e) => {
          control.redirect("index.php");
        });
      } else {
        swal("Something went wrong", "", "warning");
      }
    },
  });
}
function add_r_s() {
  control.html("pdstatus", "Adding Details...");
  let fullname,
    email,
    mobile,
    address,
    type,
    bname,
    cntry,
    state,
    city,
    pin,
    plan,
    acn,
    ach,
    bank,
    branch;
    email = control.getInput("email");
    mobile = control.getInput("mobile");
    address = control.getInput("address");
    fullname = control.getInput("seller_full_name");
    type = control.getInput("seller_b_type");
    bname = control.getInput("seller_b_name");
    cntry = control.getInput("fsc");
    state = control.getInput("fscb");
    city = control.getInput("fscb2");
    pin = control.getInput("fscb3");
    plan = control.getInput("isplan");
    if (plan_has) {
      acn = control.getInput("seller_ac");
      ach = control.getInput("seller_bank_holder");
      bank = control.getInput("seller_bank_name");
      branch = control.getInput("seller_branch_name");
    } else {
      acn = "";
      ach = "";
      bank = "";
      branch = "";
    }
  $.ajax({
    url: "assets/backend/profile/addall_s.php",
    type: "post",
    data:
    "fullname=" +
    fullname +
    "&type=" +
    type +
    "&bname=" +
    bname +
    "&cntry=" +
    cntry +
    "&state=" +
    state +
    "&city=" +
    city +
    "&pin=" +
    pin +
    "&isplan=" +
    plan +
    "&acn=" +
    acn +
    "&ach=" +
    ach +
    "&bank=" +
    bank +
    "&branch=" +
    branch +
    "&email=" +
    email +
    "&address=" +
    address +
    "&mobile=" +
    mobile,
    success: function (html) {
      if (html == 1) {
        swal("Added Successfully", "", "success").then((e) => {
          control.redirect("index.php");
        });
      } else {
        swal("Something went wrong", "", "warning");
      }
    },
  });
}
function edit_complete_profile() {
  let fullname,
    email,
    mobile,
    address,
    type,
    bname,
    bcrft,
    cntry,
    state,
    city,
    pin,
    adhar,
    pan;
  fullname = control.getInput("seller_full_name");
  email = control.getInput("email");
  mobile = control.getInput("mobile");
  address = control.getInput("address");
  type = control.getInput("seller_b_type");
  bname = control.getInput("seller_b_name");
  bcrft = document.getElementById("seller_b_crft");
  cntry = control.getInput("fsc");
  state = control.getInput("fscb");
  city = control.getInput("fscb2");
  pin = control.getInput("fscb3");
  adhar = document.getElementById("seller_adhar");
  pan = document.getElementById("seller_pan");
  if (fullname == "") {
    control.html("pdstatus", "Enter Full Name");
  } else if (email == "") {
    control.html("pdstatus", "Enter Email");
  } else if (mobile == "") {
    control.html("pdstatus", "Enter Mobile");
  } else if (address == "") {
    control.html("pdstatus", "Enter Address");
  } else if (type == "#") {
    control.html("pdstatus", "Select Business Type");
  } else if (bname == "") {
    control.html("pdstatus", "Enter Business Name");
  } else if (cntry == "#") {
    control.html("pdstatus", "Select Country");
  } else if (state == "#") {
    control.html("pdstatus", "Select State");
  } else if (city == "#") {
    control.html("pdstatus", "Select City");
  } else if (pin == "#") {
    control.html("pdstatus", "Select Zipcode");
  }
  update_bs();
}
function update_bs() {
  control.html("pdstatus", "Updating Business Certificate");
  let bcrft;
  bcrft = document.getElementById("seller_b_crft");
  if (bcrft.files.length == 0) {
    update_pan();
  } else {
    var fd = new FormData();
    var files = $("#seller_b_crft")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/profile/updatebscfrt.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (htl) {
        let html = JSON.parse(htl);
        if (html.code == 0) {
          control.html("pdstatus", html.msg);
        } else {
          control.html("pdstatus", "Done");
          update_pan();
        }
      },
    });
  }
}
function update_pan() {
  control.html("pdstatus", "Updating BIR Certificate");

  let pan;
  pan = document.getElementById("seller_pan");
  if (pan.files.length == 0) {
    update_adhar();
  } else {
    var fd = new FormData();
    var files = $("#seller_pan")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/profile/updatepan.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (htl) {
        let html = JSON.parse(htl);
        if (html.code == 0) {
          control.html("pdstatus", html.msg);
        } else {
          control.html("pdstatus", "Done");

          update_adhar();
        }
      },
    });
  }
}
function update_adhar() {
  control.html("pdstatus", "Updating Barangay Certificate");

  let adhar;
  adhar = document.getElementById("seller_adhar");
  if (adhar.files.length == 0) {
    edit_c_p();
  } else {
    var fd = new FormData();
    var files = $("#seller_adhar")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/profile/updateadhar.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html.code == 0) {
          control.html("pdstatus", html.msg);
        } else {
          control.html("pdstatus", "Done");

          edit_c_p();
        }
      },
    });
  }
}
function edit_c_p() {
  control.html("pdstatus", "Updating All details");

  let fullname,
    email,
    mobile,
    address,
    type,
    bname,
    cntry,
    state,
    city,
    pin;

  email = control.getInput("email");
  mobile = control.getInput("mobile");
  address = control.getInput("address");
  fullname = control.getInput("seller_full_name");
  type = control.getInput("seller_b_type");
  bname = control.getInput("seller_b_name");
  cntry = control.getInput("fsc");
  state = control.getInput("fscb");
  city = control.getInput("fscb2");
  pin = control.getInput("fscb3");
  $.ajax({
    url: "assets/backend/profile/updateall_d.php",
    type: "post",
    data:
      "fullname=" +
      fullname +
      "&type=" +
      type +
      "&bname=" +
      bname +
      "&cntry=" +
      cntry +
      "&state=" +
      state +
      "&city=" +
      city +
      "&pin=" +
      pin +
      "&email=" +
      email +
      "&address=" +
      address +
      "&mobile=" +
      mobile,
    success: function (html) {
      if (html == 1) {
        control.html("pdstatus", "Done");

        swal("Update Successfully", "", "success").then((e) => {
          control.redirect("index.php");
        });
      } else {
        control.popup("something went wrong", W);
      }
    },
  });
}
function update_profile() {
  control.html("pdstatus", "Updating All details");

  let fullname,
    email,
    mobile,
    address,
    type,
    bname,
    cntry,
    state,
    city,
    pin,
    plan,
    acn,
    ach,
    bank,
    branch;

  email = control.getInput("email");
  mobile = control.getInput("mobile");
  address = control.getInput("address");
  fullname = control.getInput("seller_full_name");
  type = control.getInput("seller_b_type");
  bname = control.getInput("seller_b_name");
  cntry = control.getInput("fsc");
  state = control.getInput("fscb");
  city = control.getInput("fscb2");
  pin = control.getInput("fscb3");
  acn = control.getInput("seller_ac");
  ach = control.getInput("seller_bank_holder");
  bank = control.getInput("seller_bank_name");
  branch = control.getInput("seller_branch_name");
  control.html("pdstatus", "taken");

  if (fullname == "") {
    control.html("pdstatus", "Enter Full Name");
  } else if (email == "") {
    control.html("pdstatus", "Enter Email");
  } else if (mobile == "") {
    control.html("pdstatus", "Enter mobile");
  } else if (address == "") {
    control.html("pdstatus", "enter address");
  } else if (type == "#") {
    control.html("pdstatus", "Select Business Type");
  } else if (bname == "") {
    control.html("pdstatus", "Enter Business Name");
  } else if (cntry == "#") {
    control.html("pdstatus", "Select Country");
  } else if (state == "#") {
    control.html("pdstatus", "Select State");
  } else if (city == "#") {
    control.html("pdstatus", "Select City");
  } else if (pin == "#") {
    control.html("pdstatus", "Select Zipcode");
  } else if (acn == "") {
    control.html("pdstatus", "Enter Account Number");
  } else if (ach == "") {
    control.html("pdstatus", "Enter Account Holder Name");
  } else if (bank == "") {
    control.html("pdstatus", "Enter Bank Name");
  } else if (branch == "") {
    control.html("pdstatus", "Enter Branch Name");
  }
  control.html("pdstatus", "verified");

  $.ajax({
    url: "assets/backend/profile/update.php",
    type: "post",
    data:
      "fullname=" +
      fullname +
      "&type=" +
      type +
      "&bname=" +
      bname +
      "&cntry=" +
      cntry +
      "&state=" +
      state +
      "&city=" +
      city +
      "&pin=" +
      pin +
      "&acn=" +
      acn +
      "&ach=" +
      ach +
      "&bank=" +
      bank +
      "&branch=" +
      branch +
      "&email=" +
      email +
      "&address=" +
      address +
      "&mobile=" +
      mobile,
    success: function (html) {
      if (html == 1) {
        control.html("pdstatus", "Done");

        swal("Update Successfully", "", "success").then((e) => {
          control.redirect("index.php");
        });
      } else {
        control.popup("something went wrong", W);
      }
    },
  });
}
function get_subcatfa() {
  let pcat = control.getInput("addcatname");
  if (pcat == "#") {
    alert("select category first");
  } else {
    $.ajax({
      url: "assets/backend/subcat/get_subcat.php",
      type: "post",
      data: "pcat=" + pcat,
      success: function (html) {
        control.html("addscatname", html);
      },
    });
  }
}
function get_filterfa() {
  let pcat = control.getInput("addscatname");
  if (pcat == "#") {
    alert("select sub category first");
  } else {
    $.ajax({
      url: "assets/backend/filter/get_subfilter.php",
      type: "post",
      data: "pcat=" + pcat,
      success: function (html) {
        control.html("filters", html);
      },
    });
  }
}
function convertNumber(x) {
  if (typeof x == "number" && !isNaN(x)) {
    if (Number.isInteger(x)) {
      return parseInt(x);
    } else {
      return parseFloat(x);
    }
  }
}
function putacp() {
  control.putValue("fa", control.getInput("pprice"));
}
function checkprice() {
  var price = convertNumber(document.getElementById("pprice").valueAsNumber);
  var sellprice = convertNumber(
    document.getElementById("psprice").valueAsNumber
  );
  if (sellprice > price) {
    swal("Sellprice can not be greater than actual price", "", W).then((e) => {
      document.getElementById("psprice").value = "";
      control.putValue("fa", control.getInput("pprice"));
    });
  } else {
    control.putValue("fa", sellprice);
  }
}
function t_ax() {
  var tax = convertNumber(document.getElementById("tax").valueAsNumber);
  var ap = convertNumber(document.getElementById("fa").valueAsNumber);
  var sellprice = convertNumber(
    document.getElementById("psprice").valueAsNumber
  );
  var pcntOfsp = (sellprice * tax) / 100;
  var finalAmmount = parseFloat((ap + pcntOfsp).toFixed(2));
  if (ap != "") {
    control.putValue("fa", finalAmmount);
  } else {
    var sellprice = convertNumber(
      document.getElementById("psprice").valueAsNumber
    );
    control.putValue("fa", sellprice);
  }
}
function add_product() {
  let img1 = document.getElementById("uploadimage1");
  let img2 = document.getElementById("uploadimage2");
  let img3 = document.getElementById("uploadimage3");
  let img4 = document.getElementById("uploadimage4");
  let category, scategory, name, quantity, price, sellprice, d;
  category = control.getInput("addcatname");
  scategory = control.getInput("addscatname");
  name = control.getInput("pname");
  quantity = control.getInput("pqty");
  price = control.getInput("pprice");
  sellprice = control.getInput("psprice");

  d = control.getInput("dsc");
  if (img1.files.length == 0) {
    control.html("pdstatus", "Select First Image");
  } else if (img2.files.length == 0) {
    control.html("pdstatus", "Select Second Image");
  } else if (img3.files.length == 0) {
    control.html("pdstatus", "Select Third Image");
  } else if (img4.files.length == 0) {
    control.html("pdstatus", "Select Fourth Image");
  } else if (category == "#") {
    control.html("pdstatus", "Select Category");
  } else if (scategory == "#") {
    control.html("pdstatus", "Select Subcategory");
  } else if (name == "") {
    control.html("pdstatus", "Enter Name");
  } else if (quantity == "") {
    control.html("pdstatus", "Enter Quantity");
  } else if (price == "") {
    control.html("pdstatus", "Enter Price");
  } else if (sellprice == "") {
    control.html("pdstatus", "Enter Selling Price");
  } else if (d == "") {
    control.html("pdstatus", "Enter description");
  } else {
    control.html("pdstatus", "Adding First Image...");
    control.disable("pbtn");
    var fd = new FormData();
    var files = $("#uploadimage1")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/product/addmainimage.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html == "Format of First Image Is Not supported") {
          control.html("pdstatus", html);
          control.enable("pbtn");
        } else {
          add_secondimage(html);
        }
      },
    });
  }
}

function add_secondimage(img1) {
  let img2 = document.getElementById("uploadimage2");
  control.html("pdstatus", "Adding Images...");
  var fd = new FormData();
  var files = $("#uploadimage2")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/product/addsimage.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of Second Image Is Not supported") {
        control.html("pdstatus", html);
        control.enable("pbtn");
      } else {
        add_thirdimage(img1, html);
      }
    },
  });
}

function add_thirdimage(img1, img2) {
  let img3 = document.getElementById("uploadimage3");
  control.html("pdstatus", "Adding Images...");
  var fd = new FormData();
  var files = $("#uploadimage3")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/product/addtimage.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of Third Image Is Not supported") {
        control.html("pdstatus", html);
        control.enable("pbtn");
      } else {
        add_fourthimage(img1, img2, html);
      }
    },
  });
}

function add_fourthimage(img1, img2, img3) {
  let img4 = document.getElementById("uploadimage4");
  control.html("pdstatus", "Adding Images...");
  var fd = new FormData();
  var files = $("#uploadimage4")[0].files;
  fd.append("file", files[0]);
  $.ajax({
    url: "assets/backend/product/addfimage.php",
    type: "post",
    data: fd,
    contentType: false,
    processData: false,
    success: function (html) {
      if (html == "Format of Fourth Image Is Not supported") {
        control.html("pdstatus", html);
        control.enable("pbtn");
      } else {
        add_p_detailes(img1, img2, img3, html);
      }
    },
  });
}

function add_p_detailes(img1 = 0, img2 = 0, img3 = 0, img4 = 0) {
  control.html("pdstatus", "Adding Detailes...");
  let category,
    scategory,
    name,
    quantity,
    price,
    sellprice,
    d,
    fa,
    sku;
  category = control.getInput("addcatname");
  scategory = control.getInput("addscatname");
  name = control.getInput("pname");
  quantity = control.getInput("pqty");
  price = control.getInput("pprice");
  sellprice = control.getInput("psprice");
  fa = control.getInput("fa");
  sku = control.getInput("sku");
  d = control.getInput("dsc");
  $.ajax({
    url: "assets/backend/product/addproduct.php",
    type: "post",
    data:
      "category=" +
      category +
      "&subcat=" +
      scategory +
      "&name=" +
      name +
      "&quantity=" +
      quantity +
      "&price=" +
      price +
      "&sellprice=" +
      sellprice +
      "&d=" +
      d +
      "&img1=" +
      img1 +
      "&img2=" +
      img2 +
      "&img3=" +
      img3 +
      "&img4=" +
      img4 +
      "&fa=" +
      fa +
      "&sku=" +
      sku,
    success: function (htl) {
      let html = JSON.parse(htl);
      if (html.code == 3) {
        control.html("pdstatus", "Product exist with same name");
        control.enable("pbtn");
      } else {
        if (html.code == 1) {
          control.html("pdstatus", "Detailes added successfully");
          get_all_filters(html.id);
          setTimeout(() => {
            control.html("pdstatus", "");
            control.reload();
          }, 1000);
        } else {
          control.html("pdstatus", "something went wrong");
          control.enable("pbtn");
        }
      }
    },
  });
}
function get_all_filters(pid) {
  control.html("pdstatus", "Adding filters..");
  var filters = document.getElementsByName("productFiltersName");
  var n = filters.length;
  var filterArr = [];
  for (let i = 0; i < n; i++) {
    filterArr[i] = filters[i].value;
  }
  filterArr[filterArr.length] = pid;
  $.ajax({
    url: "assets/backend/filter/add_product_filter.php",
    type: "POST",
    data: "json=" + JSON.stringify(filterArr),
    dataType: "json",
    async: false,
    success: function (msg) {
      console.log(msg);
    },
  });
  get_all_sub_filters(pid);
}
function get_all_sub_filters(pid) {
  control.html("pdstatus", "Adding sub-filters..");
  var filters = document.getElementsByName("productSubFiltersName");
  var subFilterArr = [];
  var k = 0;
  var n = filters.length;
  for (let i = 0; i < n; i++) {
    if (filters[i].checked) {
      subFilterArr[k] = filters[i].value;
      k++;
    }
  }
  subFilterArr[subFilterArr.length] = pid;
  $.ajax({
    url: "assets/backend/filter/add_product_sub_filter.php",
    type: "POST",
    data: "json=" + JSON.stringify(subFilterArr),
    dataType: "json",
    async: false,
    success: function (msg) {
      console.log(msg);
    },
  });
  control.html("pdstatus", "Product added successfuly");
}
function edit_product(e) {
  updateimage1(e);
}

function updateimage1(id) {
  let img1 = document.getElementById("uploadimage1");
  if (img1.files.length != 0) {
    var fd = new FormData();
    var files = $("#uploadimage1")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/product/updatemainimage.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html == "Format of First Image Is Not supported") {
          control.html("pdstatus", html);
        } else {
          update_secondimage(html, id);
        }
      },
    });
  } else {
    let html = "";
    update_secondimage(html, id);
  }
}

function update_secondimage(img1, id) {
  let img2 = document.getElementById("uploadimage2");
  if (img2.files.length != 0) {
    control.html("pdstatus", "Adding Images...");
    var fd = new FormData();
    var files = $("#uploadimage2")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/product/updatesimage.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html == "Format of Second Image Is Not supported") {
          control.html("pdstatus", html);
        } else {
          update_thirdimage(img1, html, id);
        }
      },
    });
  } else {
    let html = "";
    update_thirdimage(img1, html, id);
  }
}

function update_thirdimage(img1, img2, id) {
  let img3 = document.getElementById("uploadimage3");
  if (img3.files.length != 0) {
    control.html("pdstatus", "Adding Images...");
    var fd = new FormData();
    var files = $("#uploadimage3")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/product/updatetimage.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html == "Format of Third Image Is Not supported") {
          control.html("pdstatus", html);
        } else {
          update_fourthimage(img1, img2, html, id);
        }
      },
    });
  } else {
    let html = "";
    update_fourthimage(img1, img2, html, id);
  }
}

function update_fourthimage(img1, img2, img3, id) {
  let img4 = document.getElementById("uploadimage4");
  if (img4.files.length != 0) {
    control.html("pdstatus", "Adding Images...");
    var fd = new FormData();
    var files = $("#uploadimage4")[0].files;
    fd.append("file", files[0]);
    $.ajax({
      url: "assets/backend/product/updatefimage.php",
      type: "post",
      data: fd,
      contentType: false,
      processData: false,
      success: function (html) {
        if (html == "Format of Fourth Image Is Not supported") {
          control.html("pdstatus", html);
        } else {
          update_p_detailes(img1, img2, img3, html, id);
        }
      },
    });
  } else {
    let html = "";
    update_p_detailes(img1, img2, img3, html, id);
  }
}

function update_p_detailes(img1, img2, img3, img4, id) {
  control.html("pdstatus", "Adding Detailes...");
  let category,
    scategory,
    name,
    quantity,
    price,
    sellprice,
    d,
    fa;
  category = control.getInput("addcatname");
  scategory = control.getInput("addscatname");
  name = control.getInput("pname");
  quantity = control.getInput("pqty");
  price = control.getInput("pprice");
  sellprice = control.getInput("psprice");
  fa = control.getInput("fa");
  d = control.getInput("dsc");
  $.ajax({
    url: "assets/backend/product/updateproduct.php",
    type: "post",
    data:
      "category=" +
      category +
      "&subcat=" +
      scategory +
      "&name=" +
      name +
      "&quantity=" +
      quantity +
      "&price=" +
      price +
      "&sellprice=" +
      sellprice +
      "&d=" +
      d +
      "&img1=" +
      img1 +
      "&img2=" +
      img2 +
      "&img3=" +
      img3 +
      "&img4=" +
      img4 +
      "&id=" +
      id +
      "&fa=" +
      fa,
    success: function (htl) {
      let html = JSON.parse(htl);
      if (html.code == 3) {
        control.html("pdstatus", "Product exist with same name");
      } else {
        if (html.code == 1) {
          control.html("pdstatus", "Product updated successfully");
          get_all_filters_update(html.id);
          setTimeout(() => {
            control.html("pdstatus", "");
            control.reload();
          }, 1000);
        } else {
          control.html("pdstatus", "Something went wrong");
        }
      }
    },
  });
}
function get_all_filters_update(pid) {
  control.html("pdstatus", "Adding filters..");
  var filters = document.getElementsByName("productFiltersName");
  var n = filters.length;
  var filterArr = [];
  for (let i = 0; i < n; i++) {
    filterArr[i] = filters[i].value;
  }
  filterArr[filterArr.length] = pid;
  $.ajax({
    url: "assets/backend/filter/add_product_filter_update.php",
    type: "POST",
    data: "json=" + JSON.stringify(filterArr),
    dataType: "json",
    async: false,
    success: function (msg) {
      console.log(msg);
    },
  });
  get_all_sub_filters_update(pid);
}
function delete_product(i) {
  $.ajax({
    url: "assets/backend/product/product_delete.php",
    type: "post",
    data: "id=" + i,
    success: function (html) {
      console.log(html);
      updateproductlist();
    },
  });
}
function delete_product_delivered(i) {
  $.ajax({
    url: "assets/backend/history/product_delivered_delete.php",
    type: "post",
    data: "id=" + i,
    success: function (html) {
      console.log(html);
      updateproductlist();
    },
  });
}
function get_all_sub_filters_update(pid) {
  control.html("pdstatus", "Adding sub-filters..");
  var filters = document.getElementsByName("productSubFiltersName");
  var subFilterArr = [];
  var k = 0;
  var n = filters.length;
  for (let i = 0; i < n; i++) {
    if (filters[i].checked) {
      subFilterArr[k] = filters[i].value;
      k++;
    }
  }
  subFilterArr[subFilterArr.length] = pid;
  $.ajax({
    url: "assets/backend/filter/add_product_sub_filter_update.php",
    type: "POST",
    data: "json=" + JSON.stringify(subFilterArr),
    dataType: "json",
    async: false,
    success: function (msg) {
      console.log(msg);
    },
  });
  control.html("pdstatus", "Product updated successfully");
}
function product_acdc(i, s) {
  $.ajax({
    url: "assets/backend/product/pt_acdc.php",
    type: "post",
    data: "id=" + i + "&status=" + s,
    success: function (html) {
      control.reload();
    },
  });
}
function withdraw() {
  let m = control.getInput("seller_full_name");
  console.log(m);
  $.ajax({
    url: "assets/backend/witdraw/witdraw.php",
    type: "post",
    data: "oid=" + m,
    success: function (html) {
      let m = JSON.parse(html);
      swal(m.msg).then((e) => {
        control.reload();
      });
    },
  });
}
function addpromo() {
  let scat = control.getInput("addscatname");
  let code = control.getInput("promocode");
  let disc = control.getInput("disc");
  let minbal = control.getInput("minbal");
  $.ajax({
    url: "assets/backend/promo/add.php",
    type: "post",
    data:
      "scat=" + scat + "&code=" + code + "&disc=" + disc + "&minbal=" + minbal,
    success: function (html) {
      let m = JSON.parse(html);
      swal(m.msg).then((e) => {
        control.reload();
      });
    },
  });
}
function delpromo(id){
  $.ajax({
    url: "assets/backend/promo/del.php",
    type: "post",
    data: "oid=" + id,
    success: function (html) {
      let m = JSON.parse(html);
      swal(m.msg).then((e) => {
        control.reload();
      });
    },
  });
}
function add_dv_charge() {
  let first = "0";
  let first2 = "0";
  if (first != "") {
    $.ajax({
      url: "assets/backend/order/add_dc1.php",
      type: "post",
      data: "first=" + first + "&first2=" + first2,
      success: function (html) {
        control.reload();
      },
    });
  } else {
    alert("Enter Something");
  }
}
function del_dv_charge(i) {
$.ajax({
      url: "assets/backend/order/del_dc1.php",
      type: "post",
      data: "id=" + i,
      success: function (html) {
        control.reload();
      },
    });
} 
function update_dv_charge() {
  let first = control.getintInput("sfield");
  let first2 = control.getintInput("sfield2");
  if (first != "") {
    $.ajax({
      url: "assets/backend/order/update_dc1.php",
      type: "post",
      data: "first=" + first + "&first2=" + first2,
      success: function (html) {
        control.reload();
      },
    });
  } else {
    alert("Enter Something");
  }
}