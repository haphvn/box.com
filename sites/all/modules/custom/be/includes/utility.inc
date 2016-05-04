<?php 
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
/**
 * Utility function for format the string to ID
 * @param string $string
 * @return string
 */
function _be_format_id($string)
{
  $string = _be_remove_accents($string);
  $nameKey = preg_replace('#[^0-9a-z]+#i', '-', $string);
  $nameKey = strtolower($nameKey);
  $nameKey = trim($nameKey, '-');
  return $nameKey;
}

/**
 * Remove accents
 * @param string $string
 * @param string $german
 * @return string
 */
function _be_remove_accents($string, $german=false)
{
  static $replacements;

  if (empty($replacements[$german])) {
    $subst = array(
        // single ISO-8859-1 letters
        192=>'A', 193=>'A', 194=>'A', 195=>'A', 196=>'A', 197=>'A', 199=>'C',
        208=>'D', 200=>'E', 201=>'E', 202=>'E', 203=>'E', 204=>'I', 205=>'I',
        206=>'I', 207=>'I', 209=>'N', 210=>'O', 211=>'O', 212=>'O', 213=>'O',
        214=>'O', 216=>'O', 138=>'S', 217=>'U', 218=>'U', 219=>'U', 220=>'U',
        221=>'Y', 142=>'Z', 224=>'a', 225=>'a', 226=>'a', 227=>'a', 228=>'a',
        229=>'a', 231=>'c', 232=>'e', 233=>'e', 234=>'e', 235=>'e', 236=>'i',
        237=>'i', 238=>'i', 239=>'i', 241=>'n', 240=>'o', 242=>'o', 243=>'o',
        244=>'o', 245=>'o', 246=>'o', 248=>'o', 154=>'s', 249=>'u', 250=>'u',
        251=>'u', 252=>'u', 253=>'y', 255=>'y', 158=>'z',
        // HTML entities
        258=>'A', 260=>'A', 262=>'C', 268=>'C', 270=>'D', 272=>'D', 280=>'E',
        282=>'E', 286=>'G', 304=>'I', 313=>'L', 317=>'L', 321=>'L', 323=>'N',
        327=>'N', 336=>'O', 340=>'R', 344=>'R', 346=>'S', 350=>'S', 354=>'T',
        356=>'T', 366=>'U', 368=>'U', 377=>'Z', 379=>'Z', 259=>'a', 261=>'a',
        263=>'c', 269=>'c', 271=>'d', 273=>'d', 281=>'e', 283=>'e', 287=>'g',
        305=>'i', 322=>'l', 314=>'l', 318=>'l', 324=>'n', 328=>'n', 337=>'o',
        341=>'r', 345=>'r', 347=>'s', 351=>'s', 357=>'t', 355=>'t', 367=>'u',
        369=>'u', 378=>'z', 380=>'z',
        // ligatures
        198=>'Ae', 230=>'ae', 140=>'Oe', 156=>'oe', 223=>'ss',
    );

    if ($german) {
      // umlauts
      $subst = array_merge($subst, array(
          196=>'Ae', 228=>'ae', 214=>'Oe', 246=>'oe', 220=>'Ue', 252=>'ue'
      ));
    }

    $replacements[$german] = array();
    foreach ($subst as $k=>$v) {
      $replacements[$german][$k<256 ? chr($k) : '&#'.$k.';'] = $v;
    }
  }

  // convert string from default database format (UTF-8)
  // to encoding which replacement arrays made with (ISO-8859-1)
  if ($s = @iconv('UTF-8', 'ISO-8859-1', $string)) {
    $string = $s;
  }

  // Replace
  $string = strtr($string, $replacements[$german]);

  return $string;
}

/**
 * Get youtube video id from url
 * @param string $youtube_url
 * @return boolean|mixed
 */
function _be_youtube_video_id($youtube_url) 
{
  $query_string = parse_url($youtube_url, PHP_URL_QUERY);
  
  if (!$query_string) {
    return false;
  }
  
  parse_str($query_string, $queries);
  return isset($queries['v']) ? $queries['v'] : false; 
}

/**
 * Get Youtube video screenshot
 * @param string $youtube_url
 * @param string $quality
 * @return string|boolean
 */
function _be_youtube_screenshot($youtube_url, $quality = 'maxres') 
{
  $video_id = _be_youtube_video_id($youtube_url);
  if ($video_id) {
    //return 'http://img.youtube.com/vi/' . $ytID . '/' . $quality . 'default.jpg';
    return 'http://img.youtube.com/vi/' . $video_id . '/0.jpg';
  }
  
  return false;
}

/**
 * Detect and return matched device keys
 * @return boolean|multitype:
 */
function _be_detect_device()
{
  module_load_include('php', 'be', 'libraries/mobile_detect');
  
  $detect = new Mobile_Detect();
  
  $devices = array(
    'apple_computers' => function() use($detect) {
      return $detect->version('Mac OS') !== false
      && !$detect->isiOS() && !$detect->isBlackBerryOS() && !$detect->isWindowsMobileOS()
      && !$detect->isWindowsPhoneOS() && !$detect->isAndroidOS()
      && !$detect->isMobile() && !$detect->isTablet();
    },
    'windows_computers' => function() use($detect) {
      return $detect->version('Windows NT') !== false
      && !$detect->isiOS() && !$detect->isBlackBerryOS() && !$detect->isWindowsMobileOS()
      && !$detect->isWindowsPhoneOS() && !$detect->isAndroidOS()
      && !$detect->isMobile() && !$detect->isTablet();
    },
    'android_tablet' => function() use($detect) {
      return $detect->isAndroidOS() && $detect->isTablet();
    },
    'apple_ipad' => function() use($detect) {
      return $detect->isiOS() && $detect->isTablet();
    },
    'apple_iphones' => function() use($detect) {
      return $detect->isiOS() && $detect->isMobile();
    },
    'android_smartphones' => function() use($detect) {
      return $detect->isAndroidOS() && $detect->isMobile();
    },
    'blackberry' => function() use($detect) {
      return $detect->isBlackBerryOS();
    },
    'windows_mobile' => function() use($detect) {
      return ($detect->isWindowsMobileOS() || $detect->isWindowsPhoneOS()) && $detect->isMobile();
    }
  );
  
  $matched_devices = array_filter(array_keys($devices), function($device_key) use($devices) {
    return isset($devices[$device_key]) && is_callable($devices[$device_key])
    ? $devices[$device_key]() : false;
  });
  
  return $matched_devices;
}