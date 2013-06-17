<?php
/**
 * @file
 * Enables modules and site configuration for a site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function rtvcbase_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

function rtvcbase_profile_details(){

  $details['language'] = "es";
  $details['site_default_country'] = "CO";
  $details['date_format_short'] = 'd/m/Y - H:i';
  $details['date_format_medium'] = 'D, d/m/Y - H:i';
  $details['date_format_long'] = 'l, j F, Y - H:i';

  $details['pathauto_reduce_ascii'] = TRUE;
  $details['pathauto_transliterate'] = TRUE;

  return $details;
}

