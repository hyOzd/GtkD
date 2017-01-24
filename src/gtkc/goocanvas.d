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


module gtkc.goocanvas;

import std.stdio;
import gtkc.goocanvastypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// goocanvas.Canvas

	Linker.link(goo_canvas_get_type, "goo_canvas_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_new, "goo_canvas_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_boolean_handled_accumulator, "goo_canvas_boolean_handled_accumulator", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_cairo_pattern_from_pixbuf, "goo_canvas_cairo_pattern_from_pixbuf", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_cairo_surface_from_pixbuf, "goo_canvas_cairo_surface_from_pixbuf", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_colors_to_rgba, "goo_canvas_convert_colors_to_rgba", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_path, "goo_canvas_create_path", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_pattern_from_color_value, "goo_canvas_create_pattern_from_color_value", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_pattern_from_gdk_rgba_value, "goo_canvas_create_pattern_from_gdk_rgba_value", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_pattern_from_pixbuf_value, "goo_canvas_create_pattern_from_pixbuf_value", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_pattern_from_rgba_value, "goo_canvas_create_pattern_from_rgba_value", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_gdk_rgba_value_from_pattern, "goo_canvas_get_gdk_rgba_value_from_pattern", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_rgba_value_from_pattern, "goo_canvas_get_rgba_value_from_pattern", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_marshal_BOOLEAN__BOXED, "goo_canvas_marshal_BOOLEAN__BOXED", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT, "goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_marshal_BOOLEAN__OBJECT_BOXED, "goo_canvas_marshal_BOOLEAN__OBJECT_BOXED", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_marshal_VOID__INT_INT, "goo_canvas_marshal_VOID__INT_INT", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_marshal_VOID__OBJECT_OBJECT, "goo_canvas_marshal_VOID__OBJECT_OBJECT", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_parse_path_data, "goo_canvas_parse_path_data", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_style_property_from_pattern, "goo_canvas_set_style_property_from_pattern", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_util_ptr_array_find_index, "goo_canvas_util_ptr_array_find_index", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_util_ptr_array_insert, "goo_canvas_util_ptr_array_insert", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_util_ptr_array_move, "goo_canvas_util_ptr_array_move", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_bounds_to_item_space, "goo_canvas_convert_bounds_to_item_space", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_from_item_space, "goo_canvas_convert_from_item_space", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_from_pixels, "goo_canvas_convert_from_pixels", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_to_item_space, "goo_canvas_convert_to_item_space", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_to_pixels, "goo_canvas_convert_to_pixels", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_units_from_pixels, "goo_canvas_convert_units_from_pixels", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_convert_units_to_pixels, "goo_canvas_convert_units_to_pixels", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_cairo_context, "goo_canvas_create_cairo_context", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_create_item, "goo_canvas_create_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_bounds, "goo_canvas_get_bounds", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_default_line_width, "goo_canvas_get_default_line_width", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_item, "goo_canvas_get_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_item_at, "goo_canvas_get_item_at", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_items_at, "goo_canvas_get_items_at", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_items_in_area, "goo_canvas_get_items_in_area", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_root_item, "goo_canvas_get_root_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_root_item_model, "goo_canvas_get_root_item_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_scale, "goo_canvas_get_scale", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_static_root_item, "goo_canvas_get_static_root_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_get_static_root_item_model, "goo_canvas_get_static_root_item_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_grab_focus, "goo_canvas_grab_focus", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_keyboard_grab, "goo_canvas_keyboard_grab", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_keyboard_ungrab, "goo_canvas_keyboard_ungrab", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_pointer_grab, "goo_canvas_pointer_grab", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_pointer_ungrab, "goo_canvas_pointer_ungrab", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_register_widget_item, "goo_canvas_register_widget_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_render, "goo_canvas_render", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_request_item_redraw, "goo_canvas_request_item_redraw", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_request_redraw, "goo_canvas_request_redraw", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_request_update, "goo_canvas_request_update", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_scroll_to, "goo_canvas_scroll_to", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_bounds, "goo_canvas_set_bounds", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_root_item, "goo_canvas_set_root_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_root_item_model, "goo_canvas_set_root_item_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_scale, "goo_canvas_set_scale", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_static_root_item, "goo_canvas_set_static_root_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_set_static_root_item_model, "goo_canvas_set_static_root_item_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_unregister_item, "goo_canvas_unregister_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_unregister_widget_item, "goo_canvas_unregister_widget_item", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_update, "goo_canvas_update", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasAccessibleFactory

	Linker.link(goo_canvas_accessible_factory_get_type, "goo_canvas_accessible_factory_get_type", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasBounds

	Linker.link(goo_canvas_bounds_get_type, "goo_canvas_bounds_get_type", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasEllipse

	Linker.link(goo_canvas_ellipse_get_type, "goo_canvas_ellipse_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_ellipse_new, "goo_canvas_ellipse_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasEllipseModel

	Linker.link(goo_canvas_ellipse_model_get_type, "goo_canvas_ellipse_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_ellipse_model_new, "goo_canvas_ellipse_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasGrid

	Linker.link(goo_canvas_grid_get_type, "goo_canvas_grid_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_grid_new, "goo_canvas_grid_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasGridModel

	Linker.link(goo_canvas_grid_model_get_type, "goo_canvas_grid_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_grid_model_new, "goo_canvas_grid_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasGroup

	Linker.link(goo_canvas_group_get_type, "goo_canvas_group_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_group_new, "goo_canvas_group_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasGroupModel

	Linker.link(goo_canvas_group_model_get_type, "goo_canvas_group_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_group_model_new, "goo_canvas_group_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasImage

	Linker.link(goo_canvas_image_get_type, "goo_canvas_image_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_image_new, "goo_canvas_image_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasImageModel

	Linker.link(goo_canvas_image_model_get_type, "goo_canvas_image_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_image_model_new, "goo_canvas_image_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasItem

	Linker.link(goo_canvas_item_get_type, "goo_canvas_item_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_class_find_child_property, "goo_canvas_item_class_find_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_class_install_child_property, "goo_canvas_item_class_install_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_class_list_child_properties, "goo_canvas_item_class_list_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_add_child, "goo_canvas_item_add_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_allocate_area, "goo_canvas_item_allocate_area", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_animate, "goo_canvas_item_animate", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_ensure_updated, "goo_canvas_item_ensure_updated", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_find_child, "goo_canvas_item_find_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_bounds, "goo_canvas_item_get_bounds", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_canvas, "goo_canvas_item_get_canvas", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_child, "goo_canvas_item_get_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_child_properties, "goo_canvas_item_get_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_child_properties_valist, "goo_canvas_item_get_child_properties_valist", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_child_property, "goo_canvas_item_get_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_is_static, "goo_canvas_item_get_is_static", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_items_at, "goo_canvas_item_get_items_at", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_model, "goo_canvas_item_get_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_n_children, "goo_canvas_item_get_n_children", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_parent, "goo_canvas_item_get_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_requested_area, "goo_canvas_item_get_requested_area", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_requested_area_for_width, "goo_canvas_item_get_requested_area_for_width", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_requested_height, "goo_canvas_item_get_requested_height", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_simple_transform, "goo_canvas_item_get_simple_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_style, "goo_canvas_item_get_style", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_transform, "goo_canvas_item_get_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_get_transform_for_child, "goo_canvas_item_get_transform_for_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_is_container, "goo_canvas_item_is_container", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_is_visible, "goo_canvas_item_is_visible", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_lower, "goo_canvas_item_lower", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_move_child, "goo_canvas_item_move_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_paint, "goo_canvas_item_paint", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_raise, "goo_canvas_item_raise", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_remove, "goo_canvas_item_remove", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_remove_child, "goo_canvas_item_remove_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_request_update, "goo_canvas_item_request_update", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_rotate, "goo_canvas_item_rotate", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_scale, "goo_canvas_item_scale", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_canvas, "goo_canvas_item_set_canvas", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_child_properties, "goo_canvas_item_set_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_child_properties_valist, "goo_canvas_item_set_child_properties_valist", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_child_property, "goo_canvas_item_set_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_is_static, "goo_canvas_item_set_is_static", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_model, "goo_canvas_item_set_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_parent, "goo_canvas_item_set_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_simple_transform, "goo_canvas_item_set_simple_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_style, "goo_canvas_item_set_style", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_set_transform, "goo_canvas_item_set_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_skew_x, "goo_canvas_item_skew_x", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_skew_y, "goo_canvas_item_skew_y", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_stop_animation, "goo_canvas_item_stop_animation", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_translate, "goo_canvas_item_translate", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_update, "goo_canvas_item_update", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasItemAccessibleFactory

	Linker.link(goo_canvas_item_accessible_factory_get_type, "goo_canvas_item_accessible_factory_get_type", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasItemModel

	Linker.link(goo_canvas_item_model_get_type, "goo_canvas_item_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_class_find_child_property, "goo_canvas_item_model_class_find_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_class_install_child_property, "goo_canvas_item_model_class_install_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_class_list_child_properties, "goo_canvas_item_model_class_list_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_add_child, "goo_canvas_item_model_add_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_animate, "goo_canvas_item_model_animate", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_find_child, "goo_canvas_item_model_find_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_child, "goo_canvas_item_model_get_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_child_properties, "goo_canvas_item_model_get_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_child_properties_valist, "goo_canvas_item_model_get_child_properties_valist", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_child_property, "goo_canvas_item_model_get_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_n_children, "goo_canvas_item_model_get_n_children", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_parent, "goo_canvas_item_model_get_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_simple_transform, "goo_canvas_item_model_get_simple_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_style, "goo_canvas_item_model_get_style", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_get_transform, "goo_canvas_item_model_get_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_is_container, "goo_canvas_item_model_is_container", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_lower, "goo_canvas_item_model_lower", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_move_child, "goo_canvas_item_model_move_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_raise, "goo_canvas_item_model_raise", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_remove, "goo_canvas_item_model_remove", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_remove_child, "goo_canvas_item_model_remove_child", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_rotate, "goo_canvas_item_model_rotate", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_scale, "goo_canvas_item_model_scale", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_child_properties, "goo_canvas_item_model_set_child_properties", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_child_properties_valist, "goo_canvas_item_model_set_child_properties_valist", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_child_property, "goo_canvas_item_model_set_child_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_parent, "goo_canvas_item_model_set_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_simple_transform, "goo_canvas_item_model_set_simple_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_style, "goo_canvas_item_model_set_style", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_set_transform, "goo_canvas_item_model_set_transform", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_skew_x, "goo_canvas_item_model_skew_x", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_skew_y, "goo_canvas_item_model_skew_y", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_stop_animation, "goo_canvas_item_model_stop_animation", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_model_translate, "goo_canvas_item_model_translate", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasItemModelSimple

	Linker.link(goo_canvas_item_model_simple_get_type, "goo_canvas_item_model_simple_get_type", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasItemSimple

	Linker.link(goo_canvas_item_simple_get_type, "goo_canvas_item_simple_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_changed, "goo_canvas_item_simple_changed", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_check_in_path, "goo_canvas_item_simple_check_in_path", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_check_style, "goo_canvas_item_simple_check_style", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_get_line_width, "goo_canvas_item_simple_get_line_width", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_get_path_bounds, "goo_canvas_item_simple_get_path_bounds", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_paint_path, "goo_canvas_item_simple_paint_path", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_set_model, "goo_canvas_item_simple_set_model", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_user_bounds_to_device, "goo_canvas_item_simple_user_bounds_to_device", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_item_simple_user_bounds_to_parent, "goo_canvas_item_simple_user_bounds_to_parent", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasLineDash

	Linker.link(goo_canvas_line_dash_get_type, "goo_canvas_line_dash_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_line_dash_new, "goo_canvas_line_dash_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_line_dash_newv, "goo_canvas_line_dash_newv", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_line_dash_ref, "goo_canvas_line_dash_ref", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_line_dash_set_offset, "goo_canvas_line_dash_set_offset", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_line_dash_unref, "goo_canvas_line_dash_unref", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasPath

	Linker.link(goo_canvas_path_get_type, "goo_canvas_path_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_path_new, "goo_canvas_path_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasPathModel

	Linker.link(goo_canvas_path_model_get_type, "goo_canvas_path_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_path_model_new, "goo_canvas_path_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasPoints

	Linker.link(goo_canvas_points_get_type, "goo_canvas_points_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_points_new, "goo_canvas_points_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_points_get_point, "goo_canvas_points_get_point", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_points_ref, "goo_canvas_points_ref", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_points_set_point, "goo_canvas_points_set_point", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_points_unref, "goo_canvas_points_unref", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasPolyline

	Linker.link(goo_canvas_polyline_get_type, "goo_canvas_polyline_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_polyline_new, "goo_canvas_polyline_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_polyline_new_line, "goo_canvas_polyline_new_line", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasPolylineModel

	Linker.link(goo_canvas_polyline_model_get_type, "goo_canvas_polyline_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_polyline_model_new, "goo_canvas_polyline_model_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_polyline_model_new_line, "goo_canvas_polyline_model_new_line", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasRect

	Linker.link(goo_canvas_rect_get_type, "goo_canvas_rect_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_rect_new, "goo_canvas_rect_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasRectModel

	Linker.link(goo_canvas_rect_model_get_type, "goo_canvas_rect_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_rect_model_new, "goo_canvas_rect_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasStyle

	Linker.link(goo_canvas_style_get_type, "goo_canvas_style_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_new, "goo_canvas_style_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_copy, "goo_canvas_style_copy", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_get_parent, "goo_canvas_style_get_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_get_property, "goo_canvas_style_get_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_set_fill_options, "goo_canvas_style_set_fill_options", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_set_parent, "goo_canvas_style_set_parent", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_set_property, "goo_canvas_style_set_property", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_style_set_stroke_options, "goo_canvas_style_set_stroke_options", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasTable

	Linker.link(goo_canvas_table_get_type, "goo_canvas_table_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_table_new, "goo_canvas_table_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasTableModel

	Linker.link(goo_canvas_table_model_get_type, "goo_canvas_table_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_table_model_new, "goo_canvas_table_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasText

	Linker.link(goo_canvas_text_get_type, "goo_canvas_text_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_text_new, "goo_canvas_text_new", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_text_get_natural_extents, "goo_canvas_text_get_natural_extents", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasTextModel

	Linker.link(goo_canvas_text_model_get_type, "goo_canvas_text_model_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_text_model_new, "goo_canvas_text_model_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasWidget

	Linker.link(goo_canvas_widget_get_type, "goo_canvas_widget_get_type", LIBRARY.GOOCANVAS);
	Linker.link(goo_canvas_widget_new, "goo_canvas_widget_new", LIBRARY.GOOCANVAS);

	// goocanvas.CanvasWidgetAccessibleFactory

	Linker.link(goo_canvas_widget_accessible_factory_get_type, "goo_canvas_widget_accessible_factory_get_type", LIBRARY.GOOCANVAS);
}

__gshared extern(C)
{

	// goocanvas.Canvas

	GType function() c_goo_canvas_get_type;
	GtkWidget* function() c_goo_canvas_new;
	int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* dummy) c_goo_canvas_boolean_handled_accumulator;
	cairo_pattern_t* function(GdkPixbuf* pixbuf) c_goo_canvas_cairo_pattern_from_pixbuf;
	cairo_surface_t* function(GdkPixbuf* pixbuf) c_goo_canvas_cairo_surface_from_pixbuf;
	uint function(double red, double green, double blue, double alpha) c_goo_canvas_convert_colors_to_rgba;
	void function(GArray* commands, cairo_t* cr) c_goo_canvas_create_path;
	cairo_pattern_t* function(GValue* value) c_goo_canvas_create_pattern_from_color_value;
	cairo_pattern_t* function(GValue* value) c_goo_canvas_create_pattern_from_gdk_rgba_value;
	cairo_pattern_t* function(GValue* value) c_goo_canvas_create_pattern_from_pixbuf_value;
	cairo_pattern_t* function(GValue* value) c_goo_canvas_create_pattern_from_rgba_value;
	void function(cairo_pattern_t* pattern, GValue* value) c_goo_canvas_get_gdk_rgba_value_from_pattern;
	void function(cairo_pattern_t* pattern, GValue* value) c_goo_canvas_get_rgba_value_from_pattern;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_goo_canvas_marshal_BOOLEAN__BOXED;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_goo_canvas_marshal_BOOLEAN__OBJECT_BOXED;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_goo_canvas_marshal_VOID__INT_INT;
	void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) c_goo_canvas_marshal_VOID__OBJECT_OBJECT;
	GArray* function(const(char)* pathData) c_goo_canvas_parse_path_data;
	void function(GooCanvasStyle* style, GQuark propertyId, cairo_pattern_t* pattern) c_goo_canvas_set_style_property_from_pattern;
	int function(GPtrArray* ptrArray, void* data) c_goo_canvas_util_ptr_array_find_index;
	void function(GPtrArray* ptrArray, void* data, int index) c_goo_canvas_util_ptr_array_insert;
	void function(GPtrArray* ptrArray, int oldIndex, int newIndex) c_goo_canvas_util_ptr_array_move;
	void function(GooCanvas* canvas, GooCanvasItem* item, GooCanvasBounds* bounds) c_goo_canvas_convert_bounds_to_item_space;
	void function(GooCanvas* canvas, GooCanvasItem* item, double* x, double* y) c_goo_canvas_convert_from_item_space;
	void function(GooCanvas* canvas, double* x, double* y) c_goo_canvas_convert_from_pixels;
	void function(GooCanvas* canvas, GooCanvasItem* item, double* x, double* y) c_goo_canvas_convert_to_item_space;
	void function(GooCanvas* canvas, double* x, double* y) c_goo_canvas_convert_to_pixels;
	void function(GooCanvas* canvas, double* x, double* y) c_goo_canvas_convert_units_from_pixels;
	void function(GooCanvas* canvas, double* x, double* y) c_goo_canvas_convert_units_to_pixels;
	cairo_t* function(GooCanvas* canvas) c_goo_canvas_create_cairo_context;
	GooCanvasItem* function(GooCanvas* canvas, GooCanvasItemModel* model) c_goo_canvas_create_item;
	void function(GooCanvas* canvas, double* left, double* top, double* right, double* bottom) c_goo_canvas_get_bounds;
	double function(GooCanvas* canvas) c_goo_canvas_get_default_line_width;
	GooCanvasItem* function(GooCanvas* canvas, GooCanvasItemModel* model) c_goo_canvas_get_item;
	GooCanvasItem* function(GooCanvas* canvas, double x, double y, int isPointerEvent) c_goo_canvas_get_item_at;
	GList* function(GooCanvas* canvas, double x, double y, int isPointerEvent) c_goo_canvas_get_items_at;
	GList* function(GooCanvas* canvas, GooCanvasBounds* area, int insideArea, int allowOverlaps, int includeContainers) c_goo_canvas_get_items_in_area;
	GooCanvasItem* function(GooCanvas* canvas) c_goo_canvas_get_root_item;
	GooCanvasItemModel* function(GooCanvas* canvas) c_goo_canvas_get_root_item_model;
	double function(GooCanvas* canvas) c_goo_canvas_get_scale;
	GooCanvasItem* function(GooCanvas* canvas) c_goo_canvas_get_static_root_item;
	GooCanvasItemModel* function(GooCanvas* canvas) c_goo_canvas_get_static_root_item_model;
	void function(GooCanvas* canvas, GooCanvasItem* item) c_goo_canvas_grab_focus;
	GdkGrabStatus function(GooCanvas* canvas, GooCanvasItem* item, int ownerEvents, uint time) c_goo_canvas_keyboard_grab;
	void function(GooCanvas* canvas, GooCanvasItem* item, uint time) c_goo_canvas_keyboard_ungrab;
	GdkGrabStatus function(GooCanvas* canvas, GooCanvasItem* item, GdkEventMask eventMask, GdkCursor* cursor, uint time) c_goo_canvas_pointer_grab;
	void function(GooCanvas* canvas, GooCanvasItem* item, uint time) c_goo_canvas_pointer_ungrab;
	void function(GooCanvas* canvas, GooCanvasWidget* witem) c_goo_canvas_register_widget_item;
	void function(GooCanvas* canvas, cairo_t* cr, GooCanvasBounds* bounds, double scale) c_goo_canvas_render;
	void function(GooCanvas* canvas, GooCanvasBounds* bounds, int isStatic) c_goo_canvas_request_item_redraw;
	void function(GooCanvas* canvas, GooCanvasBounds* bounds) c_goo_canvas_request_redraw;
	void function(GooCanvas* canvas) c_goo_canvas_request_update;
	void function(GooCanvas* canvas, double left, double top) c_goo_canvas_scroll_to;
	void function(GooCanvas* canvas, double left, double top, double right, double bottom) c_goo_canvas_set_bounds;
	void function(GooCanvas* canvas, GooCanvasItem* item) c_goo_canvas_set_root_item;
	void function(GooCanvas* canvas, GooCanvasItemModel* model) c_goo_canvas_set_root_item_model;
	void function(GooCanvas* canvas, double scale) c_goo_canvas_set_scale;
	void function(GooCanvas* canvas, GooCanvasItem* item) c_goo_canvas_set_static_root_item;
	void function(GooCanvas* canvas, GooCanvasItemModel* model) c_goo_canvas_set_static_root_item_model;
	void function(GooCanvas* canvas, GooCanvasItemModel* model) c_goo_canvas_unregister_item;
	void function(GooCanvas* canvas, GooCanvasWidget* witem) c_goo_canvas_unregister_widget_item;
	void function(GooCanvas* canvas) c_goo_canvas_update;

	// goocanvas.CanvasAccessibleFactory

	GType function() c_goo_canvas_accessible_factory_get_type;

	// goocanvas.CanvasBounds

	GType function() c_goo_canvas_bounds_get_type;

	// goocanvas.CanvasEllipse

	GType function() c_goo_canvas_ellipse_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, double centerX, double centerY, double radiusX, double radiusY, ... ) c_goo_canvas_ellipse_new;

	// goocanvas.CanvasEllipseModel

	GType function() c_goo_canvas_ellipse_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, double centerX, double centerY, double radiusX, double radiusY, ... ) c_goo_canvas_ellipse_model_new;

	// goocanvas.CanvasGrid

	GType function() c_goo_canvas_grid_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, double x, double y, double width, double height, double xStep, double yStep, double xOffset, double yOffset, ... ) c_goo_canvas_grid_new;

	// goocanvas.CanvasGridModel

	GType function() c_goo_canvas_grid_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, double x, double y, double width, double height, double xStep, double yStep, double xOffset, double yOffset, ... ) c_goo_canvas_grid_model_new;

	// goocanvas.CanvasGroup

	GType function() c_goo_canvas_group_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, ... ) c_goo_canvas_group_new;

	// goocanvas.CanvasGroupModel

	GType function() c_goo_canvas_group_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, ... ) c_goo_canvas_group_model_new;

	// goocanvas.CanvasImage

	GType function() c_goo_canvas_image_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, GdkPixbuf* pixbuf, double x, double y, ... ) c_goo_canvas_image_new;

	// goocanvas.CanvasImageModel

	GType function() c_goo_canvas_image_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, GdkPixbuf* pixbuf, double x, double y, ... ) c_goo_canvas_image_model_new;

	// goocanvas.CanvasItem

	GType function() c_goo_canvas_item_get_type;
	GParamSpec* function(GObjectClass* iclass, const(char)* propertyName) c_goo_canvas_item_class_find_child_property;
	void function(GObjectClass* iclass, uint propertyId, GParamSpec* pspec) c_goo_canvas_item_class_install_child_property;
	GParamSpec** function(GObjectClass* iclass, uint* nProperties) c_goo_canvas_item_class_list_child_properties;
	void function(GooCanvasItem* item, GooCanvasItem* child, int position) c_goo_canvas_item_add_child;
	void function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* requestedArea, GooCanvasBounds* allocatedArea, double xOffset, double yOffset) c_goo_canvas_item_allocate_area;
	void function(GooCanvasItem* item, double x, double y, double scale, double degrees, int absolute, int duration, int stepTime, GooCanvasAnimateType type) c_goo_canvas_item_animate;
	void function(GooCanvasItem* item) c_goo_canvas_item_ensure_updated;
	int function(GooCanvasItem* item, GooCanvasItem* child) c_goo_canvas_item_find_child;
	void function(GooCanvasItem* item, GooCanvasBounds* bounds) c_goo_canvas_item_get_bounds;
	GooCanvas* function(GooCanvasItem* item) c_goo_canvas_item_get_canvas;
	GooCanvasItem* function(GooCanvasItem* item, int childNum) c_goo_canvas_item_get_child;
	void function(GooCanvasItem* item, GooCanvasItem* child, ... ) c_goo_canvas_item_get_child_properties;
	void function(GooCanvasItem* item, GooCanvasItem* child, void* varArgs) c_goo_canvas_item_get_child_properties_valist;
	void function(GooCanvasItem* item, GooCanvasItem* child, const(char)* propertyName, GValue* value) c_goo_canvas_item_get_child_property;
	int function(GooCanvasItem* item) c_goo_canvas_item_get_is_static;
	GList* function(GooCanvasItem* item, double x, double y, cairo_t* cr, int isPointerEvent, int parentIsVisible, GList* foundItems) c_goo_canvas_item_get_items_at;
	GooCanvasItemModel* function(GooCanvasItem* item) c_goo_canvas_item_get_model;
	int function(GooCanvasItem* item) c_goo_canvas_item_get_n_children;
	GooCanvasItem* function(GooCanvasItem* item) c_goo_canvas_item_get_parent;
	int function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* requestedArea) c_goo_canvas_item_get_requested_area;
	int function(GooCanvasItem* item, cairo_t* cr, double width, GooCanvasBounds* requestedArea) c_goo_canvas_item_get_requested_area_for_width;
	double function(GooCanvasItem* item, cairo_t* cr, double width) c_goo_canvas_item_get_requested_height;
	int function(GooCanvasItem* item, double* x, double* y, double* scale, double* rotation) c_goo_canvas_item_get_simple_transform;
	GooCanvasStyle* function(GooCanvasItem* item) c_goo_canvas_item_get_style;
	int function(GooCanvasItem* item, cairo_matrix_t* transform) c_goo_canvas_item_get_transform;
	int function(GooCanvasItem* item, GooCanvasItem* child, cairo_matrix_t* transform) c_goo_canvas_item_get_transform_for_child;
	int function(GooCanvasItem* item) c_goo_canvas_item_is_container;
	int function(GooCanvasItem* item) c_goo_canvas_item_is_visible;
	void function(GooCanvasItem* item, GooCanvasItem* below) c_goo_canvas_item_lower;
	void function(GooCanvasItem* item, int oldPosition, int newPosition) c_goo_canvas_item_move_child;
	void function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* bounds, double scale) c_goo_canvas_item_paint;
	void function(GooCanvasItem* item, GooCanvasItem* above) c_goo_canvas_item_raise;
	void function(GooCanvasItem* item) c_goo_canvas_item_remove;
	void function(GooCanvasItem* item, int childNum) c_goo_canvas_item_remove_child;
	void function(GooCanvasItem* item) c_goo_canvas_item_request_update;
	void function(GooCanvasItem* item, double degrees, double cx, double cy) c_goo_canvas_item_rotate;
	void function(GooCanvasItem* item, double sx, double sy) c_goo_canvas_item_scale;
	void function(GooCanvasItem* item, GooCanvas* canvas) c_goo_canvas_item_set_canvas;
	void function(GooCanvasItem* item, GooCanvasItem* child, ... ) c_goo_canvas_item_set_child_properties;
	void function(GooCanvasItem* item, GooCanvasItem* child, void* varArgs) c_goo_canvas_item_set_child_properties_valist;
	void function(GooCanvasItem* item, GooCanvasItem* child, const(char)* propertyName, GValue* value) c_goo_canvas_item_set_child_property;
	void function(GooCanvasItem* item, int isStatic) c_goo_canvas_item_set_is_static;
	void function(GooCanvasItem* item, GooCanvasItemModel* model) c_goo_canvas_item_set_model;
	void function(GooCanvasItem* item, GooCanvasItem* parent) c_goo_canvas_item_set_parent;
	void function(GooCanvasItem* item, double x, double y, double scale, double rotation) c_goo_canvas_item_set_simple_transform;
	void function(GooCanvasItem* item, GooCanvasStyle* style) c_goo_canvas_item_set_style;
	void function(GooCanvasItem* item, cairo_matrix_t* transform) c_goo_canvas_item_set_transform;
	void function(GooCanvasItem* item, double degrees, double cx, double cy) c_goo_canvas_item_skew_x;
	void function(GooCanvasItem* item, double degrees, double cx, double cy) c_goo_canvas_item_skew_y;
	void function(GooCanvasItem* item) c_goo_canvas_item_stop_animation;
	void function(GooCanvasItem* item, double tx, double ty) c_goo_canvas_item_translate;
	void function(GooCanvasItem* item, int entireTree, cairo_t* cr, GooCanvasBounds* bounds) c_goo_canvas_item_update;

	// goocanvas.CanvasItemAccessibleFactory

	GType function() c_goo_canvas_item_accessible_factory_get_type;

	// goocanvas.CanvasItemModel

	GType function() c_goo_canvas_item_model_get_type;
	GParamSpec* function(GObjectClass* mclass, const(char)* propertyName) c_goo_canvas_item_model_class_find_child_property;
	void function(GObjectClass* mclass, uint propertyId, GParamSpec* pspec) c_goo_canvas_item_model_class_install_child_property;
	GParamSpec** function(GObjectClass* mclass, uint* nProperties) c_goo_canvas_item_model_class_list_child_properties;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, int position) c_goo_canvas_item_model_add_child;
	void function(GooCanvasItemModel* model, double x, double y, double scale, double degrees, int absolute, int duration, int stepTime, GooCanvasAnimateType type) c_goo_canvas_item_model_animate;
	int function(GooCanvasItemModel* model, GooCanvasItemModel* child) c_goo_canvas_item_model_find_child;
	GooCanvasItemModel* function(GooCanvasItemModel* model, int childNum) c_goo_canvas_item_model_get_child;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, ... ) c_goo_canvas_item_model_get_child_properties;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, void* varArgs) c_goo_canvas_item_model_get_child_properties_valist;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, const(char)* propertyName, GValue* value) c_goo_canvas_item_model_get_child_property;
	int function(GooCanvasItemModel* model) c_goo_canvas_item_model_get_n_children;
	GooCanvasItemModel* function(GooCanvasItemModel* model) c_goo_canvas_item_model_get_parent;
	int function(GooCanvasItemModel* model, double* x, double* y, double* scale, double* rotation) c_goo_canvas_item_model_get_simple_transform;
	GooCanvasStyle* function(GooCanvasItemModel* model) c_goo_canvas_item_model_get_style;
	int function(GooCanvasItemModel* model, cairo_matrix_t* transform) c_goo_canvas_item_model_get_transform;
	int function(GooCanvasItemModel* model) c_goo_canvas_item_model_is_container;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* below) c_goo_canvas_item_model_lower;
	void function(GooCanvasItemModel* model, int oldPosition, int newPosition) c_goo_canvas_item_model_move_child;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* above) c_goo_canvas_item_model_raise;
	void function(GooCanvasItemModel* model) c_goo_canvas_item_model_remove;
	void function(GooCanvasItemModel* model, int childNum) c_goo_canvas_item_model_remove_child;
	void function(GooCanvasItemModel* model, double degrees, double cx, double cy) c_goo_canvas_item_model_rotate;
	void function(GooCanvasItemModel* model, double sx, double sy) c_goo_canvas_item_model_scale;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, ... ) c_goo_canvas_item_model_set_child_properties;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, void* varArgs) c_goo_canvas_item_model_set_child_properties_valist;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* child, const(char)* propertyName, GValue* value) c_goo_canvas_item_model_set_child_property;
	void function(GooCanvasItemModel* model, GooCanvasItemModel* parent) c_goo_canvas_item_model_set_parent;
	void function(GooCanvasItemModel* model, double x, double y, double scale, double rotation) c_goo_canvas_item_model_set_simple_transform;
	void function(GooCanvasItemModel* model, GooCanvasStyle* style) c_goo_canvas_item_model_set_style;
	void function(GooCanvasItemModel* model, cairo_matrix_t* transform) c_goo_canvas_item_model_set_transform;
	void function(GooCanvasItemModel* model, double degrees, double cx, double cy) c_goo_canvas_item_model_skew_x;
	void function(GooCanvasItemModel* model, double degrees, double cx, double cy) c_goo_canvas_item_model_skew_y;
	void function(GooCanvasItemModel* model) c_goo_canvas_item_model_stop_animation;
	void function(GooCanvasItemModel* model, double tx, double ty) c_goo_canvas_item_model_translate;

	// goocanvas.CanvasItemModelSimple

	GType function() c_goo_canvas_item_model_simple_get_type;

	// goocanvas.CanvasItemSimple

	GType function() c_goo_canvas_item_simple_get_type;
	void function(GooCanvasItemSimple* item, int recomputeBounds) c_goo_canvas_item_simple_changed;
	int function(GooCanvasItemSimple* item, double x, double y, cairo_t* cr, GooCanvasPointerEvents pointerEvents) c_goo_canvas_item_simple_check_in_path;
	void function(GooCanvasItemSimple* item) c_goo_canvas_item_simple_check_style;
	double function(GooCanvasItemSimple* item) c_goo_canvas_item_simple_get_line_width;
	void function(GooCanvasItemSimple* item, cairo_t* cr, GooCanvasBounds* bounds) c_goo_canvas_item_simple_get_path_bounds;
	void function(GooCanvasItemSimple* item, cairo_t* cr) c_goo_canvas_item_simple_paint_path;
	void function(GooCanvasItemSimple* item, GooCanvasItemModel* model) c_goo_canvas_item_simple_set_model;
	void function(GooCanvasItemSimple* item, cairo_t* cr, GooCanvasBounds* bounds) c_goo_canvas_item_simple_user_bounds_to_device;
	void function(GooCanvasItemSimple* item, cairo_t* cr, GooCanvasBounds* bounds) c_goo_canvas_item_simple_user_bounds_to_parent;

	// goocanvas.CanvasLineDash

	GType function() c_goo_canvas_line_dash_get_type;
	GooCanvasLineDash* function(int numDashes, ... ) c_goo_canvas_line_dash_new;
	GooCanvasLineDash* function(int numDashes, double* dashes) c_goo_canvas_line_dash_newv;
	GooCanvasLineDash* function(GooCanvasLineDash* dash) c_goo_canvas_line_dash_ref;
	void function(GooCanvasLineDash* dash, double dashOffset) c_goo_canvas_line_dash_set_offset;
	void function(GooCanvasLineDash* dash) c_goo_canvas_line_dash_unref;

	// goocanvas.CanvasPath

	GType function() c_goo_canvas_path_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, const(char)* pathData, ... ) c_goo_canvas_path_new;

	// goocanvas.CanvasPathModel

	GType function() c_goo_canvas_path_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, const(char)* pathData, ... ) c_goo_canvas_path_model_new;

	// goocanvas.CanvasPoints

	GType function() c_goo_canvas_points_get_type;
	GooCanvasPoints* function(int numPoints) c_goo_canvas_points_new;
	void function(GooCanvasPoints* points, int idx, double* x, double* y) c_goo_canvas_points_get_point;
	GooCanvasPoints* function(GooCanvasPoints* points) c_goo_canvas_points_ref;
	void function(GooCanvasPoints* points, int idx, double x, double y) c_goo_canvas_points_set_point;
	void function(GooCanvasPoints* points) c_goo_canvas_points_unref;

	// goocanvas.CanvasPolyline

	GType function() c_goo_canvas_polyline_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, int closePath, int numPoints, ... ) c_goo_canvas_polyline_new;
	GooCanvasItem* function(GooCanvasItem* parent, double x1, double y1, double x2, double y2, ... ) c_goo_canvas_polyline_new_line;

	// goocanvas.CanvasPolylineModel

	GType function() c_goo_canvas_polyline_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, int closePath, int numPoints, ... ) c_goo_canvas_polyline_model_new;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, double x1, double y1, double x2, double y2, ... ) c_goo_canvas_polyline_model_new_line;

	// goocanvas.CanvasRect

	GType function() c_goo_canvas_rect_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, double x, double y, double width, double height, ... ) c_goo_canvas_rect_new;

	// goocanvas.CanvasRectModel

	GType function() c_goo_canvas_rect_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, double x, double y, double width, double height, ... ) c_goo_canvas_rect_model_new;

	// goocanvas.CanvasStyle

	GType function() c_goo_canvas_style_get_type;
	GooCanvasStyle* function() c_goo_canvas_style_new;
	GooCanvasStyle* function(GooCanvasStyle* style) c_goo_canvas_style_copy;
	GooCanvasStyle* function(GooCanvasStyle* style) c_goo_canvas_style_get_parent;
	GValue* function(GooCanvasStyle* style, GQuark propertyId) c_goo_canvas_style_get_property;
	int function(GooCanvasStyle* style, cairo_t* cr) c_goo_canvas_style_set_fill_options;
	void function(GooCanvasStyle* style, GooCanvasStyle* parent) c_goo_canvas_style_set_parent;
	void function(GooCanvasStyle* style, GQuark propertyId, GValue* value) c_goo_canvas_style_set_property;
	int function(GooCanvasStyle* style, cairo_t* cr) c_goo_canvas_style_set_stroke_options;

	// goocanvas.CanvasTable

	GType function() c_goo_canvas_table_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, ... ) c_goo_canvas_table_new;

	// goocanvas.CanvasTableModel

	GType function() c_goo_canvas_table_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, ... ) c_goo_canvas_table_model_new;

	// goocanvas.CanvasText

	GType function() c_goo_canvas_text_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, const(char)* str, double x, double y, double width, GooCanvasAnchorType anchor, ... ) c_goo_canvas_text_new;
	void function(GooCanvasText* text, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_goo_canvas_text_get_natural_extents;

	// goocanvas.CanvasTextModel

	GType function() c_goo_canvas_text_model_get_type;
	GooCanvasItemModel* function(GooCanvasItemModel* parent, const(char)* str, double x, double y, double width, GooCanvasAnchorType anchor, ... ) c_goo_canvas_text_model_new;

	// goocanvas.CanvasWidget

	GType function() c_goo_canvas_widget_get_type;
	GooCanvasItem* function(GooCanvasItem* parent, GtkWidget* widget, double x, double y, double width, double height, ... ) c_goo_canvas_widget_new;

	// goocanvas.CanvasWidgetAccessibleFactory

	GType function() c_goo_canvas_widget_accessible_factory_get_type;
}


