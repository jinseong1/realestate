<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/mob/include.jsp"%>
<!-- App Bottom Menu -->
<div class="appBottomMenu">
    <a href="javascript:void(0);" class="item active">
        <div class="col">
            <ion-icon name="home-outline"></ion-icon>
        </div>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="col">
            <ion-icon name="person-outline"></ion-icon>
        </div>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="col">
            <ion-icon name="calendar-outline"></ion-icon>
        </div>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="col">
            <ion-icon name="business-outline"></ion-icon>
        </div>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="col">
            <ion-icon name="body-outline"></ion-icon>
        </div>
    </a>
</div>
<!-- * App Bottom Menu -->

<!-- App Sidebar -->
<div class="offcanvas offcanvas-start" tabindex="-1" id="sidebarPanel">
    <div class="offcanvas-body">
        <!-- profile box -->
        <div class="profileBox">
            <div class="image-wrapper">
                <img src="/resources/admin/mob/img/sample/avatar/avatar1.jpg" alt="image" class="imaged rounded">
            </div>
            <div class="in">
                <strong>Julian Gruber</strong>
                <div class="text-muted">
                    <ion-icon name="location"></ion-icon>
                    California
                </div>
            </div>
            <a href="javascript:void(0);" class="close-sidebar-button" data-bs-dismiss="offcanvas">
                <ion-icon name="close"></ion-icon>
            </a>
        </div>
        <!-- * profile box -->

        <ul class="listview flush transparent no-line image-listview mt-2">
            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        중개 관리
                    </div>
                </a>
            </li>

            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        고객 관리
                    </div>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        방문 관리
                    </div>
                </a>
            </li>

            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        익명 자유게시판
                    </div>
                </a>
            </li>

            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        부동산 관리
                    </div>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        구인구직
                    </div>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        중개관리
                    </div>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="item">
                    <div class="icon-box bg-primary">
                        <ion-icon name="home-outline"></ion-icon>
                    </div>
                    <div class="in">
                        중개관리
                    </div>
                </a>
            </li>
        </ul>
    </div>
    <!-- sidebar buttons -->
    <div class="sidebar-buttons">
        <a href="javascript:void(0);" class="button">
            <ion-icon name="person-outline"></ion-icon>
        </a>
        <a href="javascript:void(0);" class="button">
            <ion-icon name="archive-outline"></ion-icon>
        </a>
        <a href="javascript:void(0);" class="button">
            <ion-icon name="settings-outline"></ion-icon>
        </a>
        <a href="javascript:void(0);" class="button">
            <ion-icon name="log-out-outline"></ion-icon>
        </a>
    </div>
    <!-- * sidebar buttons -->
</div>
<!-- * App Sidebar -->

<!-- welcome notification  -->
<%--
<div id="notification-welcome" class="notification-box">
    <div class="notification-dialog android-style">
        <div class="notification-header">
            <div class="in">
                <img src="/resources/admin/mob/img/icon/72x72.png" alt="image" class="imaged w24">
                <strong>Mobilekit</strong>
                <span>just now</span>
            </div>
            <a href="#" class="close-button">
                <ion-icon name="close"></ion-icon>
            </a>
        </div>
        <div class="notification-content">
            <div class="in">
                <h3 class="subtitle">Welcome to Mobilekit</h3>
                <div class="text">
                    Mobilekit is a PWA ready Mobile UI Kit Template.
                    Great way to start your mobile websites and pwa projects.
                </div>
            </div>
        </div>
    </div>
</div>
--%>
<!-- * welcome notification -->