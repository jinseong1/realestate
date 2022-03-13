<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script type="text/javascript" src="${jsPath}/lib/jquery.validate.min.js"></script>
<script type="text/javascript" src="${jsPath}/common.js?v=${updateTimeCss}"></script>

<script>

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
        sessionStorage.clear();

        let id = getCookie("admin_id_save");
        if(id != null){
            $('#id').val(id);
            $('#id_save').prop('checked', true);
        }
    });

    const getCookie = function(name) {
        const value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        return value? value[2] : null;
    };
</script>

