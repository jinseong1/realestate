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
                        <h2>관리자 리스트</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="searchForm" id="searchForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="page" name="page" value="">
                        <table>
                            <colgroup>
                                <col style="width: 180px">
                                <col style="width: calc(100% - 180px)">
                            </colgroup>
                            <tr>
                                <td class="infotd">검색어</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="option_list">
                                            <span class="option_txt">테스트</span>
                                            <select class="hidden_option" name="category">
                                                <option value ="all">전체</option>
                                                <option value ="name">이름</option>
                                                <option value ="cell">연락처</option>
                                                <option value ="id">아이디</option>
                                            </select>
                                        </div>
                                        <div class="input_wrap w283">
                                            <input type="text" class='text' id="category_text" name="category_text" value="">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="btn_submit">
                            <button type="button" onclick="windowReload();">초기화</button>
                            <button type="button" onclick="getList(1);">검색</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="result_wrap mt40">
                <div class="result_top_sort">
                    <div class="result_amount">
                        <ul>
                            <li>
                                <span class="search_result">전체 : 0개</span>
                                <span class="search_result_number"></span>
                            </li>
                        </ul>
                        <div class="right_btn button_90 flex_center">
                            <button class="download_btn mr10 temp_popup">1:1문의 담당자 지정</button>
                            <button class="download_btn" onclick="javascript:insertMove()">관리자 등록</button>
                        </div>
                    </div>
                </div>
                <div id="loader" style="display: none;">
                    <img src="${imagePath}/layout/loading.gif">
                </div>
                <div id="listArea">
                    <div class="grid_wrap rental_table">
                        <table>
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="check_area">
                                    <div class="check_wrap">
                                        <input type="checkbox" class="blind" id="checkAll">
                                        <label for="checkAll"></label>
                                    </div>
                                </th>
                                <th class="arrange">NO</th>
                                <th class="arrange">아이디</th>
                                <th class="arrange">이름</th>
                                <th class="arrange">연락처</th>
                                <th class="arrange">등록일</th>
                                <th class="arrange">최종 로그인</th>
                            </tr>
                            </thead>
                            <tbody id="ajax_data">
                            <!--리스트 반복 -->

                            <!-- 리스트 반복-->
                            </tbody>
                        </table>
                    </div>
                    <div class="left_btn button_90" style="margin-top: 10px;">
                        <button class="download_btn sendBtn" onclick="javascript:line_delete();">선택 삭제</button>
                    </div>
                    <div class="page_wrap">

                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- 1:1문의 담당자 지정 --%>
    <article class="admin_popup inquiry_popup">
        <div class="admin_popup_inner">
            <div class="tit">
                <h4>1:1 문의 담당자 지정</h4>
                <button type="button" class="close"></button>
            </div>
            <div class="content">
                <div class="grid_wrap">
                    <table style="height: 500px; overflow: auto">
                        <colgroup>
                            <col width="20%;">
                            <col width="10%;">
                            <col width="70%;">
                        </colgroup>
                        <thead>
                        <tr>
                            <th class="arrange">1:1 문의 카테고리</th>
                            <th class="arrange">담당자</th>
                            <th class="arrange">선택 담당자</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>정기구독 문의</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_1">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_1">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '정기구독 문의'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td>도서 문의/오탈자 신고</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_2">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_2">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '도서 문의/오탈자 신고'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td>도서 구입/파본 문의</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_3">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_3">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '도서 구입/파본 문의'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td>저작권 문의</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_4">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_4">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '저작권 문의'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td>원고 투고</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_5">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_5">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '원고 투고'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td>기타 문의</td>
                            <td>
                                <div class="option_list">
                                    <span class="option_txt">테스트</span>
                                    <select class="hidden_option" name="category_6">
                                        <option value="">선택</option>
                                        <c:forEach var="list" items="${all_admin}" varStatus="i">
                                            <option value="${list.name}">${list.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            <td id="category_6">
                                <c:forEach var="list" items="${inquiry_person_in_charge}" varStatus="i">
                                    <c:if test="${list.category_name == '기타 문의'}">
                                        ${list.person_in_charge_list}
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="btn_wrap">
                    <button type="submit" onclick="$('.close').click();">취소</button>
                    <button class="popup_save" onmousedown="show_loading();" type="submit">저장</button>
                </div>
            </div>
        </div>
    </article>

</main>
<script>
    $(function(){
        $('#loader').hide();

        window.onpageshow = function(event) {
            if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
                // Back Forward Cache로 브라우저가 로딩될 경우 혹은 브라우저 뒤로가기 했을 경우
                var renewURL = location.href; // 현재 url 가져오기
                renewURL = renewURL.replace(/\&page=([0-9]+)/ig,'').replace(/\?page=([0-9]+)/ig,''); // page 있을 시 제거
                if(localStorage.getItem("url") == renewURL){
                    $('.start .picker').val(localStorage.getItem("start_date"));
                    $('.end .picker').val(localStorage.getItem("end_date"));

                    if('${page}' != ''){
                        getList(${page});
                    } else {
                        getList(1);
                    }
                }
            } else {
                if('${page}' != ''){
                    getList(${page});
                } else {
                    getList(1);
                }
            }
        }

        // 1:1 문의 담당자 지정 버튼 클릭
        $('.temp_popup').click(function(){
            $('.inquiry_popup').show();
        });

        // 1:1 문의 담당자 변경 시
        $('select[name=category_1],select[name=category_2],select[name=category_3],select[name=category_4],select[name=category_5],select[name=category_6]').on('change', function(){
            var select_name = $(this).attr('name');
            var select_value = $(this).val();
            var text = $.trim($('#'+select_name).html());

            if(text.indexOf(select_value) == -1){
                text += select_value + '<a href="javascript:void(0);" onclick="remove_select(\''+select_value+'\', \''+select_name+'\');">X</a>';
                text = text.replace('-', '');
                $('#'+select_name).html(text);
            } else {
                alert('이미 선택된 담당자 입니다.');
            }
        });

        // 1:1 문의 담당자 저장
        $('.popup_save').click(function(){
            if(!confirm(save_msg)){
                $('#loader').hide();
                return false;
            }

            var ajax_data = {};
            ajax_data.category_1 = $.trim($('#category_1').html());
            ajax_data.category_2 = $.trim($('#category_2').html());
            ajax_data.category_3 = $.trim($('#category_3').html());
            ajax_data.category_4 = $.trim($('#category_4').html());
            ajax_data.category_5 = $.trim($('#category_5').html());
            ajax_data.category_6 = $.trim($('#category_6').html());

            $.ajax({
                url:'/admin/admin/inquiry_person_in_charge_insert', //request 보낼 서버의 경로
                type:'post', // 메소드(get, post, put 등)
                data:ajax_data, //보낼 데이터
                async:false,
                success: function(data) {
                    $('#loader').hide();
                    if(data.code == 'S'){
                        alert(save_finish);
                    } else {
                        alert(save_error);
                    }
                    $('.inquiry_popup').hide();
                },
                error: function(err) {
                    alert_msg(err);
                    $('.inquiry_popup').hide();
                    $('#loader').hide();
                }
            });
            $('#loader').hide();
        });

    });

    function remove_select(select_value, select_name){
        var temp_html = $('#'+select_name).html();
        $('#'+select_name).html(temp_html.replace(select_value + '<a href="javascript:void(0);" onclick="remove_select(\''+select_value+'\', \''+select_name+'\');">X</a>', ''));
    }

    function insertMove(){
        location.href = "/admin/admin/admin_insert_move";
    }
    function update(idx){
        location.href = "/admin/admin/admin_insert_move?idx="+idx+"&page="+$('#page').val();;
    }

    /**
     * 리스트 호출
     */
    function getList(page){
        history_change(page);

        $('#listArea').hide();
        show_loading();

        $("#page").val(page);
        var ajax_data =  $('#searchForm').serialize();

        $.ajax({
            url:'/admin/admin/get_admin_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {
                $('#listArea').show();

                var html = '';
                for(var i = 0 ; data.list.length > i ; i++){
                    html += '<tr>';
                    html += '    <td>';
                    html += '        <div class="check_wrap">';
                    html += '            <input type="checkbox" class="blind" id="check_'+data.list[i].idx+'" name="restock_ck" data-idx="'+data.list[i].idx+'">';
                    html += '            <label for="check_'+data.list[i].idx+'"></label>';
                    html += '        </div>';
                    html += '    <td>';
                    html += '        '+data.list[i].no;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].id;
                    html += '    </td>';
                    html += '    <td>';
                    html += '    <a href="javascript:void(0);" onclick="update('+data.list[i].idx+');">';
                    html += '        '+data.list[i].name;
                    html += '    </a>';
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].cell;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].first_becoming;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].last_login;
                    html += '    </td>';
                    html += '</tr>';
                }

                $('.search_result').html('전체 : ' + data.total_count + '개');
                $('#ajax_data').html(html);
                $('.page_wrap').html(data.pagingString);
                $('#loader').hide();
            },
            error: function(err) {
                alert_msg(err);
                $('#listArea').hide();
                $('#loader').hide();
            }
        });
    }

    /**
     * 선택 삭제
     */
    function line_delete(){

        var ajax_data = {};

        var data = $('input[name=restock_ck]:checked');

        if(data.length == 0){
            alert('선택된 값이 없습니다.\r\n하나 이상 체크해주세요.');
            return false;
        }
        if(!confirm(delete_msg)){
            return false;
        }

        var temp = '';
        for(var i = 0 ; data.length > i ; i++){
            temp += data[i].dataset.idx + '-';
        }

        ajax_data.idx = temp.substring(0 ,temp.length-1);

        $.ajax({
            url:'/admin/admin/admin_delete', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            success: function(data) {
                if(data == 'S'){
                    alert(delete_finish);
                    getList(1);
                } else {
                    alert(delete_error);
                }
            },
            error: function(err) {
                alert_msg(err);
            }
        });
    }
</script>


