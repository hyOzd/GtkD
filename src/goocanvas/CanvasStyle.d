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


module goocanvas.CanvasStyle;

private import cairo.Context;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Value;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCanvasStyle provides support for cascading style properties for canvas
 * items. It is intended to be used when implementing new canvas items.
 * 
 * <note><para>
 * The cascading styles canvas feature may be removed in a future version
 * of GooCanvas.
 * </para></note>
 * 
 * Style properties are identified by a unique #GQuark, and contain
 * arbitrary data stored in a #GValue.
 * 
 * #GooCanvasStyle also provides a few convenience functions such as
 * goo_canvas_style_set_stroke_options() and
 * goo_canvas_style_set_fill_options() which efficiently apply an item's
 * standard style properties to the given cairo_t.
 */
public class CanvasStyle : ObjectG
{
	/** the main Gtk struct */
	protected GooCanvasStyle* gooCanvasStyle;

	/** Get the main Gtk struct */
	public GooCanvasStyle* getCanvasStyleStruct()
	{
		return gooCanvasStyle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasStyle;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasStyle = cast(GooCanvasStyle*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasStyle* gooCanvasStyle, bool ownedRef = false)
	{
		this.gooCanvasStyle = gooCanvasStyle;
		super(cast(GObject*)gooCanvasStyle, ownedRef);
	}

	alias setProperty = ObjectG.setProperty;

	/**
	 */

	/** */
	public static GType getType()
	{
		return goo_canvas_style_get_type();
	}

	/**
	 * Creates a new #GooCanvasStyle.
	 *
	 * Return: a new #GooCanvasStyle.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = goo_canvas_style_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GooCanvasStyle*) p, true);
	}

	/**
	 * Copies the given #GooCanvasStyle, by copying all of its properties.
	 * Though the parent of the new style is left unset.
	 *
	 * Return: a copy of the given #GooCanvasStyle.
	 */
	public CanvasStyle copy()
	{
		auto p = goo_canvas_style_copy(gooCanvasStyle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasStyle)(cast(GooCanvasStyle*) p, true);
	}

	/**
	 * Gets the parent of the style.
	 *
	 * Return: the parent of the given style, or %NULL.
	 */
	public CanvasStyle getParent()
	{
		auto p = goo_canvas_style_get_parent(gooCanvasStyle);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasStyle)(cast(GooCanvasStyle*) p);
	}

	/**
	 * Gets the value of a property.
	 *
	 * This searches though all the #GooCanvasStyle's own list of property settings
	 * and also all ancestor #GooCanvasStyle objects.
	 *
	 * Note that it returns a pointer to the internal #GValue setting, which should
	 * not be changed.
	 *
	 * Params:
	 *     propertyId = the property identifier.
	 *
	 * Return: the property value, or %NULL if it isn't set.
	 */
	public Value getProperty(GQuark propertyId)
	{
		auto p = goo_canvas_style_get_property(gooCanvasStyle, propertyId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Value)(cast(GValue*) p, true);
	}

	/**
	 * Sets the standard cairo fill options using the given style.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *
	 * Return: %TRUE if a paint source is set, or %FALSE if the fill should
	 *     be skipped.
	 */
	public bool setFillOptions(Context cr)
	{
		return goo_canvas_style_set_fill_options(gooCanvasStyle, (cr is null) ? null : cr.getContextStruct()) != 0;
	}

	/**
	 * Sets the parent of the style.
	 *
	 * Params:
	 *     parent = the new parent.
	 */
	public void setParent(CanvasStyle parent)
	{
		goo_canvas_style_set_parent(gooCanvasStyle, (parent is null) ? null : parent.getCanvasStyleStruct());
	}

	/**
	 * Sets a property in the style, replacing any current setting.
	 *
	 * Note that this will override the property setting in ancestor
	 * #GooCanvasStyle objects.
	 *
	 * Params:
	 *     propertyId = the property identifier.
	 *     value = the value of the property.
	 */
	public void setProperty(GQuark propertyId, Value value)
	{
		goo_canvas_style_set_property(gooCanvasStyle, propertyId, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets the standard cairo stroke options using the given style.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *
	 * Return: %TRUE if a paint source is set, or %FALSE if the stroke should
	 *     be skipped.
	 */
	public bool setStrokeOptions(Context cr)
	{
		return goo_canvas_style_set_stroke_options(gooCanvasStyle, (cr is null) ? null : cr.getContextStruct()) != 0;
	}
}
