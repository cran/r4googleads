## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval=FALSE--------------------------------------------------------
#  library(r4googleads)
#  google_auth <- authenticate()

## ----eval=FALSE---------------------------------------------------------------
#  report_schema = googleAdsFields(
#    tbl = "campaign", # e.g. campaign report
#    api_version = 'v9'
#    )
#  

## ----eval=FALSE---------------------------------------------------------------
#  campaign_report_schema <- query_google_ads(
#    mcc_id = '***-***-****', # Google Ads My Client Center ID
#    google_auth = google_auth,
#    service = report_schema,
#    raw_data = F
#  )
#  
#  
#  

## ----eval=FALSE---------------------------------------------------------------
#  > str(campaign_report_schema)
#  List of 13
#   $ resourceName      : chr "googleAdsFields/campaign"
#   $ category          : chr "RESOURCE"
#   $ dataType          : chr "MESSAGE"
#   $ name              : chr "campaign"
#   $ selectable        : logi FALSE
#   $ filterable        : logi FALSE
#   $ sortable          : logi FALSE
#   $ selectableWith    : chr [1:194] "accessible_bidding_strategy" "bidding_strategy" "campaign_budget" "customer" ...
#   $ attributeResources: chr [1:4] "accessible_bidding_strategy" "bidding_strategy" "campaign_budget" "customer"
#   $ metrics           : chr [1:84] "metrics.absolute_top_impression_percentage" "metrics.active_view_cpm" "metrics.active_view_ctr" "metrics.active_view_impressions" ...
#   $ segments          : chr [1:24] "segments.ad_destination_type" "segments.ad_network_type" "segments.click_type" "segments.conversion_action" ...
#   $ typeUrl           : chr "com.google.ads.googleads.v9.resources.Campaign"
#   $ isRepeated        : logi FALSE
#  

## ----eval=FALSE---------------------------------------------------------------
#  list_customer_service <- listAccessibleCustomers(api_version = 'v9')
#  
#  customers <- query_google_ads(
#    mcc_id = '***-***-****', # Google Ads My Client Center ID
#    google_auth = google_auth,
#    service = list_customer_service,
#    raw_data = F
#  )
#  

## ----eval=FALSE---------------------------------------------------------------
#  > customers
#  $resourceNames
#  [1] "customers/8880XXXXX"
#  

