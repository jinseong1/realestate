<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/include.jsp"%>
<main id="main">
    <div class="main_inner">

        <!-- ///컨텐츠-->
        <div class="contents member_info">

            <!-- 공통 검색폼 -->
            <div class="search_wrap basic_table_wrap">

                <div class="common_title_wrap">
                    <div class="title_wrap">
                        <h2>방문등록</h2>
                    </div>
                </div>
                <ul class="member_info_nav">
                    <li <c:if test="${top_type == 'info'}">class="on"</c:if>><a href="/admin/customer/customer_update_move?idx=${idx}&page=${page}">회원정보</a></li>
                    <%--
                    <li <c:if test="${top_type == 'payList'}">class="on"</c:if>><a href="/admin/customer/customer_payList?idx=${idx}&page=${page}">계약내역</a></li>
                    --%>
                    <li <c:if test="${top_type == 'visit'}">class="on"</c:if>><a href="/admin/customer/customer_visit?idx=${idx}&page=${page}">방문등록</a></li>
                    <li <c:if test="${top_type == 'counseling'}">class="on"</c:if>><a href="/admin/customer/customer_counseling?idx=${idx}&page=${page}">상담등록/상담내역</a></li>
                </ul>
                <div class="form_wrap basic_table_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="customer_idx" name="customer_idx" value="${idx}">
                        <input type="hidden" id="page"         name="page"         value="">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr class="period">
                                <td class="infotd">방문시간</td>
                                <td class="exposure_sortation_period">
                                    <div class="td_inner">
                                        <div class="input_wrap start1 w120 mr10">
                                            <input type="text" class="picker" id="date" name="date" readonly value="">
                                        </div>
                                        <div class="option_list w80 mr10">
                                            <select class="hidden_option 0h" name="time_h">
                                            </select>
                                        </div>
                                        <div class="option_list w80 mr10">
                                            <select class="hidden_option 0m" name="time_m">
                                            </select>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <div class="btn_submit">
                        <button type="submit" onclick="save();">등록</button>
                    </div>
                    <div class="list">
                        <h3>방문내역</h3>
                        <table class="basic_table_list center member_marketing_table">
                            <colgroup>
                                <col width="5%">
                                <col width="80%">
                                <col width="15%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="infotd">NO</th>
                                <th class="infotd">방문일자</th>
                                <th class="infotd">관리</th>
                            </tr>
                            </thead>
                            <tbody id="ajax_data">

                            </tbody>
                        </table>
                    </div>
                    <div class="page_wrap">

                    </div>
                </div>
                <div class="btn_submit" style="float: left">
                    <button type="button" onclick="list();">목록</button>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    $(function(){
        setTime('0h', '0H');
        setTime('0m', '0m');
        getList(1);
    });

    /**
     * 리스트 이동
     */
    function list(){
        location.href = '/admin/customer/customerList?page=${page}';
    }

    /**
     * 리스트 호출
     */
    function getList(page){

        $('#page').val(page);
        var ajax_data =  $('#regForm').serialize();

        $.ajax({
            url:'/admin/customer/get_visit_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {

                var html = '';

                if(data.list.length == 0){
                    html += '<tr><td colspan="3">방문내역이 없습니다.</td></tr>';
                }

                for(var i = 0 ; data.list.length > i ; i++){
                    html += '<tr>';
                    html += '    <td>';
                    html += '        '+data.list[i].no;
                    html += '    </td>';
                    html += '    <td>'+data.list[i].DATE+'</td>';
                    html += '    <td>';
                    html += '        <div class="button_90">';
                    html += '            <button type="button" style="width: 100%;" class="button_gray" onclick="javascript:line_delete('+data.list[i].IDX+')">삭제</button>';
                    html += '        </div>';
                    html += '    </td>';
                    html += '</tr>';
                }
                $('.page_wrap').html(data.pagingString);
                $('#ajax_data').html(html);
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });
    }

    function line_delete(idx){

        if(!confirm(delete_msg)){
            return false;
        }

        var ajax_data = {};
        ajax_data.idx  = idx;

        $.ajax({
            url:'/admin/customer/member_visit_delete', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(delete_finish);
                    getList(1);
                } else {
                    alert(delete_error);
                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });


    }

    /**
     * 저장
     */
    function save(){

        if($('#date').val() == ''){
            alert('날짜를 선택 후 저장 버튼을 눌러주세요.');
            return false;
        }

        if(!confirm(save_msg)){
            return false;
        }

        var ajax_data = $('#regForm').serialize() + '&idx=${idx}';

        $.ajax({
            url:'/admin/customer/visit_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(save_finish);
                    getList(1);
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