// goocanvas.Canvas

alias c_goo_canvas_get_type goo_canvas_get_type;
alias c_goo_canvas_new goo_canvas_new;
alias c_goo_canvas_boolean_handled_accumulator goo_canvas_boolean_handled_accumulator;
alias c_goo_canvas_cairo_pattern_from_pixbuf goo_canvas_cairo_pattern_from_pixbuf;
alias c_goo_canvas_cairo_surface_from_pixbuf goo_canvas_cairo_surface_from_pixbuf;
alias c_goo_canvas_convert_colors_to_rgba goo_canvas_convert_colors_to_rgba;
alias c_goo_canvas_create_path goo_canvas_create_path;
alias c_goo_canvas_create_pattern_from_color_value goo_canvas_create_pattern_from_color_value;
alias c_goo_canvas_create_pattern_from_gdk_rgba_value goo_canvas_create_pattern_from_gdk_rgba_value;
alias c_goo_canvas_create_pattern_from_pixbuf_value goo_canvas_create_pattern_from_pixbuf_value;
alias c_goo_canvas_create_pattern_from_rgba_value goo_canvas_create_pattern_from_rgba_value;
alias c_goo_canvas_get_gdk_rgba_value_from_pattern goo_canvas_get_gdk_rgba_value_from_pattern;
alias c_goo_canvas_get_rgba_value_from_pattern goo_canvas_get_rgba_value_from_pattern;
alias c_goo_canvas_marshal_BOOLEAN__BOXED goo_canvas_marshal_BOOLEAN__BOXED;
alias c_goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT;
alias c_goo_canvas_marshal_BOOLEAN__OBJECT_BOXED goo_canvas_marshal_BOOLEAN__OBJECT_BOXED;
alias c_goo_canvas_marshal_VOID__INT_INT goo_canvas_marshal_VOID__INT_INT;
alias c_goo_canvas_marshal_VOID__OBJECT_OBJECT goo_canvas_marshal_VOID__OBJECT_OBJECT;
alias c_goo_canvas_parse_path_data goo_canvas_parse_path_data;
alias c_goo_canvas_set_style_property_from_pattern goo_canvas_set_style_property_from_pattern;
alias c_goo_canvas_util_ptr_array_find_index goo_canvas_util_ptr_array_find_index;
alias c_goo_canvas_util_ptr_array_insert goo_canvas_util_ptr_array_insert;
alias c_goo_canvas_util_ptr_array_move goo_canvas_util_ptr_array_move;
alias c_goo_canvas_convert_bounds_to_item_space goo_canvas_convert_bounds_to_item_space;
alias c_goo_canvas_convert_from_item_space goo_canvas_convert_from_item_space;
alias c_goo_canvas_convert_from_pixels goo_canvas_convert_from_pixels;
alias c_goo_canvas_convert_to_item_space goo_canvas_convert_to_item_space;
alias c_goo_canvas_convert_to_pixels goo_canvas_convert_to_pixels;
alias c_goo_canvas_convert_units_from_pixels goo_canvas_convert_units_from_pixels;
alias c_goo_canvas_convert_units_to_pixels goo_canvas_convert_units_to_pixels;
alias c_goo_canvas_create_cairo_context goo_canvas_create_cairo_context;
alias c_goo_canvas_create_item goo_canvas_create_item;
alias c_goo_canvas_get_bounds goo_canvas_get_bounds;
alias c_goo_canvas_get_default_line_width goo_canvas_get_default_line_width;
alias c_goo_canvas_get_item goo_canvas_get_item;
alias c_goo_canvas_get_item_at goo_canvas_get_item_at;
alias c_goo_canvas_get_items_at goo_canvas_get_items_at;
alias c_goo_canvas_get_items_in_area goo_canvas_get_items_in_area;
alias c_goo_canvas_get_root_item goo_canvas_get_root_item;
alias c_goo_canvas_get_root_item_model goo_canvas_get_root_item_model;
alias c_goo_canvas_get_scale goo_canvas_get_scale;
alias c_goo_canvas_get_static_root_item goo_canvas_get_static_root_item;
alias c_goo_canvas_get_static_root_item_model goo_canvas_get_static_root_item_model;
alias c_goo_canvas_grab_focus goo_canvas_grab_focus;
alias c_goo_canvas_keyboard_grab goo_canvas_keyboard_grab;
alias c_goo_canvas_keyboard_ungrab goo_canvas_keyboard_ungrab;
alias c_goo_canvas_pointer_grab goo_canvas_pointer_grab;
alias c_goo_canvas_pointer_ungrab goo_canvas_pointer_ungrab;
alias c_goo_canvas_register_widget_item goo_canvas_register_widget_item;
alias c_goo_canvas_render goo_canvas_render;
alias c_goo_canvas_request_item_redraw goo_canvas_request_item_redraw;
alias c_goo_canvas_request_redraw goo_canvas_request_redraw;
alias c_goo_canvas_request_update goo_canvas_request_update;
alias c_goo_canvas_scroll_to goo_canvas_scroll_to;
alias c_goo_canvas_set_bounds goo_canvas_set_bounds;
alias c_goo_canvas_set_root_item goo_canvas_set_root_item;
alias c_goo_canvas_set_root_item_model goo_canvas_set_root_item_model;
alias c_goo_canvas_set_scale goo_canvas_set_scale;
alias c_goo_canvas_set_static_root_item goo_canvas_set_static_root_item;
alias c_goo_canvas_set_static_root_item_model goo_canvas_set_static_root_item_model;
alias c_goo_canvas_unregister_item goo_canvas_unregister_item;
alias c_goo_canvas_unregister_widget_item goo_canvas_unregister_widget_item;
alias c_goo_canvas_update goo_canvas_update;

