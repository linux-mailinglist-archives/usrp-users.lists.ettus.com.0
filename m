Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A4430C93A
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 19:14:57 +0100 (CET)
Received: from [::1] (port=49466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l70CV-0003My-WB; Tue, 02 Feb 2021 13:14:56 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:36301)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l70CS-0003Fq-1O
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 13:14:52 -0500
Received: by mail-qt1-f174.google.com with SMTP id r20so12059322qtm.3
 for <usrp-users@lists.ettus.com>; Tue, 02 Feb 2021 10:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=srisStRNwaFhuV8ltKkvN4F4W3ir9kRI6HBUchPfWAU=;
 b=Qqg4Dl2GqACK7xgF9h7YHpkqD4SRlkgxFY0nVL+25YZKw250BluCqg0+JYR6Drbo9M
 YNIlh3KnQtNj3swqjrFtWitIZUkMlBbZm6y/2KqTJZyCRklajJDwhogEAJ86cra01gDL
 gMKQVrgOB2aoToUAj3cyeRLhoHAyRM2bzsdPwLdc58wLm/Zhvwu+SWp1EgDVWottT89T
 3fIzusA4CSAlqmmegwcCYoD3izh4AYLdllJ9iqylLLV0kZNaPu2ErbcCzVk+tbeAn3pG
 ZS8ypmMU56MEa+CJwV7fLqbjd8XFcA9E4zJGp6F7m24imsZlw3U98aMfKtrwrPgE6Ghv
 BG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=srisStRNwaFhuV8ltKkvN4F4W3ir9kRI6HBUchPfWAU=;
 b=dhcE22Q3Z0VjQzrk1V9l45UYYRBiUDhrqlwkH1+2y7sb6zPffzyqzLboUifbu10jzi
 gc3vQ5KyMB3wp9ypKQ04OWGUWWYEWt3TZ/YvmU2HdEiQC6BdolHFGMK160222oIOy4pG
 ZvYkxvWPgcUrY6cxf+C8K+5fQFGZA7mDqeRrGZhrFdyH+0YAjIjgWmNK85YWmFruJFck
 EKKCv1S6HOkdBpxpbagC8oeYSnqtpo6zVMNWqkCGUbdk1VccqqGq+fwyXWxEb36o/kME
 E2LWL458wyeOh0/alP1huRh5p/BJLbOLroHQ5EjM8mS1pRyzv19nwCnqMQ2y+bB8YNNW
 fmmg==
X-Gm-Message-State: AOAM532WfVV/prh6lwwcj8U2vPCAx5By30XxsrnDm28xwtW10iZ5pdcL
 Q+2w+qLajGUsg3hmp8IY46jIX77OBns=
X-Google-Smtp-Source: ABdhPJxK9oQmHUgnU94qcWeCQeKK6UmzedL4p1SCKKMnD+P8QvyLM6nWLgQiJTkeVSQfiPbGiQvyEw==
X-Received: by 2002:a05:622a:506:: with SMTP id
 l6mr20874394qtx.134.1612289651254; 
 Tue, 02 Feb 2021 10:14:11 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 17sm19673796qtu.23.2021.02.02.10.14.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Feb 2021 10:14:10 -0800 (PST)
Message-ID: <60199672.1040307@gmail.com>
Date: Tue, 02 Feb 2021 13:14:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: dtrask1@tampabay.rr.com
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <d8853f6d78b7e4609b6485cc4867a749296a8898@webmail>
In-Reply-To: <d8853f6d78b7e4609b6485cc4867a749296a8898@webmail>
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
Content-Type: multipart/mixed; boundary="===============3459698222454069872=="
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
--===============3459698222454069872==
Content-Type: multipart/alternative;
 boundary="------------050907030501020303060002"

This is a multi-part message in MIME format.
--------------050907030501020303060002
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2021 12:53 PM, dtrask1@tampabay.rr.com wrote:
> Here is the output, Marcus:
>
> root@ni-e31x-3199693:~/newinstall# file 
> /home/root/newinstall/usr/bin/uhd_usrp_probe
> /home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit LSB 
> executable, ARM, EABI5 version 1 (SYSV), dynamically linked, 
> interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.6.32, 
> BuildID[sha1]=5c924895fbe10218be809ba29f88d7993fb117d7, with 
> debug_info, not stripped
>
> root@ni-e31x-3199693:~/newinstall# which uhd_usrp_probe
> /home/root/newinstall/usr/bin/uhd_usrp_probe
>
> Appreciate the help.
>
> Dennis
>

