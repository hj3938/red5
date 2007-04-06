package org.red5.samples.publisher.view.settings
{
	/**
	 * RED5 Open Source Flash Server - http://www.osflash.org/red5
	 *
	 * Copyright (c) 2006-2007 by respective authors (see below). All rights reserved.
	 *
	 * This library is free software; you can redistribute it and/or modify it under the
	 * terms of the GNU Lesser General Public License as published by the Free Software
	 * Foundation; either version 2.1 of the License, or (at your option) any later
	 * version.
	 *
	 * This library is distributed in the hope that it will be useful, but WITHOUT ANY
	 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
	 * PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
	 *
	 * You should have received a copy of the GNU Lesser General Public License along
	 * with this library; if not, write to the Free Software Foundation, Inc.,
	 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
	 */
	 
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import flash.events.*;
	
	import mx.containers.ApplicationControlBar;
	import mx.controls.*;
	import mx.events.*;
	
	import org.red5.samples.publisher.events.ChangeSettingsViewEvent;
	import org.red5.samples.publisher.model.*;

	/**
	 * 
	 * @author Thijs Triemstra 
	 */	
	public class SettingsAppBarClass extends ApplicationControlBar
	{
		/**
		* 
		*/										 	 
		private var model : ModelLocator = ModelLocator.getInstance();	
				
		[Bindable]
		/**
		* 
		*/			
		public var monitorTransaction : MonitorTransaction = model.monitorTransaction;
		
		/**
		 * 
		 * @param event
		 */				
		public function changeSettingsView( event : ItemClickEvent ) : void
		{	
			var switchSettingsViewEvent : ChangeSettingsViewEvent = new ChangeSettingsViewEvent( event.item.data,
																								 event.item.img );
			CairngormEventDispatcher.getInstance().dispatchEvent( switchSettingsViewEvent );
		}

	}
}