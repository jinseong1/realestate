<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<main id="main">
    <div class="main_inner">

        <!-- ///컨텐츠-->
        <div class="contents">

            <!-- 공통 검색폼 -->
            <div class="search_wrap basic_table_wrap">

                <div class="common_title_wrap">
                    <div class="title_wrap">
                        <h2>공동 중개 등록</h2>
                    </div>
                </div>
                <div class="form_wrap">
                    <form name="regForm" id="regForm" `onsubmit="return false;" method="post">`
                        <input type="hidden" id="idx" name="idx" value="${data.IDX}">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">제목</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="title" name="title" value="${data.TITLE}">
                                    </div>
                                </td>
                                <td class="infotd">구분*</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_1" id="preference_1" value="Y" class="blind"/>
                                            <label for="preference_1"><span>전세</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_2" id="preference_2" value="Y" class="blind"/>
                                            <label for="preference_2"><span>월세</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_3" id="preference_3" value="Y" class="blind"/>
                                            <label for="preference_3"><span>매매</span></label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" name="preference_4" id="preference_4" value="Y" class="blind"/>
                                            <label for="preference_4"><span>분양</span></label>
                                        </div>
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td class="infotd">사진*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(1, this)" name="preview_img_1" id="preview_img_1">
                                            <input type="text" readonly id="preview_txt_img_1" name="preview_txt_img_1" value="">
                                            <label for="preview_img_1" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(1)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_add();">추가</button>
                                </td>
                            </tr>
                            <tr id="file2_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(2, this)" name="preview_img_2" id="preview_img_2">
                                            <input type="text" readonly id="preview_txt_img_2" name="preview_txt_img_2" value="">
                                            <label for="preview_img_2" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(2)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(2);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file3_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(3, this)" name="preview_img_3" id="preview_img_3">
                                            <input type="text" readonly id="preview_txt_img_3" name="preview_txt_img_3" value="">
                                            <label for="preview_img_3" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(3)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(3);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file4_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(4, this)" name="preview_img_4" id="preview_img_4">
                                            <input type="text" readonly id="preview_txt_img_4" name="preview_txt_img_4" value="">
                                            <label for="preview_img_4" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(4)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(4);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file5_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(5, this)" name="preview_img_5" id="preview_img_5">
                                            <input type="text" readonly id="preview_txt_img_5" name="preview_txt_img_5" value="">
                                            <label for="preview_img_5" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(5)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(5);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file6_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(6, this)" name="preview_img_6" id="preview_img_6">
                                            <input type="text" readonly id="preview_txt_img_6" name="preview_txt_img_6" value="">
                                            <label for="preview_img_6" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(6)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(6);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file7_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(7, this)" name="preview_img_7" id="preview_img_7">
                                            <input type="text" readonly id="preview_txt_img_7" name="preview_txt_img_7" value="">
                                            <label for="preview_img_7" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(7)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(7);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file8_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(8, this)" name="preview_img_8" id="preview_img_8">
                                            <input type="text" readonly id="preview_txt_img_8" name="preview_txt_img_8" value="">
                                            <label for="preview_img_8" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(8)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(8);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file9_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(9, this)" name="preview_img_9" id="preview_img_9">
                                            <input type="text" readonly id="preview_txt_img_9" name="preview_txt_img_9" value="">
                                            <label for="preview_img_9" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(9)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(9);">삭제</button>
                                </td>
                            </tr>
                            <tr id="file10_view" style="display: none;">
                                <td class="infotd"></td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(10, this)" name="preview_img_10" id="preview_img_10">
                                            <input type="text" readonly id="preview_txt_img_10" name="preview_txt_img_10" value="">
                                            <label for="preview_img_10" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(10)">삭제</button>
                                            <span>jpg파일, 최대 5MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(10);">삭제</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">우편주소*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file">
                                        <div class="file">
                                            <input type="text" id="zip_code" name="zip_code" value="" readonly>
                                            <label for="zip_code" class="button_90" onclick="address_open()">주소 찾기</label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd" rowspan="2">주소*</td>
                                <td colspan="3">
                                    <div class="input_wrap w400">
                                        <input type="text" id="address1" name="address1" value="${data.ADDRESS1}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="input_wrap w400">
                                        <input type="text" id="address2" name="address2" value="${data.ADDRESS2}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">중개 담당자 전화번호*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="tel" name="tel" value="${data.TEL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">기타사항</td>
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

    });

    /**
     * 파일 라인 추가
     */
    function file_add(){
        for(let i = 2 ; i < 10 ; i++) {
            if(!$('#file'+i+'_view').is(':visible')){
                $('#file'+i+'_view').show();
                break;
            }
        }
    }

    /**
     * 파일 첨부
     */
    function file_change(idx, obj) {
        const file_name = $(obj).val().split("\\").pop();
        const type = file_name.substring(file_name.lastIndexOf("."), file_name.length).toLowerCase();

        if(type != '.jpg' && type != '.png'){
            $("#preview_img_"+idx).val('');
            $("#preview_txt_img_"+idx).val('');
            alert('jpg, png만 업로드 가능합니다.');
            return;
        }
        if(!filesize_check(obj, 10)){
            $("#preview_img_"+idx).val('');
            $("#preview_txt_img_"+idx).val('');
            alert('30mb까지만 업로드 가능합니다.');
            return;
        }
        $("#preview_txt_img_"+idx).val($(obj).val().split("\\").pop());
    }

    function file_delete(idx) {
        $("#preview_img_"+idx).val('');
        $("#preview_txt_img_"+idx).val('');
    }

    function file_line_delete(idx){
        $("#preview_img_"+idx).val('');
        $("#preview_txt_img_"+idx).val('');
        $('#file'+idx+'_view').hide();
    }

    /**
     * 다음 주소 API 호출
     */
    function address_open(){
        new daum.Postcode({
            oncomplete: function(data) {
                $('#address1').val(data.address);
                $('#zip_code').val(data.zonecode);
            }
        }).open();
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