Hmm, see if:

/lib/ld-linux-armhf.so.3


Is actually there and executable


> -----------------------------------------
>
> From: "Marcus D. Leech via USRP-users"
> To: usrp-users@lists.ettus.com
> Cc:
> Sent: Monday February 1 2021 4:06:23PM
> Subject: Re: [USRP-users] Error Testing UHD Build on E310 with 
> uhd_usrp_probe
>
> On 02/01/2021 04:01 PM, Dennis Trask via USRP-users wrote:
>
>     I am attempting to set up a development environment to write
>     software for the E310 by cross-compiling on Ubuntu 18.04. I am
>     using the instructions here:
>     https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
>     I have followed all the instructions to build UHD and am now in
>     the section "Mount and test the UHD build". When I run
>     uhd_usrp_probe on the E310, I get the following ouput:
>
>     root@ni-e31x-3199693:~/newinstall# uhd_usrp_probe
>
>     -sh: /home/root/newinstall/usr/bin/uhd_usrp_probe: No such file or
>     directory
>
> If you do:
>
> file /home/root/newinstall/usr/bin/uhd_usrp_probe
>
> What do you get?
>
> If you do:
>
> which uhd_usrp_probe
>
> What do you get?
>
>
>     I'm not sure where to look for the source of this issue. Has
>     anyone else seen this or have an idea of what to look for?
>
>     Thanks,
>
>     Dennis
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
>     "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">
>     target=
>     "_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>


--------------050907030501020303060002
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/02/2021 12:53 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:d8853f6d78b7e4609b6485cc4867a749296a8898@webmail"
      type="cite">
      <div>Here is the output, Marcus:</div>
      <div><br>
      </div>
      <div>root@ni-e31x-3199693:~/newinstall# file
        /home/root/newinstall/usr/bin/uhd_usrp_probe</div>
      <div>/home/root/newinstall/usr/bin/uhd_usrp_probe: ELF 32-bit LSB
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
    <blockquote
      cite="mid:d8853f6d78b7e4609b6485cc4867a749296a8898@webmail"
      type="cite">
      <div>
        <p>-----------------------------------------</p>
        From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com><br>
          To: <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          Cc: <br>
          Sent: Monday February 1 2021 4:06:23PM<br>
          Subject: Re: [USRP-users] Error Testing UHD Build on E310 with
          uhd_usrp_probe<br>
          <br>
          <div class="moz-cite-prefix">On 02/01/2021 04:01 PM, Dennis
            Trask
            via USRP-users wrote:<br>
          </div>
          <blockquote>
            <p><span style="font-family:Calibri,
                sans-serif;color:#000000;">I am
                attempting to set up a development environment to write
                software
                for the E310 by cross-compiling on Ubuntu 18.04. I am
                using the
                instructions here: <a moz-do-not-send="true"
href="https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a></span></p>
            <p><span style="font-family:Calibri,
                sans-serif;color:#000000;"> </span></p>
            <p><span style="font-family:Calibri,
                sans-serif;color:#000000;">I have
                followed all the instructions to build UHD and am now in
                the
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
                sans-serif;color:#000000;">I'm not
                sure where to look for the source of this issue. Has
                anyone else
                seen this or have an idea of what to look for?</span></p>
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
<a class="moz-txt-link-rfc2396E" href="mailto:USRP-users@lists.ettus.com">"mailto:USRP-users@lists.ettus.com"</a>&gt;<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
<a class="moz-txt-link-rfc2396E" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"</a>&gt;
            target=<br>
"_blank"&gt;<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
          <br>
        </usrp-users@lists.ettus.com></div>
    </blockquote>
    <br>
  </body>
</html>

--------------050907030501020303060002--


--===============3459698222454069872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3459698222454069872==--

