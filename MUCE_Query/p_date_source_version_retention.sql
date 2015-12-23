select pp_date, client_first_source, client_version_name, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, client_first_source, client_version_name, col_flag, count(*) as col_num
		from
		(
			select pp_date, client_first_source, client_version_name, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, client_first_source, client_version_name, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20150901 and p_date <= 20150912 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), client_first_source, client_version_name, id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1) as pp_date, client_first_source, client_version_name, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20150902 and p_date <= 20150913 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1), client_first_source, client_version_name, id
			)ta 
			group by pp_date, client_first_source, client_version_name, id
		)tb
	group by pp_date, client_first_source, client_version_name, col_flag )tc
group by pp_date, client_first_source, client_version_name