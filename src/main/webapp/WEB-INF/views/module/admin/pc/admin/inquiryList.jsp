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
                        <h2>문의 리스트</h2>
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
                                <td>
                                   <div class="td_inner">
                                       <div class="option_list">
                                           <select class="hidden_option" name="category">
                                               <option value ="">전체</option>
                                               <option value ="NAME">이름</option>
                                               <option value ="TEL">연락처</option>
                                           </select>
                                       </div>
                                       <div class="input_wrap w283">
                                           <input type="text" id="category_text" name="category_text" value="" class="text">
                                       </div>
                                   </div>
                               </td>
                                <td class="infotd">문의 기간</td>
                                <td class="period">
                                    <div class="td_inner">
                                        <div class="input_wrap w120 start mr10">
                                            <input type="text" class="picker" name="start_date" readonly>
                                        </div>
                                        <div class="input_wrap w120 end ml10 mr10">
                                            <input type="text" class="picker" name="end_date" readonly>
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
                                <col width="10%;">
                                <col width="10%;">
                                <col width="30%;">
                                <col width="5%;">
                                <col width="10%;">
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
                                <th class="arrange">성명</th>
                                <th class="arrange">핸드폰</th>
                                <th class="arrange">문의내용</th>
                                <th class="arrange">처리여부</th>
                                <th class="arrange">등록일</th>
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
        $('input[name=start_date]').val('${start}');
        $('input[name=end_date]').val('${end}');

        getList(1);
    });

    /**
     * 리스트 호출
     */
    function getList(page){
        history_change(page);

        $("#page").val(page);
        var ajax_data =  $('#searchForm').serialize();

        $.ajax({
            url:'/admin/admin/get_inquiry_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {

                var html = '';

                if(data.list.length == 0){
                    html += '<tr>';
                    html += '    <td colspan="10">문의가 없습니다.</td>';
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
                    html += '        '+nullChk(data.list[i].NAME, '-');
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+nullChk(data.list[i].TEL, '-');
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+nullChk(data.list[i].MEMO, '-');
                    html += '    </td>';
                    html += '    <td>';
                    if(nullChk(data.list[i].REGISTER_YN, 'N') == 'N') {
                        html += '        <div class="button_90">';
                        html += '            <button type="button" style="width: 100%;" class="button_gray" onclick="javascript:agree('+data.list[i].IDX+')">처리</button>';
                        html += '        </div>'
                    } else {
                        html += '처리완료';
                    }
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+nullChk(data.list[i].REGDATE, '-');
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

    function agree(idx) {

        if(confirm('정말 처리완료 하시겠습니까?'))

        var ajax_data =  $('#searchForm').serialize() + '&idx='+idx;

        $.ajax({
            url:'/admin/admin/inquiry_agree', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {
                if(data.code == 'S'){
                    alert('처리완료 돠었습니다.');
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
            url:'/admin/admin/inquiry_delete', //request 보낼 서버의 경로
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
</script>