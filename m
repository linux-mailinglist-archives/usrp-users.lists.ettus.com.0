Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A198226C381
	for <lists+usrp-users@lfdr.de>; Wed, 16 Sep 2020 16:05:09 +0200 (CEST)
Received: from [::1] (port=50656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIY3W-0002Xi-9G; Wed, 16 Sep 2020 10:05:06 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:34762)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kIY3T-0002Ru-2W
 for USRP-users@lists.ettus.com; Wed, 16 Sep 2020 10:05:03 -0400
Received: by mail-qk1-f171.google.com with SMTP id w186so8266326qkd.1
 for <USRP-users@lists.ettus.com>; Wed, 16 Sep 2020 07:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=qunvEBpB0YUNJWGqhNy3u0SkezK0IZycN1FTIeDgeYY=;
 b=ENurML+nfPEjmDqEvOgYi4RrjvmUntvvPZJjsh6HXixKYD6XRePfxzDAI2Ch8VrCG3
 qW63j5KMDfFVy81Je6XUyM6lrA5/2258EvGNAL38fYK1PqLk4INWAoF9DEEnqOf+gnde
 G6JFmRzqIPqG5SQP7mNYaoFYGV6CIcMhr/Wg5z4skgd9vjT80FYxDvJB72Nzl5riCoiX
 IN0uCMtpGKq9Half3vY912JlspuAtqhnRQRHgqPzByJR12iOJhLZlikf2Ll+eYe3cZL8
 OjDfG0t+nOkRQWWHp/tGJNV4SOP0cF6IGjZ5ebybh/LOfF4VMV3X4RJoOT9HcVIsdFRT
 EcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=qunvEBpB0YUNJWGqhNy3u0SkezK0IZycN1FTIeDgeYY=;
 b=Oi5PeWRTTGOnOX/yAz2vIWSVSWiNvZK+vfIjklIRBOQny0heAA6JKAwEPHX1mavqvk
 WOEtkep18pfDUtdG+bzgWenmVEuoMX55Pc3CkfLVlm32aFcR+84683ZcGWCb6ISvE6si
 XM2EpsWC6kfoxs6xsD9jHxwcI/itvUciFaJoVk5PE4yGwUWu/cE72sxS1219/5JUcBOv
 xYWXWh1j+r9+gjo0aGi1XEQdIDfLnsja1JvYukMxm/RZmg/KkYDd+KCRvZcvdsYNRtRj
 oxfih9/o97WDBdtSqoRdISGZ/FMQg6zveigMdoo6W6De26otpugMUuYP2wGP172eCQhV
 YOsA==
X-Gm-Message-State: AOAM53221s9CExRPtCBIpE8SiHt4NytkfRAuLrLQtrUpAkonTJtjNzl1
 CNOsYE92lUi6xX2GMPQHF1NTRuDclF0CYw==
X-Google-Smtp-Source: ABdhPJzXSoVlw6RnBjWRN4fCkmAcWDRamI5oxwx4TKw9OLszjOEyHhgLw7D+NFFegzB3dAlNVHbs9A==
X-Received: by 2002:a37:9442:: with SMTP id w63mr22261503qkd.398.1600265062255; 
 Wed, 16 Sep 2020 07:04:22 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d5sm20154686qtm.36.2020.09.16.07.04.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Sep 2020 07:04:21 -0700 (PDT)
Message-ID: <5F621B65.604@gmail.com>
Date: Wed, 16 Sep 2020 10:04:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
References: <BM1PR01MB2577AAF159C707359EF8716C90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>,
 <10D37CD6-BF5C-4542-BA82-B580AD65F260@gmail.com>
 <BM1PR01MB257750816AB0DD3A15D5D75A90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB257750816AB0DD3A15D5D75A90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] 100 MSps in usrp 2955
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5474045370857888561=="
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
--===============5474045370857888561==
Content-Type: multipart/alternative;
 boundary="------------050701040403000106020903"

This is a multi-part message in MIME format.
--------------050701040403000106020903
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/16/2020 05:26 AM, Koyel Das (Vehere) wrote:
> By integer fractions I understand that to get 100 MSps, the sampler 
> must sample at 200 MSps and then decimate by 2 to get 100 MSps 
> right? But if I stream two channels at 100 MSps, the sampler can’t 
> sample two channels simultaneously at 200 MSps and then decimate each 
> to 100 MSps I suppose. Then it will not have any other option than 
> using 120 MSps for two channels instead. This is just what I feel. 
> Correct me if I am wrong.
>

The 2955 has *4* ADC channels, each operating at 200Msps.   The 
underlying X310 "motherboard" *does* support other master-clock
   rates (and thus host-side sample-rates), but in the *SPECIFIC* case 
of the TwinRx cards the master clock rate MUST be 200MHz.

For many daughter-cards, those channels are used in pairs for 
complex-baseband sampling.

For the 2955, which contains two TwinRx cards, and thus 4 analog 
channels, the 4 ADC channels are sampling a "real mode" low-IF signal that
   is 80MHz wide.  That is transformed by the DDC in the FPGA to a 
100Msps complex stream which can then be further decimated to whatever
   (integer fraction) rate the host software requires.



--------------050701040403000106020903
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/16/2020 05:26 AM, Koyel Das
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR01MB257750816AB0DD3A15D5D75A90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div>
          <div>By integer fractions I understand that to get 100 MSps,
            the sampler must sample at 200 MSps and then decimate by 2
            to get 100 MSps right? But if I stream two channels at 100
            MSps, the sampler can’t sample two channels simultaneously
            at 200 MSps and then decimate each to 100 MSps I
            suppose. Then it will not have any other option than using
            120 MSps for two channels instead. This is just what I feel.
            Correct me if I am wrong.</div>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    The 2955 has *4* ADC channels, each operating at 200Msps.   The
    underlying X310 "motherboard" *does* support other master-clock<br>
      rates (and thus host-side sample-rates), but in the *SPECIFIC*
    case of the TwinRx cards the master clock rate MUST be 200MHz.<br>
    <br>
    For many daughter-cards, those channels are used in pairs for
    complex-baseband sampling.<br>
    <br>
    For the 2955, which contains two TwinRx cards, and thus 4 analog
    channels, the 4 ADC channels are sampling a "real mode" low-IF
    signal that<br>
      is 80MHz wide.  That is transformed by the DDC in the FPGA to a
    100Msps complex stream which can then be further decimated to
    whatever<br>
      (integer fraction) rate the host software requires.<br>
    <br>
    <br>
  </body>
</html>

--------------050701040403000106020903--


--===============5474045370857888561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5474045370857888561==--

