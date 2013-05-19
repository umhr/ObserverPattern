package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class Main extends Subject 
	{
		private var _textField:TextField = new TextField();
		public function Main() 
		{
			var sp:Sprite = new Sprite();
			sp.graphics.beginFill(0xFF0000, 0.5);
			sp.graphics.drawRoundRect(0, 0, 100, 100, 8, 8);
			sp.graphics.endFill();
			addChild(sp);
			
			addEventListener("type", listener);
			attach("key", update);
			addEventListener(MouseEvent.CLICK, onClick);
			
			addTextField();
		}
		
		private function addTextField():void 
		{
			_textField.border = true;
			_textField.width = 460;
			_textField.height = 355;
			_textField.y = 110;
			addChild(_textField);
		}
		
		private function onClick(e:MouseEvent):void 
		{
			trace("click");
			_textField.appendText("click\n");
			
			dispatchEvent(new NewEvent("type"));
			notify(new Observer("key"));
		}
		
		private function listener(e:Event):void 
		{
			_textField.appendText("Event! " + e.type + "\n");
			trace("Event!", e.type);
		}
		
		private function update(e:Observer):void 
		{
			_textField.appendText("Observer! " + e.type + "\n");
			trace("Observer!", e.type);
		}
	}
}