select count(distinct id)
from muce_topic.common
where p_date = {date} and p_product='ANDROID_EYEPETIZER'
--Android 版 DAU


select count(distinct id)
from muce_topic.common
where p_date = {date} and p_product='IOS_EYEPETIZER'
--iOS 版 DAU