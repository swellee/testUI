package
{
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.geom.Rectangle;
	
	/**
	 *@author swellee
	 *2012-12-29
	 *
	 */
	public class RectBg extends Shape
	{
		public function RectBg()
		{
			super();
			draw();
			this.scale9Grid=new Rectangle(10,10,80,80);
		}
		
		private function draw():void
		{
			var g:Graphics=graphics;
			g.lineStyle(1);
			g.beginFill(0xaacc00,.7);
			g.drawRoundRect(0,0,100,100,5,5);
			g.endFill();
		}
	}
}