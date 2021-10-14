/*
 * File       : csDatepicker.js
 * Author     : m-sync (baeyoungseop)
 */

$(document).ready(function(){
    
    // 1) date picker
    var pickerOption = {
        language: 'ko',
        todayButton: new Date(),
        position: 'bottom left',
        dateFormat: 'yyyy-M-dd',
        autoClose: true,
    }

    $('.picker').each(function() {
        var _this = $(this);
        _this.datepicker(pickerOption);
    });

    $('.end .picker').each(function(i){
        $(this).data('datepicker').update({
            position: 'bottom right',
            onSelect: function(fd, date) {
                var startDate = $('.start .picker').eq(i).val();
                var endDate = $('.end .picker').eq(i).val();

                if (parseInt(startDate.replace("-","").replace("-","").replace(":","").replace(" ","")) - parseInt(endDate.replace("-","").replace("-","").replace(":","").replace(" ","")) > 0) {
                    // 종료일 적용시 시작일보다 과거일 때 시작일 = 종료일 수정
                    $('.start .picker').eq(i).val(endDate);
                }

                var sdd = endDate;
                var edd = startDate;
                var ar1 = sdd.split('-');
                var ar2 = edd.split('-');
                var da1 = new Date(ar1[0], ar1[1], ar1[2]);
                var da2 = new Date(ar2[0], ar2[1], ar2[2]);
                var dif = da2 - da1;
                var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
                var cMonth = cDay * 30;// 월 만듬
                if((sdd && edd) && dif/cMonth < -6){ // 6달 초과시
                    alert('최대 검색할 수 있는 기간은 6개월입니다.');
                    $('.start .picker').eq(i).val('');
                    $('.end .picker').eq(i).val('');
                }
            }
        })
    });

    $('.start .picker').each(function(i){
        $(this).data('datepicker').update({
            position: 'bottom right',
            onSelect: function(fd, date) {
                var startDate = $('.start .picker').eq(i).val();
                var endDate = $('.end .picker').eq(i).val();

                var sdd = endDate;
                var edd = startDate;
                var ar1 = sdd.split('-');
                var ar2 = edd.split('-');
                var da1 = new Date(ar1[0], ar1[1], ar1[2]);
                var da2 = new Date(ar2[0], ar2[1], ar2[2]);
                var dif = da2 - da1;
                var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
                var cMonth = cDay * 30;// 월 만듬
                if((sdd && edd) && dif/cMonth < -6){ // 6달 초과시
                    alert('최대 검색할 수 있는 기간은 6개월입니다.');
                    $('.start .picker').eq(i).val('');
                    $('.end .picker').eq(i).val('');
                }
            }
        })
    });

    $('.end1 .picker').each(function(i){
        $(this).data('datepicker').update({
            position: 'bottom right',
            onSelect: function(fd, date) {
                var startDate1 = $('.start1 .picker').eq(i).val();
                var endDate1 = $('.end1 .picker').eq(i).val();
                if (parseInt(startDate1.replace("-","").replace("-","").replace(":","").replace(" ","")) - parseInt(endDate1.replace("-","").replace("-","").replace(":","").replace(" ","")) > 0) {
                    // 종료일 적용시 시작일보다 과거일 때 시작일 = 종료일 수정
                    $('.start1 .picker').eq(i).val(endDate1);
                }
            }
        });
    });

});

// date picker language set
;(function ($) { $.fn.datepicker.language['ko'] = {
    days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
    daysShort: ['일', '월', '화', '수', '목', '금', '토'],
    daysMin: ['일','월', '화', '수', '목', '금', '토'],
    months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
    monthsShort: ['01','02','03','04','05','06', '07','08','09','10','11','12'],
    today: '오늘',
    clear: '초기화',
    dateFormat: 'mm/dd/yyyy',
    timeFormat: 'hh:mm',
    firstDay: 0
}; })(jQuery);
