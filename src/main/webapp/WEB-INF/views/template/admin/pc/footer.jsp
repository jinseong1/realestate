<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<script type="text/javascript">
    $(document).ready(function(){
        $( ".modal" ).draggable({ handle: ".common_title_wrap:eq(0)" });
    });
</script>