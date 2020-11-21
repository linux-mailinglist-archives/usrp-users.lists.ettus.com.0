Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB3C2BC18D
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 19:46:02 +0100 (CET)
Received: from [::1] (port=59356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgXtY-0007gH-Os; Sat, 21 Nov 2020 13:46:00 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:44966)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kgXtV-0007Zc-4a
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 13:45:57 -0500
Received: by mail-qt1-f179.google.com with SMTP id m65so9706819qte.11
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 10:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=wIG9txPl94D6HT6jqveOWfl/r47ob6/cWom96Qz6O0M=;
 b=ok6KTwD7OCmruLj62IJY72Tfkv8we/3q7b7YrTuaw2bidWSmTMekn8YjwFu1iGmoyv
 Sc4Pt/a26UF/twesxmGwbvoBMNnAwmH2BA/XpPCPVA11VCnc9rPpYH9Bi6UiZ8daIFWa
 hDVvLQNb2MnhiBp1roFI4Vm27UZtWW2RGp12o32mYgAyP03onjwPeYJrecFrjOT97FGV
 GeYixcyen8OhVu42ha0vCcjuBShg7vQL5sC+3LmCMAwsoY/gTR8u8X177dwZg9avs6kR
 Oi+fpONS7k04/D99kcgkHOuq+A8U90OFeAvzq19j+Fu+bJ+tcNqkGBt1VkUfM9giCixQ
 oyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=wIG9txPl94D6HT6jqveOWfl/r47ob6/cWom96Qz6O0M=;
 b=ZEQ8xYZ5i2A8jqChoGidzCLZ73sC3T0daG2Q/RyDqBM+w2T1ORpGnwnw2N/AaqsQE4
 hVmKrSCsYpK3Yep13Bk4zq7kcpfNC1BHVu7gM2LouT2ArQNUzOQ4ZfhfDe+I5YCCNy+Z
 Ve9v+a/KJRgJ0zVMc6yKZ9OljY+1hTN9ZpxqwbJrCXIe7lWWVOn0MLTG5gH4z75XKco9
 OZXPsxRCchQnfuLRZLVtDNt/MCEEA8zIOY1S5Ck3mD051XITnPfnUKCJByrrxJKiuxn0
 ZrD5g3xdboVdQu2PizjOUb/aXLMgg6ui627KYt0MWNqirW6ndJdlHr6sHOQyVhPeIp7z
 IZKQ==
X-Gm-Message-State: AOAM533uOQCHE25JmMJ1DERduttoS4tMVdPm4AqA9gNELgfe/17FOynA
 zQ3osVnszZ+RtgHFtMA4l12iqU/xIvg=
X-Google-Smtp-Source: ABdhPJwl+BCQujDyt89FkIFGf/BAuh+qZ4AkOALusQCgq2M4ZQztckBOsj038R85GWPKvLncNy0uiw==
X-Received: by 2002:ac8:5d53:: with SMTP id g19mr22774342qtx.354.1605984316488; 
 Sat, 21 Nov 2020 10:45:16 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id s68sm4572581qkc.43.2020.11.21.10.45.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 10:45:16 -0800 (PST)
Message-ID: <5FB9603B.9000408@gmail.com>
Date: Sat, 21 Nov 2020 13:45:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ivan Zahartchuk <adray0001@gmail.com>, 
 discuss-gnuradio <discuss-gnuradio@gnu.org>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CAPRRyxtbQ1UWrUd=hhJxmUMyMRt8rLtvpLMGPoqZXVpai=a9Aw@mail.gmail.com>
 <3A42F7CE-97CC-4D96-9534-583EBF92FFE0@gmail.com>
 <CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com>
In-Reply-To: <CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com>
Subject: Re: [USRP-users] Overrun on chan error 0 USRP e310 RFNoC
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
Content-Type: multipart/mixed; boundary="===============5720279642078750808=="
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
--===============5720279642078750808==
Content-Type: multipart/alternative;
 boundary="------------020701060909020907060308"

This is a multi-part message in MIME format.
--------------020701060909020907060308
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/21/2020 06:53 AM, Ivan Zahartchuk wrote:
> I was setting samp_rate to 1 msps and observed the same situation. In addition, in the example fosphor samp_rate = 56 msps and no errors occur.
>
If you replace the ZMQ blocks with NULL SINK blocks, do the overruns go 
away?


>
> сб, 21 нояб. 2020 г. в 05:12, Marcus D Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>>:
>
>     There’s no way the fpga to ARM channel can support those data
>     rates.  Lower your sample rate to 5msps and try again.
>
>     Sent from my iPhone
>
>     > On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>     >
>     > ﻿
>     > Hello, I want to launch two channels for receiving in parallel
>     with usrp e310 rfnoc. But on startup, I get an overrun error. What
>     I need is uninterrupted data transmission for phase analysis on
>     both channels. How can I do this?
>     > <Снимок экрана от 2020-11-21 04-50-17.png>
>     >
>     > <Снимок экрана от 2020-11-21 04-52-21.png>
>     >
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------020701060909020907060308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/21/2020 06:53 AM, Ivan Zahartchuk
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail-oSioSc">
          <div id="gmail-tw-target">
            <div id="gmail-kAz1tf" class="gmail-g9WsWb">
              <div class="gmail-tw-ta-container gmail-hide-focus-ring
                gmail-tw-nfl" id="gmail-tw-target-text-container"
                tabindex="0">
                <pre class="gmail-tw-data-text gmail-tw-text-large gmail-XcVN5d gmail-tw-ta" id="gmail-tw-target-text" style="text-align:left" dir="ltr"><span lang="en">I was setting samp_rate to 1 msps and observed the same situation. In addition, in the example fosphor samp_rate = 56 msps and no errors occur.</span></pre>
              </div>
            </div>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    If you replace the ZMQ blocks with NULL SINK blocks, do the overruns
    go away?<br>
    <br>
    <br>
    <blockquote
cite="mid:CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">сб, 21 нояб. 2020 г. в
            05:12, Marcus D Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">There’s no way the fpga
            to ARM channel can support those data rates.  Lower your
            sample rate to 5msps and try again. <br>
            <br>
            Sent from my iPhone<br>
            <br>
            &gt; On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via
            USRP-users &lt;<a moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
            &gt; <br>
            &gt; ﻿<br>
            &gt; Hello, I want to launch two channels for receiving in
            parallel with usrp e310 rfnoc. But on startup, I get an
            overrun error. What I need is uninterrupted data
            transmission for phase analysis on both channels. How can I
            do this?<br>
            &gt; &lt;Снимок экрана от 2020-11-21 04-50-17.png&gt;<br>
            &gt; <br>
            &gt; &lt;Снимок экрана от 2020-11-21 04-52-21.png&gt;<br>
            &gt; <br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list<br>
            &gt; <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            &gt; <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020701060909020907060308--


--===============5720279642078750808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5720279642078750808==--

