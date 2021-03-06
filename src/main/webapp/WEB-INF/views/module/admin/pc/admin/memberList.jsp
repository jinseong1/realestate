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
                        <h2>관리자 고객 리스트</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="searchForm" id="searchForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="page" name="page" value="">
                        <table>
                            <colgroup>
                                <col style="width: 180px">
                                <col style="width: calc(100% - 180px)">
                                <col style="width: 180px">
                                <col style="width: calc(100% - 180px)">
                            </colgroup>
                            <tr>
                               <td class="infotd">검색어</td>
                               <td colspan="3">
                                   <div class="td_inner">
                                       <div class="option_list">
                                           <select class="hidden_option" name="category">
                                               <option value="">전체</option>
                                               <option value="NAME">이름</option>
                                               <option value="TEL">연락처</option>
                                           </select>
                                       </div>
                                       <div class="input_wrap w283">
                                           <input type="text" id="category_text" name="category_text" value="" class="text">
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
                    </div>
                </div>
                <div id="loader" style="display: none;">
                    <img src="${imagePath}/layout/loading.gif">
                </div>
                <div id="listArea">
                    <div class="grid_wrap rental_table">
                        <table>
                            <colgroup>
                                <col width="5%;">
                                <col width="5%;">
                                <col width="20%;">
                                <col width="15%;">
                                <col width="20%;">
                                <col width="10%;">
                                <col width="20%;">
                                <col width="5%;">
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
                                <th class="arrange">성명</th>
                                <th class="arrange">핸드폰</th>
                                <th class="arrange">레벨</th>
                                <th class="arrange">등록일</th>
                                <th class="arrange">승인</th>
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
</main>
<script>
    $(function(){
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

    });

    function update(idx){
        location.href = "/admin/admin/member_update_move?idx="+idx+"&page="+$('#page').val();
    }

    /**
     * 리스트 호출
     */
    function getList(page){
        history_change(page);

        $("#page").val(page);
        var ajax_data =  $('#searchForm').serialize();

        $.ajax({
            url:'/admin/admin/get_member_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {

                var html = '';

                if(data.list.length == 0){
                    html += '<tr>';
                    html += '    <td colspan="9">저장된 고객이 없습니다.</td>';
                    html += '<tr>';
                }

                for(var i = 0 ; data.list.length > i ; i++){
                    html += '<tr>';
                    html += '    <td>';
                    html += '        <div class="check_wrap">';
                    html += '            <input type="checkbox" class="blind" id="check_'+data.list[i].IDX+'" name="restock_ck" data-idx="'+data.list[i].IDX+'">';
                    html += '            <label for="check_'+data.list[i].IDX+'"></label>';
                    html += '        </div>';
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].no;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].ID;
                    html += '    </td>';
                    html += '    <td>';
                    html += '    <a href="javascript:void(0);" onclick="update('+data.list[i].IDX+');">';
                    html += '        '+data.list[i].NAME;
                    html += '    </a>';
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].TEL;
                    html += '    </td>';
                    html += '    <td>';
                    if(data.list[i].LEVEL == '10') {
                        html += '[10]무료회원';
                    } else if (data.list[i].LEVEL == '20') {
                        html += '[20]유료회원';
                    } else if (data.list[i].LEVEL == '100') {
                        html += '[100]슈퍼관리자';
                    }
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].REGDATE;
                    html += '    </td>';
                    html += '    <td>';
                    if(data.list[i].AGREE == 'N') {
                        html += '        <div class="button_90">';
                        html += '            <button type="button" style="width: 100%;" class="button_gray" onclick="javascript:agree('+data.list[i].IDX+')">승인</button>';
                        html += '        </div>'
                    } else {
                        html += '승인완료';
                    }
                    html += '    </td>';
                    html += '</tr>';
                }

                $('.search_result').html('전체 : ' + data.total_count + '개');
                $('#ajax_data').html(html);
                $('.page_wrap').html(data.pagingString);
                $('#loader').hide();
            },
            error: function(err) {
                console.log(err);
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
            url:'/admin/member/member_delete', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
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

    function agree(idx) {

        var ajax_data =  $('#searchForm').serialize() + '&idx='+idx;

        $.ajax({
            url:'/admin/admin/member_agree', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {
                if(data.code == 'S'){
                    alert('승인되었습니다.');
                    getList($("#page").val());
                } else {
                    alert('에러가 발생하였습니다. 괸라자에게 문의 바랍니다.');
                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });

    }
</script>


