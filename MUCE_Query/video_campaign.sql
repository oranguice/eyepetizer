select p_date, click_name, count(*)
from muce_topic.click
where p_date >= 20151126 and p_date <= 20151128 and p_product = 'IOS_EYEPETIZER' and click_name like 'FeedPageEventClick%'
group by p_date, click_name
--iOS 活动点击


select p_date, card_id, count(*)
from muce_topic.click
where p_date >= 20151126 and p_date <= 20151128 and p_product = 'ANDROID_EYEPETIZER' and card_id = 12
group by p_date, card_id
--Android 活动点击