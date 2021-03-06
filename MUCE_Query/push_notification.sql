select p_date, count(distinct id)
from muce_topic.task
where p_date >= 20150915 and p_date <= 20150929 and p_product = 'ANDROID_EYEPETIZER' and client_version_name = '1.5.1' and task_action = 'READ' and task_status = 'START' and (task_result = 'SUCCESS' or task_result = 'CANCEL')
group by p_date
--Push 到达人数


select p_date, count(distinct id)
from muce_topic.task
where p_date >= 20150915 and p_date <= 20150929 and p_product = 'ANDROID_EYEPETIZER' and client_version_name = '1.5.1' and task_action = 'READ' and task_status = 'START' and task_result = 'SUCCESS'
group by p_date
--Push 展示人数


select p_date, count(distinct id)
from muce_topic.applicationstart
where p_date >= 20150915 and p_date <= 20150929 and p_product = 'ANDROID_EYEPETIZER' and launch_source_source = 'NOTIFICATION_PUSH' and client_version_name = '1.5.1'
group by p_date
--Push 开启人数


select p_date, content_id, content_parent_id, count(distinct id)
from muce_app_client.taskevent
where p_date >= 20160203 and p_date <= 20160206 and p_product = 'ANDROID_EYEPETIZER' and task_status = 'READY' and task_result = 'SUCCESS'
group by p_date, content_id, content_parent_id
--运营push展示，content_id 为 100000+push_id,parent_id为IRREGULAR_NOTIFICATION



select p_date, launch_source_source, count(distinct id)
from muce_topic.applicationstart
where p_date >= 20160204 and p_date <= 20160205 and p_product = 'ANDROID_EYEPETIZER' and launch_source_keyword = 'IRREGULAR_NOTIFICATION'
group by p_date, launch_source_source
--运营 Push 打开



select count(DISTINCT id)
from muce_app_client.taskevent
where p_product= 'ANDROID_EYEPETIZER' and content_parent_id='DAILY_NEW_FEED_NOTIFICATION' and p_date = '20151029' and task_status='START' and task_result='SUCCESS' and task_action = 'READ'
and client_version_code = 52
--收到Push



select count(DISTINCT id) from muce_app_client.taskevent where p_product= 'ANDROID_EYEPETIZER' and content_id='DAILY_NEW_FEED_NOTIFICATION' and p_date = '20151029' and task_status='START' and task_result='SUCCESS' and task_action = 'READ'
and client_version_code = 52
--在通知栏弹出


