
function saveCategory(){
	$("#tab").submit();;
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