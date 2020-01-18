gstore_logdrop table public.gstore_log;

CREATE TABLE public.gstore_log (
	id serial NOT NULL,
	channelgrouping varchar(255) NULL,
	log_date int4 NULL,
	fullvisitorid varchar(255) NULL,
	sessionid varchar(255) NULL,
	socialengagementtype varchar(255) NULL,
	visitid int4 NULL,
	visitnumber int4 NULL,
	visitstarttime int4 NULL,
	device_browser varchar(255) NULL,
	device_browserversion varchar(255) NULL,
	device_browsersize varchar(255) NULL,
	device_operatingsystem varchar(255) NULL,
	device_operatingsystemversion varchar(255) NULL,
	device_ismobile bool NULL,
	device_mobiledevicebranding varchar(255) NULL,
	device_mobiledevicemodel varchar(255) NULL,
	device_mobileinputselector varchar(255) NULL,
	device_mobiledeviceinfo varchar(255) NULL,
	device_mobiledevicemarketingname varchar(255) NULL,
	device_flashversion varchar(255) NULL,
	device_language varchar(255) NULL,
	device_screencolors varchar(255) NULL,
	device_screenresolution varchar(255) NULL,
	device_devicecategory varchar(255) NULL,
	geonetwork_continent varchar(255) NULL,
	geonetwork_subcontinent varchar(255) NULL,
	geonetwork_country varchar(255) NULL,
	geonetwork_region varchar(255) NULL,
	geonetwork_metro varchar(255) NULL,
	geonetwork_city varchar(255) NULL,
	geonetwork_cityid varchar(255) NULL,
	geonetwork_networkdomain varchar(255) NULL,
	geonetwork_latitude varchar(255) NULL,
	geonetwork_longitude varchar(255) NULL,
	geonetwork_networklocation varchar(255) NULL,
	totals_visits varchar(255) NULL,
	totals_hits varchar(255) NULL,
	totals_pageviews varchar(255) NULL,
	totals_bounces varchar(255) NULL,
	totals_newvisits varchar(255) NULL,
	totals_transactionrevenue varchar(255) NULL,
	trafficsource_campaign varchar(255) NULL,
	trafficsource_source varchar(255) NULL,
	trafficsource_medium varchar(255) NULL,
	trafficsource_keyword varchar(255) NULL,
	trafficsource_adwordsclickinfo_criteriaparameters varchar(255) NULL,
	trafficsource_istruedirect varchar(255) NULL,
	trafficsource_referralpath varchar(255) NULL,
	trafficsource_adwordsclickinfo_page varchar(255) NULL,
	trafficsource_adwordsclickinfo_slot varchar(255) NULL,
	trafficsource_adwordsclickinfo_gclid varchar(255) NULL,
	trafficsource_adwordsclickinfo_adnetworktype varchar(255) NULL,
	trafficsource_adwordsclickinfo_isvideoad varchar(255) NULL,
	trafficsource_adcontent varchar(255) NULL,
	trafficsource_campaigncode varchar(255) NULL,
	CONSTRAINT gstore_log_pk null
);
CREATE INDEX gstore_log_fullvisitorid_idx ON public.gstore_log (fullvisitorid text_ops);
CREATE INDEX gstore_log_log_date_idx ON public.gstore_log (log_date int4_ops);


copy public.gstore_log( channelgrouping ,
log_date ,
fullvisitorid ,
sessionId ,
socialEngagementType ,
visitId ,
visitNumber ,
visitStartTime ,
device_browser ,
device_browserVersion ,
device_browserSize ,
device_operatingSystem ,
device_operatingSystemVersion ,
device_isMobile ,
device_mobileDeviceBranding ,
device_mobileDeviceModel ,
device_mobileInputSelector ,
device_mobileDeviceInfo ,
device_mobileDeviceMarketingName ,
device_flashVersion ,
device_language ,
device_screenColors ,
device_screenResolution ,
device_deviceCategory ,
geoNetwork_continent ,
geoNetwork_subContinent ,
geoNetwork_country ,
geoNetwork_region ,
geoNetwork_metro ,
geoNetwork_city ,
geoNetwork_cityId ,
geoNetwork_networkDomain ,
geoNetwork_latitude ,
geoNetwork_longitude ,
geoNetwork_networkLocation ,
totals_visits ,
totals_hits ,
totals_pageviews ,
totals_bounces ,
totals_newVisits ,
totals_transactionRevenue ,
trafficSource_campaign ,
trafficSource_source ,
trafficSource_medium ,
trafficSource_keyword ,
trafficSource_adwordsClickInfo_criteriaParameters ,
trafficSource_isTrueDirect ,
trafficSource_referralPath ,
trafficSource_adwordsClickInfo_page ,
trafficSource_adwordsClickInfo_slot ,
trafficSource_adwordsClickInfo_gclId ,
trafficSource_adwordsClickInfo_adNetworkType ,
trafficSource_adwordsClickInfo_isVideoAd ,
trafficSource_adContent ,
trafficSource_campaignCode)
from
'/Users/*****/gstore/data/flattened_train.csv' with csv header;