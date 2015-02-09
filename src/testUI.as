package
{
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	import org.leui.components.LBox;
	import org.leui.components.LButton;
	import org.leui.components.LCheckBox;
	import org.leui.components.LComponent;
	import org.leui.components.LGrid;
	import org.leui.components.LList;
	import org.leui.components.LMenu;
	import org.leui.components.LPane;
	import org.leui.components.LRadioButton;
	import org.leui.components.LScrollBar;
	import org.leui.components.LScrollPane;
	import org.leui.components.LSeprator;
	import org.leui.components.LText;
	import org.leui.components.LTree;
	import org.leui.components.LTreeNode;
	import org.leui.components.LWindow;
	import org.leui.events.MouseEvent;
	import org.leui.utils.LTrace;
	import org.leui.utils.LUIManager;
	import org.leui.utils.LeSpace;
	import org.leui.utils.UiConst;
	import org.leui.vos.MenuItemVO;
	
	import starling.core.Starling;
	import starling.events.Event;


	use namespace LeSpace;
	/**
	 *@author swellee
	 *2012-11-24
	 *
	 */
	public class testUI extends Sprite
	{

		public var lib:MyStyleSheet;

		private var scrPane:LScrollPane;
		private var mStarling:Starling;
		public function testUI()
		{
//			stage.color=0x555555;
			this.stage.scaleMode=StageScaleMode.NO_SCALE;
			
			
			mStarling = new Starling(Game,stage);
			mStarling.start();
			
			mStarling.addEventListener(Event.ROOT_CREATED,initUI);
			
			return;
			
			var s:Shape = new Shape();
			var g:Graphics = s.graphics;
			g.clear();
			g.beginFill(0);
			g.drawRoundRect(0,0,40,40,10,10);
			g.endFill();
			s.scale9Grid = new Rectangle(11,11,28,28);
			s.width = 100;
			s.height = 100;
			var c:Sprite = new Sprite();
			c.addChild(s);
			var bmd:BitmapData = new BitmapData(100,100,true,0);
			bmd.draw(c);
			
			var bmp:Bitmap = new Bitmap(bmd);
			bmp.scale9Grid = s.scale9Grid;
			bmp.width = 100;
			bmp.height = 100;
			addChild(bmp);
			
			return;
			
			
//			var pane:LPane = new LPane();
//			pane.setWH(200,150);
//			pane.setXY(100,30);
//			addChild(pane);
			
//			pane.addChild(new LText("w2222"));
//			return;
			
//			var txt:LText = new LText();
//			txt.text = "I'm a text";
//			txt.setXY(30,20);
//			txt.setWH(80,30);
//			txt.setAlign(UiConst.TEXT_ALIGN_MIDDLE_CENTER);
//			addChild(txt);
//			return;
			
			
//			var button:LButton = new LButton();
//			button.setXY(20,30);
//			button.text = "haha";
//			button.style = "milkBtn";
//			pane.append(button);
//			
//			var button2:LButton = new LButton("hehehe");
//			button2.setXY(30,50);
//			
//			var box:LBox = new LBox(10,10);
//			box.setWH(200,160);
//			box.setXY(20,20);
//			box.appendAll(button,button2);
//			addChild(box);
//			box.direction = UiConst.HORIZONTAL;
			
			
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
//			stp.setWH(80,25);
//			stp.setXY(20,20);
//			stp.maxValue=20;
//			stp.curValue=2;
//			stp.minValue=1;
//			addChild(stp);
			
//			return;
			
//			var radioBtn:LRadioButton=new LRadioButton("lee");
//			radioBtn.setWH(100,40);
//			radioBtn.setXY(22,100);
//			addChild(radioBtn);
//			trace(radioBtn.getBounds(this));
			
//			var lp:LPane= new LPane();
//			lp.setWH(500,300);
//			var cp:LPane = new LPane();
//			cp.setWH(50,50);
//			lp.append(cp);
//			addChild(lp);
//			trace(lp.viewWidth);

			
//			var ll:LList = new LList(0,10);
			
			
			
			//实例化一个树节点，作为根节点
			var rootNode:LTreeNode = new LTreeNode("武学秘籍");
			
			//一级节点
			var shaolin:LTreeNode = new LTreeNode("少林绝学");
			//二级节点
			var shaolinBook:LTreeNode = new LTreeNode("易筋经");
			var shaolinBook2:LTreeNode = new LTreeNode("金钟罩");
			shaolin.appendAll(shaolinBook,shaolinBook2);
			
			//一级节点
			var wudang:LTreeNode = new LTreeNode("武当剑法");
			//二级节点
			var wudangBook:LTreeNode = new LTreeNode("流星剑");
			var wudangBook2:LTreeNode = new LTreeNode("穿杨剑");
			wudang.appendAll(wudangBook,wudangBook2);
			
			//一级节点
			var gaibang:LTreeNode = new LTreeNode("丐帮秘传");
			//二级节点
			var gaibangBook:LTreeNode = new LTreeNode("打狗棒");
			gaibang.append(gaibangBook);
			
			//将一级节点添加到根节点
			rootNode.appendAll(shaolin,wudang,gaibang);
			
			//实例化一个树组件，传入根节点、设置布局间距、节点统一尺寸
			var tree:LTree=new LTree(rootNode,10,4,100,24);
			tree.setXY(6,10);
			tree.setWH(100,300);
			
			
//			return;
			
			//实例化一个分隔线
			var sp:LSeprator = new LSeprator(false);
			sp.setWH(-1,260);
			sp.setXY(108,6);
			
			//实例化一个文本，放在右侧，当树组件 选中一个节点时，
			//此文本显示该节点的数据
			var treeLabel:LText = new LText("我使用双截棍，叽叽喳喳",false);
			treeLabel.setWH(300,26);
			treeLabel.setXY(110,5);
			//为树添加选中节点时的回调函数
//			tree.listenSelectedNodeChange(onSelectNodeFun);
			tree.onSelectedChange(onSelectNodeFun);
			//回调函数
			function onSelectNodeFun():void
			{
				treeLabel.text = tree.selectedNode.text;
			}
			
			//实例化一个LGrid作为视口
			var ll:LGrid = new LGrid(4,4,190,60);
			ll.canScaleElement=false;
			
			//向视口中添加20个小东东
			var aa:Array=[];
			for (var i:int = 0; i < 20; i++) 
			{
				var pp:LPane=new LPane();
				pp.style = "bg1";
				pp.setWH(180,50);
				pp.data=i;
				aa.push(pp);
			}
			ll.appendAll.apply(null,aa);
			
			//实例化一个滚动面板，将ll作为视口传入
			var scrlPane :LScrollPane = new LScrollPane(ll);
			scrlPane.setWH(330,220);
			scrlPane.setXY(114,35);
			
			
			//实例化一个窗体
			var win:LWindow = new LWindow("藏经阁");
			win.setWH(460,300);
			//将上述几个东东，添加到窗体
			win.addContent(tree,sp,treeLabel,scrlPane);
			
			//显示窗体
			win.show();
			
			
			
			
			
//			var ll:LTextArea = new LTextArea();
//			ll.text = "weeeewwwww";
//			scrPane=new LScrollPane(ll);
//			addChild(scrPane);
//			scrPane.setWH(200,200);
//			scrPane.setXY(100,50);
			
//			
//			
//			var ll:LTextArea=new LTextArea("werwetwetwettttttttttttttttttttttttttttttttttttttttttttttt");
//			trace(bar.scrollRect);
			
//			var tt:LTextArea=new LTextArea("wetw");
//			tt.setWH(200,100);
//			addChild(tt);
//			tt.addEventListener(MouseEvent.CLICK,onClickHandler);
//			stage.addEventListener(MouseEvent.CLICK,onClickHandler);
//			stage.addEventListener(KeyboardEvent.KEY_UP,createTxt);
			
			
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
			var datas:Vector.<MenuItemVO>=new Vector.<MenuItemVO>();
			for (var i2:int = 0; i2 < 10; i2++) 
			{
				var mvo:MenuItemVO=new MenuItemVO("menuItem"+i2);
				if(i2%3==0)
				{
					mvo.subMenuItemVos=new Vector.<MenuItemVO>;
					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
					mvo.subMenuItemVos.push(new MenuItemVO("subItem"));
				}
				datas.push(mvo);
			}
			
			var btn:LButton = new LButton("click me");
			btn.setXY(30,40);
//			addChild(btn);
			
			var menu:LMenu=LMenu.createMenu(btn,datas,true,menuCallFun);
			
			function menuCallFun(vo:MenuItemVO):void
			{
				LTrace.log("just click a menuItem>>"+vo.text);
			}
			
//			var menu:LMenu=new LMenu();
//			menu.setInvoker(btn);
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
//			cbdata.push(new ComboxListVO("good6",15));
//			cbdata.push(new ComboxListVO("good7",15));
//			cbdata.push(new ComboxListVO("good8",15));
//			cbdata.push(new ComboxListVO("good9",15));
//			cbdata.push(new ComboxListVO("good10",15));
//			cbdata.push(new ComboxListVO("good11",15));
//			cbdata.push(new ComboxListVO("good12",15));
//			var cbx:LCombox=new LCombox();
//			cbx.setListData(cbdata);
			
//			cbx.setWH(100,22);
//			cbx.setXY(10,10);
//			addChild(cbx);
			
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
			
//			ALert.show("my name is alert","love  \nlove love  \n love love love \n oh shit!",ALert.OK|ALert.CANCEL,true,true,oncloseFun,22);
//			function oncloseFun(btn:int,xx:*):void
//			{
//				if(btn == ALert.OK)
//				{
//					trace(xx);
//				}
//			}
//			
//			pp.addEventListener(MouseEvent.CLICK,onClickHandler);
		}
		
		private function initUI():void
		{
//			var uiContainer:Game = new Game();
//			mStarling.stage.addChild(uiContainer
			LUIManager.initAsStandard(mStarling,mStarling.stage,new MyStyleSheet());
			
//			var comp:LButton = new LButton("button");
//			comp.setWH(70,30);
//			var comp:LWindow = new LWindow("hwehwhe");
//			comp.show();
//			var comp:LRadioButton = new LRadioButton("xxx");
			var comp:LScrollBar = new LScrollBar();
			comp.setWH(30,100);
//			var  comp:LBox = new LBox(4);
//			comp.direction = UiConst.HORIZONTAL;
//			comp.style = "bg2";
//			var btn:LButton = new LButton();
//			btn.canScaleX = btn.canScaleY = false;
////			comp.append(btn);
//			comp.appendAll(btn,new LText("sdsds"));
//			comp.setWH(90,50);
			
//			mStarling.stage.addChild(comp);
			
			comp.addEventListener(org.leui.events.MouseEvent.CLICK,onClickHandler);
		}
		
		protected function onClickHandler(event:org.leui.events.MouseEvent):void
		{
			// TODO Auto-generated method stub
//			scrPane.setWH(200+Math.random()*100,150+Math.random()*50);
//			scrPane.addChild(new Sprite());
//			LComponent(event.target).setWH(90,70);
//			var rd:LRadioButton = event.target as LRadioButton;
//			if(rd)rd.setWH(90,70);
			
		}		
		
	}
}
