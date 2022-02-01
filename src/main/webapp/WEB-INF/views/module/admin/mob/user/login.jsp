<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/mob/include.jsp"%>
<!-- App Capsule -->
<div id="appCapsule" class="pt-0">
    <div class="login-form mt-1">
        <div class="section">
            <img src="/resources/admin/mob/img/sample/photo/vector4.png" alt="image" class="form-image">
        </div>
        <div class="section mt-1">
            <h1>관리자(${active})</h1>
            <%--<h4>Fill the form to log in</h4>--%>
        </div>
        <div class="section mt-1 mb-5">
            <form id="form" class="m-t" role="form" action="/admin/user/loginAction" method="post">
                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <input type="text" class="form-control" id="id" name="id" autocomplete=off placeholder="아이디를 입력하여 주세요.">
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                    </div>
                </div>
                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <input type="password" class="form-control" id="password" name="password"  autocomplete="off" placeholder="비밀번호를 입력하여 주세요.">
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                    </div>
                </div>
                <div class="form-links mt-2">
                    <div>
                        <a href="page-register.html">Register Now</a>
                    </div>
                    <div><a href="page-forgot-password.html" class="text-muted">Forgot Password?</a></div>
                </div>
                <div class="form-button-group">
                    <button type="button" id="btnLogin" class="btn btn-primary btn-block btn-lg">Log in</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- * App Capsule -->
<script type="text/javascript" src="/resources/admin/pc/js/lib/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/admin/pc/js/common.js?v=${updateTimeCss}"></script>
<script type="text/javascript">
    $(window).load(function() {
        if('null' != '<%=session.getAttribute("msg")%>'){
            alert('<%=session.getAttribute("msg")%>');
        }
    });

    $("#btnLogin").click(function(e){
        e.preventDefault();

        if($('input[name=id_save]:checked').val() == 'Y'){
            document.cookie = "admin_id_save="+$('#id').val();
        }

        $("#form").submit();
    });

    $("#form").validate({
        onclick: false,
        onkeyup: false,
        onfocusout: false,
        rules: {
            loginId: {
                required: true
            },
            password: {
                required: true
            }
        },
        messages: {
            loginId: {
                required: '아이디를 입력해주세요.'
            },
            password: {
                required: '비밀번호를 입력해주세요.'
            }
        },
        submitHandler: function (frm) {
            frm.submit();
        },
        errorPlacement: function (error, element) {
        },
        showErrors: function (errorMap, errorList) {
            if (this.numberOfInvalids() && errorList.length > 0) {
                errorList[0].element.focus();
                alert(errorList[0].message);
            }
        }
    });

    function jsEnter(keyCode) {
        if (keyCode == 13) {
            $("#btnLogin").click();
        }
    }

    $(document).ready(function() {
        var id = getCookie("admin_id_save");
        if(id != null){
            $('#id').val(id);
            $('#id_save').prop('checked', true);
        }
    });

    var getCookie = function(name) {
        var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        return value? value[2] : null;
    };
</script>