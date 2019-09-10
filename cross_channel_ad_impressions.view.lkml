# Cross channel configuration for Marketing Analytics by Looker

# TODO: Update cross channel to only select relevant NDTs for the data sources included.
view: cross_channel_ad_impressions_dt_config {
  extension: required

  derived_table: {
    sql:
      SELECT
         "Google" as platform,
          1 AS sort_order,
          google_ads_ad_impressions.channel AS channel,
          google_ads_ad_impressions._date AS _date,
          google_ads_ad_impressions.account_id AS account_id,
          google_ads_ad_impressions.account_name AS account_name,
          google_ads_ad_impressions.campaign_id AS campaign_id,
          google_ads_ad_impressions.campaign_name AS campaign_name,
          google_ads_ad_impressions.ad_group_id AS ad_group_id,
          google_ads_ad_impressions.ad_group_name AS ad_group_name,
          google_ads_ad_impressions.Impressions AS impressions,
          google_ads_ad_impressions.Cost AS cost,
          google_ads_ad_impressions.Conversions AS conversions,
          google_ads_ad_impressions.Clicks AS clicks,
          google_ads_ad_impressions.ConversionValue AS conversionvalue
       FROM ${google_ads_ad_impressions.SQL_TABLE_NAME} as google_ads_ad_impressions
      ;;
  }
}


# Below you'll find an example of a cross channel derived table the strings together multiple sources

#       SELECT
#         "Google" as platform,
#           1 AS sort_order,
#           google_ads_ad_impressions.channel AS channel,
#           google_ads_ad_impressions._date AS _date,
#           google_ads_ad_impressions.account_id AS account_id,
#           google_ads_ad_impressions.account_name AS account_name,
#           google_ads_ad_impressions.campaign_id AS campaign_id,
#           google_ads_ad_impressions.campaign_name AS campaign_name,
#           google_ads_ad_impressions.ad_group_id AS ad_group_id,
#           google_ads_ad_impressions.ad_group_name AS ad_group_name,
#           google_ads_ad_impressions.Impressions AS impressions,
#           google_ads_ad_impressions.Cost AS cost,
#           google_ads_ad_impressions.Conversions AS conversions,
#           google_ads_ad_impressions.Clicks AS clicks,
#           google_ads_ad_impressions.ConversionValue AS conversionvalue,
#           null as linear_network_week_sum
#       FROM ${google_ads_ad_impressions.SQL_TABLE_NAME} as google_ads_ad_impressions
#       UNION ALL
#       SELECT
#         "Facebook" as platform,
#           2 AS sort_order,
#           facebook_ads_ad_impressions.channel AS channel,
#           facebook_ads_ad_impressions._date AS _date,
#           facebook_ads_ad_impressions.account_id AS account_id,
#           facebook_ads_ad_impressions.account_name AS account_name,
#           facebook_ads_ad_impressions.campaign_id AS campaign_id,
#           facebook_ads_ad_impressions.campaign_name AS campaign_name,
#           facebook_ads_ad_impressions.ad_group_id AS ad_group_id,
#           facebook_ads_ad_impressions.ad_group_name AS ad_group_name,
#           facebook_ads_ad_impressions.Impressions AS impressions,
#           facebook_ads_ad_impressions.Cost AS cost,
#           facebook_ads_ad_impressions.Conversions AS conversions,
#           facebook_ads_ad_impressions.Clicks AS clicks,
#           null AS conversionvalue,
#           null as linear_network_week_sum
#       FROM ${facebook_ads_ad_impressions.SQL_TABLE_NAME} as facebook_ads_ad_impressions
#       UNION ALL
#       SELECT
#         "Bing" as platform,
#           4 AS sort_order,
#           bing_ads_ad_impressions.channel AS channel,
#           bing_ads_ad_impressions._date AS _date,
#           bing_ads_ad_impressions.account_id AS account_id,
#           bing_ads_ad_impressions.account_name AS account_name,
#           bing_ads_ad_impressions.campaign_id AS campaign_id,
#           bing_campaign_name.campaign_history_name AS campaign_name,
#           bing_ads_ad_impressions.ad_group_id AS ad_group_id,
#           bing_ads_ad_impressions.ad_group_name AS ad_group_name,
#           bing_ads_ad_impressions.Impressions AS impressions,
#           bing_ads_ad_impressions.Cost AS cost,
#           bing_ads_ad_impressions.Conversions AS conversions,
#           bing_ads_ad_impressions.Clicks AS clicks,
#           bing_ads_ad_impressions.ConversionValue AS conversionvalue,
#           null as linear_network_week_sum
#       FROM ${bing_ads_ad_impressions.SQL_TABLE_NAME} as bing_ads_ad_impressions
