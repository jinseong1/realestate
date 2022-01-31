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
                        <h2>부동산 등록</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="idx" name="idx" value="${data.IDX}">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">업체명*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="name" name="name" value="${data.NAME}">
                                    </div>
                                </td>
                                <td class="infotd">구분</td>
                                <td>
                                    <div class="option_list">
                                        <select class="hidden_option" name="type">
                                            <option value="20">부동산</option>
                                            <option value="30">시행사</option>
                                            <option value="40">건설사</option>
                                            <option value="50">일반인</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">전화번호*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="tel" name="tel" value="${data.TEL}">
                                    </div>
                                </td>
                                <td class="infotd">E-Mail</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="email" name="email" value="${data.EMAIL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">도시*</td>
                                <td colspan="3">
                                    <div class="option_list">
                                        <select class="hidden_option" name="city">
                                            <option value="">선택</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">구*</td>
                                <td colspan="3">
                                    <div class="option_list">
                                        <select class="hidden_option" name="district">
                                            <option value="">선택</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">선호물건*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_1" id="preference_1" value="Y" class="blind"/>
                                            <label for="preference_1"><span>상가</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_2" id="preference_2" value="Y" class="blind"/>
                                            <label for="preference_2"><span>상가주택</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_3" id="preference_3" value="Y" class="blind"/>
                                            <label for="preference_3"><span>주택</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_4" id="preference_4" value="Y" class="blind"/>
                                            <label for="preference_4"><span>아파트</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_5" id="preference_5" value="Y" class="blind"/>
                                            <label for="preference_5"><span>오피스텔</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_6" id="preference_6" value="Y" class="blind"/>
                                            <label for="preference_6"><span>호텔</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_7" id="preference_7" value="Y" class="blind"/>
                                            <label for="preference_7"><span>토지</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_8" id="preference_8" value="Y" class="blind"/>
                                            <label for="preference_8"><span>생활형<br/>숙박시설</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_9" id="preference_9" value="Y" class="blind"/>
                                            <label for="preference_9"><span>도시형<br/>생활주택</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">특이사항</td>
                                <td colspan="3">
                                    <textarea name="memo" id="memo" maxlength="1000" style="width: 100%; height: 150px;">${data.MEMO}</textarea>
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

        $('input[name=tel]').on('keyup', function(){
            let tel = $(this).val();
            tel = tel.replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-");
            $(this).val(tel);
        });

        $('select[name=city]').change(function(){ // 도시 변경 시 이벤트
            let city = $(this).val();
            if(city == '') {
                $('select[name=district]').html('<option value="">선택</option>');
                return false;
            }
            get_administrative_district(city);
        });

        get_administrative_district();

        if('${data.IDX}' != '') { // 수정일 경우
            $('[name=type]').val('${data.TYPE}');
            $('[name=city]').val('${data.CITY}');
            get_administrative_district('${data.CITY}');
            $('[name=city]').val('${data.CITY}');
            $('[name=district]').val('${data.PLACE_TYPE}');

            const preference = '${data.PREFERENCE}';
            if(preference.indexOf('1A') != -1) {
                $('#preference_1').prop('checked', true);
            }
            if(preference.indexOf('2A') != -1) {
                $('#preference_2').prop('checked', true);
            }
            if(preference.indexOf('3A') != -1) {
                $('#preference_3').prop('checked', true);
            }
            if(preference.indexOf('4A') != -1) {
                $('#preference_4').prop('checked', true);
            }
            if(preference.indexOf('5A') != -1) {
                $('#preference_5').prop('checked', true);
            }
            if(preference.indexOf('6A') != -1) {
                $('#preference_6').prop('checked', true);
            }
            if(preference.indexOf('7A') != -1) {
                $('#preference_7').prop('checked', true);
            }
            if(preference.indexOf('8A') != -1) {
                $('#preference_8').prop('checked', true);
            }
            if(preference.indexOf('9A') != -1) {
                $('#preference_9').prop('checked', true);
            }


        }

    });

    function get_administrative_district(city) {

        let ajax_data = {};
        ajax_data.country = 'KOREA';
        if(city != null && city != '') {
            ajax_data.city = city;
        }

        $.ajax({
            url:'/common/get_administrative_district', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                let html = '<option value="">선택</option>';

                if(city != null && city != '') {
                    for(let i = 0 ; data.length > i ; i++) {
                        html += '<option value="'+data[i].IDX+'">'+data[i].DISTRICT+'</option>';
                    }
                    $('select[name=district]').html(html);
                } else {
                    for(let i = 0 ; data.length > i ; i++) {
                        html += '<option value="'+data[i].IDX+'">'+data[i].CITY+'</option>';
                    }
                    $('select[name=city]').html(html);
                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
                console.log(err);
            }
        });

    }

    /**
     * 리스트 이동
     */
    function list(){
        location.href = '/admin/real/realList?page=${page}';
    }

    /**
     * 저장
     */
    function save(){

        if($('#name').val().trim() == ''){
            alert('업체명을 입력하여 주세요.');
            return false;
        }
        if($('#tel').val().trim() == ''){
            alert('전화번호를 입력하여 주세요.');
            return false;
        }
        if($('#city').val() == '') {
            alert('지역 중 도시를 선택하여 주세요.');
            return false;
        }
        if($('#district').val() == '') {
            alert('지역 중 구를 선택하여 주세요.');
        }

        if(!confirm(save_msg)){
            return false;
        }

        let ajax_data = $('#regForm').serialize();

        $.ajax({
            url:'/admin/real/real_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data:ajax_data, //보낼 데이터
            async : false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(save_finish);
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
