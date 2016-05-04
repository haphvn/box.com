-- SUMMARY --

Tiny-IDS | a tiny intrusion detection system

Minimalist, but performant intrusion detection system that monitors Drupal for
malicious activities and targets to be simple to understand and easy to use.

-- FUNCTIONALITY --

What can Tiny-IDS do?
It tries to detect following types of intrusion attacks:
 - XSS (Cross Site Scripting): Makes it possible to embed foreign content and
   scripts, grab your session/login information and phish private data.
 - SQLi (SQL Injection): Makes it possible to execute malicious database
   requests, dump code on your server and gain access to private information.
 - Code execution (Local/Remote file inclusion, etc.): Makes it possible to
   execute foreign code on your server in order to take over control.

After an intrusion was detected that reaches the configured sensibility
threshold, the following reactions can be used.
 - Log entry
   A dblog entry will be created containing detailed information.
 - Warning message
   The suspicious user can be warned about his detection.
 - Mail alert
   A mail can be sent to a list of site administrators alerting about
   the detection.
 - Rules integration
   Tiny-IDS has a Rules 2.x integration providing an intrusion attempt event.
   Using conditions and actions you can easily implement more advanced
   reactions like sending mails to user groups, blocking users, redirecting
   to a predefined site, printing more detailed warning messages and anything
   else you probably can imagine.

Also a ´bypass´-permission is added, to allow users like Administrators
(permitted by default) to avoid detection of their activities.

-- USAGE --

After the usual installation (http://drupal.org/node/895232) Tiny-IDS is
ready-to-use with recommended default configuration. If you want to change
something, go to admin/config/system/tinyids.

I'm really trying to make everything as intuitive as possible, if you got
questions that can not be answered by the configuration itsself, please go
ahead and create a support issue!
