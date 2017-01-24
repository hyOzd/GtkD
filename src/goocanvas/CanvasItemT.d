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


module goocanvas.CanvasItemT;

public  import cairo.Context;
public  import cairo.Matrix;
public  import gdk.Event;
public  import glib.ListG;
public  import glib.Str;
public  import gobject.ObjectClass;
public  import gobject.ObjectG;
public  import gobject.ParamSpec;
public  import gobject.Signals;
public  import gobject.Value;
public  import goocanvas.Canvas;
public  import goocanvas.CanvasItem;
public  import goocanvas.CanvasItemIF;
public  import goocanvas.CanvasItemModel;
public  import goocanvas.CanvasItemModelIF;
public  import goocanvas.CanvasStyle;
public  import gtk.Tooltip;
public  import gtkc.gdktypes;
public  import gtkc.goocanvas;
public  import gtkc.goocanvastypes;
public  import std.algorithm;


/**
 * #GooCanvasItem defines the interface that canvas items must implement,
 * and contains methods for operating on canvas items.
 */
public template CanvasItemT(TStruct)
{
	/** Get the main Gtk struct */
	public GooCanvasItem* getCanvasItemStruct()
	{
		return cast(GooCanvasItem*)getStruct();
	}


	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout container items such as #GooCanvasTable.
	 *
	 * It finds a child property of a canvas item class by name.
	 *
	 * Params:
	 *     iclass = a #GObjectClass
	 *     propertyName = the name of the child property to find
	 *
	 * Return: the #GParamSpec of the
	 *     child property or %NULL if @class has no child property with that name.
	 */
	public static ParamSpec classFindChildProperty(ObjectClass iclass, string propertyName)
	{
		auto p = goo_canvas_item_class_find_child_property((iclass is null) ? null : iclass.getObjectClassStruct(), Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout container items such as #GooCanvasTable.
	 *
	 * It installs a child property on a canvas item class.
	 *
	 * Params:
	 *     iclass = a #GObjectClass
	 *     propertyId = the id for the property
	 *     pspec = the #GParamSpec for the property
	 */
	public static void classInstallChildProperty(ObjectClass iclass, uint propertyId, ParamSpec pspec)
	{
		goo_canvas_item_class_install_child_property((iclass is null) ? null : iclass.getObjectClassStruct(), propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout container items such as #GooCanvasTable.
	 *
	 * It returns all child properties of a canvas item class.
	 *
	 * Params:
	 *     iclass = a #GObjectClass
	 *
	 * Return: a newly allocated
	 *     array of #GParamSpec*. The array must be freed with g_free().
	 */
	public static ParamSpec[] classListChildProperties(ObjectClass iclass)
	{
		uint nProperties;
		
		auto p = goo_canvas_item_class_list_child_properties((iclass is null) ? null : iclass.getObjectClassStruct(), &nProperties);
		
		if(p is null)
		{
			return null;
		}
		
		ParamSpec[] arr = new ParamSpec[nProperties];
		for(int i = 0; i < nProperties; i++)
		{
			arr[i] = ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p[i]);
		}
		
		return arr;
	}

	/**
	 * Adds a child item to a container item at the given stack position.
	 *
	 * Params:
	 *     child = the item to add.
	 *     position = the position of the item, or -1 to place it last (at the top of
	 *         the stacking order).
	 */
	public void addChild(CanvasItemIF child, int position)
	{
		goo_canvas_item_add_child(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), position);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout items such as #GooCanvasTable.
	 *
	 * It allocates an area to a child #GooCanvasItem.
	 *
	 * Note that the parent layout item will use a transform to move each of its
	 * children for the layout, so there is no need for the child item to
	 * reposition itself. It only needs to recalculate its device bounds.
	 *
	 * To help recalculate the item's device bounds, the @x_offset and @y_offset
	 * of the child item's allocated position from its requested position are
	 * provided. Simple items can just add these to their bounds.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     requestedArea = the area that the item originally requested, in the
	 *         parent's coordinate space.
	 *     allocatedArea = the area that the item has been allocated, in the parent's
	 *         coordinate space.
	 *     xOffset = the x offset of the allocated area from the requested area in
	 *         the device coordinate space.
	 *     yOffset = the y offset of the allocated area from the requested area in
	 *         the device coordinate space.
	 */
	public void allocateArea(Context cr, GooCanvasBounds* requestedArea, GooCanvasBounds* allocatedArea, double xOffset, double yOffset)
	{
		goo_canvas_item_allocate_area(getCanvasItemStruct(), (cr is null) ? null : cr.getContextStruct(), requestedArea, allocatedArea, xOffset, yOffset);
	}

	/**
	 * Animates an item from its current position to the given offsets, scale
	 * and rotation.
	 *
	 * Params:
	 *     x = the final x coordinate.
	 *     y = the final y coordinate.
	 *     scale = the final scale.
	 *     degrees = the final rotation. This can be negative to rotate anticlockwise,
	 *         and can also be greater than 360 to rotate a number of times.
	 *     absolute = if the @x, @y, @scale and @degrees values are absolute, or
	 *         relative to the current transform. Note that absolute animations only work
	 *         if the item currently has a simple transform. If the item has a shear or
	 *         some other complicated transform it may result in strange animations.
	 *     duration = the duration of the animation, in milliseconds (1/1000ths of a
	 *         second).
	 *     stepTime = the time between each animation step, in milliseconds.
	 *     type = specifies what happens when the animation finishes.
	 */
	public void animate(double x, double y, double scale, double degrees, bool absolute, int duration, int stepTime, GooCanvasAnimateType type)
	{
		goo_canvas_item_animate(getCanvasItemStruct(), x, y, scale, degrees, absolute, duration, stepTime, type);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items.
	 *
	 * It updates the canvas immediately, if an update is scheduled.
	 * This ensures that all item bounds are up-to-date.
	 */
	public void ensureUpdated()
	{
		goo_canvas_item_ensure_updated(getCanvasItemStruct());
	}

	/**
	 * Attempts to find the given child item with the container's stack.
	 *
	 * Params:
	 *     child = the child item to find.
	 *
	 * Return: the position of the given @child item, or -1 if it isn't found.
	 */
	public int findChild(CanvasItemIF child)
	{
		return goo_canvas_item_find_child(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct());
	}

	/**
	 * Gets the bounds of the item.
	 *
	 * Note that the bounds includes the entire fill and stroke extents of the
	 * item, whether they are painted or not.
	 *
	 * Params:
	 *     bounds = a #GooCanvasBounds to return the bounds in.
	 */
	public void getBounds(out GooCanvasBounds bounds)
	{
		goo_canvas_item_get_bounds(getCanvasItemStruct(), &bounds);
	}

	/**
	 * Returns the #GooCanvas containing the given #GooCanvasItem.
	 *
	 * Return: the #GooCanvas.
	 */
	public Canvas getCanvas()
	{
		auto p = goo_canvas_item_get_canvas(getCanvasItemStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Canvas)(cast(GooCanvas*) p);
	}

	/**
	 * Gets the child item at the given stack position.
	 *
	 * Params:
	 *     childNum = the position of a child in the container's stack.
	 *
	 * Return: the child item at the given stack position, or
	 *     %NULL if @child_num is out of range.
	 */
	public CanvasItemIF getChild(int childNum)
	{
		auto p = goo_canvas_item_get_child(getCanvasItemStruct(), childNum);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * Gets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItem.
	 *     varArgs = pairs of property names and value pointers, and a terminating
	 *         %NULL.
	 */
	public void getChildPropertiesValist(CanvasItemIF child, void* varArgs)
	{
		goo_canvas_item_get_child_properties_valist(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), varArgs);
	}

	/**
	 * Gets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItem.
	 *     propertyName = the name of the child property to get.
	 *     value = a location to return the value.
	 */
	public void getChildProperty(CanvasItemIF child, string propertyName, Value value)
	{
		goo_canvas_item_get_child_property(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Returns %TRUE if the item is static. Static items do not move or change
	 * size when the canvas is scrolled or the scale changes.
	 *
	 * Return: %TRUE if the item is static.
	 */
	public bool getIsStatic()
	{
		return goo_canvas_item_get_is_static(getCanvasItemStruct()) != 0;
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically container items such as #GooCanvasGroup.
	 *
	 * It gets the items at the given point.
	 *
	 * Params:
	 *     x = the x coordinate of the point.
	 *     y = the y coordinate of the point.
	 *     cr = a cairo contect.
	 *     isPointerEvent = %TRUE if the "pointer-events" properties of items should
	 *         be used to determine which parts of the item are tested.
	 *     parentIsVisible = %TRUE if the parent item is visible (which
	 *         implies that all ancestors are also visible).
	 *     foundItems = the list of items found
	 *         so far.
	 *
	 * Return: the
	 *     @found_items list, with any more found items
	 *     added onto the start of the list, leaving the top item first.
	 */
	public ListG getItemsAt(double x, double y, Context cr, bool isPointerEvent, bool parentIsVisible, ListG foundItems)
	{
		auto p = goo_canvas_item_get_items_at(getCanvasItemStruct(), x, y, (cr is null) ? null : cr.getContextStruct(), isPointerEvent, parentIsVisible, (foundItems is null) ? null : foundItems.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the model of the given canvas item.
	 *
	 * Return: the item's model, or %NULL if it has no model.
	 */
	public CanvasItemModelIF getModel()
	{
		auto p = goo_canvas_item_get_model(getCanvasItemStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(cast(GooCanvasItemModel*) p);
	}

	/**
	 * Gets the number of children of the container.
	 *
	 * Return: the number of children.
	 */
	public int getNChildren()
	{
		return goo_canvas_item_get_n_children(getCanvasItemStruct());
	}

	/**
	 * Gets the parent of the given item.
	 *
	 * Return: the parent item, or %NULL if the item has no parent.
	 */
	public CanvasItemIF getParent()
	{
		auto p = goo_canvas_item_get_parent(getCanvasItemStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout items such as #GooCanvasTable.
	 *
	 * It gets the requested area of a child item.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     requestedArea = a #GooCanvasBounds to return the requested area in, in the
	 *         parent's coordinate space.
	 *
	 * Return: %TRUE if the item should be allocated space.
	 */
	public bool getRequestedArea(Context cr, GooCanvasBounds* requestedArea)
	{
		return goo_canvas_item_get_requested_area(getCanvasItemStruct(), (cr is null) ? null : cr.getContextStruct(), requestedArea) != 0;
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout items such as #GooCanvasTable.
	 *
	 * It gets the requested area of a child item, assuming it is allocated the
	 * given width. This is useful for text items whose requested height may change
	 * depending on the allocated width.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     width = the allocated width.
	 *     requestedArea = a #GooCanvasBounds to return the requested area in, in the
	 *         parent's coordinate space. If %FALSE is returned, this is undefined.
	 *
	 * Return: %TRUE if the item's requested area changes due to the new allocated
	 *     width.
	 *
	 * Since: 2.0.1
	 */
	public bool getRequestedAreaForWidth(Context cr, double width, GooCanvasBounds* requestedArea)
	{
		return goo_canvas_item_get_requested_area_for_width(getCanvasItemStruct(), (cr is null) ? null : cr.getContextStruct(), width, requestedArea) != 0;
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically layout items such as #GooCanvasTable.
	 *
	 * It gets the requested height of a child item, assuming it is allocated the
	 * given width. This is useful for text items whose requested height may change
	 * depending on the allocated width.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     width = the width that the item may be allocated.
	 *
	 * Return: the requested height of the item, given the allocated width,
	 *     or %-1 if the item doesn't support this method or its height doesn't
	 *     change when allocated different widths.
	 */
	public double getRequestedHeight(Context cr, double width)
	{
		return goo_canvas_item_get_requested_height(getCanvasItemStruct(), (cr is null) ? null : cr.getContextStruct(), width);
	}

	/**
	 * This function can be used to get the position, scale and rotation of an
	 * item, providing that the item has a simple transformation matrix
	 * (e.g. set with goo_canvas_item_set_simple_transform(), or using a
	 * combination of simple translate, scale and rotate operations). If the item
	 * has a complex transformation matrix the results will be incorrect.
	 *
	 * Params:
	 *     x = returns the x coordinate of the origin of the item's coordinate space.
	 *     y = returns the y coordinate of the origin of the item's coordinate space.
	 *     scale = returns the scale of the item.
	 *     rotation = returns the clockwise rotation of the item, in degrees (0-360).
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getSimpleTransform(out double x, out double y, out double scale, out double rotation)
	{
		return goo_canvas_item_get_simple_transform(getCanvasItemStruct(), &x, &y, &scale, &rotation) != 0;
	}

	/**
	 * Gets the item's style. If the item doesn't have its own style it will return
	 * its parent's style.
	 *
	 * Return: the item's style.
	 */
	public CanvasStyle getStyle()
	{
		auto p = goo_canvas_item_get_style(getCanvasItemStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasStyle)(cast(GooCanvasStyle*) p);
	}

	/**
	 * Gets the transformation matrix of an item.
	 *
	 * Params:
	 *     transform = the place to store the transform.
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getTransform(out Matrix transform)
	{
		cairo_matrix_t* outtransform = gMalloc!cairo_matrix_t();
		
		auto p = goo_canvas_item_get_transform(getCanvasItemStruct(), outtransform) != 0;
		
		transform = new Matrix(outtransform, true);
		
		return p;
	}

	/**
	 * Gets the transformation matrix of an item combined with any special
	 * transform needed for the given child. These special transforms are used
	 * by layout items such as #GooCanvasTable.
	 *
	 * Params:
	 *     child = a child of @item.
	 *     transform = the place to store the transform.
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getTransformForChild(CanvasItemIF child, out Matrix transform)
	{
		cairo_matrix_t* outtransform = gMalloc!cairo_matrix_t();
		
		auto p = goo_canvas_item_get_transform_for_child(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), outtransform) != 0;
		
		transform = new Matrix(outtransform, true);
		
		return p;
	}

	/**
	 * Tests to see if the given item is a container.
	 *
	 * Return: %TRUE if the item is a container.
	 */
	public bool isContainer()
	{
		return goo_canvas_item_is_container(getCanvasItemStruct()) != 0;
	}

	/**
	 * Checks if the item is visible.
	 *
	 * This entails checking the item's own visibility setting, as well as those
	 * of its ancestors.
	 *
	 * Note that the item may be scrolled off the screen and so may not
	 * be actually visible to the user.
	 *
	 * Return: %TRUE if the item is visible.
	 */
	public bool isVisible()
	{
		return goo_canvas_item_is_visible(getCanvasItemStruct()) != 0;
	}

	/**
	 * Lowers an item in the stacking order.
	 *
	 * Params:
	 *     below = the item to lower @item below, or %NULL to lower @item to the
	 *         bottom of the stack.
	 */
	public void lower(CanvasItemIF below)
	{
		goo_canvas_item_lower(getCanvasItemStruct(), (below is null) ? null : below.getCanvasItemStruct());
	}

	/**
	 * Moves a child item to a new stack position within the container.
	 *
	 * Params:
	 *     oldPosition = the current position of the child item.
	 *     newPosition = the new position of the child item.
	 */
	public void moveChild(int oldPosition, int newPosition)
	{
		goo_canvas_item_move_child(getCanvasItemStruct(), oldPosition, newPosition);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically container items such as #GooCanvasGroup.
	 *
	 * It paints the item and all children if they intersect the given bounds.
	 *
	 * Note that the @scale argument may be different to the current scale in the
	 * #GooCanvasItem, e.g. when the canvas is being printed.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     bounds = the bounds that need to be repainted, in device space.
	 *     scale = the scale to use to determine whether an item should be painted.
	 *         See #GooCanvasItem:visibility-threshold.
	 */
	public void paint(Context cr, GooCanvasBounds* bounds, double scale)
	{
		goo_canvas_item_paint(getCanvasItemStruct(), (cr is null) ? null : cr.getContextStruct(), bounds, scale);
	}

	/**
	 * Raises an item in the stacking order.
	 *
	 * Params:
	 *     above = the item to raise @item above, or %NULL to raise @item to the top
	 *         of the stack.
	 */
	public void raise(CanvasItemIF above)
	{
		goo_canvas_item_raise(getCanvasItemStruct(), (above is null) ? null : above.getCanvasItemStruct());
	}

	/**
	 * Removes an item from its parent. If the item is in a canvas it will be
	 * removed.
	 *
	 * This would normally also result in the item being freed.
	 */
	public void remove()
	{
		goo_canvas_item_remove(getCanvasItemStruct());
	}

	/**
	 * Removes the child item at the given position.
	 *
	 * Params:
	 *     childNum = the position of the child item to remove.
	 */
	public void removeChild(int childNum)
	{
		goo_canvas_item_remove_child(getCanvasItemStruct(), childNum);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items.
	 *
	 * It requests that an update of the item is scheduled. It will be performed
	 * as soon as the application is idle, and before the canvas is redrawn.
	 */
	public void requestUpdate()
	{
		goo_canvas_item_request_update(getCanvasItemStruct());
	}

	/**
	 * Rotates the item's coordinate system by the given amount, about the given
	 * origin.
	 *
	 * Params:
	 *     degrees = the clockwise angle of rotation.
	 *     cx = the x coordinate of the origin of the rotation.
	 *     cy = the y coordinate of the origin of the rotation.
	 */
	public void rotate(double degrees, double cx, double cy)
	{
		goo_canvas_item_rotate(getCanvasItemStruct(), degrees, cx, cy);
	}

	/**
	 * Scales the item's coordinate system by the given amounts.
	 *
	 * Params:
	 *     sx = the amount to scale the horizontal axis.
	 *     sy = the amount to scale the vertical axis.
	 */
	public void scale(double sx, double sy)
	{
		goo_canvas_item_scale(getCanvasItemStruct(), sx, sy);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically container items such as #GooCanvasGroup.
	 *
	 * It sets the canvas of the item.
	 *
	 * Params:
	 *     canvas = a #GooCanvas
	 */
	public void setCanvas(Canvas canvas)
	{
		goo_canvas_item_set_canvas(getCanvasItemStruct(), (canvas is null) ? null : canvas.getCanvasStruct());
	}

	/**
	 * Sets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItem.
	 *     varArgs = pairs of property names and values, and a terminating %NULL.
	 */
	public void setChildPropertiesValist(CanvasItemIF child, void* varArgs)
	{
		goo_canvas_item_set_child_properties_valist(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), varArgs);
	}

	/**
	 * Sets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItem.
	 *     propertyName = the name of the child property to set.
	 *     value = the value to set the property to.
	 */
	public void setChildProperty(CanvasItemIF child, string propertyName, Value value)
	{
		goo_canvas_item_set_child_property(getCanvasItemStruct(), (child is null) ? null : child.getCanvasItemStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Notifies the item that it is static. Static items do not move or change
	 * size when the canvas is scrolled or the scale changes.
	 *
	 * Container items such as #GooCanvasGroup should call this function when
	 * children are added, to notify children whether they are static or not.
	 * Containers should also pass on any changes in their own status to children.
	 *
	 * Params:
	 *     isStatic = if the item is static.
	 */
	public void setIsStatic(bool isStatic)
	{
		goo_canvas_item_set_is_static(getCanvasItemStruct(), isStatic);
	}

	/**
	 * Sets the model of the given canvas item.
	 *
	 * Params:
	 *     model = a #GooCanvasItemModel.
	 */
	public void setModel(CanvasItemModelIF model)
	{
		goo_canvas_item_set_model(getCanvasItemStruct(), (model is null) ? null : model.getCanvasItemModelStruct());
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items (specifically container items such as #GooCanvasGroup).
	 * It sets the parent of the child item.
	 * <!--PARAMETERS-->
	 * <note><para>
	 * This function cannot be used to add an item to a group
	 * or to change the parent of an item.
	 * To do that use the #GooCanvasItem:parent property.
	 * </para></note>
	 *
	 * Params:
	 *     parent = the new parent item.
	 */
	public void setParent(CanvasItemIF parent)
	{
		goo_canvas_item_set_parent(getCanvasItemStruct(), (parent is null) ? null : parent.getCanvasItemStruct());
	}

	/**
	 * A convenience function to set the item's transformation matrix.
	 *
	 * Params:
	 *     x = the x coordinate of the origin of the item's coordinate space.
	 *     y = the y coordinate of the origin of the item's coordinate space.
	 *     scale = the scale of the item.
	 *     rotation = the clockwise rotation of the item, in degrees.
	 */
	public void setSimpleTransform(double x, double y, double scale, double rotation)
	{
		goo_canvas_item_set_simple_transform(getCanvasItemStruct(), x, y, scale, rotation);
	}

	/**
	 * Sets the item's style, by copying the properties from the given style.
	 *
	 * Params:
	 *     style = a style.
	 */
	public void setStyle(CanvasStyle style)
	{
		goo_canvas_item_set_style(getCanvasItemStruct(), (style is null) ? null : style.getCanvasStyleStruct());
	}

	/**
	 * Sets the transformation matrix of an item.
	 *
	 * Params:
	 *     transform = the new transformation matrix, or %NULL to reset the
	 *         transformation to the identity matrix.
	 */
	public void setTransform(Matrix transform)
	{
		goo_canvas_item_set_transform(getCanvasItemStruct(), (transform is null) ? null : transform.getMatrixStruct());
	}

	/**
	 * Skews the item's coordinate system along the x axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewX(double degrees, double cx, double cy)
	{
		goo_canvas_item_skew_x(getCanvasItemStruct(), degrees, cx, cy);
	}

	/**
	 * Skews the item's coordinate system along the y axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewY(double degrees, double cx, double cy)
	{
		goo_canvas_item_skew_y(getCanvasItemStruct(), degrees, cx, cy);
	}

	/**
	 * Stops any current animation for the given item, leaving it at its current
	 * position.
	 */
	public void stopAnimation()
	{
		goo_canvas_item_stop_animation(getCanvasItemStruct());
	}

	/**
	 * Translates the origin of the item's coordinate system by the given amounts.
	 *
	 * Params:
	 *     tx = the amount to move the origin in the horizontal direction.
	 *     ty = the amount to move the origin in the vertical direction.
	 */
	public void translate(double tx, double ty)
	{
		goo_canvas_item_translate(getCanvasItemStruct(), tx, ty);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, specifically container items such as #GooCanvasGroup.
	 *
	 * Updates the item, if needed, and any children.
	 *
	 * Params:
	 *     entireTree = if the entire subtree should be updated.
	 *     cr = a cairo context.
	 *     bounds = a #GooCanvasBounds to return the new bounds in.
	 */
	public void update(bool entireTree, Context cr, GooCanvasBounds* bounds)
	{
		goo_canvas_item_update(getCanvasItemStruct(), entireTree, (cr is null) ? null : cr.getContextStruct(), bounds);
	}

	protected class OnAnimationFinishedDelegateWrapper
	{
		void delegate(bool, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(bool, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAnimationFinishedDelegateWrapper[] onAnimationFinishedListeners;

	/**
	 * Emitted when the item animation has finished.
	 *
	 * Params:
	 *     stopped = if the animation was explicitly stopped.
	 */
	gulong addOnAnimationFinished(void delegate(bool, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onAnimationFinishedListeners ~= new OnAnimationFinishedDelegateWrapper(dlg, 0, connectFlags);
		onAnimationFinishedListeners[onAnimationFinishedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"animation-finished",
			cast(GCallback)&callBackAnimationFinished,
			cast(void*)onAnimationFinishedListeners[onAnimationFinishedListeners.length - 1],
			cast(GClosureNotify)&callBackAnimationFinishedDestroy,
			connectFlags);
		return onAnimationFinishedListeners[onAnimationFinishedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackAnimationFinished(GooCanvasItem* canvasitemStruct, bool stopped,OnAnimationFinishedDelegateWrapper wrapper)
	{
		wrapper.dlg(stopped, wrapper.outer);
	}
	
	extern(C) static void callBackAnimationFinishedDestroy(OnAnimationFinishedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnAnimationFinished(wrapper);
	}

	protected void internalRemoveOnAnimationFinished(OnAnimationFinishedDelegateWrapper source)
	{
		foreach(index, wrapper; onAnimationFinishedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onAnimationFinishedListeners[index] = null;
				onAnimationFinishedListeners = std.algorithm.remove(onAnimationFinishedListeners, index);
				break;
			}
		}
	}
	

	protected class OnButtonPressDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnButtonPressDelegateWrapper[] onButtonPressListeners;

	/**
	 * Emitted when a mouse button is pressed in an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnButtonPress(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onButtonPressListeners ~= new OnButtonPressDelegateWrapper(dlg, 0, connectFlags);
		onButtonPressListeners[onButtonPressListeners.length - 1].handlerId = Signals.connectData(
			this,
			"button-press-event",
			cast(GCallback)&callBackButtonPress,
			cast(void*)onButtonPressListeners[onButtonPressListeners.length - 1],
			cast(GClosureNotify)&callBackButtonPressDestroy,
			connectFlags);
		return onButtonPressListeners[onButtonPressListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackButtonPress(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnButtonPressDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackButtonPressDestroy(OnButtonPressDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnButtonPress(wrapper);
	}

	protected void internalRemoveOnButtonPress(OnButtonPressDelegateWrapper source)
	{
		foreach(index, wrapper; onButtonPressListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onButtonPressListeners[index] = null;
				onButtonPressListeners = std.algorithm.remove(onButtonPressListeners, index);
				break;
			}
		}
	}
	

	protected class OnButtonReleaseDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnButtonReleaseDelegateWrapper[] onButtonReleaseListeners;

	/**
	 * Emitted when a mouse button is released in an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnButtonRelease(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onButtonReleaseListeners ~= new OnButtonReleaseDelegateWrapper(dlg, 0, connectFlags);
		onButtonReleaseListeners[onButtonReleaseListeners.length - 1].handlerId = Signals.connectData(
			this,
			"button-release-event",
			cast(GCallback)&callBackButtonRelease,
			cast(void*)onButtonReleaseListeners[onButtonReleaseListeners.length - 1],
			cast(GClosureNotify)&callBackButtonReleaseDestroy,
			connectFlags);
		return onButtonReleaseListeners[onButtonReleaseListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackButtonRelease(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnButtonReleaseDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackButtonReleaseDestroy(OnButtonReleaseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnButtonRelease(wrapper);
	}

	protected void internalRemoveOnButtonRelease(OnButtonReleaseDelegateWrapper source)
	{
		foreach(index, wrapper; onButtonReleaseListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onButtonReleaseListeners[index] = null;
				onButtonReleaseListeners = std.algorithm.remove(onButtonReleaseListeners, index);
				break;
			}
		}
	}
	

	protected class OnChildNotifyDelegateWrapper
	{
		void delegate(ParamSpec, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ParamSpec, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChildNotifyDelegateWrapper[] onChildNotifyListeners;

	/**
	 * Emitted for each child property that has changed.
	 * The signal's detail holds the property name.
	 *
	 * Params:
	 *     pspec = the #GParamSpec of the changed child property.
	 */
	gulong addOnChildNotify(void delegate(ParamSpec, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChildNotifyListeners ~= new OnChildNotifyDelegateWrapper(dlg, 0, connectFlags);
		onChildNotifyListeners[onChildNotifyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"child-notify",
			cast(GCallback)&callBackChildNotify,
			cast(void*)onChildNotifyListeners[onChildNotifyListeners.length - 1],
			cast(GClosureNotify)&callBackChildNotifyDestroy,
			connectFlags);
		return onChildNotifyListeners[onChildNotifyListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChildNotify(GooCanvasItem* canvasitemStruct, GParamSpec* pspec,OnChildNotifyDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(ParamSpec)(pspec), wrapper.outer);
	}
	
	extern(C) static void callBackChildNotifyDestroy(OnChildNotifyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChildNotify(wrapper);
	}

	protected void internalRemoveOnChildNotify(OnChildNotifyDelegateWrapper source)
	{
		foreach(index, wrapper; onChildNotifyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChildNotifyListeners[index] = null;
				onChildNotifyListeners = std.algorithm.remove(onChildNotifyListeners, index);
				break;
			}
		}
	}
	

	protected class OnEnterNotifyDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnEnterNotifyDelegateWrapper[] onEnterNotifyListeners;

	/**
	 * Emitted when the mouse enters an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnEnterNotify(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onEnterNotifyListeners ~= new OnEnterNotifyDelegateWrapper(dlg, 0, connectFlags);
		onEnterNotifyListeners[onEnterNotifyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"enter-notify-event",
			cast(GCallback)&callBackEnterNotify,
			cast(void*)onEnterNotifyListeners[onEnterNotifyListeners.length - 1],
			cast(GClosureNotify)&callBackEnterNotifyDestroy,
			connectFlags);
		return onEnterNotifyListeners[onEnterNotifyListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackEnterNotify(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnEnterNotifyDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackEnterNotifyDestroy(OnEnterNotifyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnEnterNotify(wrapper);
	}

	protected void internalRemoveOnEnterNotify(OnEnterNotifyDelegateWrapper source)
	{
		foreach(index, wrapper; onEnterNotifyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onEnterNotifyListeners[index] = null;
				onEnterNotifyListeners = std.algorithm.remove(onEnterNotifyListeners, index);
				break;
			}
		}
	}
	

	protected class OnFocusInDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnFocusInDelegateWrapper[] onFocusInListeners;

	/**
	 * Emitted when the item receives the keyboard focus.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnFocusIn(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onFocusInListeners ~= new OnFocusInDelegateWrapper(dlg, 0, connectFlags);
		onFocusInListeners[onFocusInListeners.length - 1].handlerId = Signals.connectData(
			this,
			"focus-in-event",
			cast(GCallback)&callBackFocusIn,
			cast(void*)onFocusInListeners[onFocusInListeners.length - 1],
			cast(GClosureNotify)&callBackFocusInDestroy,
			connectFlags);
		return onFocusInListeners[onFocusInListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackFocusIn(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnFocusInDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackFocusInDestroy(OnFocusInDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnFocusIn(wrapper);
	}

	protected void internalRemoveOnFocusIn(OnFocusInDelegateWrapper source)
	{
		foreach(index, wrapper; onFocusInListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onFocusInListeners[index] = null;
				onFocusInListeners = std.algorithm.remove(onFocusInListeners, index);
				break;
			}
		}
	}
	

	protected class OnFocusOutDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnFocusOutDelegateWrapper[] onFocusOutListeners;

	/**
	 * Emitted when the item loses the keyboard focus.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnFocusOut(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onFocusOutListeners ~= new OnFocusOutDelegateWrapper(dlg, 0, connectFlags);
		onFocusOutListeners[onFocusOutListeners.length - 1].handlerId = Signals.connectData(
			this,
			"focus-out-event",
			cast(GCallback)&callBackFocusOut,
			cast(void*)onFocusOutListeners[onFocusOutListeners.length - 1],
			cast(GClosureNotify)&callBackFocusOutDestroy,
			connectFlags);
		return onFocusOutListeners[onFocusOutListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackFocusOut(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnFocusOutDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackFocusOutDestroy(OnFocusOutDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnFocusOut(wrapper);
	}

	protected void internalRemoveOnFocusOut(OnFocusOutDelegateWrapper source)
	{
		foreach(index, wrapper; onFocusOutListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onFocusOutListeners[index] = null;
				onFocusOutListeners = std.algorithm.remove(onFocusOutListeners, index);
				break;
			}
		}
	}
	

	protected class OnGrabBrokenDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnGrabBrokenDelegateWrapper[] onGrabBrokenListeners;

	/**
	 * Emitted when the item's keyboard or pointer grab was lost
	 * unexpectedly.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnGrabBroken(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onGrabBrokenListeners ~= new OnGrabBrokenDelegateWrapper(dlg, 0, connectFlags);
		onGrabBrokenListeners[onGrabBrokenListeners.length - 1].handlerId = Signals.connectData(
			this,
			"grab-broken-event",
			cast(GCallback)&callBackGrabBroken,
			cast(void*)onGrabBrokenListeners[onGrabBrokenListeners.length - 1],
			cast(GClosureNotify)&callBackGrabBrokenDestroy,
			connectFlags);
		return onGrabBrokenListeners[onGrabBrokenListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackGrabBroken(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnGrabBrokenDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackGrabBrokenDestroy(OnGrabBrokenDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnGrabBroken(wrapper);
	}

	protected void internalRemoveOnGrabBroken(OnGrabBrokenDelegateWrapper source)
	{
		foreach(index, wrapper; onGrabBrokenListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onGrabBrokenListeners[index] = null;
				onGrabBrokenListeners = std.algorithm.remove(onGrabBrokenListeners, index);
				break;
			}
		}
	}
	

	protected class OnKeyPressDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnKeyPressDelegateWrapper[] onKeyPressListeners;

	/**
	 * Emitted when a key is pressed and the item has the keyboard
	 * focus.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnKeyPress(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onKeyPressListeners ~= new OnKeyPressDelegateWrapper(dlg, 0, connectFlags);
		onKeyPressListeners[onKeyPressListeners.length - 1].handlerId = Signals.connectData(
			this,
			"key-press-event",
			cast(GCallback)&callBackKeyPress,
			cast(void*)onKeyPressListeners[onKeyPressListeners.length - 1],
			cast(GClosureNotify)&callBackKeyPressDestroy,
			connectFlags);
		return onKeyPressListeners[onKeyPressListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackKeyPress(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnKeyPressDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackKeyPressDestroy(OnKeyPressDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnKeyPress(wrapper);
	}

	protected void internalRemoveOnKeyPress(OnKeyPressDelegateWrapper source)
	{
		foreach(index, wrapper; onKeyPressListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onKeyPressListeners[index] = null;
				onKeyPressListeners = std.algorithm.remove(onKeyPressListeners, index);
				break;
			}
		}
	}
	

	protected class OnKeyReleaseDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnKeyReleaseDelegateWrapper[] onKeyReleaseListeners;

	/**
	 * Emitted when a key is released and the item has the keyboard
	 * focus.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnKeyRelease(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onKeyReleaseListeners ~= new OnKeyReleaseDelegateWrapper(dlg, 0, connectFlags);
		onKeyReleaseListeners[onKeyReleaseListeners.length - 1].handlerId = Signals.connectData(
			this,
			"key-release-event",
			cast(GCallback)&callBackKeyRelease,
			cast(void*)onKeyReleaseListeners[onKeyReleaseListeners.length - 1],
			cast(GClosureNotify)&callBackKeyReleaseDestroy,
			connectFlags);
		return onKeyReleaseListeners[onKeyReleaseListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackKeyRelease(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnKeyReleaseDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackKeyReleaseDestroy(OnKeyReleaseDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnKeyRelease(wrapper);
	}

	protected void internalRemoveOnKeyRelease(OnKeyReleaseDelegateWrapper source)
	{
		foreach(index, wrapper; onKeyReleaseListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onKeyReleaseListeners[index] = null;
				onKeyReleaseListeners = std.algorithm.remove(onKeyReleaseListeners, index);
				break;
			}
		}
	}
	

	protected class OnLeaveNotifyDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLeaveNotifyDelegateWrapper[] onLeaveNotifyListeners;

	/**
	 * Emitted when the mouse leaves an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnLeaveNotify(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLeaveNotifyListeners ~= new OnLeaveNotifyDelegateWrapper(dlg, 0, connectFlags);
		onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"leave-notify-event",
			cast(GCallback)&callBackLeaveNotify,
			cast(void*)onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1],
			cast(GClosureNotify)&callBackLeaveNotifyDestroy,
			connectFlags);
		return onLeaveNotifyListeners[onLeaveNotifyListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackLeaveNotify(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnLeaveNotifyDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackLeaveNotifyDestroy(OnLeaveNotifyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLeaveNotify(wrapper);
	}

	protected void internalRemoveOnLeaveNotify(OnLeaveNotifyDelegateWrapper source)
	{
		foreach(index, wrapper; onLeaveNotifyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLeaveNotifyListeners[index] = null;
				onLeaveNotifyListeners = std.algorithm.remove(onLeaveNotifyListeners, index);
				break;
			}
		}
	}
	

	protected class OnMotionNotifyDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMotionNotifyDelegateWrapper[] onMotionNotifyListeners;

	/**
	 * Emitted when the mouse moves within an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnMotionNotify(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMotionNotifyListeners ~= new OnMotionNotifyDelegateWrapper(dlg, 0, connectFlags);
		onMotionNotifyListeners[onMotionNotifyListeners.length - 1].handlerId = Signals.connectData(
			this,
			"motion-notify-event",
			cast(GCallback)&callBackMotionNotify,
			cast(void*)onMotionNotifyListeners[onMotionNotifyListeners.length - 1],
			cast(GClosureNotify)&callBackMotionNotifyDestroy,
			connectFlags);
		return onMotionNotifyListeners[onMotionNotifyListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackMotionNotify(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnMotionNotifyDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackMotionNotifyDestroy(OnMotionNotifyDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMotionNotify(wrapper);
	}

	protected void internalRemoveOnMotionNotify(OnMotionNotifyDelegateWrapper source)
	{
		foreach(index, wrapper; onMotionNotifyListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMotionNotifyListeners[index] = null;
				onMotionNotifyListeners = std.algorithm.remove(onMotionNotifyListeners, index);
				break;
			}
		}
	}
	

	protected class OnQueryTooltipDelegateWrapper
	{
		bool delegate(double, double, bool, Tooltip, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(double, double, bool, Tooltip, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnQueryTooltipDelegateWrapper[] onQueryTooltipListeners;

	/**
	 * Emitted when the mouse has paused over the item for a certain amount
	 * of time, or the tooltip was requested via the keyboard.
	 *
	 * Note that if @keyboard_mode is %TRUE, the values of @x and @y are
	 * undefined and should not be used.
	 *
	 * If the item wants to display a tooltip it should update @tooltip
	 * and return %TRUE.
	 *
	 * Params:
	 *     x = the x coordinate of the mouse.
	 *     y = the y coordinate of the mouse.
	 *     keyboardMode = %TRUE if the tooltip was triggered using the keyboard.
	 *     tooltip = a #GtkTooltip.
	 *
	 * Return: %TRUE if the item has set a tooltip to show.
	 */
	gulong addOnQueryTooltip(bool delegate(double, double, bool, Tooltip, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onQueryTooltipListeners ~= new OnQueryTooltipDelegateWrapper(dlg, 0, connectFlags);
		onQueryTooltipListeners[onQueryTooltipListeners.length - 1].handlerId = Signals.connectData(
			this,
			"query-tooltip",
			cast(GCallback)&callBackQueryTooltip,
			cast(void*)onQueryTooltipListeners[onQueryTooltipListeners.length - 1],
			cast(GClosureNotify)&callBackQueryTooltipDestroy,
			connectFlags);
		return onQueryTooltipListeners[onQueryTooltipListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackQueryTooltip(GooCanvasItem* canvasitemStruct, double x, double y, bool keyboardMode, GtkTooltip* tooltip,OnQueryTooltipDelegateWrapper wrapper)
	{
		return wrapper.dlg(x, y, keyboardMode, ObjectG.getDObject!(Tooltip)(tooltip), wrapper.outer);
	}
	
	extern(C) static void callBackQueryTooltipDestroy(OnQueryTooltipDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnQueryTooltip(wrapper);
	}

	protected void internalRemoveOnQueryTooltip(OnQueryTooltipDelegateWrapper source)
	{
		foreach(index, wrapper; onQueryTooltipListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onQueryTooltipListeners[index] = null;
				onQueryTooltipListeners = std.algorithm.remove(onQueryTooltipListeners, index);
				break;
			}
		}
	}
	

	protected class OnScrollDelegateWrapper
	{
		bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnScrollDelegateWrapper[] onScrollListeners;

	/**
	 * Emitted when a button in the 4 to 7 range is pressed. Wheel mice are
	 * usually configured to generate button press events for buttons 4 and 5
	 * when the wheel is turned in an item.
	 *
	 * Params:
	 *     targetItem = the target of the event.
	 *     event = the event data. The x & y fields contain the mouse position
	 *         in the item's coordinate space. The x_root & y_root fields contain
	 *         the same coordinates converted to the canvas coordinate space.
	 *
	 * Return: %TRUE to stop the signal emission, or %FALSE to let it
	 *     continue.
	 */
	gulong addOnScroll(bool delegate(CanvasItemIF, Event, CanvasItemIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onScrollListeners ~= new OnScrollDelegateWrapper(dlg, 0, connectFlags);
		onScrollListeners[onScrollListeners.length - 1].handlerId = Signals.connectData(
			this,
			"scroll-event",
			cast(GCallback)&callBackScroll,
			cast(void*)onScrollListeners[onScrollListeners.length - 1],
			cast(GClosureNotify)&callBackScrollDestroy,
			connectFlags);
		return onScrollListeners[onScrollListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackScroll(GooCanvasItem* canvasitemStruct, GooCanvasItem* targetItem, GdkEvent* event,OnScrollDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(targetItem), ObjectG.getDObject!(Event)(event), wrapper.outer);
	}
	
	extern(C) static void callBackScrollDestroy(OnScrollDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnScroll(wrapper);
	}

	protected void internalRemoveOnScroll(OnScrollDelegateWrapper source)
	{
		foreach(index, wrapper; onScrollListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onScrollListeners[index] = null;
				onScrollListeners = std.algorithm.remove(onScrollListeners, index);
				break;
			}
		}
	}
	
}
