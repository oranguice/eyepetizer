select p_date, sum(case when view_url = 'landing/advertise/id' then 1 else 0 end), sum(case when view_url = 'landing/common' then 1 else 0 end)
from muce_topic.show
where p_date >= 20161201 and p_date <= 20160113 and p_product = 'ANDROID_EYEPETIZER' 
group by p_date