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
                                        <input type="text" id="homepageName" name="homepageName" value="${data.HOMEPAGE_NAME}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">연락처*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="connectTel" name="connectTel" value="${data.CONNECT_TEL}">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">메인 이미지*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(1, this, 'img')" name="main_img" id="main_img">
                                            <input type="hidden" id="main_img_path" name="main_img_path" value="">
                                            <input type="text" readonly id="main_img_name" name="main_img_name" value="">
                                            <label for="main_img" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete()">삭제</button>
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
                                            <input type="text" id="title_1" name="title_1" value="">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup();">상세 수정</button>
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
                                            <input type="text" id="title_2" name="title_2" value="">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup();">상세 수정</button>
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
                                            <input type="text" id="title_3" name="title_3" value="">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup();">상세 수정</button>
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
                                            <input type="text" id="title_4" name="title_4" value="">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup();">상세 수정</button>
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
                                            <input type="text" id="title_5" name="title_5" value="">
                                            <button type="button" class="delete_btn mr10" onclick="javascript:detail_popup();">상세 수정</button>
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
</main>
<script>
    $(function(){

        $('input[name=connectTel]').on('keyup', function(){
            $(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
        });

    });

    function detail_popup(){

    }

    function save(){

        if($('#homepageName').val().trim() == '') {
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

        /* 저장처리 */


    }

</script>
