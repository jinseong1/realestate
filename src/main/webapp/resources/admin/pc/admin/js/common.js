/*
 * File       : common.js
 * Author     : m-sync (baeyoungseop, kimkyungran)
 *
 * SUMMARY:
 *  1) 헤더, 푸터 컴포넌트화
 *  2) 관리자 메뉴 (관리자정보, 로그아웃) 토글
 *  3) LIST 페이지 체크박스 전체 체크
 *  4) 사진첨부 파일선택 텍스트 입력
 *  5) LIST 메뉴 오름차순, 내림차순 클래스 부여
 *  6) 공통 - 팝업 창 closing
 *  7) 색상 추가 페이지 팝업
 *  8) 색상 추가 페이지 이미지 클릭 팝업
 *  9) 매장 등록 항목 설정 버튼 팝업
 * 10) 로그 페이지 조회 버튼 조회 내용 팝업
 */

$(document).ready(function() {

    jsCheckBoxAll();

    // 1) LNB 메뉴 배경 및 선택 토글
    $('.side_menu_wrap .menu_title li').on({
        click:function(){

            $(this).parents('.side_menu_wrap').find('.menu_title li').removeClass('on');
            $(this).addClass('on').siblings().removeClass('on');
        }
    })

    $('.option_list .hidden_option li').eq(0).addClass('blue');



    // 2) 페이징 현재 페이지 표시
    $('.page_num .page').on({
        click:function(){
            $(this).addClass('on').siblings().removeClass('on');
        }
    }).eq(0).click();


    // 3) LIST 페이지 체크박스 전체 체크
    $('#checkAll').on({
        click:function(){
            if ($('#checkAll').is(":checked")){
                $('.grid_wrap').find("input[name=listCheck]").prop("checked",true);
            }else{
                $('.grid_wrap').find("input[name=listCheck]").prop("checked",false);
            }
        }
    })


    // 6) 공통 - 팝업 창 closing
    $('.close_btn, .close').on({
        click:function(){
            $(this).parents('.modal').hide();
        }
    })

    /*$('.info_tab li').on({
        click:function(e) {
            var idx = $(this).index();
            $(this).addClass('on').siblings().removeClass('on');
            $('.rental_grid').hide().eq(idx).show();

        }
    }).eq(0).click();*/


    $('.viewContract').on ({
        click:function(){
            $('.contract').show();
        }
    })

    $('.cancelBtn').on({
        click:function () {
            window.close();
        }
    })

    $('.datepicker').css({ "margin-left" : "141px", "margin-top": "-223px"});

    ///// rentalList sms발송 체크박스 설정 ///
    var coaching = $('.coaching');
    var call = $('.call');
    var orderNumber = null;

    $('input[name="coaching"]').change(function(e) {
        var check = $(this).prop('checked');
        if (check) {
            coaching.show();
            //주문 번호 찾기
            orderNumber = $(this).parents('tr').find('.order_number a').text();
        } else {
            //승인 시 강제로 check 걸어줌
            $(this).prop('checked', !check);
        }
    });
    $('.coaching .cancel, .coaching .close_btn').click(function() {
        // 취소시
        coaching.hide();
        $('.order_number a').each(function() {
            if ($(this).text() === orderNumber) { //text가 orderNumber 데이터와 같을 때
                $(this).parents('tr').find('input[name="coaching"]').prop('checked', false);
                // 해당 체크박스 찾아서 해제해주기.
            }
        });
    });
    $('.coaching .approve').click(function() {
        coaching.hide();
    });

    $('input[name="call"]').change(function(e) {
        var check = $(this).prop('checked');
        if (check) {
            call.show();
            //주문 번호 찾기
            orderNumber = $(this).parents('tr').find('.order_number a').text();
        } else {
            //승인 시 강제로 check 걸어줌
            $(this).prop('checked', !check);
        }
    });
    $('.call .cancel, .call .close_btn').click(function() {
        // 취소시
        call.hide();
        $('.order_number a').each(function() {
            if ($(this).text() === orderNumber) { //text가 orderNumber 데이터와 같을 때
                $(this).parents('tr').find('input[name="call"]').prop('checked', false);
                // 해당 체크박스 찾아서 해제해주기.
            }
        });
    });
    $('.call .approve').click(function() {
        call.hide();
    });


});

