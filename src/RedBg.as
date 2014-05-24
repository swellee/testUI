package
{
	import flash.display.Graphics;
	import flash.display.Shape;
	
	/**
	 *@author swellee
	 *2012-12-29
	 *
	 */
	public class RedBg extends Shape
	{
		public function RedBg()
		{
			super();
			var g:Graphics=graphics;
			g.lineStyle(1,0xff0000);
			for (var i:int = 0; i < 100; i++) 
			{
				g.moveTo(Math.random()*400,Math.random()*300);
				g.lineTo(Math.random()*400,Math.random()*300);
			}
			
		}
	}
}