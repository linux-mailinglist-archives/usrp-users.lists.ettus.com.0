Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5D630C9FC
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 19:37:39 +0100 (CET)
Received: from [::1] (port=49642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l70YS-00055S-Aq; Tue, 02 Feb 2021 13:37:36 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:42659)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l70YO-0004z0-5t
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 13:37:32 -0500
Received: by mail-qk1-f179.google.com with SMTP id l27so20806843qki.9
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 10:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=ElPM1D168ZcGQ/GEmVW7LrZkZP17Ad+ch7NV8fKJFCQ=;
 b=uo0wzW64rBEEtVmP9ni6bXrbzhAI+SNP5FdTChAEYMJZXuhZXnkqVouZYD9Zb9CCRA
 9fMGN4/fHOx763aRRTgQ1VnS0kLUEqtMY9YESXktb1nFq750uxpsw53MwoFGIqhy9zTB
 Imwn4ibzJv+wGKjomMKa4d7sxY1sq+hEqJjxtXJrMZ+u80+AHXR3g4lSTAk8wqrdufP+
 6+ndgEFlTP5qohJsTK6OtpX+RbKUcr5RHvrElo8fFe8IuZI1ewt0jzhGgX7w4sYN+CID
 iBD5mmSItTk/XyJboblA2U+QHRBups824suP/dgYRCth67qScY6CU+pfVGzkmOMGz3TV
 iT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=ElPM1D168ZcGQ/GEmVW7LrZkZP17Ad+ch7NV8fKJFCQ=;
 b=D9r2hDBXVRyhDJKHJqgCcxdPcVguHPYyZkkugP1iqCkTIjzKNp9i0BReL8IUakkXce
 sa6KW3giSo9Butr595PRC2+rIu2w3KNheMK7jxGB1uZObEM2bK2+4riul056mCg5r3Z2
 HB+BKkmz0IJ2W+txPJnyiuamZAuhvgGsnqoRYqVfxN8L4caK6HHNcnSsztLpg8B/TLNS
 DyTISm8zUI5Bug21XcvtHw3nnwTOE93Iqjp5Lm8dJ4KeOc5OSeKcqrKqKAdTppHOmv7h
 QjgNONiBWlmU7OoRJTecpVmwFREnQOW5lA/LHfe9ePzro/C0g9U5lbPZsFgN+nnZwiRK
 g77w==
X-Gm-Message-State: AOAM5303VIqWyJT7Svm/8pU2wVC8grP1ZQ05yW37IpU+/Dk6vKJumDui
 rdXruNK0tc+RuQ0IMr0P0xaO/rZQic8=
X-Google-Smtp-Source: ABdhPJw+Yek1/E6DmABGBMmtpjzUT5gJBykm679NKng5FbjKOwIUaBDH3H+IJHD5Kmh7TAJnewgPvA==
X-Received: by 2002:a37:2784:: with SMTP id
 n126mr22879700qkn.328.1612291011374; 
 Tue, 02 Feb 2021 10:36:51 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 p18sm16963438qkj.130.2021.02.02.10.36.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Feb 2021 10:36:50 -0800 (PST)
Message-ID: <60199BC2.1020000@gmail.com>
Date: Tue, 02 Feb 2021 13:36:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: dtrask1@tampabay.rr.com
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <a99d7140dccb15b597e2af4c46b0af47e689c970@webmail>
In-Reply-To: <a99d7140dccb15b597e2af4c46b0af47e689c970@webmail>
Subject: Re: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0568839162044081388=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============0568839162044081388==
Content-Type: multipart/alternative;
 boundary="------------060204050607060909090702"

This is a multi-part message in MIME format.
--------------060204050607060909090702
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2021 01:25 PM, dtrask1@tampabay.rr.com wrote:
> Actually, it is not there. I did a find on the entire root file system 
> and that file does not exist on the E310 device.
>
So, do a find on "ld-linux*"

Either the compile built for the wrong architecture, or your filesystem 
is missing the correct dynamic linker--although if that's the
   case, most things on your system wouldn't work.


