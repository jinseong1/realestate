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
                        <h2>고객정보</h2>
                    </div>
                </div>
                <ul class="member_info_nav">
                    <li <c:if test="${top_type == 'info'}">class="on"</c:if>><a href="/admin/customer/customer_update_move?idx=${idx}&page=${page}">회원정보</a></li>
                    <%--
                    <li <c:if test="${top_type == 'payList'}">class="on"</c:if>><a href="/admin/customer/customer_payList?idx=${idx}&page=${page}">계약내역</a></li>
                    --%>
                    <li><a href="javascript:alert('개발 진행 중입니다.')">계약내역</a></li>
                    <li <c:if test="${top_type == 'counseling'}">class="on"</c:if>><a href="/admin/customer/customer_counseling?idx=${idx}&page=${page}">상담등록/상담내역</a></li>
                </ul>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">성명*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="name" name="name" value="${data.NAME}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">핸드폰번호*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="tel" name="tel" value="${data.TEL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">등급*</td>
                                <td colspan="3">
                                    <div class="input_wrap radio">
                                        <label for="rank_s">
                                            <input type="radio" name="rank" id="rank_s" value="S" checked="checked">
                                            <span>S</span>
                                        </label>
                                        <label for="rank_a">
                                            <input type="radio" name="rank" id="rank_a" value="A">
                                            <span>A</span>
                                        </label>
                                        <label for="rank_b">
                                            <input type="radio" name="rank" id="rank_b" value="B">
                                            <span>B</span>
                                        </label>
                                        <label for="rank_c">
                                            <input type="radio" name="rank" id="rank_c" value="C">
                                            <span>C</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">연령대*</td>
                                <td colspan="3">
                                    <div class="option_list">
                                        <select class="hidden_option" name="age">
                                            <option value ="20">20대</option>
                                            <option value ="30">30대</option>
                                            <option value ="40">40대</option>
                                            <option value ="50">50대</option>
                                            <option value ="60">60대</option>
                                            <option value ="70">70대 이상</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">성별*</td>
                                <td colspan="3">
                                    <div class="input_wrap radio">
                                        <label for="sex_m">
                                            <input type="radio" name="sex" id="sex_m" value="M" checked="checked">
                                            <span>남성</span>
                                        </label>
                                        <label for="sex_w">
                                            <input type="radio" name="sex" id="sex_w" value="W">
                                            <span>여성</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">주거지</td>
                                <td colspan="3">
                                    <div class="input_wrap w400">
                                        <input type="text" id="address1" name="address1" value="${data.ADDRESS1}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">주거지 상세주소</td>
                                <td colspan="3">
                                    <div class="input_wrap w933">
                                        <input type="text" id="address2" name="address2" value="${data.ADDRESS2}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">자금대</td>
                                <td colspan="3">
                                    <div class="input_wrap w283" style="display: flex">
                                        <input type="text" id="m_start" name="m_start" value="${data.M_START}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><span>만 ~ </span><input type="text" id="m_end" name="m_end" value="${data.M_END}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><span>만</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">기존 회원 여부</td>
                                <td colspan="3">
                                    <div class="td_inner" id="marketing_value">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="ago_pay_yn" id="ago_pay_yn" value="Y" class="blind"/>
                                            <label for="ago_pay_yn"></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">접근경로</td>
                                <td colspan="3">
                                    <div class="input_wrap w500">
                                        <input type="text" id="connect_path" name="connect_path" value="${data.CONNECT_PATH}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">특이사항</td>
                                <td colspan="3">
                                    <textarea name="memo" id="memo" maxlength="1000" style="width: 100%; height: 300px;">${data.MEMO}</textarea>
                                </td>
                            </tr>
                        </table>
                        <div class="btn_submit" style="float: left">
                            <button type="button" onclick="list();">목록</button>
                        </div>
                        <div class="btn_submit">
                            <button type="submit" onclick="save();">등록</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    $(function(){
        if('${data.RANK}' != ''){
            $("input:radio[name=rank]:radio[value='${data.RANK}']").prop('checked', true); // 선택하기
        }
        $('select[name=age]').val('${data.AGE}');
        $("input:radio[name=sex]:radio[value='${data.SEX}']").prop('checked', true); // 선택하기
        if('${data.AGO_PAY_YN}' == 'Y'){
            $('[name=ago_pay_yn]').attr('checked', true); // 선택하기
        }
    });

    /**
     * 리스트 이동
     */
    function list(){
        location.href = '/admin/customer/customerList?page=${page}';
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

        if(!confirm(update_msg)){
            return false;
        }

        var ajax_data = $('#regForm').serialize() + '&idx=${idx}';

        $.ajax({
            url:'/admin/customer/customer_update', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(update_finish);
                    list();
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

</script>
