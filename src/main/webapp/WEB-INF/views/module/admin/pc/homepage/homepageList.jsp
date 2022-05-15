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
                        <h2>홈페이지 리스트</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="searchForm" id="searchForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="page" name="page" value="">
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
                                <col width="10%;">
                                <col width="30%;">
                                <col width="50%;">
                                <col width="10%;">
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="arrange">NO</th>
                                <th class="arrange">홈페이지명</th>
                                <th class="arrange">URL</th>
                                <th class="arrange">등록일</th>
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

    function detail(idx){
        location.href = "/admin/homepage/homepage_detail_move?idx="+idx+"&page="+$('#page').val();
    }

    function getList(page) {
        history_change(page);

        $("#page").val(page);
        const ajax_data =  $('#searchForm').serialize();

        $.ajax({
            url:'/admin/homepage/get_homepage_list', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async:false,
            success: function(data) {

                var html = '';

                if(data.list.length == 0){
                    html += '<tr>';
                    html += '    <td colspan="9">관리할 수 있는 홈페이지가 없습니다. 관리자에게 문의 바랍니다.</td>';
                    html += '<tr>';
                }

                for(var i = 0 ; data.list.length > i ; i++){
                    html += '<tr>';
                    html += '    <td>';
                    html += '        '+data.list[i].no;
                    html += '    </td>';
                    html += '    <td>';
                    html += '    <a href="javascript:void(0);" onclick="detail('+data.list[i].IDX+');">';
                    html += '        '+data.list[i].HOMEPAGE_NAME;
                    html += '    </a>';
                    html += '    </td>';
                    html += '    <td><a href="'+data.list[i].URL+'" target="_blank">';
                    html += '        '+data.list[i].URL;
                    html += '    </a></td>';
                    html += '    <td>';
                    html += '        '+data.list[i].REGDATE;
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
</script>


