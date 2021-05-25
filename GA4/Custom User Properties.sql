SELECT
  user_properties.value.string_value
FROM
  `bold-cable-186010.analytics_256647480.events_*`,
  --UNNEST(event_params) AS event_params
  UNNEST(user_properties) AS user_properties
WHERE
  _TABLE_SUFFIX BETWEEN "20210515"
  AND "20210524"
  --AND event_params.key = "consentStatusFieldName"
  AND user_properties.key = "consentStatus"