// goocanvas.CanvasAccessibleFactory

alias c_goo_canvas_accessible_factory_get_type goo_canvas_accessible_factory_get_type;

// goocanvas.CanvasBounds

alias c_goo_canvas_bounds_get_type goo_canvas_bounds_get_type;

// goocanvas.CanvasEllipse

alias c_goo_canvas_ellipse_get_type goo_canvas_ellipse_get_type;
alias c_goo_canvas_ellipse_new goo_canvas_ellipse_new;

// goocanvas.CanvasEllipseModel

alias c_goo_canvas_ellipse_model_get_type goo_canvas_ellipse_model_get_type;
alias c_goo_canvas_ellipse_model_new goo_canvas_ellipse_model_new;

// goocanvas.CanvasGrid

alias c_goo_canvas_grid_get_type goo_canvas_grid_get_type;
alias c_goo_canvas_grid_new goo_canvas_grid_new;

// goocanvas.CanvasGridModel

alias c_goo_canvas_grid_model_get_type goo_canvas_grid_model_get_type;
alias c_goo_canvas_grid_model_new goo_canvas_grid_model_new;

// goocanvas.CanvasGroup

alias c_goo_canvas_group_get_type goo_canvas_group_get_type;
alias c_goo_canvas_group_new goo_canvas_group_new;

