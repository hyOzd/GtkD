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


module goocanvas.CanvasItemModelT;

public  import cairo.Matrix;
public  import glib.Str;
public  import gobject.ObjectClass;
public  import gobject.ObjectG;
public  import gobject.ParamSpec;
public  import gobject.Signals;
public  import gobject.Value;
public  import goocanvas.CanvasItemModel;
public  import goocanvas.CanvasItemModelIF;
public  import goocanvas.CanvasStyle;
public  import gtkc.gdktypes;
public  import gtkc.goocanvas;
public  import gtkc.goocanvastypes;
public  import std.algorithm;


/**
 * #GooCanvasItemModel defines the interface that models for canvas items must
 * implement, and contains methods for operating on canvas item models.
 * 
 * <note><para>
 * The Model/View canvas feature may be removed in a future version of
 * GooCanvas.
 * </para></note>
 */
public template CanvasItemModelT(TStruct)
{
	/** Get the main Gtk struct */
	public GooCanvasItemModel* getCanvasItemModelStruct()
	{
		return cast(GooCanvasItemModel*)getStruct();
	}


	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It finds a child property of a canvas item class by name.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *     propertyName = the name of the child property to find
	 *
	 * Return: The #GParamSpec of the child
	 *     property or %NULL if @class has no child property with that name.
	 */
	public static ParamSpec classFindChildProperty(ObjectClass mclass, string propertyName)
	{
		auto p = goo_canvas_item_model_class_find_child_property((mclass is null) ? null : mclass.getObjectClassStruct(), Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) p);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It installs a child property on a canvas item class.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *     propertyId = the id for the property
	 *     pspec = the #GParamSpec for the property
	 */
	public static void classInstallChildProperty(ObjectClass mclass, uint propertyId, ParamSpec pspec)
	{
		goo_canvas_item_model_class_install_child_property((mclass is null) ? null : mclass.getObjectClassStruct(), propertyId, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It returns all child properties of a canvas item class.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *
	 * Return: a newly allocated array of #GParamSpec*. The array must be freed with g_free().
	 */
	public static ParamSpec[] classListChildProperties(ObjectClass mclass)
	{
		uint nProperties;
		
		auto p = goo_canvas_item_model_class_list_child_properties((mclass is null) ? null : mclass.getObjectClassStruct(), &nProperties);
		
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
	 * Adds a child at the given stack position.
	 *
	 * Params:
	 *     child = the child to add.
	 *     position = the position of the child, or -1 to place it last (at the top of
	 *         the stacking order).
	 */
	public void addChild(CanvasItemModelIF child, int position)
	{
		goo_canvas_item_model_add_child(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct(), position);
	}

	/**
	 * Animates a model from its current position to the given offsets, scale
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
	 *         if the model currently has a simple transform. If the model has a shear or
	 *         some other complicated transform it may result in strange animations.
	 *     duration = the duration of the animation, in milliseconds (1/1000ths of a
	 *         second).
	 *     stepTime = the time between each animation step, in milliseconds.
	 *     type = specifies what happens when the animation finishes.
	 */
	public void animate(double x, double y, double scale, double degrees, bool absolute, int duration, int stepTime, GooCanvasAnimateType type)
	{
		goo_canvas_item_model_animate(getCanvasItemModelStruct(), x, y, scale, degrees, absolute, duration, stepTime, type);
	}

	/**
	 * Attempts to find the given child with the container's stack.
	 *
	 * Params:
	 *     child = the child to find.
	 *
	 * Return: the position of the given @child, or -1 if it isn't found.
	 */
	public int findChild(CanvasItemModelIF child)
	{
		return goo_canvas_item_model_find_child(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct());
	}

	/**
	 * Gets the child at the given stack position.
	 *
	 * Params:
	 *     childNum = the position of a child in the container's stack.
	 *
	 * Return: the child at the given stack position, or %NULL
	 *     if @child_num is out of range.
	 */
	public CanvasItemModelIF getChild(int childNum)
	{
		auto p = goo_canvas_item_model_get_child(getCanvasItemModelStruct(), childNum);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(cast(GooCanvasItemModel*) p);
	}

	/**
	 * Gets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     varArgs = pairs of property names and value pointers, and a terminating
	 *         %NULL.
	 */
	public void getChildPropertiesValist(CanvasItemModelIF child, void* varArgs)
	{
		goo_canvas_item_model_get_child_properties_valist(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct(), varArgs);
	}

	/**
	 * Gets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     propertyName = the name of the child property to get.
	 *     value = a location to return the value.
	 */
	public void getChildProperty(CanvasItemModelIF child, string propertyName, Value value)
	{
		goo_canvas_item_model_get_child_property(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Gets the number of children of the container.
	 *
	 * Return: the number of children.
	 */
	public int getNChildren()
	{
		return goo_canvas_item_model_get_n_children(getCanvasItemModelStruct());
	}

	/**
	 * Gets the parent of the given model.
	 *
	 * Return: the parent model, or %NULL if the model has no parent.
	 */
	public CanvasItemModelIF getParent()
	{
		auto p = goo_canvas_item_model_get_parent(getCanvasItemModelStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(cast(GooCanvasItemModel*) p);
	}

	/**
	 * This function can be used to get the position, scale and rotation of an
	 * item model, providing that the model has a simple transformation matrix
	 * (e.g. set with goo_canvas_item_model_set_simple_transform(), or using a
	 * combination of simple translate, scale and rotate operations). If the model
	 * has a complex transformation matrix the results will be incorrect.
	 *
	 * Params:
	 *     x = returns the x coordinate of the origin of the model's coordinate space.
	 *     y = returns the y coordinate of the origin of the model's coordinate space.
	 *     scale = returns the scale of the model.
	 *     rotation = returns the clockwise rotation of the model, in degrees (0-360).
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getSimpleTransform(double* x, double* y, double* scale, double* rotation)
	{
		return goo_canvas_item_model_get_simple_transform(getCanvasItemModelStruct(), x, y, scale, rotation) != 0;
	}

	/**
	 * Gets the model's style. If the model doesn't have its own style it will
	 * return its parent's style.
	 *
	 * Return: the model's style.
	 */
	public CanvasStyle getStyle()
	{
		auto p = goo_canvas_item_model_get_style(getCanvasItemModelStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasStyle)(cast(GooCanvasStyle*) p);
	}

	/**
	 * Gets the transformation matrix of an item model.
	 *
	 * Params:
	 *     transform = the place to store the transform.
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getTransform(Matrix transform)
	{
		return goo_canvas_item_model_get_transform(getCanvasItemModelStruct(), (transform is null) ? null : transform.getMatrixStruct()) != 0;
	}

	/**
	 * Tests to see if the given item model is a container.
	 *
	 * Return: %TRUE if the item model is a container.
	 */
	public bool isContainer()
	{
		return goo_canvas_item_model_is_container(getCanvasItemModelStruct()) != 0;
	}

	/**
	 * Lowers a model in the stacking order.
	 *
	 * Params:
	 *     below = the item model to lower @model below, or %NULL to lower @model to the
	 *         bottom of the stack.
	 */
	public void lower(CanvasItemModelIF below)
	{
		goo_canvas_item_model_lower(getCanvasItemModelStruct(), (below is null) ? null : below.getCanvasItemModelStruct());
	}

	/**
	 * Moves a child to a new stack position.
	 *
	 * Params:
	 *     oldPosition = the current position of the child.
	 *     newPosition = the new position of the child.
	 */
	public void moveChild(int oldPosition, int newPosition)
	{
		goo_canvas_item_model_move_child(getCanvasItemModelStruct(), oldPosition, newPosition);
	}

	/**
	 * Raises a model in the stacking order.
	 *
	 * Params:
	 *     above = the item model to raise @model above, or %NULL to raise @model to the top
	 *         of the stack.
	 */
	public void raise(CanvasItemModelIF above)
	{
		goo_canvas_item_model_raise(getCanvasItemModelStruct(), (above is null) ? null : above.getCanvasItemModelStruct());
	}

	/**
	 * Removes a model from its parent. If the model is in a canvas it will be
	 * removed.
	 *
	 * This would normally also result in the model being freed.
	 */
	public void remove()
	{
		goo_canvas_item_model_remove(getCanvasItemModelStruct());
	}

	/**
	 * Removes the child at the given position.
	 *
	 * Params:
	 *     childNum = the position of the child to remove.
	 */
	public void removeChild(int childNum)
	{
		goo_canvas_item_model_remove_child(getCanvasItemModelStruct(), childNum);
	}

	/**
	 * Rotates the model's coordinate system by the given amount, about the given
	 * origin.
	 *
	 * Params:
	 *     degrees = the clockwise angle of rotation.
	 *     cx = the x coordinate of the origin of the rotation.
	 *     cy = the y coordinate of the origin of the rotation.
	 */
	public void rotate(double degrees, double cx, double cy)
	{
		goo_canvas_item_model_rotate(getCanvasItemModelStruct(), degrees, cx, cy);
	}

	/**
	 * Scales the model's coordinate system by the given amounts.
	 *
	 * Params:
	 *     sx = the amount to scale the horizontal axis.
	 *     sy = the amount to scale the vertical axis.
	 */
	public void scale(double sx, double sy)
	{
		goo_canvas_item_model_scale(getCanvasItemModelStruct(), sx, sy);
	}

	/**
	 * Sets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     varArgs = pairs of property names and values, and a terminating %NULL.
	 */
	public void setChildPropertiesValist(CanvasItemModelIF child, void* varArgs)
	{
		goo_canvas_item_model_set_child_properties_valist(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct(), varArgs);
	}

	/**
	 * Sets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     propertyName = the name of the child property to set.
	 *     value = the value to set the property to.
	 */
	public void setChildProperty(CanvasItemModelIF child, string propertyName, Value value)
	{
		goo_canvas_item_model_set_child_property(getCanvasItemModelStruct(), (child is null) ? null : child.getCanvasItemModelStruct(), Str.toStringz(propertyName), (value is null) ? null : value.getValueStruct());
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models (specifically container models such as #GooCanvasGroupModel).
	 * It sets the parent of the child model.
	 * <!--PARAMETERS-->
	 * <note><para>
	 * This function cannot be used to add a model to a group
	 * or to change the parent of a model.
	 * To do that use the #GooCanvasItemModel:parent property.
	 * </para></note>
	 *
	 * Params:
	 *     parent = the new parent item model.
	 */
	public void setParent(CanvasItemModelIF parent)
	{
		goo_canvas_item_model_set_parent(getCanvasItemModelStruct(), (parent is null) ? null : parent.getCanvasItemModelStruct());
	}

	/**
	 * A convenience function to set the item model's transformation matrix.
	 *
	 * Params:
	 *     x = the x coordinate of the origin of the model's coordinate space.
	 *     y = the y coordinate of the origin of the model's coordinate space.
	 *     scale = the scale of the model.
	 *     rotation = the clockwise rotation of the model, in degrees.
	 */
	public void setSimpleTransform(double x, double y, double scale, double rotation)
	{
		goo_canvas_item_model_set_simple_transform(getCanvasItemModelStruct(), x, y, scale, rotation);
	}

	/**
	 * Sets the model's style, by copying the properties from the given style.
	 *
	 * Params:
	 *     style = a style.
	 */
	public void setStyle(CanvasStyle style)
	{
		goo_canvas_item_model_set_style(getCanvasItemModelStruct(), (style is null) ? null : style.getCanvasStyleStruct());
	}

	/**
	 * Sets the transformation matrix of an item model.
	 *
	 * Params:
	 *     transform = the new transformation matrix, or %NULL to reset the
	 *         transformation to the identity matrix.
	 */
	public void setTransform(Matrix transform)
	{
		goo_canvas_item_model_set_transform(getCanvasItemModelStruct(), (transform is null) ? null : transform.getMatrixStruct());
	}

	/**
	 * Skews the model's coordinate system along the x axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewX(double degrees, double cx, double cy)
	{
		goo_canvas_item_model_skew_x(getCanvasItemModelStruct(), degrees, cx, cy);
	}

	/**
	 * Skews the model's coordinate system along the y axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewY(double degrees, double cx, double cy)
	{
		goo_canvas_item_model_skew_y(getCanvasItemModelStruct(), degrees, cx, cy);
	}

	/**
	 * Stops any current animation for the given model, leaving it at its current
	 * position.
	 */
	public void stopAnimation()
	{
		goo_canvas_item_model_stop_animation(getCanvasItemModelStruct());
	}

	/**
	 * Translates the origin of the model's coordinate system by the given amounts.
	 *
	 * Params:
	 *     tx = the amount to move the origin in the horizontal direction.
	 *     ty = the amount to move the origin in the vertical direction.
	 */
	public void translate(double tx, double ty)
	{
		goo_canvas_item_model_translate(getCanvasItemModelStruct(), tx, ty);
	}

	protected class OnAnimationFinishedDelegateWrapper
	{
		void delegate(bool, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(bool, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAnimationFinishedDelegateWrapper[] onAnimationFinishedListeners;

	/**
	 * Emitted when the item model animation has finished.
	 *
	 * Params:
	 *     stopped = if the animation was explicitly stopped.
	 */
	gulong addOnAnimationFinished(void delegate(bool, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	
	extern(C) static void callBackAnimationFinished(GooCanvasItemModel* canvasitemmodelStruct, bool stopped,OnAnimationFinishedDelegateWrapper wrapper)
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
	

	protected class OnChangedDelegateWrapper
	{
		void delegate(bool, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(bool, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChangedDelegateWrapper[] onChangedListeners;

	/**
	 * Emitted when the item model has been changed.
	 *
	 * Params:
	 *     recomputeBounds = if the bounds of the item need to be recomputed.
	 */
	gulong addOnChanged(void delegate(bool, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChangedListeners ~= new OnChangedDelegateWrapper(dlg, 0, connectFlags);
		onChangedListeners[onChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)onChangedListeners[onChangedListeners.length - 1],
			cast(GClosureNotify)&callBackChangedDestroy,
			connectFlags);
		return onChangedListeners[onChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChanged(GooCanvasItemModel* canvasitemmodelStruct, bool recomputeBounds,OnChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(recomputeBounds, wrapper.outer);
	}
	
	extern(C) static void callBackChangedDestroy(OnChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChanged(wrapper);
	}

	protected void internalRemoveOnChanged(OnChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChangedListeners[index] = null;
				onChangedListeners = std.algorithm.remove(onChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnChildAddedDelegateWrapper
	{
		void delegate(int, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChildAddedDelegateWrapper[] onChildAddedListeners;

	/**
	 * Emitted when a child has been added.
	 *
	 * Params:
	 *     childNum = the index of the new child.
	 */
	gulong addOnChildAdded(void delegate(int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChildAddedListeners ~= new OnChildAddedDelegateWrapper(dlg, 0, connectFlags);
		onChildAddedListeners[onChildAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"child-added",
			cast(GCallback)&callBackChildAdded,
			cast(void*)onChildAddedListeners[onChildAddedListeners.length - 1],
			cast(GClosureNotify)&callBackChildAddedDestroy,
			connectFlags);
		return onChildAddedListeners[onChildAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChildAdded(GooCanvasItemModel* canvasitemmodelStruct, int childNum,OnChildAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(childNum, wrapper.outer);
	}
	
	extern(C) static void callBackChildAddedDestroy(OnChildAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChildAdded(wrapper);
	}

	protected void internalRemoveOnChildAdded(OnChildAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onChildAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChildAddedListeners[index] = null;
				onChildAddedListeners = std.algorithm.remove(onChildAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnChildMovedDelegateWrapper
	{
		void delegate(int, int, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, int, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChildMovedDelegateWrapper[] onChildMovedListeners;

	/**
	 * Emitted when a child has been moved in the stacking order.
	 *
	 * Params:
	 *     oldChildNum = the old index of the child.
	 *     newChildNum = the new index of the child.
	 */
	gulong addOnChildMoved(void delegate(int, int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChildMovedListeners ~= new OnChildMovedDelegateWrapper(dlg, 0, connectFlags);
		onChildMovedListeners[onChildMovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"child-moved",
			cast(GCallback)&callBackChildMoved,
			cast(void*)onChildMovedListeners[onChildMovedListeners.length - 1],
			cast(GClosureNotify)&callBackChildMovedDestroy,
			connectFlags);
		return onChildMovedListeners[onChildMovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChildMoved(GooCanvasItemModel* canvasitemmodelStruct, int oldChildNum, int newChildNum,OnChildMovedDelegateWrapper wrapper)
	{
		wrapper.dlg(oldChildNum, newChildNum, wrapper.outer);
	}
	
	extern(C) static void callBackChildMovedDestroy(OnChildMovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChildMoved(wrapper);
	}

	protected void internalRemoveOnChildMoved(OnChildMovedDelegateWrapper source)
	{
		foreach(index, wrapper; onChildMovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChildMovedListeners[index] = null;
				onChildMovedListeners = std.algorithm.remove(onChildMovedListeners, index);
				break;
			}
		}
	}
	

	protected class OnChildNotifyDelegateWrapper
	{
		void delegate(ParamSpec, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ParamSpec, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
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
	gulong addOnChildNotify(void delegate(ParamSpec, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	
	extern(C) static void callBackChildNotify(GooCanvasItemModel* canvasitemmodelStruct, GParamSpec* pspec,OnChildNotifyDelegateWrapper wrapper)
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
	

	protected class OnChildRemovedDelegateWrapper
	{
		void delegate(int, CanvasItemModelIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, CanvasItemModelIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnChildRemovedDelegateWrapper[] onChildRemovedListeners;

	/**
	 * Emitted when a child has been removed.
	 *
	 * Params:
	 *     childNum = the index of the child that was removed.
	 */
	gulong addOnChildRemoved(void delegate(int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onChildRemovedListeners ~= new OnChildRemovedDelegateWrapper(dlg, 0, connectFlags);
		onChildRemovedListeners[onChildRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"child-removed",
			cast(GCallback)&callBackChildRemoved,
			cast(void*)onChildRemovedListeners[onChildRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackChildRemovedDestroy,
			connectFlags);
		return onChildRemovedListeners[onChildRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackChildRemoved(GooCanvasItemModel* canvasitemmodelStruct, int childNum,OnChildRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(childNum, wrapper.outer);
	}
	
	extern(C) static void callBackChildRemovedDestroy(OnChildRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnChildRemoved(wrapper);
	}

	protected void internalRemoveOnChildRemoved(OnChildRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onChildRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onChildRemovedListeners[index] = null;
				onChildRemovedListeners = std.algorithm.remove(onChildRemovedListeners, index);
				break;
			}
		}
	}
	
}
