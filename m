Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A44CF454A6C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 16:58:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 991BD384105
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 10:58:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bM32HF9A";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 48C16383E85
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 10:58:00 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id 8so3075195qtx.5
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 07:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Zy/voSEue/isaA3794QfLREISlE+iDSHSp1/g7ZMSgw=;
        b=bM32HF9AWWfwHcvFvBdTrfKd5wv1A2xNuTRX9ItVd5bQWIWtbvmSmFpiY68PMhFtT/
         486mj1FYUKTJYQ2l85oZ8/kehrqDXL/uIabTrNCOQGQavujMzGM013ObM4PVnzcEnejK
         uOuCevsLnKUGPhCTwb2MALs9x9Bs59i1fz3fT2YW+l1TykZLSszF87z9g3Qne6I2iOFU
         Pu4jwWTNrhjUiGT0RJ63SVRgCmKklhRHO2TOPLH1DQyLf7/yw3bOHyOaAdBNax9fYhkT
         LlDSicT+kVDp6cqNLx1yXM2CWm87ZHFOXZeMKmpfw0oTsRsQewcJpSK3Hh1Gv+Xpxifd
         Kspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Zy/voSEue/isaA3794QfLREISlE+iDSHSp1/g7ZMSgw=;
        b=4t9xFQpQsOU693rYuCK5YjkFjxzn3+tJps75eDy0LcL/iODrRWHlXm+Cc7fhpFbtZB
         ud9z+Numvb5gMKB78gK5CYdYOjFFS72XV5l1ww7xPGasytBKa8KEG3YxvfMK73v40qRD
         unJWY4I3ShtruVXnXkfubfzHiAAV6weKZMWM7apRhRdkXnlBMKYpWI1MxOpGGGPvoghw
         ftpZKg0aq/6vL8HHPCpAu63TTg+AVaSFHTNeblYXCVjKNfPFd1AJNcMJxqAxU/LCAj0W
         bhIj3Gcsf2ZeMrUtjh8rBEWXGKmkIv6FF83CBn9AjsNWzbIlrwRxjxv/d1N/vBp+hJrt
         l8TA==
X-Gm-Message-State: AOAM531d1789lKqjx94fX8gQnYkVXvahhB6PYyfWViVml8OcyUmt4XaC
	qD+VQYq3iJgsa888/8GmGpFaNV5G9Dw=
X-Google-Smtp-Source: ABdhPJwYfQmifmQ/ouLlwm/a/7tnMPXmSqiRA4eBAza7EsJ5kHwZ4uT9jrodHQCKqdO9YQdkTBvI3w==
X-Received: by 2002:a05:622a:1351:: with SMTP id w17mr18525284qtk.59.1637164679441;
        Wed, 17 Nov 2021 07:57:59 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id y18sm87686qkp.120.2021.11.17.07.57.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 07:57:59 -0800 (PST)
Message-ID: <24535496-4f69-f667-db40-307f459c2c8a@gmail.com>
Date: Wed, 17 Nov 2021 10:57:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
Message-ID-Hash: ENMDRS56HRATJSWZ3JKV7EFXYQJTUCHW
X-Message-ID-Hash: ENMDRS56HRATJSWZ3JKV7EFXYQJTUCHW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why There is one phase difference in UHD 3.15.0.0, but there are four phase differences in UHD 4.1.0.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENMDRS56HRATJSWZ3JKV7EFXYQJTUCHW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8453228505006676492=="

This is a multi-part message in MIME format.
--===============8453228505006676492==
Content-Type: multipart/alternative;
 boundary="------------aDY69YcAJkhJA0F9sbWlykew"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aDY69YcAJkhJA0F9sbWlykew
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-17 04:03, =E9=99=88=E7=85=9C wrote:
> hello,
>
> =C2=A0 I use four usrp-2945 as synchronous acquisition system, CDA-2990=
=20
> provides internal reference clock and PPS to four usrp-2945, and=20
> pxie-5651 and pxie-5652 are used to provide two-stage local oscillator=20
> for four USRPs. Now I use two usrp-2945 to collect the data of two=20
> channels (one channel for each) and calculate the phase difference=20
> between the two channels. If I use UHD 4.1.0.1, after multiple=20
> acquisition, I find that there are four kinds of phase differences,=20
> and the phase differences are roughly 90 degrees, 180 degrees and 270=20
> degrees. For example, the four phase differences are 4.5 degrees,=20
> 95.53 degrees, 189.51 degrees and 275.49 degrees respectively. If I=20
> use UHD 3.15.0.0, there is only one phase difference.
>
> Setup Details
> 1.CDA-2990 provides internal reference clock and PPS to four usrps.
> 2.Pxie-5651 and Pxie-5652 are used to provide two-stage local=20
> oscillator for four USRPs.
>
> Expected Behavior
> Using UHD 4.1.0.1, there is only one phase difference.
>
> Actual Behaviour
> There are four phase differences using UHD 4.1.0.1.
>
> Steps to reproduce the problem
> After synchronizing the reference clock, PPS and lo, use UHD 4.1.0.1=20
> to collect one channel of different USRP and calculate the phase=20
> difference.
>
> can anybody help me?
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
How is your software configured?=C2=A0 Are you using LO-sharing, or just =
the=20
external REF CLOCK?


--------------aDY69YcAJkhJA0F9sbWlykew
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-17 04:03, =E9=99=88=E7=85=9C=
 wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:tencent_35F980DE62537DB02AB8CFD6@qq.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      hello,
      <div><includetail><!--<![endif]--></includetail></div>
      <div><br>
      </div>
      <div>
        <div>=C2=A0 I use four usrp-2945 as synchronous acquisition syste=
m,
          CDA-2990 provides internal reference clock and PPS to four
          usrp-2945, and pxie-5651 and pxie-5652 are used to provide
          two-stage local oscillator for four USRPs. Now I use two
          usrp-2945 to collect the data of two channels (one channel for
          each) and calculate the phase difference between the two
          channels. If I use UHD 4.1.0.1, after multiple acquisition, I
          find that there are four kinds of phase differences, and the
          phase differences are roughly 90 degrees, 180 degrees and 270
          degrees. For example, the four phase differences are 4.5
          degrees, 95.53 degrees, 189.51 degrees and 275.49 degrees
          respectively. If I use UHD 3.15.0.0, there is only one phase
          difference.</div>
      </div>
      <div><br>
      </div>
      <div>
        <div>Setup Details</div>
        <div>1.CDA-2990 provides internal reference clock and PPS to
          four usrps.</div>
        <div>2.Pxie-5651 and Pxie-5652 are used to provide two-stage
          local oscillator for four USRPs.</div>
        <div><br>
        </div>
        <div>Expected Behavior</div>
        <div>Using UHD 4.1.0.1, there is only one phase difference.</div>
        <div><br>
        </div>
        <div>Actual Behaviour</div>
        <div>There are four phase differences using UHD 4.1.0.1.</div>
        <div><br>
        </div>
        <div>Steps to reproduce the problem</div>
        <div>After synchronizing the reference clock, PPS and lo, use
          UHD 4.1.0.1 to collect one channel of different USRP and
          calculate the phase difference.</div>
      </div>
      <div><br>
      </div>
      <div>can anybody help me?</div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    How is your software configured?=C2=A0 Are you using LO-sharing, or j=
ust
    the external REF CLOCK?<br>
    <br>
    <br>
  </body>
</html>
--------------aDY69YcAJkhJA0F9sbWlykew--

--===============8453228505006676492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8453228505006676492==--
