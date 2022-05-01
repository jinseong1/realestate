<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<style>
    .memo-textarea {
        width: 100%;
        resize: none;
    }
</style>
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
                                <td class="infotd">템플릿 구분*</td>
                                <td colspan="3">
                                    <div class="input_wrap radio">
                                        <label for="template_type_a">
                                            <input type="radio" name="template_type" id="template_type_a" value="A" checked>
                                            <span>A</span>
                                        </label>
                                        <label for="template_type_b">
                                            <input type="radio" name="template_type" id="template_type_b" value="B">
                                            <span>B</span>
                                        </label>
                                        <label for="template_type_b">
                                            <input type="radio" name="template_type" id="template_type_c" value="C">
                                            <span>C</span>
                                        </label>
                                        <label for="template_type_b">
                                            <input type="radio" name="template_type" id="template_type_d" value="D">
                                            <span>D</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
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
                <h4 id="popup_name">대뷴류1 상세</h4>
                <button type="button" class="close"></button>
            </div>
            <div class="content">
                <div class="search_wrap basic_table_wrap">
                    <div class="form_wrap">
                        <form name="detailForm" id="detailForm" onsubmit="return false;" method="post">
                            <input type="hidden" id="h_idx" name="h_idx" value="${data.IDX}">
                            <input type="hidden" id="order_num" name="order_num" value="">
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
                                                <input type="file" onchange="javascript:file_change(this, 'D', '1')" name="img_1" id="img_1">
                                                <input type="hidden" id="img_path1" name="img_path1" value="">
                                                <input type="text" readonly id="img_name1" name="img_name1" value="">
                                                <label for="img_1" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '1')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명1*</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo1" name="memo1"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부1</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn1_y">
                                            <input type="radio" name="use_yn1" id="use_yn1_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn1_n">
                                            <input type="radio" name="use_yn1" id="use_yn1_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지2</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '2')" name="img_2" id="img_2">
                                                <input type="hidden" id="img_path2" name="img_path2" value="">
                                                <input type="text" readonly id="img_name2" name="img_name2" value="">
                                                <label for="img_2" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '2')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명2</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo2" name="memo2"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부2</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn2_y">
                                            <input type="radio" name="use_yn2" id="use_yn2_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn2_n">
                                            <input type="radio" name="use_yn2" id="use_yn2_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지3</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '3')" name="img_3" id="img_3">
                                                <input type="hidden" id="img_path3" name="img_path3" value="">
                                                <input type="text" readonly id="img_name3" name="img_name3" value="">
                                                <label for="img_3" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '3')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명3</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo3" name="memo3"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부3</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn3_y">
                                            <input type="radio" name="use_yn3" id="use_yn3_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn3_n">
                                            <input type="radio" name="use_yn3" id="use_yn3_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지4</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '4')" name="img_4" id="img_4">
                                                <input type="hidden" id="img_path4" name="img_path4" value="">
                                                <input type="text" readonly id="img_name4" name="img_name4" value="">
                                                <label for="img_4" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '4')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명4</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo4" name="memo4"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부4</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn4_y">
                                            <input type="radio" name="use_yn4" id="use_yn4_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn4_n">
                                            <input type="radio" name="use_yn4" id="use_yn4_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지5</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '5')" name="img_5" id="img_5">
                                                <input type="hidden" id="img_path5" name="img_path5" value="">
                                                <input type="text" readonly id="img_name5" name="img_name5" value="">
                                                <label for="img_5" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '5')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명5</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo5" name="memo5"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부5</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn5_y">
                                            <input type="radio" name="use_yn5" id="use_yn5_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn5_n">
                                            <input type="radio" name="use_yn5" id="use_yn5_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지6</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '6')" name="img_6" id="img_6">
                                                <input type="hidden" id="img_path6" name="img_path6" value="">
                                                <input type="text" readonly id="img_name6" name="img_name6" value="">
                                                <label for="img_6" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '6')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명6</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo6" name="memo6"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부6</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn6_y">
                                            <input type="radio" name="use_yn6" id="use_yn6_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn6_n">
                                            <input type="radio" name="use_yn6" id="use_yn6_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지7</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '7')" name="img_7" id="img_7">
                                                <input type="hidden" id="img_path7" name="img_path7" value="">
                                                <input type="text" readonly id="img_name7" name="img_name7" value="">
                                                <label for="img_7" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '7')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명7</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo7" name="memo7"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부7</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn7_y">
                                            <input type="radio" name="use_yn7" id="use_yn7_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn7_n">
                                            <input type="radio" name="use_yn7" id="use_yn7_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지8</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '8')" name="img_8" id="img_8">
                                                <input type="hidden" id="img_path8" name="img_path8" value="">
                                                <input type="text" readonly id="img_name8" name="img_name8" value="">
                                                <label for="img_8" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '8')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명8</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo8" name="memo8"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부8</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn8_y">
                                            <input type="radio" name="use_yn8" id="use_yn8_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn8_n">
                                            <input type="radio" name="use_yn8" id="use_yn8_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지9</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '9')" name="img_9" id="img_9">
                                                <input type="hidden" id="img_path9" name="img_path9" value="">
                                                <input type="text" readonly id="img_name9" name="img_name9" value="">
                                                <label for="img_9" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '9')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명9</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo9" name="memo9"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부9</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn9_y">
                                            <input type="radio" name="use_yn9" id="use_yn9_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn9_n">
                                            <input type="radio" name="use_yn9" id="use_yn9_n" value="N">
                                            <span>미사용</span>
                                        </label>
                                    </div>
                                </td>
                                <tr>
                                    <td class="infotd">이미지10</td>
                                    <td colspan="3">
                                        <div class="input_wrap input_file fl_l">
                                            <div class="file">
                                                <input type="file" onchange="javascript:file_change(this, 'D', '10')" name="img_10" id="img_10">
                                                <input type="hidden" id="img_path10" name="img_path10" value="">
                                                <input type="text" readonly id="img_name10" name="img_name10" value="">
                                                <label for="img_10" class="button_90">찾아보기</label>
                                                <button type="button" class="delete_btn mr10" style="background-color: white; color: #0a1320;" onclick="javascript:file_del('img', '10')">삭제</button>
                                                <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infotd">설명10</td>
                                    <td colspan="3">
                                        <div class="input_wrap wAuto">
                                            <textarea class="form-control diff-textarea memo-textarea" rows="3" id="memo10" name="memo10"></textarea>
                                        </div>
                                    </td>
                                </tr>
                                <td class="infotd">사용여부10</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="use_yn10_y">
                                            <input type="radio" name="use_yn10" id="use_yn10_y" value="Y">
                                            <span>사용</span>
                                        </label>
                                        <label for="use_yn10_n">
                                            <input type="radio" name="use_yn10" id="use_yn10_n" value="N">
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

        $("input:radio[name=template_type]:radio[value='${data.TEMPLATE_TYPE}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_1]:radio[value='${data.USE_YN1}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_2]:radio[value='${data.USE_YN2}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_3]:radio[value='${data.USE_YN3}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_4]:radio[value='${data.USE_YN4}']").prop('checked', true); // 선택하기
        $("input:radio[name=use_yn_5]:radio[value='${data.USE_YN5}']").prop('checked', true); // 선택하기

    }

    function file_change(obj, type, num) {

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
            case 'D' :

                if(file_type != '.jpg' && file_type != '.png'){
                    $('#img_path'+num).val('');
                    $('#img_name'+num).val('');
                    alert('jpg, png만 업로드 가능합니다.');
                    return false;
                }
                if(!filesize_check($this, 10)){
                    $('#img_path'+num).val('');
                    $('#img_name'+num).val('');
                    alert('파일 용량은 10mb까지만 업로드 가능합니다.');
                    return false;
                }
                $('#img_name'+num).val($this.val().split("\\").pop());

                break;
        }

    }

    function file_del(name, num){

        if(num != null) {
            $('#img_path'+num).val('');
            $('#img_name'+num).val('');
        } else {
            $('#'+name+'_path').val('');
            $('#'+name+'_name').val('');
        }
    }

    function detail_popup(num){

        detail_init();

        $('#order_num').val(num);
        $('#popup_name').text('대뷴류'+num+' 상세');

        // 데이터 조회 및 세팅 처리
        get_detail();

        popupShow($('.admin_popup'));

    }

    function detail_init() {
        $('#detailForm').find('textarea').val('');
        $('#detailForm').find('input:file').val('');
        $('#detailForm').find('input:text').val('');
        $('#img_path1').val('');
        $('#img_path2').val('');
        $('#img_path3').val('');
        $('#img_path4').val('');
        $('#img_path5').val('');
        $('#img_path6').val('');
        $('#img_path7').val('');
        $('#img_path8').val('');
        $('#img_path9').val('');
        $('#img_path10').val('');
        $('#detailForm input:radio[value="N"]').prop('checked', true);
    }

    function get_detail(){
        $.ajax({
            url:'/admin/homepage/get_homepage_detail', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            data: new FormData($("#detailForm")[0]), //보낼 데이터
            async:false,
            success: function(data) {
                if(data.data != null) {
                    const detail_data = data.data;
                    if(detail_data.IMG_NAME1 != null) {
                        $('#img_name1').val(detail_data.IMG_NAME1);
                    }
                    if(detail_data.IMG_PATH1 != null) {
                        $('#img_path1').val(detail_data.IMG_PATH1);
                    }
                    if(detail_data.MEMO1 != null) {
                        $('#memo1').val(detail_data.MEMO1);
                    }
                    if(detail_data.USE_YN1 == 'Y') {
                        $("input:radio[name=use_yn1]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME2 != null) {
                        $('#img_name2').val(detail_data.IMG_NAME2);
                    }
                    if(detail_data.IMG_PATH2 != null) {
                        $('#img_path2').val(detail_data.IMG_PATH2);
                    }
                    if(detail_data.MEMO2 != null) {
                        $('#memo2').val(detail_data.MEMO2);
                    }
                    if(detail_data.USE_YN2 == 'Y') {
                        $("input:radio[name=use_yn2]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME3 != null) {
                        $('#img_name3').val(detail_data.IMG_NAME3);
                    }
                    if(detail_data.IMG_PATH3 != null) {
                        $('#img_path3').val(detail_data.IMG_PATH3);
                    }
                    if(detail_data.MEMO3 != null) {
                        $('#memo3').val(detail_data.MEMO3);
                    }
                    if(detail_data.USE_YN3 == 'Y') {
                        $("input:radio[name=use_yn3]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME4 != null) {
                        $('#img_name4').val(detail_data.IMG_NAME4);
                    }
                    if(detail_data.IMG_PATH4 != null) {
                        $('#img_path4').val(detail_data.IMG_PATH4);
                    }
                    if(detail_data.MEMO4 != null) {
                        $('#memo4').val(detail_data.MEMO4);
                    }
                    if(detail_data.USE_YN4 == 'Y') {
                        $("input:radio[name=use_yn4]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME5 != null) {
                        $('#img_name5').val(detail_data.IMG_NAME5);
                    }
                    if(detail_data.IMG_PATH5 != null) {
                        $('#img_path5').val(detail_data.IMG_PATH5);
                    }
                    if(detail_data.MEMO5 != null) {
                        $('#memo5').val(detail_data.MEMO5);
                    }
                    if(detail_data.USE_YN5 == 'Y') {
                        $("input:radio[name=use_yn5]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME6 != null) {
                        $('#img_name6').val(detail_data.IMG_NAME6);
                    }
                    if(detail_data.IMG_PATH6 != null) {
                        $('#img_path6').val(detail_data.IMG_PATH6);
                    }
                    if(detail_data.MEMO6 != null) {
                        $('#memo6').val(detail_data.MEMO6);
                    }
                    if(detail_data.USE_YN6 == 'Y') {
                        $("input:radio[name=use_yn6]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME7 != null) {
                        $('#img_name7').val(detail_data.IMG_NAME7);
                    }
                    if(detail_data.IMG_PATH7 != null) {
                        $('#img_path7').val(detail_data.IMG_PATH7);
                    }
                    if(detail_data.MEMO7 != null) {
                        $('#memo7').val(detail_data.MEMO7);
                    }
                    if(detail_data.USE_YN7 == 'Y') {
                        $("input:radio[name=use_yn7]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME8 != null) {
                        $('#img_name8').val(detail_data.IMG_NAME8);
                    }
                    if(detail_data.IMG_PATH8 != null) {
                        $('#img_path8').val(detail_data.IMG_PATH8);
                    }
                    if(detail_data.MEMO8 != null) {
                        $('#memo8').val(detail_data.MEMO8);
                    }
                    if(detail_data.USE_YN8 == 'Y') {
                        $("input:radio[name=use_yn8]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME9 != null) {
                        $('#img_name9').val(detail_data.IMG_NAME9);
                    }
                    if(detail_data.IMG_PATH9 != null) {
                        $('#img_path9').val(detail_data.IMG_PATH9);
                    }
                    if(detail_data.MEMO9 != null) {
                        $('#memo9').val(detail_data.MEMO9);
                    }
                    if(detail_data.USE_YN9 == 'Y') {
                        $("input:radio[name=use_yn9]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                    if(detail_data.IMG_NAME10 != null) {
                        $('#img_name10').val(detail_data.IMG_NAME10);
                    }
                    if(detail_data.IMG_PATH10 != null) {
                        $('#img_path10').val(detail_data.IMG_PATH10);
                    }
                    if(detail_data.MEMO10 != null) {
                        $('#memo10').val(detail_data.MEMO10);
                    }
                    if(detail_data.USE_YN10 == 'Y') {
                        $("input:radio[name=use_yn10]:radio[value='Y']").prop('checked', true); // 선택하기
                    }

                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
            }
        });
    }

    function detail_save(){

        if(!confirm(save_msg)) {
            return;
        }

        /* 저장처리 */
        $.ajax({
            url:'/admin/homepage/homepage_detail_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            data: new FormData($("#detailForm")[0]), //보낼 데이터
            async:false,
            success: function(data) {
                alert(data.msg);
                if(data.code == 'S'){
                    popupHide($('.admin_popup'));
                } else {

                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
            }
        });

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
                alert(data.msg);
                if(data.code == 'S'){

                } else {

                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
            }
        });

    }

</script>
