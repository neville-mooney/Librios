SELECT        ID, UserID, AccessDate, BrowserType, BrowserPlatform, UrlReferrer, UserHostAddress, UserHostName, UserLanguages, SearchText, LastID, RootID, ParentUserID, AdminUserID, AnalyticType, ConfigID, NavigatorID, 
                         ProfileCountryCode, IPCountryCode, CPDUserName, SessionID, SessionGUID, UrlReferrerDomain, BrowserWidth, BrowserHeight, PublisherID, HumanScore
FROM            Analytics
WHERE        (AccessDate >= '2021-09-07') AND (AccessDate <= '2021-09-08')
AND 
(UserHostAddress LIKE '185.221.147.96' OR
                         UserHostAddress LIKE '185.221.147.97' OR
                         UserHostAddress LIKE '185.221.147.98' OR
                         UserHostAddress LIKE '185.221.147.99' OR
                         UserHostAddress LIKE '185.221.147.100' OR
                         UserHostAddress LIKE '185.221.147.101' OR
                         UserHostAddress LIKE '185.221.147.102' OR
                         UserHostAddress LIKE '185.221.147.103' OR
                         UserHostAddress LIKE '185.221.147.104' OR
                         UserHostAddress LIKE '185.221.147.105' OR
                         UserHostAddress LIKE '185.221.147.106' OR
                         UserHostAddress LIKE '185.221.147.107' OR
                         UserHostAddress LIKE '185.221.147.108' OR
                         UserHostAddress LIKE '185.221.147.109' OR
                         UserHostAddress LIKE '185.221.147.110' OR
                         UserHostAddress LIKE '185.221.147.111' OR
                         UserHostAddress LIKE '185.221.147.112' OR
                         UserHostAddress LIKE '185.221.147.113' OR
                         UserHostAddress LIKE '185.221.147.114' OR
                         UserHostAddress LIKE '185.221.147.115' OR
                         UserHostAddress LIKE '185.221.147.116' OR
                         UserHostAddress LIKE '185.221.147.117' OR
                         UserHostAddress LIKE '185.221.147.118' OR
                         UserHostAddress LIKE '185.221.147.119' OR
                         UserHostAddress LIKE '185.221.147.120' OR
                         UserHostAddress LIKE '185.221.147.121' OR
                         UserHostAddress LIKE '185.221.147.122' OR
                         UserHostAddress LIKE '185.221.147.123' OR
                         UserHostAddress LIKE '185.221.147.124' OR
                         UserHostAddress LIKE '185.221.147.125' OR
                         UserHostAddress LIKE '185.221.147.126' OR
                         UserHostAddress LIKE '185.221.147.127')
ORDER BY AccessDate DESC
