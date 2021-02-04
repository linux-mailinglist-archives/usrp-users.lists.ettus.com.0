Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF1630FD3F
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 20:50:12 +0100 (CET)
Received: from [::1] (port=42480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7kdk-00077S-Lt; Thu, 04 Feb 2021 14:50:08 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:40414)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l7kdh-00073M-Gw
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 14:50:05 -0500
Received: by mail-qk1-f172.google.com with SMTP id u20so4571888qku.7
 for <usrp-users@lists.ettus.com>; Thu, 04 Feb 2021 11:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=euMl9rXLDvV5AdviDT+bQrbswQwQqJnWRKIwLRheiDM=;
 b=GR1R6H3X80ryUt3pr2WcxQwRiDKJkoRXh+pvd9wT4UD/5wdeYEeC/YhW74ZLI+1yMu
 qc/BA7gNU0IciVEGvOHMrMV0aQdhQMOxLOjsXqtghj5RBwyVkJol+P/WMC3EygmqebNX
 TBJRR/Hx0DTqs4Yu1u5LxTzxC3Og4hoxY4lWoBXxj5twJFem6WYI/2i5oloOBOQ86vDv
 gtP4jxKqvATZlFC67qEPYUo9IIJhoJFNlgbq/zQ5BsRGgOLC1CBXsFy3MuqerxaWUu3+
 qwxM9p0IKAZvijDioiNoa8kVMnLByIaUSqWMxkaSLVUnJiTASwxUB6h0RK+XAYSIrk2j
 J+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=euMl9rXLDvV5AdviDT+bQrbswQwQqJnWRKIwLRheiDM=;
 b=eb0iNWTk7/dmSPChv/F5Sp/JmaFAif9Jfa8yn+SLPhbtjh8LpNg0Za6wWs1RXiyOhy
 tsFNi2YyhkNFWYJT9M1wt/RHpQwfcYVA1eZbRLdMFOFm8khPxsLLhuaCk8IwiK2L9M8t
 qxj7IlJEimXFpYxtvcEHf57hBODWagpDvSXPYB21xIfeFiBUQJ89rYzeRKDH45cN2ju4
 FWUP2EhqMl+vNDW1NK3Oh7XrwonyspDzngOCXDeIF0weREBT/FPbu/MBBHHAB1afqDVx
 FjrrCXyZHig8+vCGX2qtREJAtUzsUgcJTiUTDgHC2P+CmSs6CW+ZZg9xl+1arqGo8zs3
 JFjA==
X-Gm-Message-State: AOAM530avu20d6FRTRKwUEQBoIHt+SkS0K9EsXowvoRzzaqKbsqMAdV4
 yyQjbF2ZuoFfp1ArKsSQMBIN61V/ps8=
X-Google-Smtp-Source: ABdhPJzM+bdEnt7RZ55+zx9uSadEpBVO9Kl8hypUhekvGeZhqSdDeqmuj4cR7rOmVu5A3tGJzt9A5Q==
X-Received: by 2002:a37:9a14:: with SMTP id c20mr806587qke.11.1612468164790;
 Thu, 04 Feb 2021 11:49:24 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id i17sm5553218qtg.77.2021.02.04.11.49.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Feb 2021 11:49:24 -0800 (PST)
Message-ID: <601C4FC3.1090501@gmail.com>
Date: Thu, 04 Feb 2021 14:49:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: dtrask1@tampabay.rr.com
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <c8e4246ff9817392e080758fedf65d9d342dff3a@webmail>
In-Reply-To: <c8e4246ff9817392e080758fedf65d9d342dff3a@webmail>
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
Content-Type: multipart/mixed; boundary="===============8623510829676766170=="
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
--===============8623510829676766170==
Content-Type: multipart/alternative;
 boundary="------------060503010406080402040903"

This is a multi-part message in MIME format.
--------------060503010406080402040903
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2021 12:12 PM, dtrask1@tampabay.rr.com wrote:
> Good info. Thanks. I am attempting to burn a new image to the SD card. 
> I 
> downloaded https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip 
> which contains usrp_e320_fs.sdimg. Will this work to boot my e310?
>
> Dennis
>
I'm going to say "almost certainly YES".  I haven't had a chance to try 
that image, and my lab is currently in a state of flux--we're moving
   to a new location and everything is in turmoil, so I can't burn that 
