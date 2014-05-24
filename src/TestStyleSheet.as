package
{
	import org.leui.components.LButton;
	import org.leui.components.LStyleSheet;
	import org.leui.decorators.LCombineDecorator;
	import org.leui.decorators.LDecorator;
	import org.leui.decorators.LMultiStateDecorator;
	import org.leui.vos.StyleVO;
	
	/**
	 *@author swellee
	 *2012-12-29
	 *
	 */
	public class TestStyleSheet extends LStyleSheet
	{
		[Embed(source="assets/bg/common/bg0.png",scaleGridTop="55",scaleGridLeft="55",scaleGridBottom="64",scaleGridRight="65")]
		private const bg_common_bg0:Class;
		[Embed(source="assets/bg/common/bg1.png",scaleGridTop="56",scaleGridLeft="55",scaleGridBottom="65",scaleGridRight="65")]
		private const bg_common_bg1:Class;
		[Embed(source="assets/bg/common/bg2.png",scaleGridTop="20",scaleGridLeft="30",scaleGridBottom="40",scaleGridRight="40")]
		private const bg_common_bg2:Class;
		[Embed(source="assets/bg/common/bg3.png")]
		private const bg_common_bg3:Class;
		[Embed(source="assets/bg/common/gridBrush.jpg")]
		private const bg_common_gridBrush:Class;
		[Embed(source="assets/bg/moudles/scrollbarBg.png",scaleGridTop="1",scaleGridLeft="7",scaleGridBottom="3",scaleGridRight="13")]
		private const bg_moudles_scrollbarBg:Class;
		[Embed(source="assets/bg/moudles/scrollbarBgH.png",scaleGridTop="7",scaleGridLeft="1",scaleGridBottom="13",scaleGridRight="3")]
		private const bg_moudles_scrollbarBgH:Class;
		[Embed(source="assets/bg/moudles/separator.png")]
		private const bg_moudles_separator:Class;
		[Embed(source="assets/bg/moudles/separatorV.png")]
		private const bg_moudles_separatorV:Class;
		[Embed(source="assets/bg/moudles/titleBar.png",scaleGridTop="10",scaleGridLeft="38",scaleGridBottom="15",scaleGridRight="50")]
		private const bg_moudles_titleBar:Class;
		[Embed(source="assets/bg/moudles/winTitle.png",scaleGridTop="37",scaleGridLeft="96",scaleGridBottom="40",scaleGridRight="214")]
		private const bg_moudles_winTitle:Class;
		[Embed(source="assets/bg/moudles/wireFrame.png",scaleGridTop="8",scaleGridLeft="8",scaleGridBottom="14",scaleGridRight="12")]
		private const bg_moudles_wireFrame:Class;
		[Embed(source="assets/btn/common/close/1.png")]
		private const btn_common_close_1:Class;
		[Embed(source="assets/btn/common/generalRect/1.png",scaleGridTop="7",scaleGridLeft="15",scaleGridBottom="17",scaleGridRight="18")]
		private const btn_common_generalRect_1:Class;
		[Embed(source="assets/btn/common/generalRect/2.png",scaleGridTop="7",scaleGridLeft="15",scaleGridBottom="17",scaleGridRight="18")]
		private const btn_common_generalRect_2:Class;
		[Embed(source="assets/btn/common/generalRect/3.png",scaleGridTop="7",scaleGridLeft="15",scaleGridBottom="17",scaleGridRight="18")]
		private const btn_common_generalRect_3:Class;
		[Embed(source="assets/btn/common/generalTabHalf/1.png",scaleGridTop="15",scaleGridLeft="12",scaleGridBottom="23",scaleGridRight="18")]
		private const btn_common_generalTabHalf_1:Class;
		[Embed(source="assets/btn/common/generalTabHalf/2.png",scaleGridTop="15",scaleGridLeft="12",scaleGridBottom="23",scaleGridRight="18")]
		private const btn_common_generalTabHalf_2:Class;
		[Embed(source="assets/btn/common/generalTabWhole/1.png",scaleGridTop="10",scaleGridLeft="10",scaleGridBottom="16",scaleGridRight="14")]
		private const btn_common_generalTabWhole_1:Class;
		[Embed(source="assets/btn/common/generalTabWhole/2.png",scaleGridTop="10",scaleGridLeft="10",scaleGridBottom="16",scaleGridRight="14")]
		private const btn_common_generalTabWhole_2:Class;
		[Embed(source="assets/btn/common/milkRect/1.png",scaleGridTop="5",scaleGridLeft="3",scaleGridBottom="20",scaleGridRight="27")]
		private const btn_common_milkRect_1:Class;
		[Embed(source="assets/btn/common/milkRect/2.png",scaleGridTop="5",scaleGridLeft="3",scaleGridBottom="20",scaleGridRight="27")]
		private const btn_common_milkRect_2:Class;
		[Embed(source="assets/btn/common/milkRect/3.png",scaleGridTop="5",scaleGridLeft="3",scaleGridBottom="20",scaleGridRight="27")]
		private const btn_common_milkRect_3:Class;
		[Embed(source="assets/btn/common/upperLevelTab/1.png",scaleGridTop="5",scaleGridLeft="6",scaleGridBottom="24",scaleGridRight="32")]
		private const btn_common_upperLevelTab_1:Class;
		[Embed(source="assets/btn/common/upperLevelTab/2.png",scaleGridTop="5",scaleGridLeft="6",scaleGridBottom="24",scaleGridRight="32")]
		private const btn_common_upperLevelTab_2:Class;
		[Embed(source="assets/btn/common/upperLevelTab/3.png",scaleGridTop="5",scaleGridLeft="6",scaleGridBottom="24",scaleGridRight="32")]
		private const btn_common_upperLevelTab_3:Class;
		[Embed(source="assets/btn/moudles/arrow/1.png")]
		private const btn_moudles_arrow_1:Class;
		[Embed(source="assets/btn/moudles/arrow/2.png")]
		private const btn_moudles_arrow_2:Class;
		[Embed(source="assets/btn/moudles/arrow/3.png")]
		private const btn_moudles_arrow_3:Class;
		[Embed(source="assets/btn/moudles/arrow/4.png")]
		private const btn_moudles_arrow_4:Class;
		[Embed(source="assets/btn/moudles/scrollBarDown/1.png")]
		private const btn_moudles_scrollBarDown_1:Class;
		[Embed(source="assets/btn/moudles/scrollBarLeft/1.png")]
		private const btn_moudles_scrollBarLeft_1:Class;
		[Embed(source="assets/btn/moudles/scrollBarRight/1.png")]
		private const btn_moudles_scrollBarRight_1:Class;
		[Embed(source="assets/btn/moudles/scrollBarThumb/1.png",scaleGridTop="6",scaleGridLeft="6",scaleGridBottom="8",scaleGridRight="12")]
		private const btn_moudles_scrollBarThumb_1:Class;
		[Embed(source="assets/btn/moudles/scrollBarThumbH/1.png",scaleGridTop="6",scaleGridLeft="6",scaleGridBottom="12",scaleGridRight="8")]
		private const btn_moudles_scrollBarThumbH_1:Class;
		[Embed(source="assets/btn/moudles/scrollBarUp/1.png")]
		private const btn_moudles_scrollBarUp_1:Class;
		[Embed(source="assets/btn/moudles/treeNode/1.png")]
		private const btn_moudles_treeNode_1:Class;
		[Embed(source="assets/btn/moudles/treeNode/2.png")]
		private const btn_moudles_treeNode_2:Class;
		private static const assets:Array=["bg_common_bg0","bg_common_bg1","bg_common_bg2","bg_common_bg3","bg_common_gridBrush","bg_moudles_scrollbarBg","bg_moudles_scrollbarBgH","bg_moudles_separator","bg_moudles_separatorV","bg_moudles_titleBar","bg_moudles_winTitle","bg_moudles_wireFrame","btn_common_close_1","btn_common_generalRect_1","btn_common_generalRect_2","btn_common_generalRect_3","btn_common_generalTabHalf_1","btn_common_generalTabHalf_2","btn_common_generalTabWhole_1","btn_common_generalTabWhole_2","btn_common_milkRect_1","btn_common_milkRect_2","btn_common_milkRect_3","btn_common_upperLevelTab_1","btn_common_upperLevelTab_2","btn_common_upperLevelTab_3","btn_moudles_arrow_1","btn_moudles_arrow_2","btn_moudles_arrow_3","btn_moudles_arrow_4","btn_moudles_scrollBarDown_1","btn_moudles_scrollBarLeft_1","btn_moudles_scrollBarRight_1","btn_moudles_scrollBarThumb_1","btn_moudles_scrollBarThumbH_1","btn_moudles_scrollBarUp_1","btn_moudles_treeNode_1","btn_moudles_treeNode_2"];
		private var endBat:*;
		public function TestStyleSheet()
		{
			super();
		}
		override protected function initStyleSet():void
		{
			//基本组件样式全部导入
			for (var i:int = 0; i < assets.length; i++) 
			{
				var st:StyleVO=new StyleVO();
				var assetName:String=assets[i];
				st.styleName=assetName;
				st.assetClass=this[assetName]as Class;
				st.decoratorClass=LDecorator;
				putStyleVO(st);
			}
			
			//panel set
			var paneSet:StyleVO=new StyleVO();
			paneSet.styleName="LPane";
			paneSet.assetClass=bg_common_bg0;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg1";
			paneSet.assetClass=bg_common_bg1;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg2";
			paneSet.assetClass=bg_common_bg2;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg3";
			paneSet.assetClass=bg_common_bg3;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			//text
			var textSet:StyleVO=new StyleVO();
			textSet.styleName="LText";
			textSet.assetClass=bg_common_bg2;
			textSet.decoratorClass=LDecorator;
			putStyleVO(textSet);
			
			
			textSet=new StyleVO();
			textSet.styleName="LTextArea";
			textSet.assetClass=bg_common_bg2;
			textSet.decoratorClass=LDecorator;
			putStyleVO(textSet);
			
			var btnbg:StyleVO=new StyleVO();
			btnbg.styleName="btnbg1";
			btnbg.assetClass=btn_common_generalRect_1;
			btnbg.decoratorClass=LDecorator;
			putStyleVO(btnbg);
			
			btnbg=new StyleVO;
			btnbg.styleName="btnbg2";
			btnbg.assetClass=btn_common_generalRect_2;
			btnbg.decoratorClass=LDecorator;
			putStyleVO(btnbg);
			
			btnbg=new StyleVO;
			btnbg.styleName="btnbg3";
			btnbg.assetClass=btn_common_generalRect_3;
			btnbg.decoratorClass=LDecorator;
			putStyleVO(btnbg);
			
			var btnset:StyleVO=new StyleVO;
			btnset.styleName="LButton";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btnbg1";
			btnset[LButton.BUTTON_STATE_MOUSE_OVER]="btnbg2";
			btnset[LButton.BUTTON_STATE_MOUSE_DOWN]="btnbg3";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarThumb";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarThumb_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarThumbH";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarThumbH_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarDown";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarDown_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarUp";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarUp_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarRight";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarRight_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="btn_moudles_scrollBarLeft";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_scrollBarLeft_1";
			putStyleVO(btnset);
			
			
			btnset=new StyleVO;
			btnset.styleName="LToggleButton";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btnbg1";
			btnset[LButton.BUTTON_STATE_MOUSE_OVER]="btnbg2";
			btnset[LButton.BUTTON_STATE_MOUSE_DOWN]="btnbg3";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_OUT]="btnbg3";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_OVER]="btnbg3";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_DOWN]="btnbg3";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="winCloseBtn";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_common_close_1";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="treeNodeExtraBtn";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="btn_moudles_treeNode_1";
			btnset[LButton.BUTTON_STATE_MOUSE_OVER]="btn_moudles_treeNode_1";
			btnset[LButton.BUTTON_STATE_MOUSE_DOWN]="btn_moudles_treeNode_2";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_OUT]="btn_moudles_treeNode_2";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_OVER]="btn_moudles_treeNode_2";
			btnset[LButton.BUTTON_STATE_SELECTED_MOUSE_DOWN]="btn_moudles_treeNode_2";
			putStyleVO(btnset);
			
			btnset=new StyleVO;
			btnset.styleName="LMenuItem";
			btnset.decoratorClass=LMultiStateDecorator;
			btnset[LButton.BUTTON_STATE_MOUSE_OUT]="bg3";
			putStyleVO(btnset);
			
			
			
			
			var bg:StyleVO=new StyleVO;
			bg.styleName="LMenu";
			bg.assetClass=bg_common_bg0;
			bg.decoratorClass=LDecorator;
			putStyleVO(bg);
			
			var raidobtnSet:StyleVO=new StyleVO();
			raidobtnSet.styleName="LRadioButton";
			raidobtnSet.decoratorClass=LCombineDecorator;
			raidobtnSet.ele_btn="";
			raidobtnSet.ele_text="bg1";
			
			putStyleVO(raidobtnSet);
			
			
			var stp:StyleVO=new StyleVO;
			stp.styleName="LStepperV";
			stp.decoratorClass=LCombineDecorator;
			stp.ele_increase_btn="LButton";
			
			putStyleVO(stp);
			
			stp=new StyleVO;
			stp.styleName="LStepperH";
			stp.decoratorClass=LCombineDecorator;
			stp.ele_increase_btn="LButton";
			
			putStyleVO(stp);
			
			//treenode
			st=new StyleVO();
			st.styleName="LTreeNode";
			st.decoratorClass=LCombineDecorator;
			st.ele_extra_btn="treeNodeExtraBtn";
			st.ele_label_btn="";
			putStyleVO(st);
			
			//scrollbar
			var scrSet:StyleVO=new StyleVO();
			scrSet.styleName="LScrollBar";
			scrSet.decoratorClass=LCombineDecorator;
			scrSet.ele_bg="bg_moudles_scrollbarBg";
			scrSet.ele_slider="btn_moudles_scrollBarThumb";
			scrSet.ele_increase_btn="btn_moudles_scrollBarDown";
			scrSet.ele_decrease_btn="btn_moudles_scrollBarUp";
			putStyleVO(scrSet);
			
			scrSet=new StyleVO;
			scrSet.styleName="LScrollBarH";
			scrSet.decoratorClass=LCombineDecorator;
			scrSet.ele_bg="bg_moudles_scrollbarBgH";
			scrSet.ele_slider="btn_moudles_scrollBarThumbH";
			scrSet.ele_increase_btn="btn_moudles_scrollBarRight";
			scrSet.ele_decrease_btn="btn_moudles_scrollBarLeft";
			putStyleVO(scrSet);
			//lscrollpane
			var scrpSet:StyleVO=new StyleVO;
			scrpSet.styleName="LScrollPane";
			scrpSet.decoratorClass=LCombineDecorator;
			scrpSet.ele_h_scroll_bar="LScrollBarH";
//			scrpSet.ele_v_scroll_bar="LScrollBar";
			putStyleVO(scrpSet);
			
			
			var set:StyleVO=new StyleVO;
			set.styleName="LCombox";
			set.decoratorClass=LCombineDecorator;
			
			putStyleVO(set);
			
			set=new StyleVO;
			set.styleName="LWindow";
			set.decoratorClass=LCombineDecorator;
			set.assetClass=bg_common_bg0;
			set.ele_content_pane="bg_common_bg2";
			set.ele_title_txt="bg_moudles_winTitle";
			set.ele_close_btn="winCloseBtn";
			putStyleVO(set);
			
			set=new StyleVO;
			set.styleName="ALert";
			set.decoratorClass=LCombineDecorator;
			set.assetClass=bg_common_bg0;
			set.ele_content_pane="bg_common_bg3";
			set.ele_title_txt="bg_moudles_winTitle";
			set.ele_close_btn="winCloseBtn";
			putStyleVO(set);

		}
	}
}