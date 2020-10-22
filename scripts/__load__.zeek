module SMTPurl; 

#redef exit_only_after_terminate = T; 

redef table_expire_interval = 1 secs ;
redef table_incremental_step=20000 ; 

@load ./base-vars.zeek
@load ./email-alerts-batch.zeek

@load ./log-smtp-urls.zeek
@load ./log-clicked-urls.zeek
@load ./smtp-sensitive-uris.zeek

@load ./smtp-malicious-indicators.zeek
@load ./distribute-smtp-urls-workers.zeek
@load ./smtp-url-clicks.zeek

@load ./http-sensitive_POSTs.zeek

@load ./zeek-done.zeek
@load ./smtp-analysis-notice-policy.zeek

@load ./manager.zeek
@load ./smtp-thresholds.zeek
@load ./smtp-file-download.zeek

@load ./configure-variables-in-this-file-lbl.zeek

#@load ./smtp-notice-policies 

