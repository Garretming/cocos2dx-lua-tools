
--------------------------------
-- @module ResourceUtils
-- @parent_module ugod

--------------------------------
-- 
-- @function [parent=#ResourceUtils] getSpriteFrameByName 
-- @param self
-- @param #string framename
-- @return SpriteFrame#SpriteFrame ret (return value: cc.SpriteFrame)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] releaseAllResources 
-- @param self
-- @param #array_table files
-- @param #array_table sizes
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] addSkeletonDataAsyncProgress 
-- @param self
-- @param #unsigned int handler
-- @param #array_table resources
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] addImageAsyncProgress 
-- @param self
-- @param #unsigned int callback
-- @param #array_table resources
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] addImageAsync 
-- @param self
-- @param #unsigned int callback
-- @param #array_table resources
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] releaseTextureFiles 
-- @param self
-- @param #array_table files
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] removeTextureFiles 
-- @param self
-- @param #array_table files
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- @overload self, unsigned int, array_table         
-- @overload self, string         
-- @function [parent=#ResourceUtils] addImageSync
-- @param self
-- @param #unsigned int callback
-- @param #array_table resources
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)

--------------------------------
-- 
-- @function [parent=#ResourceUtils] getProtoPb 
-- @param self
-- @param #string filename
-- @return Data#Data ret (return value: cc.Data)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] removeSpriteFramesWithFiles 
-- @param self
-- @param #array_table files
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] getTextureForKey 
-- @param self
-- @param #string key
-- @return Texture2D#Texture2D ret (return value: cc.Texture2D)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] isResourcesLoaded 
-- @param self
-- @param #string filename
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] isTextureLoaded 
-- @param self
-- @param #string key
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] releasePlistFiles 
-- @param self
-- @param #array_table files
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] addSpriteFramesWithFiles 
-- @param self
-- @param #array_table plists
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] destroyInstance 
-- @param self
-- @return ui::ResourceUtils#ui::ResourceUtils self (return value: ugod.ui::ResourceUtils)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] getTexturePath 
-- @param self
-- @param #int name
-- @return string#string ret (return value: string)
        
--------------------------------
-- 
-- @function [parent=#ResourceUtils] getInstance 
-- @param self
-- @return ui::ResourceUtils#ui::ResourceUtils ret (return value: ugod.ui::ResourceUtils)
        
return nil
