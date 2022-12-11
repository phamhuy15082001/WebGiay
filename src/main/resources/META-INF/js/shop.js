var Shop = {
		
		xoa_san_pham_tu_admin: function(productId) {
			var data = {};
			data["id"] = productId;
			
			$.ajax({
				url: "/admin/delete",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						location.reload();
						$("#colProductStatus-"+productId).html("<span class=\"badge badge-danger\">Đã xoá</span>");
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		},

		chon_san_pham_dua_vao_gio_hang: function(maSanPham, soluong) {
			var data = {};
			data["maSanPham"] = maSanPham;
			data["soluong"] = soluong;
			
			$.ajax({
			url: "/chon-san-pham-dua-vao-gio-hang",
				type: "POST",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						$("#thong_tin_gio_hang").html(jsonResult.data);
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		},

		/**
		 * https://www.w3schools.com/js/js_json_syntax.asp
		 */
		saveContact: function() {
			var data = {};
			data["email"] = $("#email").val();;
			data["firstname"] = $("#fname").val();
			data["lastname"] = $("#lname").val();
			
			$.ajax({
				url: "/save-contact-with-ajax",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						alert(jsonResult.data);
						// clear data
						$("#fname").val("");
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		}
		
}