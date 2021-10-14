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
                        <h2>신규고객 등록</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">성명*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="name" name="name">
                                    </div>
                                </td>
                                <td class="infotd">주민번호</td>
                                <td>
                                    <div class="input_wrap w283" style="display: flex;">
                                        <input class="mr10" type="text" id="socialSecurityNumber1" name="socialSecurityNumber1">
                                        -
                                        <input class="ml10" type="text" id="socialSecurityNumber2" name="socialSecurityNumber2">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">핸드폰번호*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="tel" name="tel">
                                    </div>
                                </td>
                                <td class="infotd">E-Mail</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="email" name="email">
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
                                        <input type="text" id="address1" name="address1">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">주거지 상세주소</td>
                                <td colspan="3">
                                    <div class="input_wrap w933">
                                        <input type="text" id="address2" name="address2">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">자금대</td>
                                <td colspan="3">
                                    <div class="input_wrap w283" style="display: flex">
                                        <input type="text" id="m_start" name="m_start" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><span>만 ~ </span><input type="text" id="m_end" name="m_end" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><span>만</span>
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
                                        <input type="text" id="connect_path" name="connect_path">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">특이사항</td>
                                <td colspan="3">
                                    <textarea name="memo" id="memo" maxlength="1000" style="width: 100%; height: 150px;"></textarea>
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

        if(!confirm(save_msg)){
            return false;
        }

        var ajax_data = $('#regForm').serialize();

        $.ajax({
            url:'/admin/customer/customer_insert', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert('신규 고객 등록이 완료하였습니다.');
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
