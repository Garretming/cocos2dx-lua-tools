
--------------------------------
-- @module XClient
-- @parent_module ugod

--------------------------------
-- 
-- @function [parent=#XClient] isInternetConnectionAvailable 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#XClient] setAutoReconnect 
-- @param self
-- @param #bool bValue
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] stopMonitorNetwork 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] registerScriptHandler 
-- @param self
-- @param #int nHandler
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] isInternetConnectionWIFI 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#XClient] resetRequest 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] send 
-- @param self
-- @param #unsigned int opcode
-- @param #char msg
-- @param #unsigned int len
-- @param #int index
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- 
-- @function [parent=#XClient] isConnected 
-- @param self
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#XClient] startMonitorNetwork 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] connect 
-- @param self
-- @param #char ip
-- @param #unsigned short port
-- @return bool#bool ret (return value: bool)
        
--------------------------------
-- 
-- @function [parent=#XClient] disconnect 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] heartBeatDetection 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] http_send 
-- @param self
-- @param #unsigned int nHandler
-- @param #char url
-- @param #string postData
-- @return unsigned int#unsigned int ret (return value: unsigned int)
        
--------------------------------
-- 
-- @function [parent=#XClient] destroyInstance 
-- @param self
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] sleep 
-- @param self
-- @param #unsigned int ms
-- @return network::XClient#network::XClient self (return value: ugod.network::XClient)
        
--------------------------------
-- 
-- @function [parent=#XClient] getInstance 
-- @param self
-- @return network::XClient#network::XClient ret (return value: ugod.network::XClient)
        
return nil
