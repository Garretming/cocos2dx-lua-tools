
--------------------------------
-- @module EventListenerTouch
-- @parent_module ugod

--------------------------------
-- 
-- @function [parent=#EventListenerTouch] registerEventListenerTouchOneByOne 
-- @param self
-- @param #unsigned int handler
-- @param #cc.Node targetNode
-- @param #bool began
-- @param #bool moved
-- @param #bool ended
-- @param #bool cancelled
-- @return int#int ret (return value: int)
        
--------------------------------
-- 
-- @function [parent=#EventListenerTouch] cancelTouch 
-- @param self
-- @param #cc.Touch touch
-- @return ui::EventListenerTouch#ui::EventListenerTouch self (return value: ugod.ui::EventListenerTouch)
        
--------------------------------
-- 
-- @function [parent=#EventListenerTouch] unregisterEventListenerTouch 
-- @param self
-- @param #cc.Node targetNode
-- @return ui::EventListenerTouch#ui::EventListenerTouch self (return value: ugod.ui::EventListenerTouch)
        
return nil
