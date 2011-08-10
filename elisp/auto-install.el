<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: auto-install.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=auto-install.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: auto-install.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=auto-install.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for auto-install.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=auto-install.el" />
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2101513-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/SiteMap"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<br /><span class="specialdays">Ecuador, National Day</span><h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22auto-install.el%22">auto-install.el</a></h1></div><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs/download/auto-install.el">Download</a></p><pre class="code"><span class="linecomment">;;; auto-install.el --- Auto install elisp file</span>
<span class="linecomment">;; $Id: auto-install.el,v 1.53 2011/04/12 06:28:20 rubikitch Exp $</span>

<span class="linecomment">;; Filename: auto-install.el</span>
<span class="linecomment">;; Description: Auto install elisp file</span>
<span class="linecomment">;; Author: Andy Stewart &lt;lazycat.manatee@gmail.com&gt;</span>
<span class="linecomment">;;         rubikitch &lt;rubikitch@ruby-lang.org&gt;</span>
<span class="linecomment">;; Maintainer: rubikitch &lt;rubikitch@ruby-lang.org&gt;</span>
<span class="linecomment">;; Copyright (C) 2008, 2009, Andy Stewart, all rights reserved.</span>
<span class="linecomment">;; Copyright (C) 2009, rubikitch, all rights reserved.</span>
<span class="linecomment">;; Created: 2008-12-11 13:56:50</span>
<span class="linecomment">;; Version: $Revision: 1.53 $</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/emacs/download/auto-install.el</span>
<span class="linecomment">;; Keywords: auto-install</span>
<span class="linecomment">;; Compatibility: GNU Emacs 22 ~ 23</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Features that might be required by this library:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   `backquote', `bytecomp', `dired', `find-func', `ietf-drums',</span>
<span class="linecomment">;;   `loadhist', `mail-parse', `mail-prsvr', `mailcap', `mm-util',</span>
<span class="linecomment">;;   `qp', `rfc2045', `rfc2047', `rfc2231', `thingatpt', `time-date',</span>
<span class="linecomment">;;   `timezone', `url', `url-cookie', `url-expand', `url-history',</span>
<span class="linecomment">;;   `url-methods', `url-parse', `url-privacy', `url-proxy',</span>
<span class="linecomment">;;   `url-util', `url-vars'.</span>
<span class="linecomment">;;</span>

(defvar auto-install-version "<span class="quote">$Id: auto-install.el,v 1.53 2011/04/12 06:28:20 rubikitch Exp $</span>")
<span class="linecomment">;;; This file is NOT part of GNU Emacs</span>

<span class="linecomment">;;; License</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or modify</span>
<span class="linecomment">;; it under the terms of the GNU General Public License as published by</span>
<span class="linecomment">;; the Free Software Foundation; either version 3, or (at your option)</span>
<span class="linecomment">;; any later version.</span>

<span class="linecomment">;; This program is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="linecomment">;; GNU General Public License for more details.</span>

<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="linecomment">;; Floor, Boston, MA 02110-1301, USA.</span>

<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Automates the installation of Emacs Lisp files and packages.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install' provides an automated way to:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (1) Download Emacs Lisp files and packages from common sources</span>
<span class="linecomment">;; (2) View them (diff) and save them to your repository</span>
<span class="linecomment">;; (3) Compile and Load them</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Commands:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are complete command list:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  `auto-install-minor-mode'</span>
<span class="linecomment">;;    Auto Install minor mode.</span>
<span class="linecomment">;;  `auto-install-from-buffer'</span>
<span class="linecomment">;;    Install the elisp file in the current buffer.</span>
<span class="linecomment">;;  `auto-install-from-url'</span>
<span class="linecomment">;;    Install an elisp file from a given url.</span>
<span class="linecomment">;;  `auto-install-from-emacswiki'</span>
<span class="linecomment">;;    Install an elisp file from EmacsWiki.org.</span>
<span class="linecomment">;;  `auto-install-from-gist'</span>
<span class="linecomment">;;    Install an elisp file from gist.github.com.</span>
<span class="linecomment">;;  `auto-install-from-library'</span>
<span class="linecomment">;;    Update an elisp LIBRARY.</span>
<span class="linecomment">;;  `auto-install-from-directory'</span>
<span class="linecomment">;;    Update elisp files under DIRECTORY from EmacsWiki.</span>
<span class="linecomment">;;  `auto-install-from-dired'</span>
<span class="linecomment">;;    Update dired marked elisp files from EmacsWiki.org.</span>
<span class="linecomment">;;  `auto-install-update-emacswiki-package-name'</span>
<span class="linecomment">;;    Update the list of elisp package names from `EmacsWiki'.</span>
<span class="linecomment">;;  `auto-install-dired-mark-files'</span>
<span class="linecomment">;;    Mark dired files that contain at `EmacsWiki.org'.</span>
<span class="linecomment">;;  `auto-install-mode'</span>
<span class="linecomment">;;    Major mode for auto-installing elisp code.</span>
<span class="linecomment">;;  `auto-install-buffer-quit'</span>
<span class="linecomment">;;    Quit from `auto-install' temporary buffer.</span>
<span class="linecomment">;;  `auto-install-compatibility-setup'</span>
<span class="linecomment">;;    Install Compatibility commands for install-elisp.el users.</span>
<span class="linecomment">;;  `auto-install-batch'</span>
<span class="linecomment">;;    Batch install many files (libraries and non-elisp files) in some extension.</span>
<span class="linecomment">;;  `auto-install-batch-edit'</span>
<span class="linecomment">;;    Edit auto-install-batch-list.el</span>
<span class="linecomment">;;  `auto-install-buffer-diff'</span>
<span class="linecomment">;;    View different between old version.</span>
<span class="linecomment">;;  `auto-install-buffer-save'</span>
<span class="linecomment">;;    Save downloaded content to file FILENAME.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Customizable Options:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are customizable option list:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  `auto-install-directory'</span>
<span class="linecomment">;;    The directory for saving elisp files.</span>
<span class="linecomment">;;    default = "~/.emacs.d/auto-install/"</span>
<span class="linecomment">;;  `auto-install-buffer-name'</span>
<span class="linecomment">;;    The temporary buffer for storing download content.</span>
<span class="linecomment">;;    default = "auto-install"</span>
<span class="linecomment">;;  `auto-install-emacswiki-base-url'</span>
<span class="linecomment">;;    The base emacswiki.org url from which to download elisp files.</span>
<span class="linecomment">;;    default = "http://www.emacswiki.org/cgi-bin/wiki/download/"</span>
<span class="linecomment">;;  `auto-install-gist-base-url'</span>
<span class="linecomment">;;    The base gist.github.com url from which to download elisp files.</span>
<span class="linecomment">;;    default = "http://gist.github.com/"</span>
<span class="linecomment">;;  `auto-install-filter-url'</span>
<span class="linecomment">;;    Alist mapping filter url for library.</span>
<span class="linecomment">;;    default = (quote (("color-grep" "http://www.bookshelf.jp/elc/")))</span>
<span class="linecomment">;;  `auto-install-save-confirm'</span>
<span class="linecomment">;;    Whether confirmation is needed to save downloaded content.</span>
<span class="linecomment">;;    default = t</span>
<span class="linecomment">;;  `auto-install-replace-confirm'</span>
<span class="linecomment">;;    Whether confirmation is needed to replace an existing elisp file.</span>
<span class="linecomment">;;    default = nil</span>
<span class="linecomment">;;  `auto-install-install-confirm'</span>
<span class="linecomment">;;    Whether confirmation is needed to install a downloaded elisp file.</span>
<span class="linecomment">;;    default = nil</span>
<span class="linecomment">;;  `auto-install-from-dired-confirm'</span>
<span class="linecomment">;;    Whether confirmation is needed to download marked files from Dired.</span>
<span class="linecomment">;;    default = t</span>
<span class="linecomment">;;  `auto-install-wget-command'</span>
<span class="linecomment">;;    *Wget command. Use only if `auto-install-use-wget' is non-nil.</span>
<span class="linecomment">;;    default = "wget"</span>
<span class="linecomment">;;  `auto-install-use-wget'</span>
<span class="linecomment">;;    *Use wget instead of `url-retrieve'.</span>
<span class="linecomment">;;    default = t</span>
<span class="linecomment">;;  `auto-install-batch-list'</span>
<span class="linecomment">;;    This list contain packages information for batch install.</span>
<span class="linecomment">;;    default = nil</span>

