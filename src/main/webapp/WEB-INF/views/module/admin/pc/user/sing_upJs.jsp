<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script type="text/javascript" src="${jsPath}/lib/jquery.validate.min.js"></script>
<script type="text/javascript" src="${jsPath}/common.js?v=${updateTimeCss}"></script>

<script>
    $('input[name=tel]').on('keyup', function(){
        var tel = $(this).val();
        tel = tel.replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-");
        $(this).val(tel);
    });

    $('#btnSingUp').click(function(){

        if ($('#name').val().trim() == '') {
            alert('이름을 입력하여 주세요.');
            return;
        } else if($('#id').val().trim() == '') {
            alert('아이디를 입력하여 주세요.');
            return;
        } else if($('#id').val().trim().length < 10) {
            alert('아이디는 10자리 이상 입력하여 주세요.');
            return;
        } else if ($('#password1').val().trim() == '' || $('#password2').val().trim() == '') {
            alert('비밀번호를 입력하여 주세요.');
            return;
        }  else if($('#password1').val().trim().length < 10) {
            alert('비밀번호 10자리 이상 입력하여 주세요.');
            return;
        } else if ($('#password1').val().trim() != $('#password2').val().trim()) {
            alert('비밀번호가 일치하지 않습니다.');
            return;
        } else if ($('#tel').val().trim() == '') {
            alert('전화번호를 입력하여 주세요.');
            return;
        } else if ($('[name=chk1]:checked').val() != 'Y') {
            alert('개인정보처리방침을 동의하여 주세요.');
            return;
        } else if ($('[name=chk2]:checked').val() != 'Y') {
            alert('이용약관을 동의하여 주세요.');
            return;
        }

        $("#form").submit();
    });
</script>

