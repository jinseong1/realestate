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

/** 전체 체크 박스 */
function jsCheckBoxAll(){
    var $checkAll = $('#checkAll');
    $checkAll.click(function(e){
        $('.blind').prop('checked', $checkAll.is(":checked"));
    });
}

function windowReload(){
    location.reload();
}

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

function get_administrative_district(country, city){

    var ajax_data = {};
    ajax_data.country = country;
    ajax_data.city    = city;

    $.ajax({
        url:'/common/get_administrative_district', //request 보낼 서버의 경로
        type:'post', // 메소드(get, post, put 등)
        data:ajax_data, //보낼 데이터
        async : false,
        success: function(data) {
            return data;
        },
        error: function(err) {
            console.log(err);
        }
    });

}

function history_change(page){
    var renewURL = location.href; // 현재 url 가져오기
    
    renewURL = renewURL.replace(/\&page=([0-9]+)/ig,'').replace(/\?page=([0-9]+)/ig,''); // page 있을 시 제거

    localStorogeSave(renewURL);

    renewURL += '?page='+page; // page 넣기

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
    localStorage.setItem("start_date", $('.start .picker').val());
    localStorage.setItem("end_date",   $('.end .picker').val());
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