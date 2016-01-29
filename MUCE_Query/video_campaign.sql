select p_date, click_name, count(*)
from muce_topic.click
where p_date >= 20151126 and p_date <= 20151128 and p_product = 'IOS_EYEPETIZER' and click_name like 'FeedPageEventClick%'
group by p_date, click_name
--iOS 活动点击


select p_date, card_id, count(*)
from muce_topic.click
where p_date >= 20151126 and p_date <= 20151128 and p_product = 'ANDROID_EYEPETIZER' and card_id = 28
group by p_date, card_id
--Android 活动点击



card_id	card_num	card_parent_id	card_status	card_sub_type	card_tag	card_type	cheating_reason	click_action	click_element	click_index	click_module	click_name	click_normalized_url	click_sub_index	click_url	click_vertical	client_first_source	client_last_source	client_version_code	client_version_name	content_id	content_is_free	content_sub_type	content_title	content_type	device_model	feed_detail	feed_id	feed_name	feed_template
28	\N	\N	\N		\N	\N	\N	REDIRECT	CARD	0	ui	\N	feed/videodetail/4924	\N	feed/videodetail/4924	\N	eyepetizer_wandoujia_market	eyepetizer_wandoujia_market	79	1.11.1	28	\N	VIDEO_CAMPAIGN	\N	NULL	\N	\N	\N	\N	\N
28	\N	\N	\N		\N	\N	\N	REDIRECT	CARD	0	ui	\N	feed	\N	feed	\N	eyepetizer_wandoujia_market	eyepetizer_wandoujia_market	79	1.11.1	28	\N	VIDEO_CAMPAIGN	\N	NULL	\N	\N	\N	\N	\N
28	\N	\N	\N		\N	\N	\N	REDIRECT	CARD	0	ui	\N	feed	\N	feed	\N	eyepetizer_baidu_market	eyepetizer_baidu_market	79	1.11.1	28	\N	VIDEO_CAMPAIGN	\N	NULL	\N	\N	\N	\N	\N
