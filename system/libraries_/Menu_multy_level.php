<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CI_Multy_Level {
		// Menu builder function, parentId 0 is the root
		function buildMenu($parent, $menu)
		{
			$html = "";
			if (isset($menu['parents'][$parent]))
			{
				$html .= "
				<ul>\n";
				foreach ($menu['parents'][$parent] as $itemId)
				{
					if(!isset($menu['parents'][$itemId]))
					{
						$html .= "<li>\n <a href='".$menu['items'][$itemId]['link']."'>".$menu['items'][$itemId]['label']."</a>\n</li> \n";
					}
					if(isset($menu['parents'][$itemId]))
					{
						$html .= "
						<li>\n <a href='".$menu['items'][$itemId]['link']."'>".$menu['items'][$itemId]['label']."</a> \n";
						$html .= buildMenu($itemId, $menu);
						$html .= "</li> \n";
					}
				}
				$html .= "</ul> \n";
			}
			return $html;
		}
}
?>