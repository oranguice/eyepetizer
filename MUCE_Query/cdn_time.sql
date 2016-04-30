select 
 extra_package.timing_package.start as timing_start,
 extra_package.timing_package.`end` as timing_end,
 extra_package.timing_package.duration as timing_duration,
 event_package.task_event.result as task_result 
from muce_event_client.taskevent 
where 
 p_product= 'ANDROID_EYEPETIZER' and 
 p_date = 20160122 and 
 common_package.client_package.version_code >= 70 and 
 event_package.task_event.action = 'PLAY' and 
 event_package.task_event.status='PENDING' and
 substring(common_package.id_package.identity, 40, 1) not in ('0','1','2','3','4','5','6','7')
sort by timing_start, timing_duration	



select p_date, sum(case when timing_duration > 0 and timing_duration <= 5000 then 1 else 0 end), sum(case when timing_duration > 5000 and timing_duration <= 30000 then 1 else 0 end), sum(case when timing_duration > 30000 then 1 else 0 end)
from muce_app_client.taskevent
where p_date = 20160306 and p_product = 'ANDROID_EYEPETIZER' and task_action = 'PLAY' and task_result_info = 'timing1'


