package
{
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	import org.leui.components.ALert;
	import org.leui.components.LList;
	import org.leui.components.LMenu;
	import org.leui.components.LPane;
	import org.leui.components.LText;
	import org.leui.components.LWindow;
	import org.leui.utils.LTrace;
	import org.leui.utils.LUIManager;
	

	[SWF(frameRate="30",width="600",height="500",background="#ffffff")]
	/**
	 *@author swellee
	 *2012-11-24
	 *
	 */
	public class testUI extends Sprite
	{

		private var ap:LPane;

		private var menu:LMenu;

		private var ll:LList;

		private var pp:LPane;
		
//		[Embed(source="assets/bg/common/bg0.png",scaleGridTop="55",scaleGridLeft="55",scaleGridBottom="64",scaleGridRight="65")]
		[Embed(source="assets/bg/common/bg0.png",scaleGridTop=55,scaleGridLeft=55,scaleGridBottom=64,scaleGridRight=65)]
//		[Embed(source="assets/bg/common/bg0.png")]
		private const bg_bg0:Class;

		private var win:LWindow;
		public function testUI()
		{
//			stage.color=0x555555;
			stage.scaleMode=StageScaleMode.NO_SCALE;
			LUIManager.initAsStandard(stage,this,new MyStyleSheet());
			
//			var bmd: Bitmap = new bg_bg0()as Bitmap;
			
//			bmd.width=300;
//			bmd.height=200;
//			addChild(bmd);
//			trace(bmd is Bitmap)
			
			var txx:LText =new LText();
			addChild(txx);
			
////			
//			var btn:LToggleButton=new LToggleButton("leeUI");
//			btn.setWH(60,60);
//			btn.opaqueBackground=0;
//			addChild(btn);
//			btn.addEventListener(MouseEvent.CLICK,onClickHandler);
//			btn.style="btn_moudles_scrollBarDown";
//			btn.setXY(10,20);
//			btn.scrollRect=new Rectangle(0,0,60,60);
//			trace(btn.scrollRect);
			
//			var stp:LStepperV=new LStepperV();
//			var stp:LStepperH=new LStepperH(30);
//			stp.setWH(100,40);
//			stp.maxValue=20;
//			stp.curValue=2;
//			stp.minValue=1;
//			addChild(stp);
			
			
//			var radioBtn:LRadioButton=new LRadioButton("lee");
//			radioBtn.setWH(100,40);
//			radioBtn.setXY(22,100);
//			addChild(radioBtn);
//			trace(radioBtn.getBounds(this));
			
//			ll=new LList(0,10);
//			var aa:Array=[];
//			for (var i:int = 0; i < 10; i++) 
//			{
//				var pp:LPane=new LPane();
//				pp.setWH(100,80);
//				pp.data=i;
//				aa.push(pp);
//			}
//			ll.appendAll.apply(null,aa);
//			
//			
//			var ll:LTextArea=new LTextArea("werwetwetwettttttttttttttttttttttttttttttttttttttttttttttt");
//			var bar:LScrollPane=new LScrollPane(ll);
//			addChild(bar);
//			bar.setWH(100,150);
//			bar.setXY(100,50);
//			trace(bar.scrollRect);
			
//			var tt:LTextArea=new LTextArea("wetw");
//			tt.setWH(200,100);
//			addChild(tt);
//			tt.addEventListener(MouseEvent.CLICK,onClickHandler);
			stage.addEventListener(MouseEvent.CLICK,onClickHandler);
			
//			var node0:LTreeNode=new LTreeNode("tree");
//			for (var j:int = 0; j < 5; j++) 
//			{
//				var node:LTreeNode=new LTreeNode("node_depth_1_"+(j+1));
//				node0.appendChildrenNode(node);
//				if(j%2==1)
//				{
//					for (var k:int = 0; k < 3; k++) 
//					{
//						var subNode:LTreeNode=new LTreeNode("node_depth_2_"+(k+1));
//						node.appendChildrenNode(subNode);
//					}
//					
//				}
//			}
			
			
//			addChild(node0);
//			node0.hGap=4;
			
//			var tree:LTree=new LTree(node0);
//			tree.setXY(20,20);
//			addChild(tree);
			
//			bar.addEventListener(MouseEvent.CLICK,onClickHandler);
			
//			var sbar:LScrollBar=new LScrollBar();
//			sbar.setWH(22,100);
//			addChild(sbar);
			
			
//			var rl:LRadioButton=new LRadioButton("WETWQET");
//			rl.setWH(100,30);
//			addChild(rl);

//			var a:Sprite=new Sprite();
//			a.x=a.y=100;
//			a.graphics.beginFill(0);
//			a.graphics.drawCircle(0,0,200);
//			a.graphics.endFill();
//			
//			addChild(a);
			
//			var p:LPane=new LPane();
//			p.style="bg";
			
//			
//			var b:Rectangle=new Rectangle(-100,0,300,400);
//			a.scrollRect=b;
			
//			ap=new LPane();
//			ap.setWH(300,230);
//			addChild(ap);
//			stage.addEventListener(MouseEvent.CLICK,clicktt);
//			
//			
//			var childP:LPanel=new LPanel();
//			childP.setWH(500,400);
//			childP.style="bg2";
//			addChild(childP);
//			childP.setBorder(0xff,2);
//			childP.addEventListener(MouseEvent.CLICK,onClickHandler);
//			var btn:LRadioButton=new LRadioButton("lee");
//			btn.setXY(200,200);
//			btn.setWH(200,60);
//			addChild(btn);
////			btn.style="milk";
//			btn.text="woo";
//			
//			var txt:LTextArea=new LTextArea("leee",false);
//			txt.setWH(80,55);
//			txt.setXY(200,100);
//			addChild(txt);
//			txt.text="ewwtwetwettttttttttttttttttttttttttttttttttttttttttttttttttttttttttt";
//			
//			txt.addEventListener(Event.RENDER,renderHandler);
			
			
//			
//			var datas:Vector.<MenuItemVO>=new Vector.<MenuItemVO>();
//			for (var i2:int = 0; i2 < 10; i2++) 
//			{
//				var mvo:MenuItemVO=new MenuItemVO("menuItem"+i2);
//				if(i2%3==0)
//				{
//					mvo.subMenuItemVos=new Vector.<MenuItemVO>;
//					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
//					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
//					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
//					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
//				}
//				datas.push(mvo);
//			}
			
//			menu=LMenu.show(datas,true,menuCallFun);
//			menu=new LMenu();
//			menu.setMenuData(datas,true,menuCallFun);
			
//			var co:LButton=new LButton();
//			co.style="btn_moudles_scrollBarThumb";
//			co.setWH(60,50);
//			co.setXY(300,200);
//			addChild(co);
//			menu=LMenu.createMenu(co,datas,true,menuCallFun);
			
//			var cbdata:Vector.<ComboxListVO>=new Vector.<ComboxListVO>;
//			cbdata.push(new ComboxListVO("good",1));
//			cbdata.push(new ComboxListVO("good2",12));
//			cbdata.push(new ComboxListVO("good3",13));
//			cbdata.push(new ComboxListVO("good4",14));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			cbdata.push(new ComboxListVO("good5",15));
//			var cbx:LCombox=new LCombox();
//			cbx.setListData(cbdata);
//			
//			cbx.setWH(100,30);
//			cbx.setXY(10,10);
			
//			pp=new LPane();
//			pp.setWH(300,400);
//			pp.addChild(cbx);
//			addChild(pp);
			
//			stage.addEventListener(MouseEvent.CLICK,onClickHandler);
			
//			win=new LWindow("goood");
//			win.setWH(400,320);
//			win.addContent(new LButton("woo"));
//			win.show();
//			
//			ALert.show("my name is alert","godd oeiowiewoii            owieoei weoir woiertuowie9osdfoswidfsodiffpasdo",ALert.OK|ALert.CANCEL,true,true,oncloseFun,22);
//			
//			pp.addEventListener(MouseEvent.CLICK,onClickHandler);
		}
		private function oncloseFun(btn:int,data:int):void
		{
			if(btn==ALert.OK)
			{
				trace(ALert.OK_STR);
			}
			if(btn==ALert.CANCEL)
			{
				trace(ALert.CANCEL_STR);
			}
		}
		private function menuCallFun(xxxx:Object):void
		{
			// TODO Auto Generated method stub
			
			trace(xxxx);
			trace(menu.width);
		}
		
		protected function clicktt(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			ap.setWH(Math.random()*500,Math.random()*400);
			trace(ap.width,ap.height);
			trace(ap.scrollRect);
		}
		
		protected function onClickHandler(event:MouseEvent):void
		{
//			removeChild(pp);
//			pp.dispose();
			
//			win.show();
//			ALert.show("my name is alert","godd oeiowiewoii            owieoei weoir woiertuowie9osdfoswidfsodiffpasdo",ALert.OK|ALert.CANCEL,true,true,oncloseFun,22);

			LTrace.log("weoioweiowierowi\n\n");
			
			// TODO Auto-generated method stub
//			var p:LScrollPane=event.currentTarget as LScrollPane;
//			if(p)
//			{
//				p.setWH(300,400);
//			}
//			removeChildren();
			
//			ll.removeChildAt(0);
		}
		
		protected function renderHandler(event:Event):void
		{
			// TODO Auto-generated method stub
			trace("render");
		}
	}
}
