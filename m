Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C69030B1DC
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 22:06:26 +0100 (CET)
Received: from [::1] (port=38390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6gOu-0007wQ-J5; Mon, 01 Feb 2021 16:06:24 -0500
Received: from mail-qt1-f177.google.com ([209.85.160.177]:39314)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l6gOq-0007mM-J7
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 16:06:20 -0500
Received: by mail-qt1-f177.google.com with SMTP id z9so13394102qtv.6
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 13:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=76XkboceV3Mi/X2zRbwx2zT+zpYT0lQ3cfbioMUwsME=;
 b=XyUCbmBMia4K1APkNosnAnBy+Xfk37xBRYINnx2k83aJ17fcm2XNvO9vpFhjhm/Flr
 7NW72PCG8u4WonFVuUwKT9LZ0DurDvp5ImVv+2fLkJdEEhRBsqiOep16AlcFCOjam9n+
 WwN6WK6lAlK8ABO1Xn5tnplr5/auJdxsstKBl9y1rD2XIy8BgtiCjs+qtkx0jntCfJ4/
 n/sa0ntZuYrzNBTGpfBEZASV8YZbc7FuYotIZqgyBBJ9LADEeQ7No3/rrseC7ufdlZbX
 QKpm9hH9m5yLQKyGY9CQonL9jw24G3DFOMOiF8U+2E3Q1TqMuS0LlE+TsD9AhQFVGVYY
 L8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=76XkboceV3Mi/X2zRbwx2zT+zpYT0lQ3cfbioMUwsME=;
 b=QX2X/y5AVaB7ONrXjnU0Rt2aWOVUVO3SKrWPTvOrhoVbD4eAhfbsl0t87ybmLOZcHZ
 MO5tbZTkqIdB3oHsD9Y2JfVMiS52yPM9R2eoL/C0GfAEzveIfsWQbC+gHQKQJ3XclJ8b
 YTvukkbJMoYbqldMDwmggLiyeEltaQ4rsEb6HE8lQjAH3cK1f6thOpekSIxsQWVAElaX
 4sZqcNcYCOkiseR78VK4WBnLfwATqzRbYpdQN6MFIJWLtvyn5zrFPSGSLRUTsWILW5/R
 /TYU4SCgyp/Ys7EtO3C+hiC6XJr6dgD7k6aZCtSSzwmFuwkw9p/WZCEPD/Zd2KtHcAZL
 ZMJA==
X-Gm-Message-State: AOAM531ahEIG4mi9YTCb5AoDT0fg/LSzykek8okZSXu4hjHAHvQuH+pK
 R7npKNXEQtUSmNmvOw4AsfNHMIlsodA=
X-Google-Smtp-Source: ABdhPJyHc1+iywL5kUtpB3qE2oe5W65Dk3thpd4RNTDy/J6if7wL8XHbZCgC/Ld/QwozvNtWJvv9Gw==
X-Received: by 2002:ac8:6755:: with SMTP id n21mr16903707qtp.57.1612213539781; 
 Mon, 01 Feb 2021 13:05:39 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id g186sm15343716qke.0.2021.02.01.13.05.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 13:05:39 -0800 (PST)
Message-ID: <60186D22.4090806@gmail.com>
Date: Mon, 01 Feb 2021 16:05:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <8f457819e23ef15e1ee1e60b4ebd9104d2271e62@webmail>
In-Reply-To: <8f457819e23ef15e1ee1e60b4ebd9104d2271e62@webmail>
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
Content-Type: multipart/mixed; boundary="===============7300270939438287294=="
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
--===============7300270939438287294==
Content-Type: multipart/alternative;
 boundary="------------030500050205080405020902"

This is a multi-part message in MIME format.
--------------030500050205080405020902
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2021 04:01 PM, Dennis Trask via USRP-users wrote:
>
> I am attempting to set up a development environment to write software 
> for the E310 by cross-compiling on Ubuntu 18.04. I am using the 
> instructions here: 
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
> I have followed all the instructions to build UHD and am now in the 
> section "Mount and test the UHD build". When I run uhd_usrp_probe on 
> the E310, I get the following ouput:
>
> root@ni-e31x-3199693:~/newinstall# uhd_usrp_probe
>
> -sh: /home/root/newinstall/usr/bin/uhd_usrp_probe: No such file or 
> directory
>
If you do:

file /home/root/newinstall/usr/bin/uhd_usrp_probe

What do you get?

If you do:

which uhd_usrp_probe

What do you get?


> I'm not sure where to look for the source of this issue. Has anyone 
> else seen this or have an idea of what to look for?
>
> Thanks,
>
> Dennis
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030500050205080405020902
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/01/2021 04:01 PM, Dennis Trask
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:8f457819e23ef15e1ee1e60b4ebd9104d2271e62@webmail"
      type="cite">
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">I
          am attempting
          to set up a development environment to write software for the
          E310 by
          cross-compiling on Ubuntu 18.04. I am using the instructions
          here: <a moz-do-not-send="true"
href="https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source"
            id="LPlnk336136">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a><o:p></o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">I
          have followed
          all the instructions to build UHD and am now in the
          section "Mount
          and test the UHD build". When I run uhd_usrp_probe on the
          E310, I get the
          following ouput:<o:p></o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
      <p class="MsoNormal"><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">root@ni-e31x-3199693:~/newinstall#
          uhd_usrp_probe <o:p></o:p></span></p>
      <p class="MsoNormal"><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">-sh:
/home/root/newinstall/usr/bin/uhd_usrp_probe:
          No such file or directory<o:p></o:p></span></p>
      <p class="MsoNormal"><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
      <p class="MsoNormal"><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
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
    <blockquote
      cite="mid:8f457819e23ef15e1ee1e60b4ebd9104d2271e62@webmail"
      type="cite">
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">I'm
          not sure
          where to look for the source of this issue. Has anyone else
          seen this or have
          an idea of what to look for?<o:p></o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">Thanks,<o:p></o:p></span></p>
      <p><span
          style="font-family:&quot;Calibri&quot;,sans-serif;color:black">Dennis<o:p></o:p></span></p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------030500050205080405020902--


--===============7300270939438287294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7300270939438287294==--

