package  
{
	/**
	 * Eventに対応しています。
	 * @author umhr
	 */
	public class Observer
	{
		public var type:String;
		public var bubbles:Boolean;
		public var cancelable:Boolean;
		public function Observer(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			this.type = type;
			this.bubbles = bubbles;
			this.cancelable = cancelable;
		} 
		
		public function clone():Observer 
		{ 
			return new Observer(type, bubbles, cancelable);
		} 
	}
}