// goocanvas.CanvasGroupModel

alias c_goo_canvas_group_model_get_type goo_canvas_group_model_get_type;
alias c_goo_canvas_group_model_new goo_canvas_group_model_new;

// goocanvas.CanvasImage

alias c_goo_canvas_image_get_type goo_canvas_image_get_type;
alias c_goo_canvas_image_new goo_canvas_image_new;

// goocanvas.CanvasImageModel

alias c_goo_canvas_image_model_get_type goo_canvas_image_model_get_type;
alias c_goo_canvas_image_model_new goo_canvas_image_model_new;

// goocanvas.CanvasItem

alias c_goo_canvas_item_get_type goo_canvas_item_get_type;
alias c_goo_canvas_item_class_find_child_property goo_canvas_item_class_find_child_property;
alias c_goo_canvas_item_class_install_child_property goo_canvas_item_class_install_child_property;
alias c_goo_canvas_item_class_list_child_properties goo_canvas_item_class_list_child_properties;
alias c_goo_canvas_item_add_child goo_canvas_item_add_child;
alias c_goo_canvas_item_allocate_area goo_canvas_item_allocate_area;
alias c_goo_canvas_item_animate goo_canvas_item_animate;
alias c_goo_canvas_item_ensure_updated goo_canvas_item_ensure_updated;
alias c_goo_canvas_item_find_child goo_canvas_item_find_child;
alias c_goo_canvas_item_get_bounds goo_canvas_item_get_bounds;
alias c_goo_canvas_item_get_canvas goo_canvas_item_get_canvas;
alias c_goo_canvas_item_get_child goo_canvas_item_get_child;
alias c_goo_canvas_item_get_child_properties goo_canvas_item_get_child_properties;
alias c_goo_canvas_item_get_child_properties_valist goo_canvas_item_get_child_properties_valist;
alias c_goo_canvas_item_get_child_property goo_canvas_item_get_child_property;
alias c_goo_canvas_item_get_is_static goo_canvas_item_get_is_static;
alias c_goo_canvas_item_get_items_at goo_canvas_item_get_items_at;
alias c_goo_canvas_item_get_model goo_canvas_item_get_model;
alias c_goo_canvas_item_get_n_children goo_canvas_item_get_n_children;
alias c_goo_canvas_item_get_parent goo_canvas_item_get_parent;
alias c_goo_canvas_item_get_requested_area goo_canvas_item_get_requested_area;
alias c_goo_canvas_item_get_requested_area_for_width goo_canvas_item_get_requested_area_for_width;
alias c_goo_canvas_item_get_requested_height goo_canvas_item_get_requested_height;
alias c_goo_canvas_item_get_simple_transform goo_canvas_item_get_simple_transform;
alias c_goo_canvas_item_get_style goo_canvas_item_get_style;
alias c_goo_canvas_item_get_transform goo_canvas_item_get_transform;
alias c_goo_canvas_item_get_transform_for_child goo_canvas_item_get_transform_for_child;
alias c_goo_canvas_item_is_container goo_canvas_item_is_container;
alias c_goo_canvas_item_is_visible goo_canvas_item_is_visible;
alias c_goo_canvas_item_lower goo_canvas_item_lower;
alias c_goo_canvas_item_move_child goo_canvas_item_move_child;
alias c_goo_canvas_item_paint goo_canvas_item_paint;
alias c_goo_canvas_item_raise goo_canvas_item_raise;
alias c_goo_canvas_item_remove goo_canvas_item_remove;
alias c_goo_canvas_item_remove_child goo_canvas_item_remove_child;
alias c_goo_canvas_item_request_update goo_canvas_item_request_update;
alias c_goo_canvas_item_rotate goo_canvas_item_rotate;
alias c_goo_canvas_item_scale goo_canvas_item_scale;
alias c_goo_canvas_item_set_canvas goo_canvas_item_set_canvas;
alias c_goo_canvas_item_set_child_properties goo_canvas_item_set_child_properties;
alias c_goo_canvas_item_set_child_properties_valist goo_canvas_item_set_child_properties_valist;
alias c_goo_canvas_item_set_child_property goo_canvas_item_set_child_property;
alias c_goo_canvas_item_set_is_static goo_canvas_item_set_is_static;
alias c_goo_canvas_item_set_model goo_canvas_item_set_model;
alias c_goo_canvas_item_set_parent goo_canvas_item_set_parent;
alias c_goo_canvas_item_set_simple_transform goo_canvas_item_set_simple_transform;
alias c_goo_canvas_item_set_style goo_canvas_item_set_style;
alias c_goo_canvas_item_set_transform goo_canvas_item_set_transform;
alias c_goo_canvas_item_skew_x goo_canvas_item_skew_x;
alias c_goo_canvas_item_skew_y goo_canvas_item_skew_y;
alias c_goo_canvas_item_stop_animation goo_canvas_item_stop_animation;
alias c_goo_canvas_item_translate goo_canvas_item_translate;
alias c_goo_canvas_item_update goo_canvas_item_update;

