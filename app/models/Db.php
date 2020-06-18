<?php 
/**
* 
*/
class Db 
{
	public static $connection = NULL;

	public function __construct() //hàm khởi tạo  tự chạy
	{
		if (!self::$connection) { //gọi thuộc tính ở dạng static nên dùng self::"thuộc tính/method"
			self::$connection = new mysqli('localhost', 'root', '', 'fastfood');
			self::$connection->set_charset('utf8');
		}
		return self::$connection;
	}

	public function __destruct()
	{
		//self::$connection->close();
	}

	public function getLines($sql)
	{
		// Thực thi câu sql
		$data = self::$connection->query($sql);

		// Xử lý kết quả trả về: chuyển object $data -> array $items
		$items = array();
		while ($item = $data->fetch_assoc()) { // Đọc từng dòng trong $data
			$items[] = $item; // Gán từng dòng vào từng phần tử trong $items[]
		}

		return $items;
	}
	public function createPageLinks($totalRow, $perPage)
	{
		$totalPage = ceil($totalRow / $perPage);
		$pageLink = '';
		for ($i=1; $i <= $totalPage; $i++) { 
			$pageLink .= "<a href='". $_SERVER['REQUEST_URI'] ."?&page=$i'>$i</a>";
		}
		return $pageLink;
	}

	public function createPageItems($page, $perPage, $items = array())
	{

		$firstItem = ($page - 1) * $perPage;
		return array_slice($items, $firstItem, $perPage);
	}
}
?>