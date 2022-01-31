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
                        <h2>관리자
                            <c:choose>
                                <c:when test="${data.idx != null and data.idx != ''}">
                                    수정
                                </c:when>
                                <c:otherwise>
                                    등록
                                </c:otherwise>
                            </c:choose>
                        </h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="idx" name="idx" value="${data.idx}">
                        <table>
                            <colgroup>
                                <col style="width: 180px">
                                <col style="width: calc(100% - 360px)">
                            </colgroup>
                            <tr>
                                <td class="infotd">이름*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="name" name="name" value="${data.name}" autocomplete='off'>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">아이디*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="id" name="id" value="${data.id}" autocomplete='off'>
                                        </div>
                                        <div class="button_90 flex ml10">
                                            <button type="button" class="button_gray" onclick="admin_id_check();">중복확인</button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">비밀번호*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="password" id="pwd" name="pwd" value="" autocomplete='off'>
                                            <span class="text">영문, 숫자포함 8~12자리 입력</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">비밀번호 확인*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="password" id="pwd_temp" name="pwd_temp" value="" autocomplete='off'>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">연락처*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="cell" name="cell" value="${data.cell}" autocomplete='off'>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">이메일*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="input_wrap w400">
                                            <input type="text" id="email" name="email" value="${data.email}" autocomplete='off'>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <c:if test="${data.idx != null}">
                                <c:forEach var="list" items="${category_name}" varStatus="i">
                                    <c:if test="${i.first}">
                                    <tr>
                                        <td rowspan="${fn:length(category_name)}" class="infotd">1:1 문의 상담 지정</td>
                                        <td>
                                            <div class="td_inner">
                                                <div class="input_wrap w933">
                                                    ${list}
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </c:if>
                                    <c:if test="${!i.first}">
                                    <tr>
                                        <td>
                                            <div class="td_inner">
                                                <div class="input_wrap w933">
                                                        ${list}
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </table>

                        <div><h2>관리자 권한 부여</h2></div>
                        <div id="listArea">
                            <div class="grid_wrap rental_table">
                                <table>
                                    <colgroup>
                                        <col width="10%;">
                                        <col width="80%;">
                                        <col width="10%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="arrange">메뉴레벨</th>
                                        <th class="arrange">메뉴명</th>
                                        <th class="arrange">권한설정</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <!--리스트 반복 -->
                                    <c:forEach var="list" items="${menu}" varStatus="i">
                                        <tr>
                                            <c:if test="${list.menuLevel == 1}">
                                                <th>
                                                    <c:if test="${list.menuName != '관리자' and list.menuName != '주간현대문학'}">
                                                        <img src="/resources/admin/images/layout/plus.png">
                                                    </c:if>
                                                </th>
                                            </c:if>
                                            <c:if test="${list.menuLevel == 2}">
                                                <th></th>
                                            </c:if>
                                            <c:if test="${list.menuLevel == 1}">
                                                <th style="text-align: left" class="1">${list.menuName}</th>
                                            </c:if>
                                            <c:if test="${list.menuLevel == 2}">
                                                <th style="text-align: left; padding-left: 10px;" class="2">${list.menuName}</th>
                                            </c:if>
                                            <c:if test="${list.use_yn == 'Y'}">
                                                <th><input type="checkbox" id="${list.roleDetailCode}" name="${list.roleDetailCode}" value="Y" checked></th>
                                            </c:if>
                                            <c:if test="${list.use_yn == 'N'}">
                                                <th><input type="checkbox" id="${list.roleDetailCode}" name="${list.roleDetailCode}" value="Y"></th>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                    <!-- 리스트 반복-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="btn_submit" style="float: left;">
                    <button type="submit" onclick="list();">목록</button>
                </div>
                <div class="btn_submit">
                    <button type="submit" onclick="save();">
                        <c:choose>
                            <c:when test="${data.idx != null and data.idx != ''}">
                                수정
                            </c:when>
                            <c:otherwise>
                                등록
                            </c:otherwise>
                        </c:choose>
                    </button>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    var id_flag = false;
    var change_flag = false;
    var idx = '${data.idx}';

    $(function(){
        $('#loader').hide();
        if($(".rental_table th").is(".1")){
            $(".rental_table th.1").parents("tr").addClass("level1");
        };
        if($(".rental_table th").is(".2")){
            $(".rental_table th.2").parents("tr").addClass("level2");
        };
        $(".rental_table .level2").hide();
        $(".rental_table .level1").find("th:first-child").on("click",function(){
            var $level = $(this).parents(".level1").nextUntil(".level1");
            if($level.css("display")=="none"){
                $level.show();
            }else{
                $level.hide();
            }
        });
        $(".rental_table .level1").find("input").on("click",function(){
            var $level = $(this).parents(".level1").nextUntil(".level1");
            if($(this).is(":checked")){
                $level.show().find("input").prop("checked",true);
            }else{
                $level.hide().find("input").prop("checked",false);
            }
        });
    });

    /**
     * 리스트 이동
     */
    function list(){
        location.href = '/admin/admin/admin_list_move?page=${page}';
    }

    /**
     * 중복 아이디 체크
     **/
    function admin_id_check(){
        var id = trim($('#id').val());
        if(id == ''){
            alert('아이디를 입력 후 중복확인을 눌러주세요.');
            return false;
        }
        var ajax_data = {};
        ajax_data.id = id;
        ajax_data.idx = idx;

        $.ajax({
            url:'/admin/admin/admin_id_check', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                change_flag = true;
                if(data.code == 'S'){
                    alert('해당 아이디는 사용이 가능합니다.');
                    id_flag = true;
                } else {
                    alert('아이디가 중복됩니다.');
                }
            },
            error: function(err) {
                alert_msg(err);
            }
        });
    }

    /**
     * 등록 및 수정
     * @returns {boolean}
     */
    function save(){

        var subject = $('input[type=checkbox]');
        var flag = false;
        $(subject).each(function(index, item){
            var menu = $(item).attr('name');
            if(
                ((menu == 'allMember') ||
                (menu == 'outMember') ||
                (menu == 'dormantMember') ||
                (menu == 'pay') ||
                (menu == 'regularPrice') ||
                (menu == 'cash_receipt') ||
                (menu == 'freebies') ||
                (menu == 'monthly') ||
                (menu == 'published_volume') ||
                (menu == 'polar_books') ||
                (menu == 'main_management') ||
                (menu == 'introduction') ||
                (menu == 'popup') ||
                (menu == 'addressBook') ||
                (menu == 'writerOfOrigin') ||
                (menu == 'winnerManagement') ||
                (menu == 'sms') ||
                (menu == 'inquiry') ||
                (menu == 'notice') ||
                (menu == 'faq') ||
                (menu == 'shop_order_statistics') ||
                (menu == 'shop_order_birth') ||
                (menu == 'shop_order_reason') ||
                (menu == 'shop_order_month') ||
                (menu == 'admin') ||
                (menu == 'week')) &&
                $(item).is(':checked')
              ){
                flag = true;
            }
        });
        if(!flag){
            alert('메뉴를 선택하여 주세요.');
            return false;
        }

        if($.trim($('#name').val()) == ''){
            alert('이름을 입력하여주세요.');
            $('#name').focus();
            return false;
        };
        if($.trim($('#id').val()) == ''){
            alert('아이디를 입력하여주세요.');
            $('#id').focus();
            return false;
        };

        <c:if test="${data.idx == null}">
        if(!id_flag){
            alert('아이디 중복체크를 해주세요.');
            return false;
        }
        </c:if>
        <c:if test="${data.idx != null}">
        if(change_flag && !id_flag){
            alert('아이디 중복체크를 해주세요.');
            return false;
        }
        </c:if>
        <c:if test="${data.idx == null}">
        if($.trim($('#pwd').val()) == ''){
            alert('비밀번호를 입력하여 주세요.');
            $('#pwd').focus();
            return false;
        }
        if($.trim($('#pwd_temp').val()) == ''){
            alert('비밀번호를 확인하여 주세요.');
            $('#pwd_temp').focus();
            return false;
        }
        </c:if>
        if($.trim($('#pwd').val()) != ''){
            const regex1 = /^[a-zA-Z]*$/;
            const regex2 = /^[0-9]*$/;

            var temp_pwd = $('#pwd').val();

            if(regex1.test(temp_pwd) || regex2.test(temp_pwd) || !(temp_pwd.length >= 8 && temp_pwd.length <= 12)){
                alert('비밀번호 영문, 숫자 포함 8~12자리 입력하여 주세요.');
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
            url:'/admin/admin/admin_insert', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:$('#regForm').serialize(), //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code = 'S'){
                    <c:choose>
                        <c:when test="${data.idx != null and data.idx != ''}">
                            alert('회원 수정 완료되었습니다');
                        </c:when>
                        <c:otherwise>
                            alert('회원 등록 완료되었습니다');
                        </c:otherwise>
                    </c:choose>
                    list();
                } else {
                    <c:choose>
                        <c:when test="${data.idx != null and data.idx != ''}">
                            alert('회원 수정이 정상적으로 이뤄지지 않았습니다. 관리자에게 문의 바랍니다.');
                        </c:when>
                        <c:otherwise>
                            alert('회원 등록이 정상적으로 이뤄지지 않았습니다. 관리자에게 문의 바랍니다.');
                        </c:otherwise>
                    </c:choose>
                }
            },
            error: function(err) {
                alert_msg(err);
            }
        });
    }
</script>


