<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/include.jsp"%>
<main id="main">
    <div class="main_inner">
        <!-- 상담등록/상담내역 -->
        <!-- ///컨텐츠-->
        <div class="contents member_info">

            <!-- 공통 검색폼 -->
            <div class="search_wrap basic_table_wrap">

                <%-- 공통으로 사용 --%>
                <ul class="member_info_nav">
                    <li <c:if test="${top_type == 'info'}">class="on"</c:if>><a href="/admin/customer/customer_update_move?idx=${idx}&page=${page}">회원정보</a></li>
                    <%--
                    <li <c:if test="${top_type == 'payList'}">class="on"</c:if>><a href="/admin/customer/customer_payList?idx=${idx}&page=${page}">계약내역</a></li>
                    --%>
                    <li><a href="javascript:alert('개발 진행 중입니다.')">계약내역</a></li>
                    <li <c:if test="${top_type == 'counseling'}">class="on"</c:if>><a href="/admin/customer/customer_counseling?idx=${idx}&page=${page}">상담등록/상담내역</a></li>
                </ul>
                <%--  // --%>
                <div class="basic_table_wrap록 mt30">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="customer_idx" name="customer_idx" value="${idx}">
                        <input type="hidden" id="page" name="page" value="">
                        <h3>상담등록</h3>
                        <div class="member_cs_register">
                            <textarea id="content" name="content" maxlength="1500"></textarea>
                            <div class="button_90">
                                <button type="submit" class="button_gray" onclick="javascript:save();">등록</button>
                            </div>
                        </div>
                    </form>
                    <div class="list">
                        <h3>상담내역</h3>
                        <table class="basic_table_list center member_marketing_table">
                            <colgroup>
                                <col width="5%">
                                <col width="70%">
                                <col width="15%">
                                <col width="10%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="infotd">NO</th>
                                    <th class="infotd">내용</th>
                                    <th class="infotd">작성일</th>
                                    <th class="infotd">관리</th>
                                </tr>
                            </thead>
                            <tbody id="ajax_data">

                            </tbody>
                        </table>
                        <div class="btn_submit left_btn">
                            <a href="javascript:void(0);" onclick="list();" class="button_gray">목록</a>
                        </div>
                    </div>
                    <div class="page_wrap">

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    $(function(){
        getList(1);
    });

    function list(){
        location.href = '/admin/customer/customerList?page=${page}';
    }

    /**
     * 등록
     */
    function save(){

        if($('#content').val().trim() == ''){
            alert('상담 내용을 입력하여 주세요.');
            return false;
        }

        if(!confirm(save_msg)){
            return false;
        }

        var ajax_data = $('#regForm').serialize();

        $.ajax({
            url:'/admin/customer/customer_counseling_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(save_finish);
                    $('#content').val('');
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

    /**
     * 리스트 호출
     */
    function getList(page){

        $('#page').val(page);
        var ajax_data =  $('#regForm').serialize();

        $.ajax({
            url:'/admin/customer/get_counseling_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {

                var html = '';

                if(data.list.length == 0){
                    html += '<tr><td colspan="4">상담내역이 없습니다.</td></tr>';
                }

                for(var i = 0 ; data.list.length > i ; i++){
                    html += '<tr>';
                    html += '    <td>';
                    html += '        '+data.list[i].no;
                    html += '    </td>';
                    html += '    <td><textarea id="content_'+data.list[i].IDX+'" style="width: 100%; height: 150px;">'+data.list[i].CONTENT+'</textarea></td>';
                    html += '    <td>';
                    html += '        '+data.list[i].REGDATE
                    html += '    </td>';
                    html += '    <td>';
                    html += '        <div class="button_90 mb10">';
                    html += '            <button type="button" style="width: 100%;" class="button_gray" onclick="javascript:line_update('+data.list[i].IDX+')">수정</button>';
                    html += '        </div>';
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

    function line_update(idx){

        if(!confirm(update_msg)){
            return false;
        }

        var ajax_data = {};
        ajax_data.idx  = idx;
        ajax_data.content = $('#content_'+idx).val();

        $.ajax({
            url:'/admin/customer/member_counseling_update', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(update_finish);
                    getList(1);
                } else {
                    alert(update_error);
                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });

    }

    /**
     * 삭제
     * @param idx
     */
    function line_delete(idx){

        if(!confirm(delete_msg)){
            return false;
        }

        var ajax_data = {};
        ajax_data.idx = idx;

        $.ajax({
            url:'/admin/customer/member_counseling_delete', //request 보낼 서버의 경로
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

</script>