> -----------------------------------------
>
> From: "Marcus D. Leech"
> To: dtrask1@tampabay.rr.com
> Cc: "usrp-users@lists.ettus.com"
> Sent: Tuesday February 2 2021 1:14:12PM
> Subject: Re: [USRP-users] Error Testing UHD Build on E310 with 
> uhd_usrp_probe
>
> On 02/02/2021 12:53 PM, dtrask1@tampabay.rr.com wrote:
>
>     Here is the output, Marcus:
>
>     root@ni-e31x-3199693:~/newinstall# file
>     /home/root/newinstall/usr/bin/uhd_usrp_probe
>     /home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit LSB
>     executable, ARM, EABI5 version 1 (SYSV), dynamically linked,
>     interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32,
>     BuildID[sha1]=5c924895fbe10218be809ba29f88d7993fb117d7, with
>     debug_info, not stripped
>
>     root@ni-e31x-3199693:~/newinstall# which uhd_usrp_probe
>     /home/root/newinstall/usr/bin/uhd_usrp_probe
>
>     Appreciate the help.
>
>     Dennis
>
>
> Hmm, see if:
>
> /lib/ld-linux-armhf.so.3
>
>
> Is actually there and executable
>
>
>     -----------------------------------------
>
>     From: "Marcus D. Leech via USRP-users"
>     To: usrp-users@lists.ettus.com
>     Cc:
>     Sent: Monday February 1 2021 4:06:23PM
>     Subject: Re: [USRP-users] Error Testing UHD Build on E310 with
>     uhd_usrp_probe
>
>     On 02/01/2021 04:01 PM, Dennis Trask via USRP-users wrote:
>
>         I am attempting to set up a development environment to write
>         software for the E310 by cross-compiling on Ubuntu 18.04. I am
>         using the instructions here:
>         https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
>         I have followed all the instructions to build UHD and am now
>         in the section "Mount and test the UHD build". When I run
>         uhd_usrp_probe on the E310, I get the following ouput:
>
>         root@ni-e31x-3199693:~/newinstall# uhd_usrp_probe
>
>         -sh: /home/root/newinstall/usr/bin/uhd_usrp_probe: No such
>         file or directory
>
>     If you do:
>
>     file /home/root/newinstall/usr/bin/uhd_usrp_probe
>
>     What do you get?
>
>     If you do:
>
>     which uhd_usrp_probe
>
>     What do you get?
>
>
>         I'm not sure where to look for the source of this issue. Has
>         anyone else seen this or have an idea of what to look for?
>
>         Thanks,
>
>         Dennis
>
>
>
>         _______________________________________________
>         USRP-users mailing list
>         "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
>         "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
>         <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>>
>         target=
>         "_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>


