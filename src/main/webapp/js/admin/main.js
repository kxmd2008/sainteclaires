var RPC_URL = "test/auth/";

function logout(){
	$.post(getURL() + "/auth/logout.do", function(data){
		
	});
}

function getURL(){ 
    var curWwwPath = window.document.location.href; 
    //获取主机地址之后的目录，如： cis/website/meun.htm 
    var pathName = window.document.location.pathname; 
    var pos = curWwwPath.indexOf(pathName); //获取主机地址，如： http://localhost:8080 
    var localhostPaht = curWwwPath.substring(0, pos); //获取带"/"的项目名，如：/cis 
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1); 
    var rootPath = localhostPaht + projectName; 
    return rootPath; 
     
} 

function buildBtnBar(){
	var btnBar = $('<div></div>').addclass("btn-toolbar");
	return btnBar;
}

function buildTableDiv(headArray){
	var tableDiv = $('<div></div>').addclass("well");
	var table = $('<table></table>').addclass("table");
	var thead = $('<thead></thead>');
	var headTr = $('<tr></tr>');
	headTr.append("<th>#</th>");
	for (var i = 0; i < headArray.length; i++) {
		headTr.append("<th>"+headArray[i]+"</th>");
	}
	thead.append(headTr);
	table.append(thead);
	tableDiv.append(table);
	tableDiv.append($('<tbody id="tbody"></tbody>'));
	return tableDiv;
}