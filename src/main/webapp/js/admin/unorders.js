$(document).ready(function() {
    $('#ordersTable').dataTable( {
//    	"processing": true,
    	"bSort": false,
		"serverSide": true,
		"ajax": {
            "url": "scripts/post.php",
            "type": "POST"
        },
        "columns": [
            { "data": "name" },
            { "data": "position" },
            { "data": "salary" }
        ]
    } );
} );