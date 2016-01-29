select p_date, sum(case when task_result_info like 'autoDownload%' then 1 else 0 end), sum(case when task_result_info like 'autoDownload:true%' then 1 else 0 end), sum(case when task_result_info like '%enableNotification:true%' then 1 else 0 end), sum(case when task_result_info like '%2g3g:true' then 1 else 0 end)
from muce_topic.task
where p_date >= 20160120 and p_date <= 20160125 and p_product = 'ANDROID_EYEPETIZER' and task_result_info like 'autoDownload%'
group by p_date




select id, click_action, click_name, click_element, content_title, is_start_new
from muce_topic.click
where p_date = 20160125 and p_product = 'ANDROID_EYEPETIZER' and click_url = 'autoDownload/userGuide'