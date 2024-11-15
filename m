Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C17519CDD07
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 11:52:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02BAB385C05
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 05:52:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731667928; bh=szR01c173+7oquA9tjxwIumhN3x7Qo7JlHvK6AwyYvQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=f+MAXqPndPpPb1bOjmz/7u3oICfCtHeKJ6DxwXWqYOt6AUsjog/LKPEjMjeMlVQJW
	 12xPA1vJ1J44z0KSpjQGslJhr9ifFUP2l18TEeuKpH+DVHLRqdlaLLUCws0NOR98iR
	 e8dT10WbocOXj0JlDv8ffYS23jQpxIbmVNxGrDDn+trQYxFYgT6dFbN8S+w5iumJZz
	 mWjotIgeEQs95Yii9CKeOJJlDz6Uu4190uPiOo+qx8LAymJiLPl2q9o3V68S8UuAZq
	 XieY2XSA11O8RTbUZMEvK21ryLjZ8wf/HU8yeWbfmN53OAq6ZptezihkidqoItmpdg
	 jcXGrlQbXnM4Q==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C455385AF7
	for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 05:51:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ng2Djwhn";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f2b95775so2394229e87.1
        for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 02:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1731667914; x=1732272714; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KTp/d1gxtafaQns2v2dIwBvrwi7MC7IDzez6W7ygPqM=;
        b=ng2Djwhnd1z4oRqIadq8JtOOyWg7VczmuU6boecos1TQt7K8E5c07k3c2nWrUhCvdf
         w3UYog4JMbygnv6wVO2GhKHz+oNAkOUSpC5qy+NSXzXYTzAxMK3sKKXF2Zg8IQSMBMPo
         GoDRicC3aRIxkcnzcr+xy8cdge3V5w5Wkx4mWeuwhcosdpFcmE0ZytwEnNHzRQIOYJtp
         blPEwqxYjv2s/iBHOmZPHgPSbOQ6dhbEUcbuZDEm4ZPDpxqjR7R7KK5cnwxr/Z4GlRvp
         3UmvGbMqtcq9FBCi7ZxOs7sNLi0K0t1XE8nyro30tlnY2kpq/tboBOKp+PR6Ret7rDuw
         opBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731667914; x=1732272714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KTp/d1gxtafaQns2v2dIwBvrwi7MC7IDzez6W7ygPqM=;
        b=GBB9EPtXaUuw1Z7duXC3t83SaAe7swDSzO57xkOcx7PcV4mIzfOisZZiH4F4OWpK9N
         lVL0nrqnvNMwefmPW9WvZ8I9brsEdgJRDs8p88WFcTps0duBiNoA1gAiaoZVXdUNOEH/
         eBeXLmSTPWeRxcmdDF1vCkOMtqSx2QrnME11bbiAeYMFGE48gAQyYpq11pv4oiOYryxL
         FQh2iQn7G7J1wu/73QtQPSosK8DKOdbZB5mqoTnD0ZWfO8w/IaY7Lwf0wBhZA6JH28Ob
         krdDOm2BwJG/Tfk1Nnnotylh+HqxJyl+Ur3m1z3nSzTWGILzDvEAyBZB+ZsT5/VLLou1
         +/LQ==
X-Gm-Message-State: AOJu0YySsoJM2gSGANNfsft7/2qt1IZIR+qCygc7KSwqJaWl6eXN689s
	aIX7aWIGUlDRUMOXwTlUEQSlklE4w1j49IZQ0aoHe57C0lr1YPqqeeqTaMPS09X2VfEKHfkmYsr
	aEAbQAv+A1fwhS9q4gnYyWLbUlscqOzAOqmA1PUQs
X-Google-Smtp-Source: AGHT+IGhBYHbY2AlAICim+oWhz42uQ0EL1iNl2KRQFAC0/IVLhAdKK45EsJJ3tagtQ62M1t/dE3HUZ+L0bsAXSG0uL4=
X-Received: by 2002:a05:6512:128a:b0:52c:deb9:904b with SMTP id
 2adb3069b0e04-53dab3b16ccmr1691558e87.38.1731667913641; Fri, 15 Nov 2024
 02:51:53 -0800 (PST)