// goocanvas.CanvasItemAccessibleFactory

alias c_goo_canvas_item_accessible_factory_get_type goo_canvas_item_accessible_factory_get_type;

// goocanvas.CanvasItemModel

alias c_goo_canvas_item_model_get_type goo_canvas_item_model_get_type;
alias c_goo_canvas_item_model_class_find_child_property goo_canvas_item_model_class_find_child_property;
alias c_goo_canvas_item_model_class_install_child_property goo_canvas_item_model_class_install_child_property;
alias c_goo_canvas_item_model_class_list_child_properties goo_canvas_item_model_class_list_child_properties;
alias c_goo_canvas_item_model_add_child goo_canvas_item_model_add_child;
alias c_goo_canvas_item_model_animate goo_canvas_item_model_animate;
alias c_goo_canvas_item_model_find_child goo_canvas_item_model_find_child;
alias c_goo_canvas_item_model_get_child goo_canvas_item_model_get_child;
alias c_goo_canvas_item_model_get_child_properties goo_canvas_item_model_get_child_properties;
alias c_goo_canvas_item_model_get_child_properties_valist goo_canvas_item_model_get_child_properties_valist;
alias c_goo_canvas_item_model_get_child_property goo_canvas_item_model_get_child_property;
alias c_goo_canvas_item_model_get_n_children goo_canvas_item_model_get_n_children;
alias c_goo_canvas_item_model_get_parent goo_canvas_item_model_get_parent;
alias c_goo_canvas_item_model_get_simple_transform goo_canvas_item_model_get_simple_transform;
alias c_goo_canvas_item_model_get_style goo_canvas_item_model_get_style;
alias c_goo_canvas_item_model_get_transform goo_canvas_item_model_get_transform;
alias c_goo_canvas_item_model_is_container goo_canvas_item_model_is_container;
alias c_goo_canvas_item_model_lower goo_canvas_item_model_lower;
alias c_goo_canvas_item_model_move_child goo_canvas_item_model_move_child;
alias c_goo_canvas_item_model_raise goo_canvas_item_model_raise;
alias c_goo_canvas_item_model_remove goo_canvas_item_model_remove;
alias c_goo_canvas_item_model_remove_child goo_canvas_item_model_remove_child;
alias c_goo_canvas_item_model_rotate goo_canvas_item_model_rotate;
alias c_goo_canvas_item_model_scale goo_canvas_item_model_scale;
alias c_goo_canvas_item_model_set_child_properties goo_canvas_item_model_set_child_properties;
alias c_goo_canvas_item_model_set_child_properties_valist goo_canvas_item_model_set_child_properties_valist;
alias c_goo_canvas_item_model_set_child_property goo_canvas_item_model_set_child_property;
alias c_goo_canvas_item_model_set_parent goo_canvas_item_model_set_parent;
alias c_goo_canvas_item_model_set_simple_transform goo_canvas_item_model_set_simple_transform;
alias c_goo_canvas_item_model_set_style goo_canvas_item_model_set_style;
alias c_goo_canvas_item_model_set_transform goo_canvas_item_model_set_transform;
alias c_goo_canvas_item_model_skew_x goo_canvas_item_model_skew_x;
alias c_goo_canvas_item_model_skew_y goo_canvas_item_model_skew_y;
alias c_goo_canvas_item_model_stop_animation goo_canvas_item_model_stop_animation;
alias c_goo_canvas_item_model_translate goo_canvas_item_model_translate;

