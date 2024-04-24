SELECT        ID, UserID, AccessDate, BrowserType, BrowserPlatform, UrlReferrer, UserHostAddress, UserHostName, UserLanguages, SearchText, LastID, RootID, ParentUserID, AdminUserID, AnalyticType, ConfigID, NavigatorID, 
                         ProfileCountryCode, IPCountryCode, CPDUserName, SessionID, SessionGUID, UrlReferrerDomain, BrowserWidth, BrowserHeight, PublisherID, HumanScore
FROM            Analytics
WHERE        (AccessDate >= '2021-09-07') AND (AccessDate <= '2021-09-08')
AND 
(UserHostAddress LIKE '185.221.147%' OR
                         UserHostAddress LIKE '89.248.48%' OR
                         UserHostAddress LIKE '62.253.231%')
ORDER BY AccessDate DESC