/**
 * 시간 세팅
 * @param className
 * @param type
 */
function setTime(className, type){

    $("."+className).html('');

    switch(type){
        case 'Y':
            var thisYear = new Date().getFullYear();

            for(var i = thisYear ; i >= 1995; i--){
                $("."+className).append("<option value='" + i + "'>" + i + "년" + "</option>");
            }
            break;
        case 'y':
            var thisYear = new Date().getFullYear();

            for(var i = thisYear ; i >= 1900; i--){
                $("."+className).append("<option value='" + i + "'>" + i + "년" + "</option>");
            }
            break;
        case 'y_next':
            var thisYear = new Date().getFullYear()+1;

            for(var i = thisYear ; i >= 1900; i--){
                $("."+className).append("<option value='" + i + "'>" + i + "년" + "</option>");
            }
            break;
        case 'y_d':
            var thisYear = new Date().getFullYear();

            $("."+className).append("<option value=''>선택</option>");

            for(var i = 1955 ; i <= thisYear; i++){
                $("."+className).append("<option value='" + i + "'>" + i + "년" + "</option>");
            }
            /*
            for(var i = thisYear ; i >= 1900; i--){
                $("."+className).append("<option value='" + i + "'>" + i + "년" + "</option>");
            }
             */
            break;

        case 'M':
            for(var i = 1 ; i <= 12; i++){
                $("."+className).append("<option value='" + i + "'>" + i + "월" + "</option>");
            }
            break;
        case '0M':
            for(var i = 1 ; i <= 12; i++){
                if(i > 9){
                    $("."+className).append("<option value='" + i + "'>" + i + "월" + "</option>");
                } else {
                    $("."+className).append("<option value='0" + i + "'>" + i + "월" + "</option>");
                }
            }
            break;
        case 'H':
            for(var i = 0 ; i <= 23; i++){
                $("."+className).append("<option value='" + i + "'>" + i + "시" + "</option>");
            }
            break;
        case 'm':
            for(var i = 0 ; i <= 59; i++){
                $("."+className).append("<option value='" + i + "'>" + i + "분" + "</option>");
            }
            break;
        case '0H':
            for(var i = 0 ; i <= 23; i++){
                if(i > 9){
                    $("."+className).append("<option value='" + i + "'>" + i + "시" + "</option>");
                } else {
                    $("."+className).append("<option value='0" + i + "'>" + i + "시" + "</option>");
                }
            }
            break;
        case '0m':
            for(var i = 0 ; i <= 59; i++){
                if(i > 9){
                    $("."+className).append("<option value='" + i + "'>" + i + "분" + "</option>");
                } else {
                    $("."+className).append("<option value='0" + i + "'>" + i + "분" + "</option>");
                }
            }
            break;
    }
}

