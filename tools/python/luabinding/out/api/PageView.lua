
--------------------------------
-- @module PageView
-- @parent_module ugod

--------------------------------
-- 
-- @function [parent=#PageView] gotoPage 
-- @param self
-- @param #int page
-- @param #bool animated
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] pushObject 
-- @param self
-- @param #cc.Node node
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setPageSize 
-- @param self
-- @param #size_table size
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setDirection 
-- @param self
-- @param #int direction
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setPageInterval 
-- @param self
-- @param #float interval
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setPageViewRecycle 
-- @param self
-- @param #bool recycle
-- @param #cc.Node first
-- @param #cc.Node last
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] getScrollIndicateComponent 
-- @param self
-- @return ui::ScrollIndicateComponent#ui::ScrollIndicateComponent ret (return value: ugod.ui::ScrollIndicateComponent)
        
--------------------------------
-- 
-- @function [parent=#PageView] reloadData 
-- @param self
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] insertObject 
-- @param self
-- @param #cc.Node node
-- @param #unsigned int index
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] removeAllObjects 
-- @param self
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setIndicateSpriteInterval 
-- @param self
-- @param #float interval
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setPageEdge 
-- @param self
-- @param #float edge
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] removeObject 
-- @param self
-- @param #int index
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setTouchEnabled 
-- @param self
-- @param #bool enabled
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] displayRect 
-- @param self
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] setPageNodesPosition 
-- @param self
-- @param #int list
-- @return ui::PageView#ui::PageView self (return value: ugod.ui::PageView)
        
--------------------------------
-- 
-- @function [parent=#PageView] getAllNodes 
-- @param self
-- @return array_table#array_table ret (return value: array_table)
        
--------------------------------
-- @overload self, unsigned int, size_table         
-- @overload self, size_table         
-- @function [parent=#PageView] create
-- @param self
-- @param #unsigned int handler
-- @param #size_table size
-- @return ui::PageView#ui::PageView ret (return value: ugod.ui::PageView)

return nil
