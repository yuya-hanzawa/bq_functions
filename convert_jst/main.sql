-- convert_jst: Convert UTC timestamp to JST timestamp.
-- Input: UTC timestamp
-- Output: JST timestamp in string format
CREATE TEMP FUNCTION convert_jst(input TIMESTAMP)
AS ((
  SELECT FORMAT_TIMESTAMP('%Y-%m-%d %H:%M:%S', input, 'Asia/Tokyo')
));
