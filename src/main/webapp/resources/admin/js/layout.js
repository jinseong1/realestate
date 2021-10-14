/*
 * File       : layout.js
 * Author     : m-sync (baeyoungseop)
 *  
 * SUMMARY:
 *  1) 헤더, 푸터 컴포넌트화
 *  2) 관리자 메뉴 (관리자정보, 로그아웃) 토글
 */

$(document).ready(function() {
    
    // 1) 헤더, 푸터 컴포넌트화
    // w3.includeHTML(function() {
    //     callbackHTML();
    // });


	(function callbackHTML() {
        // FIXME: 컴포넌트화 비동기 처리를 위한 콜백
        // 실제 라이브 적용시 콜백으로 사용하지 않아야함.


        // 2) 관리자 메뉴 (관리자정보, 로그아웃) 토글
        (function() {
            var isView = false;
            $('#header .admin_menu_wrap h4').on({
                click: function() {
                    if (!isView) {
                        var target = $(this).siblings('.admin_menu');
                        TweenMax.set(target, {height: 'auto'});
                        TweenMax.from(target, 0.4, {
                            ease: Expo.easeOut,
                            force3D: true,
                            height: 0,
                        });
                        isView = !isView;
                    } else {
                        var target = $(this).siblings('.admin_menu');
                        TweenMax.to(target, 0.4, {
                            ease: Expo.easeOut,
                            force3D: true,
                            height: 0,
                        });
                        isView = !isView;
                    };
                }
            });
        })();

    })();

    $('.admin_popup .close').click(function(){
        popupHide($(this).closest('.admin_popup'));
    });
});

//popup common js
function popupShow(cont) {
    cont.fadeIn();
}
function popupHide(cont) {
    cont.hide();
}
function twoNumber(num) {
    return num < 10 ? '0'+num : num;
}