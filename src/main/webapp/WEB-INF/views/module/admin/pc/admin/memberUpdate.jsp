<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<main id="main">
    <div class="main_inner">

        <!-- ///컨텐츠-->
        <div class="contents">

            <!-- 공통 검색폼 -->
            <div class="search_wrap basic_table_wrap">

                <div class="common_title_wrap">
                    <div class="title_wrap">
                        <h2>고객 수정</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="idx" name="idx" value="${data.IDX}">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">성명*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="name" name="name" value="${data.NAME}">
                                    </div>
                                </td>
                                <td class="infotd">핸드폰번호*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="tel" name="tel" value="${data.TEL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">아이디*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="id" name="id" value="${data.ID}" readonly>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">비밀번호</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="pw" name="pw">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">레벨*</td>
                                <td colspan="3">
                                    <div class="option_list">
                                        <select class="hidden_option" name="level">
                                            <option value ="10">[10]무료회원</option>
                                            <option value ="20">[20]유료회원</option>
                                            <option value ="100">[100]슈펴관리자</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="btn_submit" style="float: left">
                            <button type="button" onclick="list();">목록</button>
                        </div>
                        <div class="btn_submit">
                            <button type="submit" onclick="save();">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    $(function(){

        $('input[name=tel]').on('keyup', function(){
            var tel = $(this).val();
            tel = tel.replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-");
            $(this).val(tel);
        });

        $('[name=level]').val('${data.LEVEL}');

    });

    /**
     * 리스트 이동
     */
    function list(){
        location.href = '/admin/admin/memberList?page=${page}';
    }

    /**
     * 저장
     */
    function save(){

        if($('#name').val().trim() == ''){
            alert('성명을 입력하여 주세요.');
            return false;
        }
        if($('#tel').val().trim() == ''){
            alert('전화번호를 입력하여 주세요.');
            return false;
        }

        if(!confirm(save_msg)){
            return false;
        }

        var ajax_data = $('#regForm').serialize();

        $.ajax({
            url:'/admin/admin/member_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(save_msg);
                    list();
                } else {
                    alert(save_error);
                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });
    }

</script>
