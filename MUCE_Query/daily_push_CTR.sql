select p_date, client_version_name, count(DISTINCT id)
from muce_event_client.taskevent
where p_product= 'ANDROID_EYEPETIZER' and content_id = 'DAILY_NEW_FEED_NOTIFICATION' and p_date >= 20150902 and p_date <= 20150905 and task_status= 'START' and task_action= 'READ'
GROUP by p_date, client_version_name
--Push 的展示次数



select p_date, client_version_name, count(distinct id)
from muce_event_client.applicationstartevent
where p_date >= 20150902 and p_date <= 20150905 and p_product = 'ANDROID_EYEPETIZER' and launch_source_source = 'NOTIFICATION_PUSH'
group by p_date, client_version_name
--从 Push 带来的启动用户


select content_parent_id, count(distinct id)
from muce_event_client.taskevent
where p_product= 'ANDROID_EYEPETIZER' and  p_date = 20150908 and task_status= 'READY' and task_result = 'SUCCESS'
group by content_parent_id
--人工 Push 展示