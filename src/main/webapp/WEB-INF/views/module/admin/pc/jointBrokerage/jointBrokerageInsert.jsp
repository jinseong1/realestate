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
                    <form name="regForm" id="regForm" onsubmit="return false;" method="post">
                        <input type="hidden" id="idx" name="idx" value="${data.IDX}">
                        <input type="hidden" id="latitude" name="latitude" value="">
                        <input type="hidden" id="longitude" name="longitude" value="">
                        <table>
                            <colgroup>
                                <col style="width: 10%">
                                <col style="width: 40%">
                            </colgroup>
                            <tr>
                                <td class="infotd">제목*</td>
                                <td>
                                    <div class="input_wrap w283">
                                        <input type="text" id="title" name="title" value="${data.TITLE}">
                                    </div>
                                </td>
                                <td class="infotd">구분*</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="type_charter" id="type_charter" value="Y" class="blind"/>
                                            <label for="type_charter"><span>전세</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="type_rental" id="type_rental" value="Y" class="blind"/>
                                            <label for="type_rental"><span>월세</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="type_sell" id="type_sell" value="Y" class="blind"/>
                                            <label for="type_sell"><span>매매</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="type_parcel_out" id="type_parcel_out" value="Y" class="blind"/>
                                            <label for="type_parcel_out"><span>분양</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">동영상</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(1, this, 'video')" name="preview_video" id="preview_video">
                                            <input type="text" readonly id="preview_txt_video" name="preview_txt_video" value="">
                                            <label for="preview_video" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(1, 'video')">삭제</button>
                                            <span>비디오 파일, 최대 80MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">사진*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(1, this, 'img')" name="preview_img_1" id="preview_img_1">
                                            <input type="text" readonly id="preview_txt_img_1" name="preview_txt_img_1" value="">
                                            <label for="preview_img_1" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(1, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(2, this, 'img')" name="preview_img_2" id="preview_img_2">
                                            <input type="text" readonly id="preview_txt_img_2" name="preview_txt_img_2" value="">
                                            <label for="preview_img_2" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(2, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(3, this, 'img')" name="preview_img_3" id="preview_img_3">
                                            <input type="text" readonly id="preview_txt_img_3" name="preview_txt_img_3" value="">
                                            <label for="preview_img_3" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(3, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(4, this, 'img')" name="preview_img_4" id="preview_img_4">
                                            <input type="text" readonly id="preview_txt_img_4" name="preview_txt_img_4" value="">
                                            <label for="preview_img_4" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(4, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(5, this, 'img')" name="preview_img_5" id="preview_img_5">
                                            <input type="text" readonly id="preview_txt_img_5" name="preview_txt_img_5" value="">
                                            <label for="preview_img_5" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(5, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(6, this, 'img')" name="preview_img_6" id="preview_img_6">
                                            <input type="text" readonly id="preview_txt_img_6" name="preview_txt_img_6" value="">
                                            <label for="preview_img_6" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(6, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(7, this, 'img')" name="preview_img_7" id="preview_img_7">
                                            <input type="text" readonly id="preview_txt_img_7" name="preview_txt_img_7" value="">
                                            <label for="preview_img_7" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(7, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(8, this, 'img')" name="preview_img_8" id="preview_img_8">
                                            <input type="text" readonly id="preview_txt_img_8" name="preview_txt_img_8" value="">
                                            <label for="preview_img_8" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(8, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(9, this, 'img')" name="preview_img_9" id="preview_img_9">
                                            <input type="text" readonly id="preview_txt_img_9" name="preview_txt_img_9" value="">
                                            <label for="preview_img_9" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(9, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
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
                                            <input type="file" onchange="javascript:file_change(10, this, 'img')" name="preview_img_10" id="preview_img_10">
                                            <input type="text" readonly id="preview_txt_img_10" name="preview_txt_img_10" value="">
                                            <label for="preview_img_10" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_delete(10, 'img')">삭제</button>
                                            <span>jpg, jpeg png, heic 파일 최대 10MB까지 업로드 가능</span>
                                        </div>
                                    </div>
                                    <button type="button" class="ml10 btn_gray" onclick="file_line_delete(10);">삭제</button>
                                </td>
                            </tr>
                            <!--방종류-->
                            <tr class="type_charter" style="display: none">
                                <td class="infotd">방종류*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="one_room" id="one_room" value="Y" class="blind"/>
                                            <label for="one_room"><span>원룸</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="two_room" id="two_room" value="Y" class="blind"/>
                                            <label for="two_room"><span>투룸</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="three_room" id="three_room" value="Y" class="blind"/>
                                            <label for="three_room"><span>쓰리룸</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="for_room" id="for_room" value="Y" class="blind"/>
                                            <label for="for_room"><span>포룸이상</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="office" id="office" value="Y" class="blind"/>
                                            <label for="office"><span>오피스텔</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_parcel_out" style="display: none">
                                <td class="infotd">분양 종류*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_1" id="sale_in_lots_1" value="Y" class="blind"/>
                                            <label for="sale_in_lots_1"><span>아파트</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_2" id="sale_in_lots_2" value="Y" class="blind"/>
                                            <label for="sale_in_lots_2"><span>오피스텔</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_3" id="sale_in_lots_3" value="Y" class="blind"/>
                                            <label for="sale_in_lots_3"><span>상가주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_4" id="sale_in_lots_4" value="Y" class="blind"/>
                                            <label for="sale_in_lots_4"><span>주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_5" id="sale_in_lots_5" value="Y" class="blind"/>
                                            <label for="sale_in_lots_5"><span>상가</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_6" id="sale_in_lots_6" value="Y" class="blind"/>
                                            <label for="sale_in_lots_6"><span>생활형숙박시설</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_7" id="sale_in_lots_7" value="Y" class="blind"/>
                                            <label for="sale_in_lots_7"><span>도시형생활주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_8" id="sale_in_lots_8" value="Y" class="blind"/>
                                            <label for="sale_in_lots_8"><span>호텔</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_9" id="sale_in_lots_9" value="Y" class="blind"/>
                                            <label for="sale_in_lots_9"><span>토지</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sale_in_lots_10" id="sale_in_lots_10" value="Y" class="blind"/>
                                            <label for="sale_in_lots_10"><span>빌라</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_sell" style="display: none">
                                <td class="infotd">매매 종류*</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_1" id="sell_1" value="Y" class="blind"/>
                                            <label for="sell_1"><span>아파트</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_2" id="sell_2" value="Y" class="blind"/>
                                            <label for="sell_2"><span>오피스텔</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_3" id="sell_3" value="Y" class="blind"/>
                                            <label for="sell_3"><span>상가주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_4" id="sell_4" value="Y" class="blind"/>
                                            <label for="sell_4"><span>주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_5" id="sell_5" value="Y" class="blind"/>
                                            <label for="sell_5"><span>상가</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_6" id="sell_6" value="Y" class="blind"/>
                                            <label for="sell_6"><span>생활형숙박시설</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_7" id="sell_7" value="Y" class="blind"/>
                                            <label for="sell_7"><span>도시형생활주택</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_8" id="sell_8" value="Y" class="blind"/>
                                            <label for="sell_8"><span>호텔</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_9" id="sell_9" value="Y" class="blind"/>
                                            <label for="sell_9"><span>토지</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="sell_10" id="sell_10" value="Y" class="blind"/>
                                            <label for="sell_10"><span>빌라</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_parcel_out" style="display: none">
                                <td class="infotd">분양가*</td>
                                <td>
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="sale_in_lots_price">
                                                <input type="text" id="sale_in_lots_price" name="sale_in_lots_price" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">수수료</td>
                                <td>
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="sale_in_lots_fee">
                                                <input type="text" id="sale_in_lots_fee" name="sale_in_lots_fee" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">%</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_sell" style="display: none">
                                <td class="infotd">매매가격*</td>
                                <td>
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="sell_price">
                                                <input type="text" id="sell_price" name="sell_price" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">수수료</td>
                                <td>
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="sell_fee">
                                                <input type="text" id="sell_fee" name="sell_fee" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">%</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr  class="type_charter" style="display: none">
                                <td class="infotd">전세*</td>
                                <td colspan="3">
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="charter_price">
                                                <input type="text" id="charter_deposit" name="charter_deposit" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_rental" style="display: none">
                                <td class="infotd">월세*</td>
                                <td colspan="3">
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            보증금
                                            <label for="rent_deposit">
                                                <input type="text" id="rent_deposit" name="rent_deposit" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                        <div class="input_wrap w150">
                                            월세
                                            <label for="rent_price">
                                                <input type="text" id="rent_price" name="rent_price" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">전체면적*</td>
                                <td>
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="all_area">
                                                <input type="text" id="all_area" name="all_area" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">m2</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">전용면적/공용면적*</td>
                                <td>
                                    <div class="tb_inner">
                                        전용면적
                                        <div class="input_wrap w150">
                                            <label for="exclusive_area">
                                                <input type="text" id="exclusive_area" name="exclusive_area" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">m2</span>
                                            </label>
                                        </div>
                                        공용면적
                                        <div class="input_wrap w150">
                                            <label for="common_area">
                                                <input type="text" id="common_area" name="common_area" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">m2</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">관리비</td>
                                <td colspan="3">
                                    <div class="tb_inner">
                                        <div class="input_wrap w150">
                                            <label for="maintenance_cost">
                                                <input type="text" id="maintenance_cost" name="maintenance_cost" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">만원</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">관리비 항목</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_1" id="maintenance_cost_type_1" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_1"><span>난방비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_2" id="maintenance_cost_type_2" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_2"><span>전기료</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_3" id="maintenance_cost_type_3" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_3"><span>수도료</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_4" id="maintenance_cost_type_4" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_4"><span>인터넷</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_5" id="maintenance_cost_type_5" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_5"><span>청소비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_6" id="maintenance_cost_type_6" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_6"><span>승강기유지비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_7" id="maintenance_cost_type_7" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_7"><span>수선유지비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_type_8" id="maintenance_cost_type_8" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_8"><span>기타</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">관리비 별도 부과 항목</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_1" id="maintenance_cost_other_type_1" value="Y" class="blind"/>
                                            <label for="maintenance_cost_type_1"><span>난방비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_2" id="maintenance_cost_other_type_2" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_2"><span>전기료</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_3" id="maintenance_cost_other_type_3" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_3"><span>수도료</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_4" id="maintenance_cost_other_type_4" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_4"><span>인터넷</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_5" id="maintenance_cost_other_type_5" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_5"><span>청소비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_6" id="maintenance_cost_other_type_6" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_6"><span>승강기유지비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_7" id="maintenance_cost_other_type_7" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_7"><span>수선유지비</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="maintenance_cost_other_type_8" id="maintenance_cost_other_type_8" value="Y" class="blind"/>
                                            <label for="maintenance_cost_other_type_8"><span>기타</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">건물 주차 수</td>
                                <td>
                                    <div class="input_wrap input_file">
                                        <div class="file">
                                            <input type="text" id="all_parking_cnt" name="all_parking_cnt" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">세대당 주차수</td>
                                <td>
                                    <div class="input_wrap input_file">
                                        <div class="file">
                                            <input type="text" id="one_parking_cnt" name="one_parking_cnt" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr style="display: none">
                                <td class="infotd">방수/욕실수*</td>
                                <td>
                                    <div class="tb_inner">
                                        방수
                                        <div class="input_wrap w150">
                                            <label for="room_cnt">
                                                <input type="text" id="room_cnt" name="room_cnt" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">m2</span>
                                            </label>
                                        </div>
                                        욕실수
                                        <div class="input_wrap w150">
                                            <label for="restroom_cnt">
                                                <input type="text" id="restroom_cnt" name="restroom_cnt" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                                <span class="ml5 w40">m2</span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">단기임대 여부*</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="short_rental_yn" id="short_rental_yn" value="Y" class="blind"/>
                                            <label for="short_rental_yn"><span></span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">방향*</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="east" id="east" value="Y" class="blind"/>
                                            <label for="east"><span>동</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="west" id="west" value="Y" class="blind"/>
                                            <label for="west"><span>서</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="south" id="south" value="Y" class="blind"/>
                                            <label for="south"><span>남</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="north" id="north" value="Y" class="blind"/>
                                            <label for="north"><span>북</span></label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">난방종류*</td>
                                <td>
                                    <div class="input_wrap radio">
                                        <label for="heating_system_1">
                                            <input type="radio" name="heating_system" id="heating_system_1" value="1" checked="checked">
                                            <span>개별난방</span>
                                        </label>
                                        <label for="heating_system_2">
                                            <input type="radio" name="heating_system" id="heating_system_2" value="2">
                                            <span>중앙난방</span>
                                        </label>
                                        <label for="heating_system_3">
                                            <input type="radio" name="heating_system" id="heating_system_3" value="3">
                                            <span>지역난방</span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">빌트인 여부</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="built_in_yn" id="built_in_yn" value="Y" class="blind"/>
                                            <label for="built_in_yn"><span></span></label>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd">엘리베이터 여부</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="elevator_yn" id="elevator_yn" value="Y" class="blind"/>
                                            <label for="elevator_yn"><span></span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">베란다/발코디 여부</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="veranda_yn" id="veranda_yn" value="Y" class="blind"/>
                                            <label for="veranda_yn"><span></span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">주용도*</td>
                                <td colspan="3">
                                    <div class="input_wrap w120">
                                        <div class="file">
                                            <input type="text" id="purpose" name="purpose" value="">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">사용 승인일*</td>
                                <td>
                                    <div class="td_inner">
                                        <div class="input_wrap w120 start mr10">
                                            <input type="text" class="picker" name="approval_date" readonly>
                                        </div>
                                    </div>
                                </td>
                                <td class="infotd type_charter type_rental" style="display: none">입주 가능일</td>
                                <td class="type_charter type_rental" style="display: none">
                                    <div class="td_inner">
                                        <div class="input_wrap w120 start mr10">
                                            <input type="text" class="picker" name="move_in_start_date" readonly>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">옵션</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_1" id="option_1" value="Y" class="blind"/>
                                            <label for="option_1"><span>에어컨</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_2" id="option_2" value="Y" class="blind"/>
                                            <label for="option_2"><span>냉장고</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_3" id="option_3" value="Y" class="blind"/>
                                            <label for="option_3"><span>세탁기</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_4" id="option_4" value="Y" class="blind"/>
                                            <label for="option_4"><span>빌트인</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_5" id="option_5" value="Y" class="blind"/>
                                            <label for="option_5"><span>옷장</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_6" id="option_6" value="Y" class="blind"/>
                                            <label for="option_6"><span>신발장</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_7" id="option_7" value="Y" class="blind"/>
                                            <label for="option_7"><span>인덕션</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_8" id="option_8" value="Y" class="blind"/>
                                            <label for="option_8"><span>가스레인지</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="option_9" id="option_9" value="Y" class="blind"/>
                                            <label for="option_9"><span>전자도어락</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">보안/안전시설</td>
                                <td colspan="3">
                                    <div class="td_inner">
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="security_1" id="security_1" value="Y" class="blind"/>
                                            <label for="security_1"><span>CCTV</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="security_2" id="security_2" value="Y" class="blind"/>
                                            <label for="security_2"><span>공동현관</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="security_3" id="security_3" value="Y" class="blind"/>
                                            <label for="security_3"><span>방범창</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="security_4" id="security_4" value="Y" class="blind"/>
                                            <label for="security_4"><span>인터폰</span></label>
                                        </div>
                                        <div class="check_wrap routeCheck">
                                            <input type="checkbox" name="security_5" id="security_5" value="Y" class="blind"/>
                                            <label for="security_5"><span>화재경보기</span></label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">우편주소*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file">
                                        <div class="file">
                                            <input type="text" id="zip_code" name="zip_code" value="" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            <label for="zip_code" class="button_90" onclick="address_open()">주소 찾기</label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd" rowspan="2">주소*</td>
                                <td colspan="3">
                                    <div class="input_wrap w400">
                                        <input type="text" id="address1" name="address1" value="">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="input_wrap w400">
                                        <input type="text" id="address2" name="address2" value="">
                                    </div>
                                </td>
                            </tr>
                            <tr class="type_charter type_rental type_sell" style="display: none">
                                <td class="infotd">집주인 연락처</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="master_tel" name="master_tel" value="">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="infotd">중개 담당자 전화번호*</td>
                                <td colspan="3">
                                    <div class="input_wrap w283">
                                        <input type="text" id="broker_tel" name="broker_tel" value="">
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

        // 돈 콤마 처리
        $('[name=sale_in_lots_price], [name=sell_price], [name=charter_price], [name=monthly_rent_deposit_price], [name=monthly_rent_price], [name=maintenance_cost]').keyup(function(){
            const $this = $(this);
            $this.val($this.val().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
        });

        // 전화번호 형식 자동 변경
        $('[name=master_tel], [name=broker_tel]').keyup(function(){
            const $this = $(this);
            let tel = $this.val();
            tel = tel.replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-");
            $this.val(tel);
        });

        // 구분 클릭
        $('[name=type_charter], [name=type_rental], [name=type_sell], [name=type_parcel_out]').click(function(){

            $('.type_charter').hide();
            $('.type_rental').hide();
            $('.type_sell').hide();
            $('.type_parcel_out').hide();

            if($('[name=type_charter]').is(':checked')) {
                $('.type_charter').show();
            }
            if($('[name=type_rental]').is(':checked')) {
                $('.type_rental').show();
            }
            if($('[name=type_sell]').is(':checked')) {
                $('.type_sell').show();
            }
            if($('[name=type_parcel_out]').is(':checked')) {
                $('.type_parcel_out').show();
            }
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
            alert('10mb까지만 업로드 가능합니다.');
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
        location.href = '/admin/jointBrokerage/jointBrokerageList?page=${page}';
    }

    /**
     * 저장
     */
    function save(){

        if(!validation_check()){
            return;
        } else if(!confirm(save_msg)){
            return;
        }

        let ajax_data = new FormData($("#regForm")[0]);

        $.ajax({
            url:'/admin/jointBrokerage/jointBrokerage_save', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            data: ajax_data, //보낼 데이터
            async:false,
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

    function validation_check(){

        if($('[name=title]').val().trim() == ''){
            alert('제목을 입력하여 주세요.');
            return false;
        } else if(!$('[name=type_charter]').is(':checked') && !$('[name=type_rental]').is(':checked') && !$('[name=type_sell]').is(':checked') && !$('[name=type_parcel_out]').is(':checked')) {
            alert('구분을 선택하여 주세요.');
            return false;
        }

        if($('[name=type_charter]').is(':checked')) {
            if(!$('[name=one_room]').is(':checked') &&
                !$('[name=two_room]').is(':checked') &&
                !$('[name=three_room]').is(':checked') &&
                !$('[name=for_room]').is(':checked') &&
                !$('[name=office]').is(':checked')) {
                alert('방종류를 선택하여 주세요.');
                return false;
            } else if($('[name=charter_price]').val().trim() == '') {
                alert('전세가격을 입력하여 주세요.');
                return false;
            } else if($('[name=all_area]').val().trim() == '') {
                alert('전체면적을 입력하여 주세요.');
                return false;
            } else if($('[name=exclusive_area]').val().trim() == '') {
                alert('전용면적을 입력하여 주세요.');
                return false;
            } else if($('[name=common_area]').val().trim() == '') {
                alert('공통면적을 입력하여 주세요.');
                return false;
            } else if($('[name=maintenance_cost]').val().trim() == '') {
                alert('관리비를 입력하여 주세요.');
                return false;
            } else if(!$('[name=maintenance_cost_type_1]').is(':checked') &&
                !$('[name=maintenance_cost_type_2]').is(':checked') &&
                !$('[name=maintenance_cost_type_3]').is(':checked') &&
                !$('[name=maintenance_cost_type_4]').is(':checked') &&
                !$('[name=maintenance_cost_type_5]').is(':checked') &&
                !$('[name=maintenance_cost_type_6]').is(':checked') &&
                !$('[name=maintenance_cost_type_7]').is(':checked') &&
                !$('[name=maintenance_cost_type_8]').is(':checked')
            ) {
                alert('관리지 항목을 선택하여 주세요.');
                return false;
            } else if(!$('[name=maintenance_cost_other_type_1]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_2]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_3]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_4]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_5]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_6]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_7]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_8]').is(':checked')
            ) {
                alert('관리지 별도 항목을 선택하여 주세요.');
                return false;
            } else if(!$('[name=east]').is(':checked') &&
                !$('[name=west]').is(':checked') &&
                !$('[name=south]').is(':checked') &&
                !$('[name=north]').is(':checked')
            ) {
                alert('방향을 선택하여 주세요.');
                return false;
            } else if($('[name=zip_code]').val().trim() == '') {
                alert('우편번호를 입력하여 주세요.');
                return false;
            } else if($('[name=address1]').val().trim() == '') {
                alert('주소를 입력하여 주세요.');
                return false;
            } else if($('[name=broker_tel]').val().trim() == '') {
                alert('중개 담당자 전화번호를 입력하여 주세요.');
                return false;
            }

        }

        if($('[name=type_rental]').is(':checked')) { // 월세

            if(!$('[name=one_room]').is(':checked') &&
                !$('[name=two_room]').is(':checked') &&
                !$('[name=three_room]').is(':checked') &&
                !$('[name=for_room]').is(':checked') &&
                !$('[name=office]').is(':checked')) {
                alert('방종류를 선택하여 주세요.');
                return false;
            } else if($('[name=rent_deposit]').val().trim() == '') {
                alert('월세 보증금을 입력하여 주세요.');
                return false;
            } else if($('[name=rent_price]').val().trim() == '') {
                alert('월세를 입력하여 주세요.');
                return false;
            } else if($('[name=all_area]').val().trim() == '') {
                alert('전체면적을 입력하여 주세요.');
                return false;
            } else if($('[name=exclusive_area]').val().trim() == '') {
                alert('전용면적을 입력하여 주세요.');
                return false;
            } else if($('[name=common_area]').val().trim() == '') {
                alert('공통면적을 입력하여 주세요.');
                return false;
            } else if($('[name=maintenance_cost]').val().trim() == '') {
                alert('관리비를 입력하여 주세요.');
                return false;
            } else if(!$('[name=maintenance_cost_type_1]').is(':checked') &&
                !$('[name=maintenance_cost_type_2]').is(':checked') &&
                !$('[name=maintenance_cost_type_3]').is(':checked') &&
                !$('[name=maintenance_cost_type_4]').is(':checked') &&
                !$('[name=maintenance_cost_type_5]').is(':checked') &&
                !$('[name=maintenance_cost_type_6]').is(':checked') &&
                !$('[name=maintenance_cost_type_7]').is(':checked') &&
                !$('[name=maintenance_cost_type_8]').is(':checked')
            ) {
                alert('관리지 항목을 선택하여 주세요.');
                return false;
            } else if(!$('[name=maintenance_cost_other_type_1]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_2]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_3]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_4]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_5]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_6]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_7]').is(':checked') &&
                !$('[name=maintenance_cost_other_type_8]').is(':checked')
            ) {
                alert('관리지 별도 항목을 선택하여 주세요.');
                return false;
            } else if(!$('[name=east]').is(':checked') &&
                !$('[name=west]').is(':checked') &&
                !$('[name=south]').is(':checked') &&
                !$('[name=north]').is(':checked')
            ) {
                alert('방향을 선택하여 주세요.');
                return false;
            } else if($('[name=zip_code]').val().trim() == '') {
                alert('우편번호를 입력하여 주세요.');
                return false;
            } else if($('[name=address1]').val().trim() == '') {
                alert('주소를 입력하여 주세요.');
                return false;
            } else if($('[name=broker_tel]').val().trim() == '') {
                alert('중개 담당자 전화번호를 입력하여 주세요.');
                return false;
            }

        }
        if($('[name=type_sell]').is(':checked')) { // 매매

            if(!$('[name=sell_1]').is(':checked') &&
                !$('[name=sell_2]').is(':checked') &&
                !$('[name=sell_3]').is(':checked') &&
                !$('[name=sell_4]').is(':checked') &&
                !$('[name=sell_5]').is(':checked') &&
                !$('[name=sell_6]').is(':checked') &&
                !$('[name=sell_7]').is(':checked') &&
                !$('[name=sell_8]').is(':checked') &&
                !$('[name=sell_9]').is(':checked') &&
                !$('[name=sell_10]').is(':checked')
            ) {
                alert('매매 종류를 선택하여 주세요.');
                return false;
            } else if ($('[name=sell_price]').val().trim() == '') {
                alert('매매가격을 입력하여 주세요.');
                return false;
            } else if ($('[name=sell_fee]').val().trim() == '') {
                alert('매매 수수료를 입력하여 주세요.');
                return false;
            } else if($('[name=all_area]').val().trim() == '') {
                alert('전체면적을 입력하여 주세요.');
                return false;
            } else if($('[name=exclusive_area]').val().trim() == '') {
                alert('전용면적을 입력하여 주세요.');
                return false;
            } else if($('[name=common_area]').val().trim() == '') {
                alert('공통면적을 입력하여 주세요.');
                return false;
            } else if(!$('[name=east]').is(':checked') &&
                !$('[name=west]').is(':checked') &&
                !$('[name=south]').is(':checked') &&
                !$('[name=north]').is(':checked')
            ) {
                alert('방향을 선택하여 주세요.');
                return false;
            } else if($('[name=zip_code]').val().trim() == '') {
                alert('우편번호를 입력하여 주세요.');
                return false;
            } else if($('[name=address1]').val().trim() == '') {
                alert('주소를 입력하여 주세요.');
                return false;
            } else if($('[name=broker_tel]').val().trim() == '') {
                alert('중개 담당자 전화번호를 입력하여 주세요.');
                return false;
            }

        }

        if($('[name=type_parcel_out]').is(':checked')) { // 분양

            if(!$('[name=sale_in_lots_1]').is(':checked') &&
                !$('[name=sale_in_lots_2]').is(':checked') &&
                !$('[name=sale_in_lots_3]').is(':checked') &&
                !$('[name=sale_in_lots_4]').is(':checked') &&
                !$('[name=sale_in_lots_5]').is(':checked') &&
                !$('[name=sale_in_lots_6]').is(':checked') &&
                !$('[name=sale_in_lots_7]').is(':checked') &&
                !$('[name=sale_in_lots_8]').is(':checked') &&
                !$('[name=sale_in_lots_9]').is(':checked') &&
                !$('[name=sale_in_lots_10]').is(':checked')
            ) {
                alert('분양 종류를 선택하여 주세요.');
                return false;
            } else if ($('[name=sell_price]').val().trim() == '') {
                alert('매매가격을 입력하여 주세요.');
                return false;
            } else if ($('[name=sell_fee]').val().trim() == '') {
                alert('매매 수수료를 입력하여 주세요.');
                return false;
            } else if($('[name=all_area]').val().trim() == '') {
                alert('전체면적을 입력하여 주세요.');
                return false;
            } else if($('[name=exclusive_area]').val().trim() == '') {
                alert('전용면적을 입력하여 주세요.');
                return false;
            } else if($('[name=common_area]').val().trim() == '') {
                alert('공통면적을 입력하여 주세요.');
                return false;
            } else if(!$('[name=east]').is(':checked') &&
                !$('[name=west]').is(':checked') &&
                !$('[name=south]').is(':checked') &&
                !$('[name=north]').is(':checked')
            ) {
                alert('방향을 선택하여 주세요.');
                return false;
            } else if($('[name=zip_code]').val().trim() == '') {
                alert('우편번호를 입력하여 주세요.');
                return false;
            } else if($('[name=address1]').val().trim() == '') {
                alert('주소를 입력하여 주세요.');
                return false;
            } else if($('[name=broker_tel]').val().trim() == '') {
                alert('중개 담당자 전화번호를 입력하여 주세요.');
                return false;
            }
        }
    }
</script>