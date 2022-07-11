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
                        <h2>홈페이지 등록</h2>
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
                                <td class="infotd">홈페이지 등록 자료*</td>
                                <td colspan="3">
                                    <div class="input_wrap input_file fl_l">
                                        <div class="file">
                                            <input type="file" onchange="javascript:file_change(this)" name="zip" id="zip">
                                            <input type="hidden" id="zip_path" name="zip_path" value="${data.ZIP_PATH}">
                                            <input type="text" readonly id="zip_name" name="zip_name" value="${data.ZIP_NAME}">
                                            <label for="zip" class="button_90">찾아보기</label>
                                            <button type="button" class="delete_btn mr10" onclick="javascript:file_del('zip')">삭제</button>
                                            <span>zip 파일 최대 200MB까지 업로드 가능</span>
                                        </div>
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

        $('input[name=connect_tel]').on('keyup', function(){
            $(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
        });

        page_load();

    });

    function list(){
        location.href = "/admin/homepage/homepageList?page=1";
    }

    function file_change(obj) {

        const $this = $(obj);
        let file_name = $this.val().split("\\").pop();
        const file_type = file_name.substring(file_name.lastIndexOf("."), file_name.length).toLowerCase();

        if(file_type != '.zip'){
            $('#zip_path').val('');
            $('#zip_name').val('');
            alert('zip만 업로드 가능합니다.');
            return false;
        }
        if(!filesize_check($this, 200)){
            $('#zip_path').val('');
            $('#zip_name').val('');
            alert('파일 용량은 200mb까지만 업로드 가능합니다.');
            return false;
        }
        $('#zip_name').val($this.val().split("\\").pop());

    }

    function file_del(name){
        $('#zip_path').val('');
        $('#zip_name').val('');
    }

    function save(){

        if($('#homepage_name').val().trim() == '') {
            alert('홈페이지명을 입력하여 주세요.');
            return;
        }
        if($('#connect_tel').val().trim() == '') {
            alert('연락처를 입력하여 주세요.');
            return;
        }
        if(!confirm(save_msg)) {
            return;
        }

        /* 저장처리 */
        $.ajax({
            url:'/admin/homepage/homepage_temp_save', //request 보낼 서버의 경로
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
                    list();
                } else {

                }
            },
            error: function(err) {
                alert('에러가 발생하였습니다. 관리자에게 문의 바립니다.');
            }
        });

    }

</script>