function page_init(){

    $('input[name=regDateStart]').val('');
    $('input[name=regDateEnd]').val('');
    $('input:radio[name=book_category]:radio[value=""]').prop('checked', true);
    $('#type_text').val('');
    $('select[name=type]').val('ALL');
    $('input:radio[name=exposure]:radio[value=""]').prop('checked', true);
    $('input:radio[name=member_type]:radio[value="ALL"]').prop('checked', true);
    $('input[name=reg_date_start]').val('');
    $('input[name=reg_date_end]').val('');

    $('input[name=pub_date_start]').val('');
    $('input[name=pub_date_end]').val('');
    $('select[name=category_idx]').val('');
    $('input[name=name]').val('');

    $('input[name=status_1]').prop('checked', true);
    $('input[name=status_3]').prop('checked', true);
    $('input[name=start_date]').val('');
    $('select[name=start_date_h]').val('00');
    $('select[name=start_date_m]').val('00');
    $('input[name=end_date]').val('');
    $('select[name=end_date_h]').val('00');
    $('select[name=end_date_m]').val('00');
    $('select[name=inquiry_type]').val('');
    $('select[name=person_in_charge]').val('');
    $('select[name=category]').val('');
    $('input[name=book_name]').val('');
    $('input[name=banner_name]').val('');
    $('input[name=best]').prop('checked', true);
    $('input[name=recomend]').prop('checked', true);
    $('input[name=etc]').prop('checked', true);
    $('input[name=category_text]').val('');
    $('select[name=view_path]').val('');
    $('select[name=city]').val('');
    $('select[name=state]').val('');
    $('input[name=cate_1]').prop('checked', true);
    $('input[name=cate_2]').prop('checked', true);
    $('input[name=cate_3]').prop('checked', true);
    $('input[name=cate_4]').prop('checked', true);
    $('select[name=year]').val('');
    $('select[name=th]').val('');
    $('select[name=faq_category]').val('');
    $('input:radio[name=notice_type]:radio[value=""]').prop('checked', true);
    $('input:radio[name=notice_n_type]:radio[value=""]').prop('checked', true);
    $('input[name=text]').val('');

    $('input[name=first_becoming_start]').val('');
    $('input[name=first_becoming_end]').val('');

    $('input[name=general]').prop('checked', true);
    $('input[name=kakao]').prop('checked', true);
    $('input[name=naver]').prop('checked', true);
    $('input[name=facebook]').prop('checked', true);

    $('input:radio[name=level_idx]:radio[value="100"]').prop('checked', true);
    $('input:radio[name=sel_privacy]:radio[value="all"]').prop('checked', true);
}

/**
 * 서버 경고 알림.
 * @param error
 */
function alert_msg(error){
    alert(error.responseJSON.message);
}

/**
 * Ajax 에러 로그 저장
 * @param err_msg
 */
function error_msg_save(error_msg){
    var ajax_data = {};
    ajax_data.error_msg = error_msg;

    $.ajax({
        url:'/common/error_msg_save', //request 보낼 서버의 경로
        type:'post', // 메소드(get, post, put 등)
        data:ajax_data, //보낼 데이터
        async : false,
        success:function(){
            alert('1');
        },
        error:function(){
            alert('2');
        }
    });
}

/** 전체 체크 박스 */
function jsCheckBoxAll(){
    var $checkAll = $('#checkAll');
    $checkAll.click(function(e){
        $('.blind').prop('checked', $checkAll.is(":checked"));
    });
}

/**
 * 벨리데이션 체크
 * @param data
 * @param msg
 */
function validation(data, msg){
    if(trim(data) == ''){
        alert(msg);
        return false;
    } else {
        return true;
    }
}

/**
 * 좌우 공백 제거
 * @param data
 * @returns {*}
 */
function trim(data){
    return $.trim(data);
}

/**
 * 원 컴마 찍기
 * ex) 10000 -> 10,000
 */
function wonComma(money){
    return String(money).replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
}

/**
 * 파일 사이즈 체크
 * @param fileObj
 * @param listSize
 * @returns {boolean}
 */
function filesize_check(fileObj, listSize){
    var fileSize = document.getElementById($(fileObj).attr("id")).files[0].size;
    var maxSize = listSize * 1024 * 1024;//2MB
    if(fileSize > maxSize){
        return false;
    } else {
        return true;
    }
}

/**
 * 글자 수 바이트 구하기
 * @param obj
 * @returns {*}
 */
function getByte(obj){
    var pattern = /[\u0000-\u007f]|([\u0080-\u07ff]|(.))/g;
    return obj.replace(pattern, "$&$1$2").length; //15
}

/**
 * 바이트 수 제한
 * @param obj
 * @param maxByte
 * @param id
 */
