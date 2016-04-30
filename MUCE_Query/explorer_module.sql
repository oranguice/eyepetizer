select p_date, id, content_id
from muce_topic.task
where p_date = 20160403 and p_product = 'ANDROID_EYEPETIZER' and view_log_url = 'recommend/video_card' and task_action = 'READ'
group by p_date, id, content_id
--Android 探索卡片浏览数据


select p_date, id, content_id
from muce_topic.task
where p_date = 20160403 and p_product = 'ANDROID_EYEPETIZER' and view_log_url = 'recommend/video_card' and task_action = 'PLAY'
group by p_date, id, content_id
--Android 探索卡片消费数据


---------------------------------------------------------

select id, substring(view_url, locate('identifier=', view_url)+11, 10)
from muce_topic.show
where p_date = 20160405 and p_product = 'IOS_EYEPETIZER' and view_url like '/recommend/video_card%' and view_url like '%identifier%' and view_url not like '%udid%' and client_version_code >= 505
group by id, substring(view_url, locate('identifier=', view_url)+11, 10)
--iOS 探索卡片展示历史


select id, content_id
from muce_topic.click
where p_date = 20160405 and p_product = 'IOS_EYEPETIZER' and click_url like '/recommend/video%' and click_action = 'REDIRECT' and click_name = 'Play'
group by id, content_id
--iOS 探索卡片播放历史


select id, content_id
from muce_topic.click
where p_date >= 20160401 and p_date <= 20160410 and p_product = 'IOS_EYEPETIZER' and click_url like '/recommend/video%' and click_action = 'SELECT' and click_name = 'like'
group by id, content_id
--iOS 探索卡片 like 喜欢历史


select p_date, id, content_id
from muce_topic.task
where p_date = 20160403 and p_product = 'ANDROID_EYEPETIZER' and view_log_url = 'recommend/video_card' and task_action = 'READ'
group by p_date, id, content_id
--Android 探索卡片展示历史


select p_date, id, content_id
from muce_topic.task
where p_date = 20160403 and p_product = 'ANDROID_EYEPETIZER' and view_log_url = 'recommend/video_card' and task_action = 'PLAY'
group by p_date, id, content_id
--Android 探索卡片消费历史


select id, content_id
from muce_topic.task
where p_date >= 20160401 and p_date <= 20160410 and p_product = 'ANDROID_EYEPETIZER' and task_action = 'OPEN' and task_result_info = 'like' and view_log_url = 'recommend/video_card'
group by id, content_id
--Android 探索卡片 like 喜欢历史