// goocanvas.CanvasItemModelSimple

alias c_goo_canvas_item_model_simple_get_type goo_canvas_item_model_simple_get_type;

// goocanvas.CanvasItemSimple

alias c_goo_canvas_item_simple_get_type goo_canvas_item_simple_get_type;
alias c_goo_canvas_item_simple_changed goo_canvas_item_simple_changed;
alias c_goo_canvas_item_simple_check_in_path goo_canvas_item_simple_check_in_path;
alias c_goo_canvas_item_simple_check_style goo_canvas_item_simple_check_style;
alias c_goo_canvas_item_simple_get_line_width goo_canvas_item_simple_get_line_width;
alias c_goo_canvas_item_simple_get_path_bounds goo_canvas_item_simple_get_path_bounds;
alias c_goo_canvas_item_simple_paint_path goo_canvas_item_simple_paint_path;
alias c_goo_canvas_item_simple_set_model goo_canvas_item_simple_set_model;
alias c_goo_canvas_item_simple_user_bounds_to_device goo_canvas_item_simple_user_bounds_to_device;
alias c_goo_canvas_item_simple_user_bounds_to_parent goo_canvas_item_simple_user_bounds_to_parent;

// goocanvas.CanvasLineDash

alias c_goo_canvas_line_dash_get_type goo_canvas_line_dash_get_type;
alias c_goo_canvas_line_dash_new goo_canvas_line_dash_new;
alias c_goo_canvas_line_dash_newv goo_canvas_line_dash_newv;
alias c_goo_canvas_line_dash_ref goo_canvas_line_dash_ref;
alias c_goo_canvas_line_dash_set_offset goo_canvas_line_dash_set_offset;
alias c_goo_canvas_line_dash_unref goo_canvas_line_dash_unref;