<span class="linecomment">;;; Tips:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      Downloading is asynchronous: you can do your work and download</span>
<span class="linecomment">;;      files at the same time.  The download process won't hang</span>
<span class="linecomment">;;      Emacs.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-url' remembers previous installations.  So if</span>
<span class="linecomment">;;      your search is the same as the previous search, you don't need</span>
<span class="linecomment">;;      to type it in, just hit RETURN.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-emacswiki' will complete then names of</span>
<span class="linecomment">;;      packages from those in the Elisp area in `EmacsWiki'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-library' will prompt you library name in</span>
<span class="linecomment">;;      you load-path, then it try to download from EmacsWiki if it</span>
<span class="linecomment">;;      can't find match in `auto-install-filter-url'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-directory' can install elisp file</span>
<span class="linecomment">;;      under specify directory.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-dired' can install marked files using dired.</span>
<span class="linecomment">;;      You can mark the files you want in dired and then use</span>
<span class="linecomment">;;      `auto-install-from-dired' to download those files</span>
<span class="linecomment">;;      asynchronously.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-buffer' can save and install the contents of</span>
<span class="linecomment">;;      the current buffer as a file.  You need a valid elisp file name.</span>
<span class="linecomment">;;      The default name is the buffer name.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      `auto-install-from-emacswiki' and `auto-install-from-library'</span>
<span class="linecomment">;;      will try to pick up file around point, you can move</span>
<span class="linecomment">;;      cursor to file name, and just hit RET for install.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      Some extension (such as icicles) have many libraries to need install,</span>
<span class="linecomment">;;      and install one by one is painful, you can use command</span>
<span class="linecomment">;;      `auto-install-batch' install all icicles libraries.</span>
<span class="linecomment">;;      And `auto-install-batch' handle max connect limit with some website</span>
<span class="linecomment">;;      (such as EmacsWiki) to avoid download failed.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      All of the above functions support a filename filter.  You can</span>
<span class="linecomment">;;      input any url to download an elisp file, if the file name suffix is</span>
<span class="linecomment">;;      `.el', it will download and install the file automatically.</span>
<span class="linecomment">;;      Otherwise, it won't install it unless you input a valid elisp</span>
<span class="linecomment">;;      file name.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      By default, if a file that you download does not exist on your</span>
<span class="linecomment">;;      system the file is downloaded to `auto-install-directory'.  If</span>
<span class="linecomment">;;      you already have a file with the same name in your load</span>
<span class="linecomment">;;      directory, `auto-install' will try to replace that file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      You can use command `auto-install-dired-mark-files' to mark files</span>
<span class="linecomment">;;      that contain at `EmacsWiki.org' for fast update.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      By default, command `auto-install-from-emacswiki' will initialization</span>
<span class="linecomment">;;      current symbol as default value, if default value is you want,</span>
<span class="linecomment">;;      just hit RET, so lazy!</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Installation:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (1) Put auto-install.el somewhere in your load-path.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     For example, put it into  ~/elisp/.</span>
<span class="linecomment">;;     Then add the following to your ~/.emacs:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (add-to-list 'load-path (expand-file-name "~/elisp"))</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (2) And put the following in your ~/.emacs startup file:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (require 'auto-install)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (3) Add this to your ~/.emacs to optionally specify a download directory:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (setq auto-install-directory "~/.emacs.d/auto-install/")</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     If you don't set this, "~/.emacs.d/auto-install/" will be used as the default,</span>
<span class="linecomment">;;     and will be created as needed.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (4) Optionally, if your computer is always connected Internet when Emacs start up,</span>
<span class="linecomment">;;     I recommend you add below to your ~/.emacs, to update package name when start up:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (auto-install-update-emacswiki-package-name t)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     And above setup is not necessary, because AutoInstall will automatically update</span>
<span class="linecomment">;;     package name when you just first call `auto-install-from-emacswiki',</span>
<span class="linecomment">;;     above setup just avoid *delay* when you first call `auto-install-from-emacswiki'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (5) I recommend you add below to your ~/.emacs for install-elisp users:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (auto-install-compatibility-setup)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     This command `defalias'es `install-elisp',</span>
<span class="linecomment">;;     `install-elisp-from-emacswiki' and `install-elisp-from-gist' to</span>
<span class="linecomment">;;     `auto-install' ones.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (6) If you want to use proxy server, set `url-proxy-services'. For example:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;       (setq url-proxy-services '(("http" . "localhost:8339")))</span>

<span class="linecomment">;;; Customize:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-directory'</span>
<span class="linecomment">;; The default directory for keeping auto-downloaded elisp files.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-buffer-name'</span>
<span class="linecomment">;; The base buffer name for temporarily storing downloaded download content.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-emacswiki-base-url'</span>
<span class="linecomment">;; The base url for downloading from EmacsWiki.org.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-gist-base-url'</span>
<span class="linecomment">;; The base url for downloading from gist.github.com</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-filter-url'</span>
<span class="linecomment">;; Filter url for downloading a special library.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-save-confirm'</span>
<span class="linecomment">;; Whether to require confirmation when saving downloaded content.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-replace-confirm'</span>
<span class="linecomment">;; Whether to require confirmation when replacing an already-installed</span>
<span class="linecomment">;; file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-install-confirm'</span>
<span class="linecomment">;; Whether to require confirmation when installing a file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-from-dired-confirm'</span>
<span class="linecomment">;; Whether to require confirmation when downloading files marked in dired.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install-batch-list'</span>
<span class="linecomment">;; This list contain packages information for batch install.</span>
<span class="linecomment">;; Anyone can add packages information in this list for batch install.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; And all above option can customize easy through:</span>
<span class="linecomment">;;      M-x RET customize-group RET auto-install RET</span>
<span class="linecomment">;;</span>


<span class="linecomment">;;; Bug Report:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; If you have problem, send a bug report via M-x auto-install-send-bug-report.</span>
<span class="linecomment">;; The step is:</span>
<span class="linecomment">;;  0) Setup mail in Emacs, the easiest way is:</span>
<span class="linecomment">;;       (setq user-mail-address "your@mail.address")</span>
<span class="linecomment">;;       (setq user-full-name "Your Full Name")</span>
<span class="linecomment">;;       (setq smtpmail-smtp-server "your.smtp.server.jp")</span>
<span class="linecomment">;;       (setq mail-user-agent 'message-user-agent)</span>
<span class="linecomment">;;       (setq message-send-mail-function 'message-smtpmail-send-it)</span>
<span class="linecomment">;;  1) Be sure to use the LATEST version of auto-install.el.</span>
<span class="linecomment">;;  2) Enable debugger. M-x toggle-debug-on-error or (setq debug-on-error t)</span>
<span class="linecomment">;;  3) Use Lisp version instead of compiled one: (load "auto-install.el")</span>
<span class="linecomment">;;  4) Do it!</span>
<span class="linecomment">;;  5) If you got an error, please do not close *Backtrace* buffer.</span>
<span class="linecomment">;;  6) M-x auto-install-send-bug-report and M-x insert-buffer *Backtrace*</span>
<span class="linecomment">;;  7) Describe the bug using a precise recipe.</span>
<span class="linecomment">;;  8) Type C-c C-c to send.</span>
<span class="linecomment">;;  # If you are a Japanese, please write in Japanese:-)</span>

