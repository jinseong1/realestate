<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/include.jsp"%>
<main id="main">
    <div class="main_inner">

        <!-- ///컨텐츠-->
        <div class="contents">

            <!-- 공통 검색폼 -->
            <div class="search_wrap basic_table_wrap">

                <div class="common_title_wrap">
                    <div class="title_wrap">
                        <h2>내 정보 수정</h2>

                        <img src="" onerror=""/>

                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" name="temp_id" value="${data.id}">
                        <table>
                            <colgroup>
                                <col style="width: 180px">
                                <col style="width: calc(100% - 180px)">
                            </colgroup>
                            <tr>
                                <td class="infotd">이름*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="name" name="name" value="${data.name}" disabled>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">아이디*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="id" name="id" value="${data.id}" disabled>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">비밀번호</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="password" id="pwd" name="pwd" value="" placeholder="영문, 숫자 포함 8-12자리 입력" autocomplete="off">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">비밀번호 확인</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="password" id="pwd_temp" name="pwd_temp" value="" placeholder="영문, 숫자 포함 8-12자리 입력" autocomplete="off">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">연락처*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="cell" name="cell" value="${data.cell}">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">이메일*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="email" name="email" value="${data.email}">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">1:1문의 상담 지정</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="role" name="role" value="${inquiry_person_in_charge}" disabled>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <%--
                            <tr>
                                <td class="infotd">최근변경일자</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="mod_date" name="mod_date" value="" disabled>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            --%>
                        </table>
                    </form>
                </div>
                <div class="btn_submit">
                    <button type="submit" onclick="save();">수정</button>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    $(function(){
        $('#loader').hide();
    });

    /**
     * 등록 및 수정
     * @returns {boolean}
     */
    function save(){

        if(
            ($.trim($('#pwd').val()) != '' && $.trim($('#pwd_temp').val()) == '')
            ||
            ($.trim($('#pwd').val()) == '' && $.trim($('#pwd_temp').val()) != '')
        )
        {
            alert('비밀번호를 입력하여 주세요.');
            $('#pwd').focus();
            return false;
        }
        if($.trim($('#pwd').val()) != ''){
            const regex1 = /^[a-zA-Z]*$/;
            const regex2 = /^[0-9]*$/;

            var temp_pwd = $('#pwd').val();

            if(regex1.test(temp_pwd) || regex2.test(temp_pwd) || !(temp_pwd.length >= 8 && temp_pwd.length <= 12)){
                alert('영문, 숫자 포함 8~12자리 입력하여 주세요.');
                return false;
            }
        }
        if(($.trim($('#pwd').val()) != '' || $.trim($('#pwd_temp').val()) != '') && ($.trim($('#pwd').val()) != $.trim($('#pwd_temp').val()))){
            alert('비밀번호가 일치하지 않습니다.');
            $('#pwd').focus();
            return false;
        }
        if($.trim($('#cell').val()) == ''){
            alert('연락처를 입력하여 주세요.');
            $('#cell').focus();
            return false;
        }
        if($.trim($('#email').val()) == ''){
            alert('이메일을 입력하여 주세요.');
            $('#email').focus();
            return false;
        }

        if(!confirm(save_msg)){
            return false;
        }

        $.ajax({
            url:'/admin/admin/user_change_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:$('#regForm').serialize(), //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code = 'S'){
                    alert('회원 수정 완료되었습니다');
                } else {
                    alert('회원 수정이 정상적으로 이뤄지지 않았습니다. 관리자에게 문의 바랍니다.');
                }
            },
            error: function(err) {
                alert_msg(err);
            }
        });
    }
</script>