--------------060204050607060909090702
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/02/2021 01:25 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:a99d7140dccb15b597e2af4c46b0af47e689c970@webmail"
      type="cite">Actually, it is not there. I did a find on the entire
      root file system and that file does not exist on the E310 device. <br>
      <br>
    </blockquote>
    So, do a find on "ld-linux*"<br>
    <br>
    Either the compile built for the wrong architecture, or your
    filesystem is missing the correct dynamic linker--although if that's
    the<br>
      case, most things on your system wouldn't work.<br>
    <br>
    <br>
    <blockquote
      cite="mid:a99d7140dccb15b597e2af4c46b0af47e689c970@webmail"
      type="cite">
      <p>-----------------------------------------</p>
      From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>
        To: <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a><br>
        Cc: <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a><br>
        Sent: Tuesday February 2 2021 1:14:12PM<br>
        Subject: Re: [USRP-users] Error Testing UHD Build on E310 with
        uhd_usrp_probe<br>
        <br>
        <div class="moz-cite-prefix">On 02/02/2021 12:53 PM, <a
            moz-do-not-send="true" class="moz-txt-link-abbreviated">dtrask1@tampabay.rr.com</a>
          wrote:<br>
        </div>
        <blockquote>
          <div>Here is the output, Marcus:</div>
          <div><br>
          </div>
          <div>root@ni-e31x-3199693:~/newinstall# file
            /home/root/newinstall/usr/bin/uhd_usrp_probe</div>
          <div>/home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit
            LSB
            executable, ARM, EABI5 version 1 (SYSV), dynamically linked,
            interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32,
            BuildID[sha1]=5c924895fbe10218be809ba29f88d7993fb117d7, with
            debug_info, not stripped</div>
          <div><br>
          </div>
          <div>root@ni-e31x-3199693:~/newinstall# which uhd_usrp_probe</div>
          <div>/home/root/newinstall/usr/bin/uhd_usrp_probe</div>
          <div><br>
          </div>
          Appreciate the help.
          <div><br>
          </div>
          <div>Dennis</div>
          <div><br>
          </div>
        </blockquote>
        <br>
        Hmm, see if:<br>
        <br>
        /lib/ld-linux-armhf.so.3<br>
        <br>
        <br>
        Is actually there and executable<br>
        <br>
        <br>
        <blockquote>
          <div>
            <p>-----------------------------------------</p>
            From: "Marcus D. Leech via USRP-users"<br>
            To: <a moz-do-not-send="true"
              class="moz-txt-link-abbreviated">usrp-users@lists.ettus.com</a><br>
            Cc:<br>
            Sent: Monday February 1 2021 4:06:23PM<br>
            Subject: Re: [USRP-users] Error Testing UHD Build on E310
            with
            uhd_usrp_probe<br>
            <br>
            <div class="moz-cite-prefix">On 02/01/2021 04:01 PM, Dennis
              Trask
              via USRP-users wrote:<br>
            </div>
            <blockquote>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;">I
                  am attempting to set up a development environment to
                  write software
                  for the E310 by cross-compiling on Ubuntu 18.04. I am
                  using the
                  instructions here: <a moz-do-not-send="true"
href="https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a></span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;"> </span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;">I
                  have followed all the instructions to build UHD and am
                  now in the
                  section "Mount and test the UHD build". When I run
                  uhd_usrp_probe on the E310, I get the following ouput:</span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;"> </span></p>
              <p class="MsoNormal"><span style="font-family:Calibri,
                  sans-serif;color:#000000;">root@ni-e31x-3199693:~/newinstall#
                  uhd_usrp_probe </span></p>
              <p class="MsoNormal"><span style="font-family:Calibri,
                  sans-serif;color:#000000;">-sh:
                  /home/root/newinstall/usr/bin/uhd_usrp_probe: No such
                  file or
                  directory</span></p>
              <p class="MsoNormal"><span style="font-family:Calibri,
                  sans-serif;color:#000000;"> </span></p>
              <p class="MsoNormal"><span style="font-family:Calibri,
                  sans-serif;color:#000000;"> </span></p>
            </blockquote>
            If you do:<br>
            <br>
            file /home/root/newinstall/usr/bin/uhd_usrp_probe<br>
            <br>
            What do you get?<br>
            <br>
            If you do:<br>
            <br>
            which uhd_usrp_probe<br>
            <br>
            What do you get?<br>
            <br>
            <br>
            <blockquote>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;">I'm
                  not sure where to look for the source of this issue.
                  Has anyone
                  else seen this or have an idea of what to look for?</span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;"> </span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;">Thanks,</span></p>
              <p><span style="font-family:Calibri,
                  sans-serif;color:#000000;">Dennis</span></p>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true" class="moz-txt-link-rfc2396E">"mailto:USRP-users@lists.ettus.com"</a>&gt;<a
                moz-do-not-send="true" class="moz-txt-link-abbreviated">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true" class="moz-txt-link-rfc2396E"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">"</a><a
                moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"</a>&gt;
              target=<br>
              "_blank"&gt;<a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
      </patchvonbraun@gmail.com>
    </blockquote>
    <br>
  </body>
</html>

--------------060204050607060909090702--


--===============0568839162044081388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0568839162044081388==--

