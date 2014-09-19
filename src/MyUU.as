package 
{
 
	import org.leui.components.LWindow;
	import org.leui.components.LBox;
	import org.leui.components.LButton;
	import org.leui.components.LText;
	import org.leui.components.LPane;

	public class MyUU extends LWindow
	{

		public function MyUU ()
		{
			initUI();
		}
		private function initUI():void
		{
			var lText:LText = new LText();
			lText.setXY(51,43);
			lText.setWH(96,26);
			lText.text = "txt haha";
			var lButton:LButton = new LButton();
			var lButton2:LButton = new LButton();
			var lButton3:LButton = new LButton();
			var lBox:LBox = new LBox();
			lBox.setXY(10,8);
			lBox.setWH(150,54);
			lBox.appendAll(lButton,lButton2,lButton3);
			var lPane:LPane = new LPane();
			lPane.setXY(55,74);
			lPane.setWH(235,156);
			lPane.append(lBox);
			this.contentPane.appendAll(lText,lPane);

		}
	}
} 