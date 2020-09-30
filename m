Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A0327F26E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 21:15:51 +0200 (CEST)
Received: from [::1] (port=37750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNhZt-0002gU-MZ; Wed, 30 Sep 2020 15:15:49 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:40552)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNhZq-0002Zz-CW
 for usrp-users@lists.ettus.com; Wed, 30 Sep 2020 15:15:46 -0400
Received: by mail-qk1-f173.google.com with SMTP id w16so2643523qkj.7
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 12:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=v4+StBpAkCpSi0bYFMPGXmhSPy+vKUq+ep0uwWikytE=;
 b=eRiln4U+fx3Wa+d+Pp3ze+M0eTb2/3MBCl5scL04Y3r5HdLo+lwzcvqNg1jI8wKps5
 pugKsTkmpqyXfQyCMGIYQqb/Uye0ctBDMuTDw6fMJdrCZQbU/OOsJM+K4KtjwRc13TBG
 CzxbEnspmFe9TVvgqPgpKQBByZuxb/s/9MLPLl659dDgAraQPLfjMAXkEy8BkyCxo0P6
 wVbw4OEacnt6S9n9gMphDoDWE8VtNYwcOTbI/6SnAhXKId8jO0ErMWUyDVUvGGwMikSX
 DTuvUvCplPCjoLGoiyTQZchstlIwVACIXbEB473voc82f304C9SIoiW4WnsIIV6gX/dt
 4irA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=v4+StBpAkCpSi0bYFMPGXmhSPy+vKUq+ep0uwWikytE=;
 b=hTS5YdAam39RwdFQTWq8K2d72WhKcuglX6pWBGMg/SkI+6HU8xmR3FXx2cnYeYYoAk
 ZKWcqS4+7J2uhHlWxPwkUdLbz/ogLQES3oIKez4rjm+e13H3svrkN9UDRsHwtDkb30CD
 do13BfGiaYCtjOFE0j6dq6+yLj9INyM5eMwY+MaYGaYpsPanCuddIWsc+wql9oeHU8FF
 cLWvU66XURpqtuK8SwMd6zKXVUT4FvmB3N/1K8D9IFg30e+0jq4F8g9JJEIZRcTvUYmd
 N08oaA++vaCB0/BszIYIawoCnamFK2yak4/BXF0qKZ6bkHCDFvAbdUTjwMJVgZNZS9UE
 0/zQ==
X-Gm-Message-State: AOAM530X24BipTWA4U51Lb1vTOieYLjb5Fc6oH6w8ZqRCG2lHfeOw+8I
 Gmzk+rc2f7gpuL7KN97izM1GjAjlaPG/Vg==
X-Google-Smtp-Source: ABdhPJycaeY9MrxA/ZK/+k7ys0zs12jIUGFylqaPjLqREq4H29bkHPgVy0hhuV8dZdtKRWd9tSH5Ng==
X-Received: by 2002:a37:6301:: with SMTP id x1mr4021974qkb.323.1601493305725; 
 Wed, 30 Sep 2020 12:15:05 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g12sm3354067qke.90.2020.09.30.12.15.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Sep 2020 12:15:05 -0700 (PDT)
Message-ID: <5F74D938.8000906@gmail.com>
Date: Wed, 30 Sep 2020 15:15:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <d509ab3c99a24ae0a9ec6d74f9b0f847@boeing.com>
In-Reply-To: <d509ab3c99a24ae0a9ec6d74f9b0f847@boeing.com>
Subject: Re: [USRP-users] B205mini-I 1-PPS and 10-MHz
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
Content-Type: multipart/mixed; boundary="===============7289703142581359024=="
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
--===============7289703142581359024==
Content-Type: multipart/alternative;
 boundary="------------070909070900000503040906"

This is a multi-part message in MIME format.
--------------070909070900000503040906
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/30/2020 01:32 PM, Clark (US), Kenneth C via USRP-users wrote:
> Hello,
>
> The B210 has separate connectors for a 1-PPS and 10-MHz reference.
>
> But the B205 has only the one SMA connector, which is indicated to be dual
> purpose (1-PPS or 10-MHz).
>
> Is it possible connect both, using a GPIO pin for the 1-PPS?
>
> If so, which pin?  How to enable?
>
> Thanks,
>
> Ken Clark
The B205 external clock apparatus is quite different than on other 
USRPs.   Rather than having an analog clock PLL chip, there's
   a DPLL implemented in the FPGA.

That DPLL automatically "figures out" whether you have 1PPS or 10MHz 
coming into the external clock input--of which there is only one.
   Once it figures that out, it automatically steers the internal VCTCXO 
based on the estimates of the internal-to-FPGA DPLL.

My recollection is that you set PPS to "internal", and REFCLOCK to 
"external", and it will act appropriately.

You *could* re-jig the FPGA code to have both a 10Mhz reference, and a 
1PPS coming in on a GPIO--but that isn't built in.


>
>
> Ken Clark
> Email: kenneth.c.clark2@boeing.com
> Mobile: +1 561 398 1050
> DRT, Inc.
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------070909070900000503040906
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/30/2020 01:32 PM, Clark (US),
      Kenneth C via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:d509ab3c99a24ae0a9ec6d74f9b0f847@boeing.com"
      type="cite">
      <pre wrap="">Hello,

The B210 has separate connectors for a 1-PPS and 10-MHz reference.

But the B205 has only the one SMA connector, which is indicated to be dual
purpose (1-PPS or 10-MHz).

Is it possible connect both, using a GPIO pin for the 1-PPS?

If so, which pin?  How to enable?

Thanks,

Ken Clark</pre>
    </blockquote>
    The B205 external clock apparatus is quite different than on other
    USRPs.   Rather than having an analog clock PLL chip, there's<br>
      a DPLL implemented in the FPGA.<br>
    <br>
    That DPLL automatically "figures out" whether you have 1PPS or 10MHz
    coming into the external clock input--of which there is only one.<br>
      Once it figures that out, it automatically steers the internal
    VCTCXO based on the estimates of the internal-to-FPGA DPLL.<br>
    <br>
    My recollection is that you set PPS to "internal", and REFCLOCK to
    "external", and it will act appropriately.<br>
    <br>
    You *could* re-jig the FPGA code to have both a 10Mhz reference, and
    a 1PPS coming in on a GPIO--but that isn't built in.<br>
    <br>
    <br>
    <blockquote cite="mid:d509ab3c99a24ae0a9ec6d74f9b0f847@boeing.com"
      type="cite">
      <pre wrap="">


Ken Clark
Email: <a class="moz-txt-link-abbreviated" href="mailto:kenneth.c.clark2@boeing.com">kenneth.c.clark2@boeing.com</a>
Mobile: +1 561 398 1050
DRT, Inc.




</pre>
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

--------------070909070900000503040906--


--===============7289703142581359024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7289703142581359024==--

