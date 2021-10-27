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
                        <h2>방문 리스트</h2>
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
                            <tr class="period">
                                <td class="infotd">노출기간</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="input_wrap w120 start mr10">
                                            <input type="text" class="picker" name="start_date" readonly>
                                        </div>
                                        <div class="option_list w80 mr10">
                                            <select class="hidden_option 0h" name="start_date_h">
                                                <option value ="00">00</option>
                                                <option value ="01">01</option>
                                                <option value ="02">02</option>
                                                <option value ="03">03</option>
                                                <option value ="04">04</option>
                                                <option value ="05">05</option>
                                                <option value ="06">06</option>
                                            </select>
                                        </div>
                                        <div class="option_list w80 mr10">
                                            <select class="hidden_option 0m" name="start_date_m">
                                                <option value ="00">00</option>
                                                <option value ="01">01</option>
                                                <option value ="02">02</option>
                                                <option value ="03">03</option>
                                                <option value ="04">04</option>
                                                <option value ="05">05</option>
                                                <option value ="06">06</option>
                                            </select>
                                        </div>
                                        -
                                        <div class="input_wrap w120 end ml10 mr10">
                                            <input type="text" class="picker" name="end_date" readonly>
                                        </div>
                                        <div class="option_list w80 mr10">
                                            <select class="hidden_option 0h" name="end_date_h">

                                            </select>
                                        </div>
                                        <div class="option_list w80">
                                            <select class="hidden_option 0m" name="end_date_m">

                                            </select>
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
                                <col width="15%;">
                                <col width="10%;">
                                <col width="10%;">
                                <col width="10%;">
                                <col width="15%;">
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
                                <th class="arrange">등급</th>
                                <th class="arrange">성별</th>
                                <th class="arrange">연령대</th>
                                <th class="arrange">방문시간</th>
                            </tr>
                            </thead>
                            <tbody id="ajax_data">
                            <!--리스트 반복 -->

                            <!-- 리스트 반복-->
                            </tbody>
                        </table>
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

        setTime('0h', '0H');
        setTime('0m', '0m');

        $('input[name=start_date]').val('${start}');
        $('input[name=end_date]').val('${end}');

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

    /**
     * 리스트 호출
     */
    function getList(page){
        history_change(page);

        $("#page").val(page);
        var ajax_data =  $('#searchForm').serialize();

        $.ajax({
            url:'/admin/visit/get_visit_list', //request 보낼 서버의 경로
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
                    html += '    <a href="javascript:void(0);" onclick="customer_move('+data.list[i].customer_idx+');">';
                    html += '        '+data.list[i].NAME;
                    html += '    </a>';
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].TEL;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].RANK;
                    html += '    </td>';
                    html += '    <td>';
                    if(data.list[i].SEX == 'M'){
                        html += '남자';
                    } else {
                        html += '여자';
                    }
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].AGE;
                    html += '    </td>';
                    html += '    <td>';
                    html += '        '+data.list[i].DATE;
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

    function customer_move(idx){
        location.href='/admin/customer/customer_update_move?idx='+idx+'&page=1';
    }

</script>