MIME-Version: 1.0
References: <CAEjVBOnEWfAQxi3q8bDHpJPGgvr+CZczpA9zeScK7LWDTG+kQw@mail.gmail.com>
In-Reply-To: <CAEjVBOnEWfAQxi3q8bDHpJPGgvr+CZczpA9zeScK7LWDTG+kQw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 15 Nov 2024 11:51:41 +0100
Message-ID: <CAFOi1A6xU7jMevH07+FhriyC0a2DXqTQo-UUYQTXsGoG1vHpLg@mail.gmail.com>
To: Muneer Al-Zubi <muneermaz85@gmail.com>
Message-ID-Hash: AVWAGWUTY6KGWVICDJ6LVNRCCPEKEOTI
X-Message-ID-Hash: AVWAGWUTY6KGWVICDJ6LVNRCCPEKEOTI
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmark module for over-the-air wireless communication
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVWAGWUTY6KGWVICDJ6LVNRCCPEKEOTI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7426447553269544732=="

--===============7426447553269544732==
Content-Type: multipart/alternative; boundary="000000000000dcabd00626f15a21"

--000000000000dcabd00626f15a21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Muneer,

many thanks for sharing this! This could be a very useful tool. I hope
people find it useful.

--M

On Fri, Nov 15, 2024 at 11:37=E2=80=AFAM Muneer Al-Zubi <muneermaz85@gmail.=
com>
wrote:

> Dear USRP Community,
>
> I have developed a flexible and easy-to-use benchmark module that can
> evaluate the over-the-air performance of various software-defined radio
> (SDR)-based communication systems in GNU Radio.
>
> This module can provide the system performance metrics of packet
> transmission in realistic communication channels including packet error
> rate (PER), packet loss rate (PLR), signal-to-noise ratio (SNR), latency,
> and throughput. It can be easily added and used in the GUI GRC flowgraph.=
 I
> have tested this module outdoors with over-the-air transmission using USR=
P
> N210 and DQPSK, GMSK, GFSK, etc.
>
> This tool provides a flexible benchmark method that works with various
> communication systems that use different communication protocols,
> signal-processing techniques, and SDR hardware in GNU Radio. This is
> because this benchmark module depends mainly on the received radio signal
> and data packets, unlike other benchmark tools which are limited by
> specific SDR hardware and communication techniques.
>
> We believe that this tool will provide great help to the GNU Radio
> community in evaluating the performance of the developed communication
> testbeds and prototypes in GNU Radio.
>
> The module and its instructions is uploaded to GitHub:
>
> https://github.com/muneer85/gr-benchmark
>
> I would appreciate it if you could try it out and send me your feedback
> and if you could share it with your friends.
>
> Thanks.
>
> Best Regards
> Muneer
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dcabd00626f15a21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Muneer,</div><div><br></div><div>many thanks for s=
haring this! This could be a very useful tool. I hope people find it useful=
.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 15, 2024 at 11:37=E2=80=
=AFAM Muneer Al-Zubi &lt;<a href=3D"mailto:muneermaz85@gmail.com">muneermaz=
85@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Dear USRP Community,<br><br>I have developed a=
 flexible and easy-to-use benchmark module that can evaluate the over-the-a=
ir performance of various software-defined radio (SDR)-based communication =
systems in GNU Radio.<br><br>This module can provide the system performance=
 metrics of packet transmission in realistic communication channels includi=
ng packet error rate (PER), packet loss rate (PLR), signal-to-noise ratio (=
SNR), latency, and throughput. It can be easily added and used in the GUI G=
RC flowgraph. I have tested this module outdoors with over-the-air transmis=
sion using USRP N210 and DQPSK, GMSK, GFSK, etc. <br><br>This tool provides=
 a flexible benchmark method that works with various communication systems =
that use different communication protocols, signal-processing techniques, a=
nd SDR hardware in GNU Radio. This is because this benchmark module depends=
 mainly on the received radio signal and data packets, unlike other benchma=
rk tools which are limited by specific SDR hardware and communication techn=
iques. <br><br>We believe that this tool will provide great help to the GNU=
 Radio community in evaluating the performance of the developed communicati=
on testbeds and prototypes in GNU Radio. =C2=A0<br><br>The module and its i=
nstructions is uploaded to GitHub:<br><br><a href=3D"https://github.com/mun=
eer85/gr-benchmark" target=3D"_blank">https://github.com/muneer85/gr-benchm=
ark<br></a><br>I would appreciate it if you could try it out and send me yo=
ur feedback and if you could share it with your friends.<br><br>Thanks.<br>=
<br>Best Regards<br>Muneer</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dcabd00626f15a21--

--===============7426447553269544732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7426447553269544732==--
