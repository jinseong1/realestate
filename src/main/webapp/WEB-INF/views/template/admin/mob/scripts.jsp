<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/mob/include.jsp"%>
<!-- ============== Js Files ==============  -->
<!-- Bootstrap -->
<script src="/resources/admin/mob/js/lib/bootstrap.min.js"></script>
<!-- Ionicons -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<!-- Splide -->
<script src="/resources/admin/mob/js/plugins/splide/splide.min.js"></script>
<!-- ProgressBar js -->
<script src="/resources/admin/mob/js/plugins/progressbar-js/progressbar.min.js"></script>
<!-- Base Js File -->
<script src="/resources/admin/mob/js/base.js"></script>

<script>
    // Trigger welcome notification after 5 seconds
    setTimeout(() => {
        notification('notification-welcome', 5000);
    }, 2000);
</script>