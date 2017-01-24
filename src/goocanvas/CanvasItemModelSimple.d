/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module goocanvas.CanvasItemModelSimple;

private import gobject.ObjectG;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemModelT;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCanvasItemModelSimple is used as a base class for the standard canvas
 * item models. It can also be used as the base class for new custom canvas
 * item models.
 * 
 * <note><para>
 * The Model/View canvas feature may be removed in a future version of
 * GooCanvas.
 * </para></note>
 * 
 * It provides default implementations for many of the #GooCanvasItemModel
 * methods.
 * 
 * Subclasses of #GooCanvasItemModelSimple only need to implement the
 * create_item() method of the #GooCanvasItemModel interface, to create
 * the default canvas item to view the item model.
 */
public class CanvasItemModelSimple : ObjectG, CanvasItemModelIF
{
	/** the main Gtk struct */
	protected GooCanvasItemModelSimple* gooCanvasItemModelSimple;

	/** Get the main Gtk struct */
	public GooCanvasItemModelSimple* getCanvasItemModelSimpleStruct()
	{
		return gooCanvasItemModelSimple;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasItemModelSimple;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasItemModelSimple = cast(GooCanvasItemModelSimple*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasItemModelSimple* gooCanvasItemModelSimple, bool ownedRef = false)
	{
		this.gooCanvasItemModelSimple = gooCanvasItemModelSimple;
		super(cast(GObject*)gooCanvasItemModelSimple, ownedRef);
	}

	// add the CanvasItemModel capabilities
	mixin CanvasItemModelT!(GooCanvasItemModelSimple);


	/** */
	public static GType getType()
	{
		return goo_canvas_item_model_simple_get_type();
	}
}