// goocanvas.CanvasPath

alias c_goo_canvas_path_get_type goo_canvas_path_get_type;
alias c_goo_canvas_path_new goo_canvas_path_new;

// goocanvas.CanvasPathModel

alias c_goo_canvas_path_model_get_type goo_canvas_path_model_get_type;
alias c_goo_canvas_path_model_new goo_canvas_path_model_new;

// goocanvas.CanvasPoints

alias c_goo_canvas_points_get_type goo_canvas_points_get_type;
alias c_goo_canvas_points_new goo_canvas_points_new;
alias c_goo_canvas_points_get_point goo_canvas_points_get_point;
alias c_goo_canvas_points_ref goo_canvas_points_ref;
alias c_goo_canvas_points_set_point goo_canvas_points_set_point;
alias c_goo_canvas_points_unref goo_canvas_points_unref;

// goocanvas.CanvasPolyline

alias c_goo_canvas_polyline_get_type goo_canvas_polyline_get_type;
alias c_goo_canvas_polyline_new goo_canvas_polyline_new;
alias c_goo_canvas_polyline_new_line goo_canvas_polyline_new_line;

// goocanvas.CanvasPolylineModel

alias c_goo_canvas_polyline_model_get_type goo_canvas_polyline_model_get_type;
alias c_goo_canvas_polyline_model_new goo_canvas_polyline_model_new;
alias c_goo_canvas_polyline_model_new_line goo_canvas_polyline_model_new_line;