image myself right now.


> -----------------------------------------
>
> From: "Marcus D. Leech"
> To: dtrask1@tampabay.rr.com
> Cc: "usrp-users@lists.ettus.com"
> Sent: Wednesday February 3 2021 9:25:58PM
> Subject: Re: [USRP-users] Error Testing UHD Build on E310 with 
> uhd_usrp_probe
>
> On 02/02/2021 04:20 PM, dtrask1@tampabay.rr.com wrote:
> > From the root directory of the radio, I did: find . -name "ld-linux*"
> >
> > That command produced no results, either.
> >
> > If I am following the instructions
> > at 
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,
> > should I expect to find this library under
> > /home/root/newinstall/usr/lib? Or should it be on the image installed
> > on the SD card under /lib?
> >
> > I have followed the above instructions to the letter, except for one
> > change. After I cloned gr-ettus, I made sure to checkout the maint-3.7
> > branch, to match the gnuradio version. However, I don't believe this
> > should have any affect on the UHD cross-compile, should it?
> >
> >
> So, here is what I have on my E310:
>
> root@plood:~# find /lib -name *ld-*
> /lib/ld-2.21.so
> /lib/.debug/ld-2.21.so
> /lib/ld-linux-armhf.so.3
>
> I think your E310 filesystem may not be quite correct.
>


--------------060503010406080402040903
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/04/2021 12:12 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:c8e4246ff9817392e080758fedf65d9d342dff3a@webmail"
      type="cite">Good info. Thanks. I am attempting to burn a new image
      to the SD card. I
      downloaded <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.1/e3xx_e320_sdimg_default-v3.14.1.1.zip</a>
      which contains usrp_e320_fs.sdimg. Will this work to boot my e310?
      <div><br>
      </div>
      <div>Dennis</div>
      <div><br>
      </div>
    </blockquote>
    I'm going to say "almost certainly YES".  I haven't had a chance to
    try that image, and my lab is currently in a state of flux--we're
    moving<br>
      to a new location and everything is in turmoil, so I can't burn
    that image myself right now.<br>
    <br>
    <br>
    <blockquote
      cite="mid:c8e4246ff9817392e080758fedf65d9d342dff3a@webmail"
      type="cite">
      <div>
        <p>-----------------------------------------</p>
        From: "Marcus D. Leech" <patchvonbraun@gmail.com><br>
          To: <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a><br>
          Cc: <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a><br>
          Sent: Wednesday February 3 2021 9:25:58PM<br>
          Subject: Re: [USRP-users] Error Testing UHD Build on E310 with
          uhd_usrp_probe<br>
          <br>
          On 02/02/2021 04:20 PM, <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
          &gt; From the root directory of the radio, I did: find . -name
          "ld-linux*"<br>
          &gt;<br>
          &gt; That command produced no results, either.<br>
          &gt;<br>
          &gt; If I am following the instructions<br>
          &gt; at <a moz-do-not-send="true"
href="https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source,</a><br>
          &gt; should I expect to find this library under<br>
          &gt; /home/root/newinstall/usr/lib? Or should it be on the
          image
          installed<br>
          &gt; on the SD card under /lib?<br>
          &gt;<br>
          &gt; I have followed the above instructions to the letter,
          except
          for one<br>
          &gt; change. After I cloned gr-ettus, I made sure to checkout
          the
          maint-3.7<br>
          &gt; branch, to match the gnuradio version. However, I don't
          believe this<br>
          &gt; should have any affect on the UHD cross-compile, should
          it?<br>
          &gt;<br>
          &gt;<br>
          So, here is what I have on my E310:<br>
          <br>
          root@plood:~# find /lib -name *ld-*<br>
          /lib/ld-2.21.so<br>
          /lib/.debug/ld-2.21.so<br>
          /lib/ld-linux-armhf.so.3<br>
          <br>
          I think your E310 filesystem may not be quite correct.<br>
          <br>
        </patchvonbraun@gmail.com></div>
    </blockquote>
    <br>
  </body>
</html>

--------------060503010406080402040903--


--===============8623510829676766170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8623510829676766170==--