<span class="linecomment">;;; Change log:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; $Log: auto-install.el,v $</span>
<span class="linecomment">;; Revision 1.53  2011/04/12 06:28:20  rubikitch</span>
<span class="linecomment">;; fix for proxy</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.52  2011/01/29 11:11:47  rubikitch</span>
<span class="linecomment">;; bugfix: auto-install-buffer-save cannot treat auto-install-directory properly if it doesn't end with `/'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; patched by MaskRay thanks!</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.51  2010/12/10 10:30:58  rubikitch</span>
<span class="linecomment">;; Bugfix when wget is not installed</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; replace auto-install-use-wget with (auto-install-use-wget-p)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.50  2010/11/29 15:52:57  rubikitch</span>
<span class="linecomment">;; compatibility code for emacs21.1</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.49  2010/11/10 13:32:37  rubikitch</span>
<span class="linecomment">;; Use `wget -q -O- --no-check-certificate' if wget is available.</span>
<span class="linecomment">;; Change default value: `auto-install-use-wget' = t</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.48  2010/05/20 23:29:10  rubikitch</span>
<span class="linecomment">;; `auto-install-update-emacswiki-package-name': Check whether network is reachable</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.47  2010/05/14 00:09:08  rubikitch</span>
<span class="linecomment">;; Fixed a bug of `auto-install-batch' with argument.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Pass extension-name argument to `auto-install-batch-real'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.46  2010/05/04 08:46:21  rubikitch</span>
<span class="linecomment">;; Added bug report command</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.45  2010/05/01 01:24:25  rubikitch</span>
<span class="linecomment">;; auto-install-batch: Dependency support</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.44  2010/05/01 00:53:48  rubikitch</span>
<span class="linecomment">;; auto-install-batch-real: refactoring</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.43  2010/04/30 23:41:48  rubikitch</span>
<span class="linecomment">;; Changed default value of `auto-install-use-wget' to nil.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.42  2010/04/25 02:30:27  rubikitch</span>
<span class="linecomment">;; Avoid `auto-async-byte-compile'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.41  2010/04/25 01:59:20  rubikitch</span>
<span class="linecomment">;; *** empty log message ***</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.40  2010/04/25 01:58:17  rubikitch</span>
<span class="linecomment">;; Do not save/compile up-to-date files from `auto-install-batch'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.39  2010/04/25 01:11:33  rubikitch</span>
<span class="linecomment">;; If downloaded file is not updated, kill download buffer.</span>
<span class="linecomment">;; (auto-install-batch support is not yet)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.38  2010/04/25 00:10:49  rubikitch</span>
<span class="linecomment">;; code cleanup: remove unneeded `format'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.37  2010/04/24 23:59:11  rubikitch</span>
<span class="linecomment">;; comment change (no code change)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.36  2010/04/19 07:10:36  rubikitch</span>
<span class="linecomment">;; Avoid updating time-stamp</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.35  2010/04/07 20:16:10  rubikitch</span>
<span class="linecomment">;; Fixed a typo</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.34  2010/04/05 21:34:07  rubikitch</span>
<span class="linecomment">;; `auto-install-from-gist' can accept gist URL.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.33  2010/04/05 21:27:30  rubikitch</span>
<span class="linecomment">;; `auto-install-use-wget' is enabled by default when wget command (`auto-install-wget-command') is found.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.32  2010/04/05 21:24:30  rubikitch</span>
<span class="linecomment">;; * `auto-install-batch' can install non-elisp files because some elisp requires external scripts.</span>
<span class="linecomment">;; * New option: `auto-install-add-exec-path-flag'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.31  2010/04/01 03:43:17  rubikitch</span>
<span class="linecomment">;; added RCS Id: tag</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.30  2010/04/01 03:42:34  rubikitch</span>
<span class="linecomment">;; document typo</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.29  2010/04/01 03:28:39  rubikitch</span>
<span class="linecomment">;; New command: `auto-install-batch-edit'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.28  2010/04/01 03:10:38  rubikitch</span>
<span class="linecomment">;; The real value of `auto-install-batch-list' is moved to</span>
<span class="linecomment">;; auto-install-batch-list.el to split program and data.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.27  2010/03/29 07:36:39  rubikitch</span>
<span class="linecomment">;; Stupid bug fix in auto-install-use-wget</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.26  2010/03/29 02:38:46  rubikitch</span>
<span class="linecomment">;; New option: `auto-install-use-wget', `auto-install-wget-command'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.25  2010/03/26 00:07:27  rubikitch</span>
<span class="linecomment">;; `url-http-end-of-headers' workaround</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.24  2010/01/05 09:40:04  rubikitch</span>
<span class="linecomment">;; fixed error of auto-complete development version in `auto-install-batch-list'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.23  2009/12/29 09:31:23  rubikitch</span>
<span class="linecomment">;; add Text Translator to auto-install-batch-list</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.22  2009/12/21 12:51:56  rubikitch</span>
<span class="linecomment">;; Update auto-install-batch anything</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.21  2009/12/21 12:26:54  rubikitch</span>
<span class="linecomment">;; New URL for auto-complete development version</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.20  2009/05/22 20:17:24  rubikitch</span>
<span class="linecomment">;; Merged from dradams' change</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.19  2009/05/22 13:04:56  dadams</span>
<span class="linecomment">;; Split icicles-cmd.el into icicles-cmd[12].el.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.18  2009/05/20 15:42:54  rubikitch</span>
<span class="linecomment">;; Add php-completion / perl-completion to auto-install-batch-list</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.17  2009/05/20 01:19:15  rubikitch</span>
<span class="linecomment">;; Add document for proxy server</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.16  2009/05/15 20:28:18  rubikitch</span>
<span class="linecomment">;; More readable temporary buffer name.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.15  2009/05/15 20:12:49  rubikitch</span>
<span class="linecomment">;; Added missing require</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.14  2009/05/15 20:11:44  rubikitch</span>
<span class="linecomment">;; How to save</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.13  2009/05/15 20:09:07  rubikitch</span>
<span class="linecomment">;; Code cleanup</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.12  2009/05/15 19:59:30  rubikitch</span>
<span class="linecomment">;; Fixed a bug of single file installation</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.11  2009/05/15 19:44:32  rubikitch</span>
<span class="linecomment">;; Ordering `auto-install-batch'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.10  2009/05/15 17:48:09  rubikitch</span>
<span class="linecomment">;; Replace `message' with `error' for error messages.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.9  2009/05/15 17:40:37  rubikitch</span>
<span class="linecomment">;; refactoring</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.8  2009/05/15 17:19:47  rubikitch</span>
<span class="linecomment">;; refactoring</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.7  2009/05/15 17:17:03  rubikitch</span>
<span class="linecomment">;; Use `view-mode' if `view-read-only'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.6  2009/05/15 17:10:22  rubikitch</span>
<span class="linecomment">;; Adjust docstrings of commands to auto-document.</span>
<span class="linecomment">;; Delete `It provides the following commands:' section because of duplication.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.5  2009/05/15 17:03:13  rubikitch</span>
<span class="linecomment">;; Show downloaded URL in header-line.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.4  2009/05/15 16:59:32  rubikitch</span>
<span class="linecomment">;; New internal variable: `auto-install-add-load-path-flag'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.3  2009/05/09 02:41:32  rubikitch</span>
<span class="linecomment">;; Add `auto-install-directory' automatically.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.2  2009/05/09 02:37:14  rubikitch</span>
<span class="linecomment">;; Changed `auto-install-get-buffer' format (including URL)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Revision 1.1  2009/05/09 02:33:09  rubikitch</span>
<span class="linecomment">;; Initial revision</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/05/01</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Take over by rubikitch.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/04/15</span>
<span class="linecomment">;;  * rubikitch:</span>
<span class="linecomment">;;      * Encoding detection support.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/04/07</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Fix bug of `auto-install-batch'.</span>
<span class="linecomment">;;      * Add more sources to `auto-install-batch-list'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/30</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new command: `auto-install-batch'.</span>
<span class="linecomment">;;      * Add new option: `auto-install-batch-list'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/29</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new function: `auto-install-from-url-list'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/11</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Fix bug of `auto-install-download'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/03</span>
<span class="linecomment">;;  * rubikitch</span>
<span class="linecomment">;;      * Add new command `auto-install-compatibility-setup'</span>
<span class="linecomment">;;        for install-elisp users.</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * `auto-install-region-or-thing' return region string</span>
<span class="linecomment">;;        just when `transient-mark-mode' is on.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/17</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Modified keybindings, make it more easy to remember.</span>
<span class="linecomment">;;      * Make `auto-install-save-confirm' default with `t'</span>
<span class="linecomment">;;        for security problem.</span>
<span class="linecomment">;;      * Pick up current symbol when use `auto-install-from-library'.</span>
<span class="linecomment">;;      * Remove unnecessary completion name from `auto-install-from-library'.</span>
<span class="linecomment">;;      * Refactory code.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/12</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Remove option `auto-install-update-emacswiki-package-name-when-startup'.</span>
<span class="linecomment">;;      * Make current symbol as initialization of `auto-install-from-emacswiki'.</span>
<span class="linecomment">;;      * Add option `unforced' to function `auto-install-update-emacswiki-package-name'.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;      * Fix bug of `auto-install-from-library'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/10</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Automatically download package name list when</span>
<span class="linecomment">;;        variable `auto-install-package-name-list' is nil.</span>
<span class="linecomment">;;      * Reverse `auto-install-package-name-list' for `anything' interface.</span>
<span class="linecomment">;;      * New command `auto-install-dired-mark-files',</span>
<span class="linecomment">;;        mark files that contain at `EmacsWiki.org'.</span>
<span class="linecomment">;;      * New command `auto-install-buffer-diff',</span>
<span class="linecomment">;;        view different between current version and old version.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/06</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new command `auto-install-from-directory'.</span>
<span class="linecomment">;;      * Remove option `auto-install-create-directory', not necessary.</span>
<span class="linecomment">;;      * Documentation improvements (thanks Scot Becker)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/01</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Make command `auto-install-from-emacswiki' can</span>
<span class="linecomment">;;        completing package name for input.</span>
<span class="linecomment">;;      * Add new command `auto-install-update-emacswiki-package-name'.</span>
<span class="linecomment">;;      * Add new option `auto-install-update-emacswiki-package-name-when-startup'</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/30</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Compatibility with GNU Emacs 22.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/26</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new command `auto-install-from-gist'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/21</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add emacs-lisp syntax highlight for download buffer.</span>
<span class="linecomment">;;      * Make notify message display at mode-line instead echo-area.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/10</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new option `auto-install-filter-url' and new function</span>
<span class="linecomment">;;        `auto-install-from-library', try to use it. ;)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/08</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Fix coding bug.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/07</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Move `w3m' code to file `auto-install-extension.el' to make all</span>
<span class="linecomment">;;        user can use this package with standard emacs.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/06</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Clean code.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/02</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new option `auto-install-create-directory' for create install directory</span>
<span class="linecomment">;;        automatically if it doesn't exist.</span>
<span class="linecomment">;;      * Improve many document make it more clear.</span>
<span class="linecomment">;;      * Thanks document improve and create directory advice of 'Drew Adams'!</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2008/12/24</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Remove `auto-install-window-configuration-before-download', `auto-install-init-window-layout'</span>
<span class="linecomment">;;        and `auto-install-revert-window-layout'.</span>
<span class="linecomment">;;        It's not necessary to revert window layout, `winner-mode' can revert window layout more better,</span>
<span class="linecomment">;;        just type `winner-undo'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2008/12/15</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Fix a little bug of `auto-install-window-configuration-before-download'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2008/12/11</span>
<span class="linecomment">;;  * Andy Stewart:</span>
<span class="linecomment">;;      * Add new function `auto-install-from-buffer', to install elisp file from current buffer.</span>
<span class="linecomment">;;        Modified `auto-install-buffer-save' to use `auto-install-from-buffer'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      * First released.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Acknowledgements:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      rubikitch       &lt;rubikitch@ruby-lang.org&gt;</span>
<span class="linecomment">;;              For install-elisp.el</span>
<span class="linecomment">;;      Drew Adams      &lt;drew.adams@oracle.com&gt;</span>
<span class="linecomment">;;      Scot Becker     &lt;scot.becker@gmail.com&gt;</span>
<span class="linecomment">;;      Richard Riley   &lt;rileyrgdev@gmail.com&gt;</span>
<span class="linecomment">;;              For documentation improvements and advices.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; TODO</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      Fix the problem parallel install process with recursive prompt.</span>
<span class="linecomment">;;      Redesign and give more friendly user interface.</span>
<span class="linecomment">;;      Scan RSS track package update and notify.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Require</span>
(require 'url)
(require 'dired)
(require 'find-func)
(require 'bytecomp)
(require 'thingatpt)
(require 'ffap)
(eval-when-compile (require 'cl))
(when (&lt;= emacs-major-version 22)       <span class="linecomment">;Compatibility with 22.</span>
  (autoload 'ignore-errors "<span class="quote">cl-macs</span>")
  (unless (fboundp 'url-file-nondirectory)
    (defun url-file-nondirectory (file)
      "<span class="quote">Return the nondirectory part of FILE, for a URL.</span>"
      (cond
       ((null file) "<span class="quote"></span>")
       ((string-match (eval-when-compile (regexp-quote "<span class="quote">?</span>")) file)
        (file-name-nondirectory (substring file 0 (match-beginning 0))))
       (t (file-name-nondirectory file))))))

<span class="linecomment">;;; Code:</span>

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Customize ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defgroup auto-install nil
  "<span class="quote">Auto install elisp files.</span>"
  :group 'external)

(defcustom auto-install-directory "<span class="quote">~/.emacs.d/auto-install/</span>"
  "<span class="quote">The directory for saving elisp files.
This directory is used when a downloaded
elisp file does not already exist in other directory.
Otherwise, the existing file of the same name is replaced.</span>"
  :type 'string
  :group 'auto-install)

(defcustom auto-install-buffer-name "<span class="quote">auto-install</span>"
  "<span class="quote">The temporary buffer for storing download content.</span>"
  :type 'string
  :group 'auto-install)

(defcustom auto-install-emacswiki-base-url "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/download/</span>"
  "<span class="quote">The base emacswiki.org url from which to download elisp files.</span>"
  :type 'string
  :group 'auto-install)

(defcustom auto-install-gist-base-url "<span class="quote">http://gist.github.com/</span>"
  "<span class="quote">The base gist.github.com url from which to download elisp files.</span>"
  :type 'string
  :group 'auto-install)

(defcustom auto-install-filter-url
  '(("<span class="quote">color-grep</span>" "<span class="quote">http://www.bookshelf.jp/elc/</span>"))
  "<span class="quote">Alist mapping filter url for library.
Default command `auto-install-from-library' will install from EmacsWiki,
if it can't find match in this alist.</span>"
  :type '(repeat (list (string :tag "<span class="quote">Library</span>")
                       (string :tag "<span class="quote">Download URL</span>")))
  :group 'auto-install)

(defcustom auto-install-save-confirm t
  "<span class="quote">Whether confirmation is needed to save downloaded content.
Nil means no confirmation is needed.
If non-nil, the downloaded content is shown in a buffer and you are
prompted to confirm saving it to a file.</span>"
  :type 'boolean
  :group 'auto-install)

(defcustom auto-install-replace-confirm nil
  "<span class="quote">Whether confirmation is needed to replace an existing elisp file.
Nil means no confirmation is needed.</span>"
  :type 'boolean
  :group 'auto-install)

(defcustom auto-install-install-confirm nil
  "<span class="quote">Whether confirmation is needed to install a downloaded elisp file.
Nil means no confirmation is needed.</span>"
  :type 'boolean
  :group 'auto-install)

(defcustom auto-install-from-dired-confirm t
  "<span class="quote">Whether confirmation is needed to download marked files from Dired.
Nil means no confirmation is needed.</span>"
  :type 'boolean
  :group 'auto-install)

(defcustom auto-install-wget-command "<span class="quote">wget</span>"
  "<span class="quote">*Wget command. Use only if `auto-install-use-wget' is non-nil.</span>"
  :type 'string  
  :group 'auto-install)

(defcustom auto-install-use-wget t
  "<span class="quote">*Use wget instead of `url-retrieve'.

It is enabled by default when wget is found.</span>"
  :type 'boolean  
  :group 'auto-install)

(defcustom auto-install-batch-list
  nil
  "<span class="quote">This list contain packages information for batch install.

Have four arguments per list:
First argument is extension name.
Second argument is delay time for batch install.
Third argument is libraries number limit in delay time.
Fourth argument is list of libraries url or extension name.

If you want to add files, please edit auto-install-batch-list.el in EmacsWiki.
Use M-x `auto-install-batch-edit'. </span>"
  :group 'auto-install)

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Variable ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defvar auto-install-batch-list-internal nil
  "<span class="quote">The real value of `auto-install-batch-list'. </span>")

(defvar auto-install-batch-list-el-url
  "<span class="quote">http://www.rubyist.net/~rubikitch/archive/auto-install-batch-list.el</span>"
  "<span class="quote">The url of auto-install-batch-list.el.
It is downloaded and evaluated just after M-x `auto-install-batch'. </span>")

(defvar auto-install-download-buffer nil
  "<span class="quote">The download buffer used by `url-retrieve'.
This variable is always buffer-local.</span>")
(make-variable-buffer-local 'auto-install-download-buffer)

(defvar auto-install-download-url nil
  "<span class="quote">The url from which to download files.
This variable is always buffer-local.</span>")
(make-variable-buffer-local 'auto-install-download-url)

(defvar auto-install-last-url nil
  "<span class="quote">The last url used in `auto-install-from-url'.</span>")

(defvar auto-install-last-gist-id nil
  "<span class="quote">The last gist id you visit in `auto-install-from-gist'.</span>")

(defvar auto-install-package-name-list nil
  "<span class="quote">The package name list for completion input.</span>")

(defvar auto-install-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<span class="quote">C-c C-d</span>") 'auto-install-buffer-diff) <span class="linecomment">;diff</span>
    (define-key map (kbd "<span class="quote">C-c C-c</span>") 'auto-install-buffer-save) <span class="linecomment">;save</span>
    (define-key map (kbd "<span class="quote">C-c C-q</span>") 'auto-install-buffer-quit) <span class="linecomment">;quit</span>
    map)
  "<span class="quote">Keymap used by variable `auto-install-minor-mode'.</span>")

(defvar auto-install-add-load-path-flag t
  "<span class="quote">If non-nil, add `auto-install-directory' to `load-path'.
This variable is intended to be used in test.</span>")

(defvar auto-install-add-exec-path-flag t
  "<span class="quote">If non-nil, add `auto-install-directory' to `exec-path'.
This variable is intended to be used in test.

It is needed because `auto-install-batch' can install non-elisp files.</span>")

(defvar auto-install-waiting-url-list nil
  "<span class="quote">URLs in downloading.</span>")
(defvar auto-install-url-queue nil
  "<span class="quote">Installation order.</span>")
(defvar auto-install-download-buffer-alist nil
  "<span class="quote">Pairs of URL and downloaded buffer.</span>")
(defvar auto-install-batch-using nil)

(define-minor-mode auto-install-minor-mode
  "<span class="quote">Auto Install minor mode.</span>"
  :init-value nil
  :lighter "<span class="quote"> Auto-Install</span>"
  :keymap auto-install-minor-mode-map
  :group 'auto-install)

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Interactive Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun auto-install-from-buffer ()
  "<span class="quote">Install the elisp file in the current buffer.</span>"
  (interactive)
  (let (filename)
    (setq filename (read-string (format "<span class="quote">Filename (%s): </span>" (buffer-name)) nil nil (buffer-name)))
    (auto-install-mode)
    (auto-install-buffer-save filename)))

(defun auto-install-from-url (&optional url)
  "<span class="quote">Install an elisp file from a given url.</span>"
  (interactive)
  (or url (setq url (read-string (format "<span class="quote">URL (%s): </span>" (or auto-install-last-url "<span class="quote"></span>")) nil nil auto-install-last-url)))
  (setq auto-install-last-url url)
  (auto-install-download url))

(defun auto-install-from-emacswiki (&optional file)
  "<span class="quote">Install an elisp file from EmacsWiki.org.</span>"
  (interactive)
  (cond (auto-install-package-name-list
         <span class="linecomment">;; Install package if `auto-install-package-name-list' is non-nil.</span>
         (or file (setq file (auto-install-get-candidate "<span class="quote">Package</span>" auto-install-package-name-list)))
         (auto-install-download (concat auto-install-emacswiki-base-url file)))
        (t
         <span class="linecomment">;; Otherwise update package name and install.</span>
         (auto-install-download "<span class="quote">http://www.emacswiki.org/cgi-bin/emacs?action=index;raw=1</span>"
                                'auto-install-handle-emacswiki-package-install))))

(defun auto-install-from-gist (&optional gistid-or-url)
  "<span class="quote">Install an elisp file from gist.github.com.

Optional argument GISTID-OR-URL is gist ID or URL for download
elisp file from gist.github.com.</span>"
  (interactive)
  (or gistid-or-url
      (setq gistid-or-url (read-string (format "<span class="quote">Gist ID or URL (%s): </span>" (or auto-install-last-gist-id "<span class="quote"></span>"))
                                       nil nil
                                       auto-install-last-gist-id)))
  (let ((gistid (file-name-sans-extension (file-name-nondirectory gistid-or-url))))
    (setq auto-install-last-gist-id gistid)
    (auto-install-download (format "<span class="quote">%s%s.txt</span>" auto-install-gist-base-url gistid))))

(defun auto-install-from-library (&optional library)
  "<span class="quote">Update an elisp LIBRARY.
Default this function will found 'download url' from `auto-install-filter-url',
if not found, try to download from EmacsWiki.</span>"
  (interactive
   (let* ((dirs load-path)
          (suffixes (find-library-suffixes)))
     (list (auto-install-get-candidate "<span class="quote">Library name</span>" (auto-install-get-library-list)))))
  (let ((filename (file-name-nondirectory (find-library-name library)))
        (base-url auto-install-emacswiki-base-url)
        (library-name (replace-regexp-in-string "<span class="quote">\\(\\.el.*$\\)</span>" "<span class="quote"></span>" library)))
    (if (assoc library-name auto-install-filter-url)
        (setq base-url (cadr (assoc library-name auto-install-filter-url))))
    (auto-install-download (concat base-url filename))))

(defun auto-install-from-directory (directory)
  "<span class="quote">Update elisp files under DIRECTORY from EmacsWiki.
You can use this command to update elisp file under DIRECTORY.</span>"
  (interactive "<span class="quote">DDirectory: </span>")
  (let (filename)
    (dolist (file (directory-files directory t))
      (if (file-directory-p file)
          <span class="linecomment">;; Don't match . or .. directory.</span>
          (unless (string-match "<span class="quote">^\\.\\.?$</span>" (file-name-nondirectory file))
            <span class="linecomment">;; Find files in sub-directory.</span>
            (auto-install-from-directory file))
        <span class="linecomment">;; Get file name.</span>
        (setq filename (file-name-nondirectory file))
        <span class="linecomment">;; Not backup file.</span>
        (unless (string-match "<span class="quote">^\\.?#</span>" filename)
          <span class="linecomment">;; Match elisp file.</span>
          (if (string-match "<span class="quote">^.*\\.el</span>" filename)
              (auto-install-download (concat auto-install-emacswiki-base-url filename))))))))

(defun auto-install-from-dired ()
  "<span class="quote">Update dired marked elisp files from EmacsWiki.org.
You can use this to download marked files in Dired asynchronously.</span>"
  (interactive)
  (if (eq major-mode 'dired-mode)
      (if (or (not auto-install-from-dired-confirm)
              (yes-or-no-p "<span class="quote">Do you want install marked files from EmacsWiki.org?</span>"))
          (dolist (file (dired-get-marked-files))
            (auto-install-download (concat auto-install-emacswiki-base-url (file-name-nondirectory file)))))
    (error "<span class="quote">This command is only for `dired-mode'.</span>")))

(defun auto-install-network-available-p (host)
  (if auto-install-use-wget
      (eq (call-process auto-install-wget-command nil nil nil "<span class="quote">-q</span>" "<span class="quote">--spider</span>" host) 0)
    (with-current-buffer (url-retrieve-synchronously (concat "<span class="quote">http://</span>" host))
      (prog1 (not (zerop (buffer-size)))
        (kill-buffer (current-buffer))))))
<span class="linecomment">;; (auto-install-network-available-p "www.emacswiki.org")</span>

(defun auto-install-update-emacswiki-package-name (&optional unforced)
  "<span class="quote">Update the list of elisp package names from `EmacsWiki'.
By default, this function will update package name forcibly.
If UNFORCED is non-nil, just update package name when `auto-install-package-name-list' is nil.</span>"
  (interactive)
  (unless (and unforced
               auto-install-package-name-list)
    (if (auto-install-network-available-p "<span class="quote">www.emacswiki.org</span>")
        (auto-install-download "<span class="quote">http://www.emacswiki.org/cgi-bin/emacs?action=index;raw=1</span>"
                               'auto-install-handle-emacswiki-package-name)
      (message
       (concat "<span class="quote">Network unreachable!\n</span>"
               "<span class="quote">Try M-x auto-install-handle-emacswiki-package-name afterward.</span>"))
      (sit-for 2))))

(defun auto-install-dired-mark-files ()
  "<span class="quote">Mark dired files that contain at `EmacsWiki.org'.</span>"
  (interactive)
  (if (eq major-mode 'dired-mode)
      (if auto-install-package-name-list
          <span class="linecomment">;; Mark files that exist at `EmacsWiki'.</span>
          (auto-install-dired-mark-files-internal)
        <span class="linecomment">;; Or get package name list and match files.</span>
        (auto-install-download "<span class="quote">http://www.emacswiki.org/cgi-bin/emacs?action=index;raw=1</span>"
                               'auto-install-handle-dired-mark-files))
    (error "<span class="quote">This command just use in `dired-mode'.</span>")))

(defun auto-install-mode ()
  "<span class="quote">Major mode for auto-installing elisp code.</span>"
  (interactive)
  <span class="linecomment">;; Load emacs-lisp syntax highlight.</span>
  (set-syntax-table emacs-lisp-mode-syntax-table)
  (lisp-mode-variables)
  (setq font-lock-mode t)
  (font-lock-fontify-buffer)
  <span class="linecomment">;; Read only.</span>
  (setq buffer-read-only t)
  (and view-read-only (view-mode 1))
  <span class="linecomment">;; Load `auto-install' mode.</span>
  (auto-install-minor-mode t)
  (setq major-mode 'auto-install-minor-mode))

(defun auto-install-buffer-quit ()
  "<span class="quote">Quit from `auto-install' temporary buffer.</span>"
  (interactive)
  <span class="linecomment">;; Quit buffer.</span>
  (if (eq major-mode 'auto-install-minor-mode)
      (auto-install-quit)
    (error "<span class="quote">This command just use in `auto-install-minor-mode'.</span>")))

(defun auto-install-compatibility-setup ()
  "<span class="quote">Install Compatibility commands for install-elisp.el users.</span>"
  (interactive)
  (defalias 'install-elisp 'auto-install-from-url)
  (if (require 'anything-auto-install nil t)
      (defalias 'install-elisp-from-emacswiki 'anything-auto-install-from-emacswiki)
    (defalias 'install-elisp-from-emacswiki 'auto-install-from-emacswiki))
  (defalias 'install-elisp-from-gist 'auto-install-from-gist)
  (message "<span class="quote">Install-elisp compatibility installed.
install-elisp                = %s
install-elisp-from-emacswiki = %s
install-elisp-from-gist      = %s</span>"
           (symbol-function 'install-elisp)
           (symbol-function 'install-elisp-from-emacswiki)
           (symbol-function 'install-elisp-from-gist)))

(defun auto-install-batch (&optional extension-name)
  "<span class="quote">Batch install many files (libraries and non-elisp files) in some extension.
EXTENSION-NAME is extension name for batch install.

Note that non-elisp can be installed only via `auto-install-batch'</span>"
  (interactive)
  (if (and auto-install-batch-list-internal extension-name)
      (auto-install-batch-real extension-name)
    (auto-install-download
     auto-install-batch-list-el-url
     (lexical-let ((extension-name extension-name))
       (lambda (buf)
         (with-current-buffer buf
           (eval-buffer)
           (run-at-time 0 nil 'auto-install-batch-real extension-name)))))))

(defun auto-install-batch-edit ()
  "<span class="quote">Edit auto-install-batch-list.el</span>"
  (interactive)
  (cond ((fboundp 'yaoddmuse-edit)
         (yaoddmuse-edit "<span class="quote">EmacsWiki</span>" "<span class="quote">auto-install-batch-list.el</span>"))
        ((fboundp 'oddmuse-edit)
         (oddmuse-edit "<span class="quote">EmacsWiki</span>" "<span class="quote">auto-install-batch-list.el</span>"))
        (t
         (browse-url "<span class="quote">http://www.emacswiki.org/emacs/?action=edit;id=auto-install-batch-list.el</span>"))))

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Utilities Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun auto-install-batch-real (&optional extension-name)
  (setq auto-install-batch-using t)
  (when auto-install-add-exec-path-flag
      (add-to-list 'exec-path auto-install-directory))
  (destructuring-bind (name delay-time limit-number (&rest urls))
      (auto-install-batch-get-info
       (or
        <span class="linecomment">;; Get information list from give extension name.</span>
        extension-name
        <span class="linecomment">;; Otherwise completion from user select.</span>
        (completing-read "<span class="quote">Extension name: </span>" (mapcar 'car auto-install-batch-list-internal)))
       auto-install-batch-list-internal)
    (or name (error "<span class="quote">Haven't install information for `%s'.</span>" extension-name))
    (setq auto-install-waiting-url-list urls
          auto-install-url-queue urls)
    (if (not (and
              <span class="linecomment">;; Delay time is above 0.</span>
              delay-time
              (&gt; delay-time 0)
              <span class="linecomment">;; Limit number is above 0.</span>
              limit-number
              (&gt; limit-number 0)))
        (auto-install-from-url-list urls)
      (let ((delay-counter 0)
            install-list)
        (while urls
          (if (&gt; (length urls) limit-number)
              <span class="linecomment">;; Install apart libraries list under `limit-number'</span>
              (progn
                (setq install-list (nthcar limit-number urls))
                (run-with-timer
                 (* delay-counter delay-time)
                 nil
                 'auto-install-from-url-list install-list)
                (setq urls (nthcdr+ limit-number urls))
                (incf delay-counter))
            <span class="linecomment">;; Install remain libraries list.</span>
            (setq install-list urls)
            (run-with-timer
             (* delay-counter delay-time)
             nil
             'auto-install-from-url-list install-list)
            (setq urls nil)))))))

<span class="linecomment">;;; borrowed from eev.el</span>
(defun auto-install-flatten (obj &rest rest)
  (cond (rest (append (auto-install-flatten obj) (auto-install-flatten rest)))
	((null obj) nil)
	((listp obj) (append (auto-install-flatten (car obj)) (auto-install-flatten (cdr obj))))
	(t (list obj))))

(defun auto-install-batch-get-info (extension batch-list)
  (let* ((it (assoc extension batch-list))
         (urls (car (last it)))
         (urlp (lambda (url) (string-match "<span class="quote">^https?://</span>" url))))
    (cond ((not it)
           '(nil nil nil (nil)))
          ((loop for url in urls always (funcall urlp url))
           it)
          (t
           (append
            (butlast it)
            (list (auto-install-flatten
                   (loop for url in urls collect
                         (if (funcall urlp url)
                             url
                           (car (last (auto-install-batch-get-info url batch-list))))))))))))

<span class="linecomment">;;;; unit test</span>
<span class="linecomment">;; (install-elisp "http://www.emacswiki.org/cgi-bin/wiki/download/el-expectations.el")</span>
<span class="linecomment">;; (install-elisp "http://www.emacswiki.org/cgi-bin/wiki/download/el-mock.el")</span>
(dont-compile
  (when (fboundp 'expectations)
    (expectations
      (desc "<span class="quote">auto-install-flatten</span>")
      (expect '(1 2 3 4 5 6 7 8 9)
        (auto-install-flatten '((1 2 3) (4 5) (((6)) 7) nil nil 8 9)))
      (expect '(1 2 3 4 5 6 7 8 9)
        (auto-install-flatten '(1 2 3) '(4 5) '(((6)) 7) nil nil 8 9))
      (desc "<span class="quote">auto-install-batch-get-info</span>")
      (expect '(nil nil nil (nil))
        (auto-install-batch-get-info
         "<span class="quote">not-found</span>"
         '(("<span class="quote">foo</span>" nil nil ("<span class="quote">https://example.com/1.el</span>")))))
      (expect '("<span class="quote">foo</span>" nil nil ("<span class="quote">http://example.com/1.el</span>"))
        (auto-install-batch-get-info
         "<span class="quote">foo</span>"
         '(("<span class="quote">foo</span>" nil nil ("<span class="quote">http://example.com/1.el</span>")))))
      (expect '("<span class="quote">withdep</span>" nil nil ("<span class="quote">http://example.com/1.el</span>"
                                   "<span class="quote">http://example.com/2.el</span>"))
        (auto-install-batch-get-info
         "<span class="quote">withdep</span>"
         '(("<span class="quote">foo</span>" nil nil ("<span class="quote">http://example.com/1.el</span>"))
           ("<span class="quote">withdep</span>" nil nil ("<span class="quote">foo</span>" "<span class="quote">http://example.com/2.el</span>")))))
      (expect '("<span class="quote">withdep-recursive</span>" nil nil ("<span class="quote">http://example.com/1.el</span>"
                                             "<span class="quote">http://example.com/2.el</span>"
                                             "<span class="quote">http://example.com/3.el</span>"))
        (auto-install-batch-get-info
         "<span class="quote">withdep-recursive</span>"
         '(("<span class="quote">foo</span>" nil nil ("<span class="quote">http://example.com/1.el</span>"))
           ("<span class="quote">withdep</span>" nil nil ("<span class="quote">foo</span>" "<span class="quote">http://example.com/2.el</span>"))
           ("<span class="quote">withdep-recursive</span>" nil nil ("<span class="quote">withdep</span>" "<span class="quote">http://example.com/3.el</span>")))))
      )))


(defun auto-install-use-wget-p ()
  (and auto-install-use-wget
       (executable-find auto-install-wget-command)))
(defun auto-install-download (url &optional handle-function)
  "<span class="quote">Download elisp file from URL.
HANDLE-FUNCTION for handle download content,
default is `auto-install-handle-download-content'.</span>"
  <span class="linecomment">;; Check and create install directory.</span>
  (unless (file-exists-p auto-install-directory)
    (make-directory auto-install-directory)
    (when auto-install-add-load-path-flag
      (add-to-list 'load-path auto-install-directory)) 
    (message "<span class="quote">Create directory %s for install elisp file.</span>" auto-install-directory))
  <span class="linecomment">;; Download.</span>
  (funcall
   (if (auto-install-use-wget-p)
       'auto-install-download-by-wget
     'auto-install-download-by-url-retrieve)
   url handle-function (auto-install-get-buffer url)))

(defun auto-install-download-by-wget (url handle-function download-buffer)
  (with-current-buffer download-buffer
    (setq auto-install-download-buffer (get-buffer-create (concat (buffer-name download-buffer)
                                                "<span class="quote">-wget</span>")))
    (setq auto-install-download-url url)
    (set-process-sentinel
     (start-process "<span class="quote">auto-install-wget</span>" (current-buffer)
                    auto-install-wget-command "<span class="quote">-q</span>" "<span class="quote">-O-</span>" "<span class="quote">--no-check-certificate</span>" url)
     (lexical-let ((handle-function handle-function))
       (lambda (proc stat)
         (auto-install-download-callback-continue (buffer-name (process-buffer proc))
                                                  handle-function))))))

(defun auto-install-download-by-url-retrieve (url handle-function download-buffer)
  (let* ((url-request-method "<span class="quote">GET</span>")
         (url-request-extra-headers nil)
         (url-mime-accept-string "<span class="quote">*/*</span>")
         (parsed-url (url-generic-parse-url url))
         (download-buffer-name (buffer-name download-buffer)))
    (with-current-buffer download-buffer
      <span class="linecomment">;; Bind download url with local buffer.</span>
      (setq auto-install-download-url url)
      <span class="linecomment">;; Bind download buffer with local buffer.</span>
      <span class="linecomment">;;</span>
      <span class="linecomment">;; Use buffer-local variable receive</span>
      <span class="linecomment">;; data from `url-retrieve' to make asynchronously</span>
      <span class="linecomment">;; download file with special buffer.</span>
      <span class="linecomment">;;</span>
      <span class="linecomment">;; Because the buffer name is unique that generate</span>
      <span class="linecomment">;; through `current-time', so can download many elisp file</span>
      <span class="linecomment">;; asynchronously and won't conflict each other.</span>
      (setq auto-install-download-buffer
            (url-retrieve parsed-url
                          'auto-install-download-callback
                          (list download-buffer-name handle-function))))))

(defun auto-install-download-callback (&optional redirect download-buffer-name handle-function)
  "<span class="quote">The callback for `auto-install-download'.
With `auto-install-download', this downloads elisp files asynchronously.
REDIRECT is the argument for check download status.
DOWNLOAD-BUFFER-NAME is the name of download buffer.
HANDLE-FUNCTION is function for handle download content.</span>"
  (if (eq (car redirect) ':error)
      <span class="linecomment">;; Notify user and kill buffer when occur error.</span>
      (with-current-buffer (get-buffer download-buffer-name)
        (message "<span class="quote">Download from '%s' failed.</span>" auto-install-download-url)
        (kill-buffer download-buffer-name))
    <span class="linecomment">;; Otherwise continue install process.</span>
    (auto-install-download-callback-continue download-buffer-name handle-function)))

(defun auto-install-download-callback-continue (download-buffer-name handle-function)
  (auto-install-retrieve-decode download-buffer-name) <span class="linecomment">;decode retrieve information.</span>
  (with-current-buffer (get-buffer download-buffer-name)
    <span class="linecomment">;; Show successful message</span>
    (message "<span class="quote">Download from '%s' successful.</span>" auto-install-download-url)
    <span class="linecomment">;; Handle download content.</span>
    (funcall (or handle-function 'auto-install-handle-download-content)
             (current-buffer))))

(defun auto-install-retrieve-decode (retrieve-buffer-name)
  "<span class="quote">Decode the RETRIEVE-BUFFER-NAME with coding detection.</span>"
  (declare (special url-http-end-of-headers))
  (with-current-buffer (get-buffer retrieve-buffer-name)
    (insert
     (with-current-buffer auto-install-download-buffer
       (set-buffer-multibyte t)
       <span class="linecomment">;; I do not know why the case url-http-end-of-headers is nil exists!!</span>
       <span class="linecomment">;; I HATE url-retrieve.</span>
       (if (and (boundp 'url-http-end-of-headers)
                (numberp url-http-end-of-headers))
           (goto-char (1+ url-http-end-of-headers))
         <span class="linecomment">;; workaround</span>
         (if (auto-install-use-wget-p)
             (goto-char (point-min))
           (search-forward "<span class="quote">\n\n</span>" nil t)))
       (decode-coding-region
        (point) (point-max)
        (coding-system-change-eol-conversion
         <span class="linecomment">;; rubikitch: encoding detection is better because of</span>
         <span class="linecomment">;; non-utf8 Japanese encodings.</span>
         (detect-coding-region (point-min) (point-max) t) 'dos))
       (buffer-substring (point) (point-max))))
    (goto-char (point-min))))

(defun auto-install-handle-download-content (download-buffer)
  "<span class="quote">Handle the content downloaded to buffer DOWNLOAD-BUFFER.</span>"
  (with-current-buffer download-buffer
    <span class="linecomment">;; Load mode.</span>
    (auto-install-mode)
    <span class="linecomment">;; Display help information in mode-line.</span>
    (setq mode-line-format (list "<span class="quote">Type C-c C-c to continue; Type C-c C-d for view diff; Type C-c C-q to quit.</span>"))

    (setq header-line-format (list auto-install-download-url))
    (setq auto-install-download-buffer-alist
          (cons (cons auto-install-download-url download-buffer)
                auto-install-download-buffer-alist))
    (setq auto-install-waiting-url-list
          (remove auto-install-download-url auto-install-waiting-url-list))
    <span class="linecomment">;; When all files are downloaded</span>
    (unless auto-install-waiting-url-list
      <span class="linecomment">;; Select first file</span>
      (switch-to-buffer (or (assoc-default (car auto-install-url-queue)
                                           auto-install-download-buffer-alist)
                            <span class="linecomment">;; if single file</span>
                            download-buffer))
      (if (not (and (not auto-install-batch-using) (auto-install-check-update)))
          (unless auto-install-save-confirm
            (auto-install-buffer-save))
        (message "<span class="quote">%s is up-to-date</span>" (url-file-nondirectory auto-install-download-url))
        (kill-buffer))
      <span class="linecomment">;; (unless auto-install-save-confirm</span>
      <span class="linecomment">;;   (auto-install-buffer-save))</span>
      )))

(defun auto-install-check-update ()
  (let* ((new-file (url-file-nondirectory auto-install-download-url))
         (old-file (auto-install-get-path new-file))
         (old-content (and old-file
                           (with-temp-buffer
                             (insert-file-contents-literally old-file)
                             (buffer-string)))))
    (equal old-content (buffer-string))))

(defun auto-install-handle-emacswiki-package-name (download-buffer &optional prompt-install)
  "<span class="quote">Handle elisp package name from `EmacsWiki'.
DOWNLOAD-BUFFER is the name of download buffer.
PROMPT-INSTALL is non-nil, will prompt package name for install.</span>"
  <span class="linecomment">;; Update package name list.</span>
  (auto-install-update-emacswiki-package-list download-buffer)
  <span class="linecomment">;; Prompt package name for install.</span>
  (when prompt-install
    (auto-install-download
     (concat auto-install-emacswiki-base-url
             (auto-install-get-candidate "<span class="quote">Package</span>" auto-install-package-name-list)))))

(defun auto-install-handle-dired-mark-files (download-buffer)
  "<span class="quote">Handle dired mark files that exist at `EmacsWiki'.
DOWNLOAD-BUFFER is the name of download buffer.</span>"
  <span class="linecomment">;; Update package name list.</span>
  (auto-install-update-emacswiki-package-list download-buffer)
  <span class="linecomment">;; Mark dired files.</span>
  (auto-install-dired-mark-files-internal))

(defun auto-install-handle-emacswiki-package-install (download-buffer)
  "<span class="quote">Handle elisp package install from `EmacsWiki'.
DOWNLOAD-BUFFER is the name of download buffer.</span>"
  (auto-install-handle-emacswiki-package-name download-buffer t))

(defun auto-install-update-emacswiki-package-list (download-buffer)
  "<span class="quote">Filter and update package name list from `EmacsWiki'.
DOWNLOAD-BUFFER is the name of download buffer.</span>"
  (goto-char (point-min))
  (setq auto-install-package-name-list
        (loop while (re-search-forward "<span class="quote">^.*\\.el$</span>" nil t)
              collect (match-string 0)))
  <span class="linecomment">;; Kill buffer.</span>
  (kill-buffer download-buffer)
  <span class="linecomment">;; Display successful message.</span>
  (message "<span class="quote">Update package name from `EmacsWiki' successful.</span>"))

(defun auto-install-buffer-diff ()
  "<span class="quote">View different between old version.
This command just run when have exist old version.</span>"
  (interactive)
  (let* ((new-file (url-file-nondirectory auto-install-download-url))
         (old-file (auto-install-get-path new-file)))
    (if old-file
        <span class="linecomment">;; View different when have old version exist.</span>
        (ediff-buffers (current-buffer) (find-file-noselect old-file))
      <span class="linecomment">;; Otherwise notify user.</span>
      (message "<span class="quote">Haven't old version exist.</span>"))))

(defun auto-install-buffer-save (&optional filename)
  "<span class="quote">Save downloaded content to file FILENAME.</span>"
  (interactive)
  (if (eq major-mode 'auto-install-minor-mode)
      (let (file-path)
        <span class="linecomment">;; Get filename</span>
        (unless filename
          (setq filename (url-file-nondirectory auto-install-download-url)))
        (unless auto-install-batch-using
          <span class="linecomment">;; Make sure file suffix with `.el'.</span>
          (while (not (string-match "<span class="quote">.*\.el$</span>" filename))
           (setq filename (read-string "<span class="quote">Please input file name suffix with `.el': </span>"))))
        <span class="linecomment">;; Get file path.</span>
        (setq file-path
              (or
               <span class="linecomment">;; Replace file if have exist.</span>
               (auto-install-get-path filename)
               <span class="linecomment">;; Otherwise, install in directory `auto-install-directory'.</span>
               (expand-file-name filename auto-install-directory)))
        <span class="linecomment">;; Save file.</span>
        (if (and (file-exists-p file-path)
                 (file-writable-p file-path)
                 auto-install-replace-confirm
                 (not (yes-or-no-p (format "<span class="quote">Do you want replace file: '%s' ?</span>" file-path))))
            (auto-install-quit)
          (if (auto-install-check-update)
              (auto-install-install-next-file)
            (let ((before-save-hook before-save-hook)
                  (auto-async-byte-compile-exclude-files-regexp
                   (regexp-quote file-path)))
              (remove-hook 'before-save-hook 'time-stamp)
              (write-file file-path)
              (auto-install-install file-path)))))
    (error "<span class="quote">This command just use in `auto-install-minor-mode'.</span>")))

(defun auto-install-install (file-path)
  "<span class="quote">Install elisp file FILE-PATH.</span>"
  (if (and auto-install-install-confirm
           (not (yes-or-no-p (format "<span class="quote">Do you want install file: '%s' ?</span>" file-path))))
      (auto-install-quit)
    (let (byte-compile-warnings) <span class="linecomment">;; suppress compile warnings</span>
      <span class="linecomment">;; Compile and load file.</span>
      (when (and (string= "<span class="quote">el</span>" (file-name-extension file-path))
                 (not (ignore-errors (byte-compile-file file-path t))))
        <span class="linecomment">;; Show `ERROR' message if compile failed.</span>
        (message "<span class="quote">Auto-Install ERROR: Compiled file '%s' failed.</span>" file-path))
      (auto-install-install-next-file))))

(defun auto-install-install-next-file ()
  (setq auto-install-url-queue (cdr auto-install-url-queue))
  (let (byte-compile-warnings)
    (cond ((car auto-install-url-queue)
           (switch-to-buffer (assoc-default (car auto-install-url-queue)
                                            auto-install-download-buffer-alist))
           (unless auto-install-save-confirm
             (auto-install-buffer-save)))
          (t                        <span class="linecomment">;completed</span>
           (auto-install-cleanup)
           (message "<span class="quote">Installation is completed.</span>")))))

(defun auto-install-cleanup ()
  (while auto-install-minor-mode
    (kill-buffer))
  (setq auto-install-url-queue nil)
  (setq auto-install-download-buffer-alist nil)
  (setq auto-install-batch-using nil))

(defun auto-install-quit ()
  "<span class="quote">Quit auto-install.</span>"
  <span class="linecomment">;; Kill buffer</span>
  (kill-buffer (current-buffer))
  <span class="linecomment">;; Show quit message.</span>
  (message "<span class="quote">Quit auto-install process.</span>"))

(defun auto-install-get-path (library)
  "<span class="quote">Return the absolute file path of the Lisp source of LIBRARY.</span>"
  <span class="linecomment">;; If the library is byte-compiled, try to find a source library by</span>
  <span class="linecomment">;; the same name.</span>
  (if (string-match "<span class="quote">\\.el\\(c\\(\\..*\\)?\\)\\'</span>" library)
      (setq library (replace-match "<span class="quote"></span>" t t library)))
  (or
   (locate-file library
                (or find-function-source-path load-path)
                (find-library-suffixes))
   (locate-file library
                (or find-function-source-path load-path)
                load-file-rep-suffixes)))

(defun auto-install-get-buffer (url)
  "<span class="quote">Get a buffer for temporary storage of downloaded content.
Uses `current-time' to make buffer name unique.</span>"
  (get-buffer-create (format "<span class="quote">*%s %s &lt;%s&gt;*</span>"
                             auto-install-buffer-name url
                             (format-time-string "<span class="quote">%m/%d %H:%M:%S</span>"))))

(defun auto-install-dired-mark-files-internal ()
  "<span class="quote">Mark files that match `auto-install-package-name-list'.</span>"
  <span class="linecomment">;; Set buffer visible in select window.</span>
  (set-buffer (window-buffer))
  <span class="linecomment">;; Get mark files.</span>
  (save-excursion
    (let (filename)
      <span class="linecomment">;; Unmark all markes.</span>
      (dired-unmark-all-marks)
      <span class="linecomment">;; Try to mark files.</span>
      (goto-char (point-min))
      (while (not (eobp))
        (setq filename (dired-get-filename nil t))
        (if (and filename
                 (not (file-directory-p filename))
                 (member (file-name-nondirectory filename) auto-install-package-name-list))
            (dired-mark 1))
        (dired-next-line 1)))))

(defun auto-install-region-or-thing (&optional thing)
  "<span class="quote">Return region or thing around point.
If `mark-active' and variable `transient-mark-mode', return region.
If THING is non-nil, return THING around point;
otherwise return symbol around point.</span>"
  <span class="linecomment">;; Return string.</span>
  (if (and mark-active
           transient-mark-mode)
      <span class="linecomment">;; Return region string just when</span>
      <span class="linecomment">;; `mark-active' and `transient-mark-mode' is on.</span>
      (buffer-substring-no-properties (region-beginning)
                                      (region-end))
    <span class="linecomment">;; Otherwise try to pick-up THING around point.</span>
    (setq thing (or thing 'symbol))
    (ignore-errors
      (save-excursion
        (buffer-substring-no-properties (beginning-of-thing thing)
                                        (end-of-thing thing))))))

(defun auto-install-get-library-list (&optional dirs string)
  "<span class="quote">Do completion for file names passed to `locate-file'.
DIRS is directory to search path.
STRING is string to match.</span>"
  <span class="linecomment">;; Use `load-path' as path when ignore `dirs'.</span>
  (or dirs (setq dirs load-path))
  <span class="linecomment">;; Init with blank when ignore `string'.</span>
  (or string (setq string "<span class="quote"></span>"))
  <span class="linecomment">;; Get library list.</span>
  (let ((string-dir (file-name-directory string))
        name
        names)
    (dolist (dir dirs)
      (unless dir
        (setq dir default-directory))
      (if string-dir
          (setq dir (expand-file-name string-dir dir)))
      (when (file-directory-p dir)
        (dolist (file (file-name-all-completions
                       (file-name-nondirectory string) dir))
          <span class="linecomment">;; Suffixes match `load-file-rep-suffixes'.</span>
          (setq name (if string-dir (concat string-dir file) file))
          (if (string-match (format "<span class="quote">^.*\\.el%s$</span>" (regexp-opt load-file-rep-suffixes)) name)
              (add-to-list 'names name)))))
    names))

(defun auto-install-get-candidate (prompt collection)
  "<span class="quote">Get candidate from completing list.
PROMPT is string for prompt.
COLLECTION is list for completing candidates.</span>"
  (completing-read (format "<span class="quote">%s (%s): </span>" prompt (or (auto-install-region-or-thing) "<span class="quote"></span>"))
                   collection
                   nil nil nil nil
                   (auto-install-region-or-thing)))

(defun auto-install-from-url-list (&optional url-list)
  "<span class="quote">Batch install many packages form URL-LIST.</span>"
  (if (listp url-list)
      (dolist (url url-list)
        (auto-install-from-url url))
    (error "<span class="quote">Invalid url list for install.</span>")))

(defun nthcdr+ (n list)
  "<span class="quote">Take cdr N times on LIST, return the result.
If LIST length below N, return entire list.
If LIST is nil, return nil.</span>"
  (if (or (null list)
          (&gt; n (length list)))
      list
    (nthcdr n list)))

(defun nthcar (n list)
  "<span class="quote">Return first N elements of LIST.
If LIST length below N, return entire list.
If LIST is nil, return nil.</span>"
  (reverse (nthcdr (- (length list) n) (reverse list))))

<span class="linecomment">;;;; Bug report</span>
(defvar auto-install-maintainer-mail-address
  (concat "<span class="quote">rubiki</span>" "<span class="quote">tch@ru</span>" "<span class="quote">by-lang.org</span>"))
(defvar auto-install-bug-report-salutation
  "<span class="quote">Describe bug below, using a precise recipe.

When I executed M-x ...

How to send a bug report:
  1) Be sure to use the LATEST version of auto-install.el.
  2) Enable debugger. M-x toggle-debug-on-error or (setq debug-on-error t)
  3) Use Lisp version instead of compiled one: (load \"auto-install.el\")
  4) If you got an error, please paste *Backtrace* buffer.
  5) Type C-c C-c to send.
# If you are a Japanese, please write in Japanese:-)</span>")
(defun auto-install-send-bug-report ()
  (interactive)
  (reporter-submit-bug-report
   auto-install-maintainer-mail-address
   "<span class="quote">auto-install.el</span>"
   (apropos-internal "<span class="quote">^auto-install-</span>" 'boundp)
   nil nil
   auto-install-bug-report-salutation))


(provide 'auto-install)

<span class="linecomment">;; TestCase</span>
<span class="linecomment">;; (find-file-other-window "~/memo/junk/2010-04-25-094621.auto-install-check-update.test.el")</span>

<span class="linecomment">;; How to save (DO NOT REMOVE!!)</span>
<span class="linecomment">;; (emacswiki-post "auto-install.el")</span>
<span class="linecomment">;;; auto-install.el ends here</span>

<span class="linecomment">;;; LocalWords:  el eol dirs fontify gistid txt func bytecomp DDirectory ediff</span>
<span class="linecomment">;;; LocalWords:  noselect Unmark unmark AutoInstall keybindings defalias'es</span></span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=auto-install.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=auto-install.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=auto-install.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=auto-install.el">Administration</a></span><span class="time"><br /> Last edited 2011-04-12 06:28 UTC by <a class="author" title="from 61-26-110-98.rev.home.ne.jp" href="http://www.emacswiki.org/emacs/rubikitch">rubikitch</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=auto-install.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
