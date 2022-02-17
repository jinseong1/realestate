
function callAjaxRequestBody(_url, _data, successMethod, errorMethod, completeMethod, _isSync, dataType){
	// showLoading();
	if(!errorMethod){
		errorMethod = function(xx){
		}
	}
	$.ajax({
		type: 'POST',
		url: _url,
		cache: false,
		dataType: dataType || 'json',
		data: _data ? JSON.stringify(_data) : null,
		processData: false,
		async: (_isSync == false)? false : true,
		contentType: ((dataType || 'json') == 'json') ? "application/json; charset=utf-8" : "text/plain",
		success: successMethod,
		error: errorMethod,
		//timeout:10000,
		complete: function(event, xhr, settings){
			//hideLoading()
			if(completeMethod){
				completeMethod(event, xhr, settings);
			}
		}
	});
}

$.ajaxSetup({
	statusCode: {
		401: loginAuthMethod()
	}
});

function callAjaxUrl(_url, param, successMethod){
	$.ajax({
		type: "GET",
		url: _url,
		cache: false,
		success: successMethod,
	})
}

function ajaxRequest(_json, _lang){
	return {
		lang:_lang || 'ko' ,
		requestAt:new Date().getTime(),
		data:_json
	};
}

function ajaxPagingRequest(pageData, _json, _lang) {
	return $.extend({}, ajaxRequest(_json, _lang), {
		page: pageData.page,
		rows: pageData.rows,
	});
}

function loginAuthMethod() {
	return function (response) {
		//alert('로그인시간이 만료되었습니다.');
		//location.href = "/auth/login";
	}
}

function forbiddenAuthMethod() {
	return function (response) {
		//alert("회원 로그인 후 가능합니다.");
	}
}

function getFormDataEachInput($form){
	var unindexed_array = [];
	var indexed_array = {};
	//데이터 정제용
	var tmp_array = [];

	unindexed_array = unindexed_array.concat($form.find("input[type='text']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='hidden']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='password']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='radio']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='tel']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='search']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='number']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("input[type='email']").serializeArray());
	unindexed_array = unindexed_array.concat($form.find("textarea").serializeArray());
	tmp_array = $form.find("select").serializeArray();
	for(var i=0;i<tmp_array.length;i++){
		if(tmp_array[i].value == ""){
			tmp_array[i].value = undefined
		}
	}
	unindexed_array = unindexed_array.concat(tmp_array);

	$.each($form.find("input[type='checkbox']").serializeArray(), function(key, val){
		var result;
		result = true;
		unindexed_array.push({name:val.name, value:result});
	});

	$.map(unindexed_array, function(n, i){
		indexed_array[n['name']] = n['value'];
	});
	return indexed_array;
}

function jsOpenWindow(url, popupName, popWidth, popHeight){

	var winHeight = document.body.clientHeight;	// 현재창의 높이
    var winWidth = document.body.clientWidth;	// 현재창의 너비
    var winX = window.screenLeft;	// 현재창의 x좌표
    var winY = window.screenTop;	// 현재창의 y좌표

    var popX = winX + (winWidth - popWidth)/2;
    var popY = winY + (winHeight - popHeight)/2;

    window.open(url,popupName,"width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX);
}

