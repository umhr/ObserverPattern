package  
{
	import flash.display.Sprite;
	/**
	 * EventDispatcherに対応しています。
	 * @author umhr
	 */
	public class Subject extends Sprite
	{
		private var listenerList:Object = { };
		public function Subject() 
		{
		}
		/**
		 * addEventListenerに対応する
		 * @param	type
		 * @param	listener
		 */
		public function attach(type:String, listener:Function):void {
			listenerList[type] = listener;
		}
		/**
		 * removeEventListenerに対応する
		 * @param	type
		 * @param	listener
		 */
		public function detach(type:String, listener:Function):void {
			listenerList[type] = null;
		}
		/**
		 * dispatchEventに対応する
		 * @param	event
		 */
		public function notify(observer:Observer):void {
			var listener:Function = listenerList[observer.type];
			listener(observer);
			
		}
	}
}