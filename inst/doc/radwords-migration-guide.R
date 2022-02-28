## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE,message=FALSE, warning=FALSE----------------------------------
#  install.packages("r4googleads")

## ----eval=FALSE---------------------------------------------------------------
#  remotes::install_github("banboo-data/r4googleads")

## ----eval=FALSE---------------------------------------------------------------
#  google_auth <- doAuth()

## ---- eval=FALSE--------------------------------------------------------------
#  library(r4googleads)
#  google_auth <- authenticate()

## ----eval=FALSE---------------------------------------------------------------
#  body <- statement(select = c('CampaignName', 'Clicks', 'Cost'),
#                    report = "CAMPAIGN_PERFORMANCE_REPORT",
#                    start = "2022-01-01",
#                    end = "2022-01-10")
#  
#  data <- getData(clientCustomerId = 'XXX-XXX-XXXX', #use Adwords Account Id (MCC Id will not work)
#                  google_auth = google_auth,
#                  statement = body)
#  

## ----eval=FALSE---------------------------------------------------------------
#  sql_query <- "SELECT campaign.name, metrics.clicks, metrics.cost_micros
#                FROM campaign
#                WHERE segments.date BETWEEN '2022-01-01' AND '2022-01-10'
#                AND metrics.impressions > 0
#                PARAMETERS include_drafts=true"
#  
#  query_service <- googleAdsSearch(
#    aid = 'XXX-XXX-XXXX', # Google Ads Accountr ID
#    query = sql_query,
#    api_version = 'v9'
#  )
#  
#  data <- query_google_ads(
#    mcc_id = 'XXX-XXX-XXX', # Google Ads My Client Center ID
#    google_auth = google_auth,
#    service = query_service,
#    raw_data = F
#  )
#  

## ----eval=FALSE---------------------------------------------------------------
#  tbl_schema_service = googleAdsFields(tbl = "campaign", api_version = 'v9')
#  
#  tbl_schema <- query_google_ads(
#    mcc_id = 'XXX-XXX-XXXX',
#    google_auth = tbl_schema_service,
#    service = my_service_2,
#    raw_data = F
#  )
#  