// goocanvas.CanvasRect

alias c_goo_canvas_rect_get_type goo_canvas_rect_get_type;
alias c_goo_canvas_rect_new goo_canvas_rect_new;

// goocanvas.CanvasRectModel

alias c_goo_canvas_rect_model_get_type goo_canvas_rect_model_get_type;
alias c_goo_canvas_rect_model_new goo_canvas_rect_model_new;

// goocanvas.CanvasStyle

alias c_goo_canvas_style_get_type goo_canvas_style_get_type;
alias c_goo_canvas_style_new goo_canvas_style_new;
alias c_goo_canvas_style_copy goo_canvas_style_copy;
alias c_goo_canvas_style_get_parent goo_canvas_style_get_parent;
alias c_goo_canvas_style_get_property goo_canvas_style_get_property;
alias c_goo_canvas_style_set_fill_options goo_canvas_style_set_fill_options;
alias c_goo_canvas_style_set_parent goo_canvas_style_set_parent;
alias c_goo_canvas_style_set_property goo_canvas_style_set_property;
alias c_goo_canvas_style_set_stroke_options goo_canvas_style_set_stroke_options;

// goocanvas.CanvasTable

alias c_goo_canvas_table_get_type goo_canvas_table_get_type;
alias c_goo_canvas_table_new goo_canvas_table_new;

// goocanvas.CanvasTableModel

alias c_goo_canvas_table_model_get_type goo_canvas_table_model_get_type;
alias c_goo_canvas_table_model_new goo_canvas_table_model_new;

// goocanvas.CanvasText

alias c_goo_canvas_text_get_type goo_canvas_text_get_type;
alias c_goo_canvas_text_new goo_canvas_text_new;
alias c_goo_canvas_text_get_natural_extents goo_canvas_text_get_natural_extents;

// goocanvas.CanvasTextModel

alias c_goo_canvas_text_model_get_type goo_canvas_text_model_get_type;
alias c_goo_canvas_text_model_new goo_canvas_text_model_new;

// goocanvas.CanvasWidget

alias c_goo_canvas_widget_get_type goo_canvas_widget_get_type;
alias c_goo_canvas_widget_new goo_canvas_widget_new;

// goocanvas.CanvasWidgetAccessibleFactory

alias c_goo_canvas_widget_accessible_factory_get_type goo_canvas_widget_accessible_factory_get_type;