function fnChkByte(obj, maxByte, id)
{
    var str = obj.value;
    var str_len = str.length;

    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";

    for(var i=0; i<str_len; i++)
    {
        one_char = str.charAt(i);
        if(escape(one_char).length > 4) {
            rbyte += 3;                                         //한글2Byte
        }else{
            rbyte++;                                            //영문 등 나머지 1Byte
        }
        if(rbyte <= maxByte){
            rlen = i+1;                                          //return할 문자열 갯수
        }
    }
    if(rbyte > maxByte)
    {
        // alert("한글 "+(maxByte/2)+"자 / 영문 "+maxByte+"자를 초과 입력할 수 없습니다.");
        alert("최대 " + maxByte + "byte를 초과할 수 없습니다.")
        str2 = str.substr(0,rlen);                                  //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
    }
    else
    {
        document.getElementById(id).innerText = rbyte;
    }
}

/**
 * 로딩바 보여주기
 */
function show_loading(){
 //  +   ((document.body.clientHeight - document.scrollingElement.scrollTop) + document.scrollingElement.scrollTop)
    var obj = $('#loader');
    var iHeight = document.scrollingElement.scrollTop + 400;
    //var iWidth  = ((document.body.clientWidth / 2));

    obj.css({
        position: 'absolute'
        , display:'block'
        , top: iHeight
        , left: '50%'
    });

    $('#loader').show();
}

function hide_loading(){
    $('#loader').hide();
}

function history_change(page){
    var renewURL = location.href; // 현재 url 가져오기
    
    if(renewURL.indexOf('activeId') != -1){
        renewURL = renewURL.replace(/\&page=([0-9]+)/ig,''); // page 있을 시 제거

        localStorogeSave(renewURL);

        renewURL += '&page='+page; // page 넣기
    } else {
        renewURL = renewURL.replace(/\?page=([0-9]+)/ig,''); // page 있을 시 제거

        localStorogeSave(renewURL);

        renewURL += '?page='+page; // page 넣기
    }

    history.pushState(null, null, renewURL); // url 변경 처리
}

/**
 * 검색 조건 담기
 * @param url
 */
function localStorogeSave(url){

    // 화면이 달라졌을 경우 다시 담는다.
    if(localStorage.getItem("url") != url){
        localStorage.setItem("url",        url);
    }

    /**
     * 달력이 여러개 인 경우가 있어 화면 별 달력 정보를 담는다.
     */
    if(url.indexOf('/admin/member/dormantMember') != -1){ // 휴먼 회원
        localStorage.setItem("first_becoming_start", $('input[name=first_becoming_start]').val());
        localStorage.setItem("first_becoming_end",   $('input[name=first_becoming_end]').val());
        localStorage.setItem("dormant_date_start",   $('input[name=dormant_date_start]').val());
        localStorage.setItem("dormant_date_end",     $('input[name=dormant_date_end]').val());
    } else if (url.indexOf('/admin/site/popup') != -1) { // 팝업관리
        localStorage.setItem("reg_date_start", $('input[name=reg_date_start]').val());
        localStorage.setItem("reg_date_end",   $('input[name=reg_date_end]').val());
        localStorage.setItem("start_date",     $('input[name=start_date]').val());
        localStorage.setItem("end_date",       $('input[name=end_date]').val());
    } else if(url.indexOf('/admin/books/published_volume') != -1 || url.indexOf('/admin/books/polar_books') != -1) { // 단행본 혹은 폴라북시
        localStorage.setItem("reg_date_start", $('input[name=reg_date_start]').val());
        localStorage.setItem("reg_date_end",   $('input[name=reg_date_end]').val());
        localStorage.setItem("pub_date_start", $('input[name=pub_date_start]').val());
        localStorage.setItem("pub_date_end",   $('input[name=pub_date_end]').val());
    } else if(url.indexOf('/admin/customerService/inquiry') != -1) { // 1:1 문의
        localStorage.setItem("reg_date_start", $('input[name=reg_date_start]').val());
        localStorage.setItem("reg_date_end",   $('input[name=reg_date_end]').val());
        localStorage.setItem("start_date",     $('input[name=start_date]').val());
        localStorage.setItem("end_date",      $('input[name=end_date]').val());
    } else { // 나머지
        localStorage.setItem("start_date", $('.start .picker').val());
        localStorage.setItem("end_date",   $('.end .picker').val());
    }
}