/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = pango
 * outFile = PgGlyphItem
 * strct   = PangoGlyphItem
 * realStrct=
 * ctorStrct=
 * clss    = PgGlyphItem
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- pango_glyph_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgAttributeList
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- PangoAttrList* -> PgAttributeList
 * 	- PangoGlyphItem* -> PgGlyphItem
 * module aliases:
 * local aliases:
 */

module pango.PgGlyphItem;

public  import gtkc.pangotypes;

private import gtkc.pango;


private import glib.Str;
private import pango.PgAttributeList;
private import glib.ListSG;




/**
 * Description
 * pango_shape() produces a string of glyphs which
 * can be measured or drawn to the screen. The following
 * structures are used to store information about
 * glyphs.
 */
public class PgGlyphItem
{
	
	/** the main Gtk struct */
	protected PangoGlyphItem* pangoGlyphItem;
	
	
	public PangoGlyphItem* getPgGlyphItemStruct()
	{
		return pangoGlyphItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoGlyphItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoGlyphItem* pangoGlyphItem)
	{
		if(pangoGlyphItem is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null pangoGlyphItem passed to constructor.");
			else return;
		}
		this.pangoGlyphItem = pangoGlyphItem;
	}
	
	/**
	 */
	
	/**
	 * Modifies orig to cover only the text after split_index, and
	 * returns a new item that covers the text before split_index that
	 * used to be in orig. You can think of split_index as the length of
	 * the returned item. split_index may not be 0, and it may not be
	 * greater than or equal to the length of orig (that is, there must
	 * be at least one byte assigned to each item, you can't create a
	 * zero-length item).
	 * This function is similar in function to pango_item_split() (and uses
	 * it internally.)
	 * Since 1.2
	 * Params:
	 * text =  text to which positions in orig apply
	 * splitIndex =  byte index of position to split item, relative to the start of the item
	 * Returns: the newly allocated item representing text before split_index, which should be freed with pango_glyph_item_free().
	 */
	public PgGlyphItem split(char[] text, int splitIndex)
	{
		// PangoGlyphItem* pango_glyph_item_split (PangoGlyphItem *orig,  const char *text,  int split_index);
		auto p = pango_glyph_item_split(pangoGlyphItem, Str.toStringz(text), splitIndex);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new PgGlyphItem(cast(PangoGlyphItem*) p);
	}
	
	/**
	 * Splits a shaped item (PangoGlyphItem) into multiple items based
	 * on an attribute list. The idea is that if you have attributes
	 * that don't affect shaping, such as color or underline, to avoid
	 * affecting shaping, you filter them out (pango_attr_list_filter()),
	 * apply the shaping process and then reapply them to the result using
	 * this function.
	 * All attributes that start or end inside a cluster are applied
	 * to that cluster; for instance, if half of a cluster is underlined
	 * and the other-half strikethrough, then the cluster will end
	 * up with both underline and strikethrough attributes. In these
	 * cases, it may happen that item->extra_attrs for some of the
	 * result items can have multiple attributes of the same type.
	 * This function takes ownership of glyph_item; it will be reused
	 * as one of the elements in the list.
	 * Since 1.2
	 * Params:
	 * text =  text that list applies to
	 * list =  a PangoAttrList
	 * Returns: a list of glyph items resulting from splitting glyph_item. Free the elements using pango_glyph_item_free(), the list using g_slist_free().
	 */
	public ListSG applyAttrs(char[] text, PgAttributeList list)
	{
		// GSList* pango_glyph_item_apply_attrs (PangoGlyphItem *glyph_item,  const char *text,  PangoAttrList *list);
		auto p = pango_glyph_item_apply_attrs(pangoGlyphItem, Str.toStringz(text), (list is null) ? null : list.getPgAttributeListStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ListSG(cast(GSList*) p);
	}
	
	/**
	 * Adds spacing between the graphemes of glyph_item to
	 * give the effect of typographic letter spacing.
	 * Since 1.6
	 * Params:
	 * text =  text that glyph_item corresponds to
	 *  (glyph_item->item->offset is an offset from the
	 *  start of text)
	 * logAttrs =  logical attributes for the item (the
	 *  first logical attribute refers to the position
	 *  before the first character in the item)
	 * letterSpacing =  amount of letter spacing to add
	 *  in Pango units. May be negative, though too large
	 *  negative values will give ugly results.
	 */
	public void letterSpace(char[] text, PangoLogAttr* logAttrs, int letterSpacing)
	{
		// void pango_glyph_item_letter_space (PangoGlyphItem *glyph_item,  const char *text,  PangoLogAttr *log_attrs,  int letter_spacing);
		pango_glyph_item_letter_space(pangoGlyphItem, Str.toStringz(text), logAttrs, letterSpacing);
	}
	
	/**
	 * Frees a PangoGlyphItem and memory to which it points.
	 * Since 1.6
	 */
	public void free()
	{
		// void pango_glyph_item_free (PangoGlyphItem *glyph_item);
		pango_glyph_item_free(pangoGlyphItem);
	}
}