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
                        <h2>홈페이지 수정</h2>
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
                                <td class="infotd">홈페이지명*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="homepage_name" name="homepage_name" value="${data.HOMEPAGE_NAME}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">연락처*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="connect_tel" name="connect_tel" value="${data.CONNECT_TEL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">메인 이미지*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(this, 'M')" name="main_img" id="main_img">
                                            <input type="hidden" id="main_img_path" name="main_img_path" value="${data.MAIN_IMG_PATH}">
                                            <input type="text" readonly id="main_img_name" name="main_img_name" value="${data.MAIN_IMG_NAME}">
                                            <label for="main_img" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_del('main_img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">대분류명 1*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <div class="file">
                                            <input type="text" id="title_1" name="title_1" value="${data.TITLE1}">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup(1);">상세 수정</button>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">대분류1 사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn_1_y">
                                            <input type="radio" name="use_yn_1" id="use_yn_1_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn_1_n">
                                            <input type="radio" name="use_yn_1" id="use_yn_1_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">대분류명 2</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <div class="file">
                                            <input type="text" id="title_2" name="title_2" value="${data.TITLE2}">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup(2);">상세 수정</button>
                                        </div>

                                    </div>
                                </td>
                                <td class="infotd">대분류2 사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn_2_y">
                                            <input type="radio" name="use_yn_2" id="use_yn_2_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn_2_n">
                                            <input type="radio" name="use_yn_2" id="use_yn_2_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">대분류명 3</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <div class="file">
                                            <input type="text" id="title_3" name="title_3" value="${data.TITLE3}">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup(3);">상세 수정</button>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">대분류3 사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn_3_y">
                                            <input type="radio" name="use_yn_3" id="use_yn_3_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn_3_n">
                                            <input type="radio" name="use_yn_3" id="use_yn_3_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">대분류명 4</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <div class="file">
                                            <input type="text" id="title_4" name="title_4" value="${data.TITLE4}">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup(4);">상세 수정</button>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">대분류4 사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn_4_y">
                                            <input type="radio" name="use_yn_4" id="use_yn_4_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn_4_n">
                                            <input type="radio" name="use_yn_4" id="use_yn_4_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">대분류명 5</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <div class="file">
                                            <input type="text" id="title_5" name="title_5" value="${data.TITLE5}">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup(5);">상세 수정</button>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">대분류5 사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn_5_y">
                                            <input type="radio" name="use_yn_5" id="use_yn_5_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn_5_n">
                                            <input type="radio" name="use_yn_5" id="use_yn_5_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="btn_submit" style="float: left">
                            <button type="button" onclick="list();">목록</button>
                        </div>
                        <div class="btn_submit">
                            <button type="submit" onclick="save();">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%-- 상세 등록 팝업 --%>
    <article class="admin_popup">
        <div class="admin_popup_inner">
            <div class="tit">
                <h4>대뷴류1 상세</h4>
                <button type="button" class="close"></button>
            </div>
            <div class="content">
                <div class="search_wrap basic_table_wrap">
                    <div class="form_wrap">
                        <form name="detailForm" id="detailForm" onsubmit="return false;" method="post">
                            <table style="height: 500px; display: inline-block; overflow: auto">
                                <colgroup>
                                    <col style="width: 10%">
                                    <col style="width: 40%">
                                </colgroup>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path_1" name="img_path_1" value="">
                                                <input type="text" readonly id="img_name_1" name="img_name_1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_1" name="memo_1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지9*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '9')" name="img_9" id="img_9">
                                                <input type="hidden" id="img_path_9" name="img_path_9" value="">
                                                <input type="text" readonly id="img_name_9" name="img_name_9" value="">
                                                <label for="img_9" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '9')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명9*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea style="width: auto;" class="form-control diff-textarea" rows="3" id="memo_9" name="memo_9"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">이미지10*</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '10')" name="img_10" id="img_10">
                                                <input type="hidden" id="img_path_10" name="img_path_10" value="">
                                                <input type="text" readonly id="img_name_10" name="img_name_10" value="">
                                                <label for="img_10" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" onclick="javascript:file_del('img', '10')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명10*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea" rows="3" id="memo_10" name="memo_10"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="line_10_y">
                                            <input type="radio" name="line_10_n" id="line_10_y" value="Y" checked>
                                            <span>사용</span>
                                        </label>
                                        <label for="line_10_n">
                                            <input type="radio" name="line_10_n" id="line_10_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="btn_wrap">
                    <button type="submit" onclick="javascript:detail_save();">저장</button>
                </div>
            </div>
        </div>
    </article>

</main>
<script>
    $(function(){

        $('input[name=connect_tel]').on('keyup', function(){
            $(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
        });

        page_load();

    });

    function page_load() {

        $("input:radio[name=use_yn_1]:radio[value='${data.USE_YN1}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_2]:radio[value='${data.USE_YN2}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_3]:radio[value='${data.USE_YN3}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_4]:radio[value='${data.USE_YN4}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_5]:radio[value='${data.USE_YN5}']").prop('checked', true); // 선택하기

    }

    function file_change(obj, type) {

        const $this = $(obj);
        let file_name = $this.val().split("\\").pop();
        const file_type = file_name.substring(file_name.lastIndexOf("."), file_name.length).toLowerCase();

        switch (type) {
            case 'M' :

                if(file_type != '.jpg' && file_type != '.png'){
                    $('#main_img_path').val('');
                    $('#main_img_name').val('');
                    alert('jpg, png만 업로드 가능합니다.');
                    return false;
                }
                if(!filesize_check($this, 10)){
                    $('#main_img_path').val('');
                    $('#main_img_name').val('');
                    alert('파일 용량은 10mb까지만 업로드 가능합니다.');
                    return false;
                }
                $('#main_img_name').val($this.val().split("\\").pop());

                break;
        }

    }

    function file_del(name, num){

        if(num != null) {
            $('#img_path_'+num).val('');
            $('#img_name_'+num).val('');
        } else {
            $('#'+name+'_path').val('');
            $('#'+name+'_name').val('');
        }
    }

    function detail_popup(num){
        $('#popup_idx').val(num);
        popupShow($('.admin_popup'));
    }

    function detail_save(){
        if(!confirm(save_msg)) {
            return;
        }

    }

    function save(){

        if($('#homepage_name').val().trim() == '') {
            alert('홈페이지명을 입력하여 주세요.');
            return;
        }
        if($('#main_img_name').val().trim() == '') {
            alert('메인 이미지를 등록하여 주세요.');
            return;
        }
        if($('#title_1').val().trim() == '') {
            alert('대분류명1을 입력하여 주세요.');
            return;
        }

        if(!confirm(save_msg)) {
            return;
        }

        /* 저장처리 */
        $.ajax({
            url:'/admin/homepage/homepage_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            data: new FormData($("#regForm")[0]), //보낼 데이터
            async:false,
            success: function(data) {
                if(data.code == 'S'){
                    alert(save_finish);
                } else {

                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
            }
        });

    }

</script>
