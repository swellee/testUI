package
{
	import assets.Assets;
	
	import org.leui.components.LButton;
	import org.leui.components.LStyleSheet;
	import org.leui.decorators.LCombineDecorator;
	import org.leui.decorators.LDecorator;
	import org.leui.decorators.LMultiStateDecorator;
	import org.leui.vos.StyleVO;
	
	/**
	 *@author swellee
	 *2014-5-29
	 *
	 */
	public class MyStyleSheet extends LStyleSheet
	{
		
		public function MyStyleSheet()
		{
			super();
		}
		override protected function initStyleSet():void
		{
			//基本组件样式全部导入
			var assettClasses:Array= Assets.assetCls;
			for (var i:int = 0; i < assettClasses.length; i++) 
			{
				var st:StyleVO=new StyleVO();
				var assetName:String=assettClasses[i];
				st.styleName=assetName;
				st.assetClass=Assets[assetName]as Class;
				st.decoratorClass=LDecorator;
				putStyleVO(st);
			}
			
			//panel set
			var paneSet:StyleVO=new StyleVO();
			paneSet.styleName="LPane";
			paneSet.assetClass=Assets.bg_common_bg0;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg1";
			paneSet.assetClass=Assets.bg_common_bg1;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg2";
			paneSet.assetClass=Assets.bg_common_bg2;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			paneSet=new StyleVO();
			paneSet.styleName="bg3";
			paneSet.assetClass=Assets.bg_common_bg3;
			paneSet.decoratorClass=LDecorator;
			putStyleVO(paneSet);
			
			//text
			var textSet:StyleVO=new StyleVO();
			textSet.styleName="LText";
			textSet.assetClass=Assets.bg_common_bg3;
			textSet.decoratorClass=LDecorator;
			putStyleVO(textSet);
			
			
			textSet=new StyleVO();
			textSet.styleName="LTextArea";
			textSet.assetClass=Assets.bg_common_bg3;
			textSet.decoratorClass=LDecorator;
			putStyleVO(textSet);
			
			var btnbg:StyleVO=new StyleVO();
			btnbg.styleName="btnbg1";
			btnbg.assetClass=Assets.btn_common_generalRect_1;
			btnbg.decoratorClass=LDecorator;
			putStyleVO(btnbg);
			
			btnbg=new StyleVO;
			btnbg.styleName="btnbg2";
			btnbg.assetClass=Assets.btn_common_generalRect_2;
			btnbg.decoratorClass=LDecorator;
			putStyleVO(btnbg);
			
			btnbg=new StyleVO;
			btnbg.styleName="btnbg3";
			btnbg.assetClass=Assets.btn_common_generalRect_3;
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
			bg.assetClass=Assets.bg_common_bg0;
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
			set.assetClass=Assets.bg_common_bg0;
			set.ele_content_pane="bg_common_bg2";
			set.ele_title_txt="bg_moudles_winTitle";
			set.ele_close_btn="winCloseBtn";
			putStyleVO(set);
			
			set=new StyleVO;
			set.styleName="ALert";
			set.decoratorClass=LCombineDecorator;
			set.assetClass=Assets.bg_common_bg0;
			set.ele_content_pane="bg_common_bg3";
			set.ele_title_txt="bg_moudles_winTitle";
			set.ele_close_btn="winCloseBtn";
			putStyleVO(set);

		}
	}
}