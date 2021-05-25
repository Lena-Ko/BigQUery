SELECT
  user_pseudo_id,
  device.mobile_model_name,
  geo.city,
  COUNT(DISTINCT user_pseudo_id) AS User,
  COUNT(event_name) AS Sessions
FROM
  `bold-cable-186010.analytics_256647480.events_*`
WHERE
  _TABLE_SUFFIX BETWEEN "20210515"
  AND "20210524"
  AND event_name = "session_start"
GROUP BY
  user_pseudo_id,
  2,
  3
