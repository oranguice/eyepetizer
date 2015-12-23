select count(distinct id)
from muce_event_client.applicationstartevent
where p_product='ANDROID_EYEPETIZER' and p_date>=20150815 and p_date<=20150821
--Android 周去重 DLU


select count(distinct id)
from muce_event_client.applicationstartevent
where p_product='IOS_EYEPETIZER' and p_date>=20150815 and p_date<=20150821
--iOS 周去重 DLU