CREATE TEMP FUNCTION convert_jst(input ANY TYPE)
AS ((
  SELECT
    FORMAT_TIMESTAMP('%Y-%m-%d %H:%M:%S', TIMESTAMP(input), 'Asia/Tokyo')
));
