﻿package fl.managers
{
	import fl.core.UIComponent;
	import flash.display.Sprite;
	import flash.text.TextFormat;
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getQualifiedSuperclassName;

	/**
	 * The StyleManager class provides static methods that can be used to get and 
	 */
	public class StyleManager
	{
		/**
		 * @private
		 */
		private static var _instance : StyleManager;
		/**
		 * @private
		 */
		private var styleToClassesHash : Object;
		/**
		 * @private
		 */
		private var classToInstancesDict : Dictionary;
		/**
		 * @private
		 */
		private var classToStylesDict : Dictionary;
		/**
		 * @private
		 */
		private var classToDefaultStylesDict : Dictionary;
		/**
		 * @private
		 */
		private var globalStyles : Object;

		/**
		 * Creates a new StyleManager object.
		 */
		public function StyleManager ();
		/**
		 * @private
		 */
		private static function getInstance ();
		/**
		 * Registers a component instance with the style manager. After a component instance is
		 */
		public static function registerInstance (instance:UIComponent) : void;
		/**
		 * @private
		 */
		private static function setSharedStyles (instance:UIComponent) : void;
		/**
		 * @private
		 */
		private static function getSharedStyle (instance:UIComponent, name:String) : Object;
		/**
		 * Gets a style that exists on a specific component.
		 */
		public static function getComponentStyle (component:Object, name:String) : Object;
		/**
		 * Removes a style from the specified component.
		 */
		public static function clearComponentStyle (component:Object, name:String) : void;
		/**
		 * Sets a style on all instances of a component type, for example, on all instances of a 
		 */
		public static function setComponentStyle (component:Object, name:String, style:Object) : void;
		/**
		 * @private (protected)
		 */
		private static function getClassDef (component:Object) : Class;
		/**
		 * @private (protected)
		 */
		private static function invalidateStyle (name:String) : void;
		/**
		 * @private (protected)
		 */
		private static function invalidateComponentStyle (componentClass:Class, name:String) : void;
		/**
		 * Sets a global style for all user interface components in a document.
		 */
		public static function setStyle (name:String, style:Object) : void;
		/**
		 * Removes a global style from all user interface components in a document.
		 */
		public static function clearStyle (name:String) : void;
		/**
		 * Gets a global style by name.
		 */
		public static function getStyle (name:String) : Object;
	}
}