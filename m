Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE6963465
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 00:05:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 239413856BD
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 18:05:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724882733; bh=mcP77rTG3hvB+CNcXAfY5DJ8O25woyFiBZ0sPLSx9/4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Gk0LQzJBSdVOr5ZD1eKFB0r5/lCS7xugDN6ILF5tPDRMO5oH3E3hAjhzVIDOwlAuV
	 TJi8ALyD/W3US6w9bmEK8bL6C4SIRngZvt/TSEM/nQHUt1A1QCgvksEYUsDLW9HmRE
	 jP2E4N2MQL+tiqMeh5r1m1Udz+UhGSszcJ8StVBe/xop8CDTDxtmslrWkZ8nV5v3gu
	 YyV3vaTBJY9eKw1rJeM2so6tlURUwJgnEvkTGYvdHkTUvY+CeUQ0WvGt89eSqhW9Ef
	 jv8wGDuP/izu1u5F6tHq/KtEetJcwHjKlDp9zHZ9KvstE/cFHwOKY0tZRlIoF83+UX
	 CWaYYcmVAtoUQ==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 52E66385658
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 18:04:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hIELv4/4";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3db2315d7ceso1402272b6e.1
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 15:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724882687; x=1725487487; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CP0BFwiK//k/0O3IRQgznB4TLb/gkMoUaE3kUFAmUb4=;
        b=hIELv4/4hxTOrYN+JxMwYVyiVh0YIFykvZA17j76f2jXTwDj2ZoSfaQtzjTHRbyoYf
         bHnJ7pTxf1fUNLO53Sip2Hn2FQjDR/tCfdfE2YKEwerPrWhZYZLrbPFQ4aNNtKDlXIY+
         buiM5Tx4FrECM4TZAVX/9QOJm5+YSMlBwjHysTXtsSE9chK3Tt6H6OZjKf7Wwzes2wcI
         4q/YYKkLgtZvkrz9ThQQFFK5BuDgfvUorV2HKXS7XgLKEO738zTMbbrK9N306L8ZFKWQ
         ZH5hT74XVrh+i5LxPPiwe1ffkndKrD5IE9XztZ8oYuFjSJP4UO0Qz0rutOL4/0rKpHwF
         B9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724882687; x=1725487487;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CP0BFwiK//k/0O3IRQgznB4TLb/gkMoUaE3kUFAmUb4=;
        b=pp0ZQJar4iz8ef0bTNg+7RvRQJ9VzGSp8MGIljcmEnSNEn2pr6063rc2eqMnBgbel3
         Z2Ei5YReO4PggC3yWH+OWZqxjqqFsTSTuwG23ZpXfBjVIC8ZH/BK++NgqM8mYWiKp+/s
         OMZu5jcD742bLRRTmTOAkJ2NIk0dhb9rX/U3bf1oLVeVukm3NVvHWsuwWr0vey8kbw9U
         CwgpO17x/1KvUko6hXKCXjABRZzPKz47bWlTiA/jG6ibdjKXLO2Zq1HK9v5ZShHm8sPY
         Pyoo85qNvN7l9HXnQiFshmqBh/A06Zv2ifIuabr6kAGrbZ42Tf/2NTyZxoRh4Z+eBZim
         OMZA==
X-Gm-Message-State: AOJu0YzVySE50jVKYUcemWD6AMEvbphb+/XdwtPQ3PJCPZdTAP7qimQE
	4MCTJ8trUTF1eubzrGpbVatU1LMBwrWyYKCOQyUsjH0BqhU5qWhxuEqU6a8gwDe9LB8b63u1RkJ
	NENCVZfkucnIxfCPXKgWi4JY4aqUyzQ==
X-Google-Smtp-Source: AGHT+IHRabAeaOiZt8RLzXhz7PyAuOH13+dmjNlP/4jED9zoS/vZIOXba/d5fxF4AQmoTonakRFt0N6D6cx/dIyfpyY=
X-Received: by 2002:a05:6808:18a2:b0:3da:bbf9:9284 with SMTP id
 5614622812f47-3df05f0e2aemr694683b6e.51.1724882687307; Wed, 28 Aug 2024
 15:04:47 -0700 (PDT)
MIME-Version: 1.0
From: Steve Hamn <stevehamn311@gmail.com>
Date: Wed, 28 Aug 2024 15:04:36 -0700
Message-ID: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: VCJU3DCOLI7LSHJDCSNWB3YOA2VX6L3W
X-Message-ID-Hash: VCJU3DCOLI7LSHJDCSNWB3YOA2VX6L3W
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VCJU3DCOLI7LSHJDCSNWB3YOA2VX6L3W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3840220490059053276=="

--===============3840220490059053276==
Content-Type: multipart/alternative; boundary="000000000000db39d60620c58be6"

--000000000000db39d60620c58be6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have been trying to estimate the Noise Figure of the X440. I looked
through all the documentation I could find and couldn't find it anywhere,
so I tried to calculate it myself.

It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz (
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Perfor=
mance-Characteristics)
and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms (
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Electr=
ical-Characteristics)
.

Based on this information I calculate NSD of  -139dBm/Hz [-146dBFS/Hz +
10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz gives Noise Fi=
gure
of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on the Daughterboard =
(
https://files.ettus.com/manual/page_fbx.html), gives an approximate noise
figure of the X440 at 36.5dB for 2.4GHz.

Is this correct? Seems high, I don't have much experience calculating noise
figure from ADC's so I'm wondering if I'm missing something.

Thanks,

Steve

--000000000000db39d60620c58be6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hello,=C2=A0</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">I have been trying to estimate the Noise Figure of=
 the X440. I looked through all the documentation I could find and couldn&#=
39;t find it anywhere, so I tried to calculate it myself.</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">It looks like the ZU2xDR RFSoC has a NSD =
of -146dBFS/Hz @ 2.4GHz (<a href=3D"https://docs.amd.com/r/en-US/ds926-zynq=
-ultrascale-plus-rfsoc/RF-ADC-Performance-Characteristics">https://docs.amd=
.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Performance-Characteri=
stics</a>) and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms (<a href=
=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-El=
ectrical-Characteristics">https://docs.amd.com/r/en-US/ds926-zynq-ultrascal=
e-plus-rfsoc/RF-ADC-Electrical-Characteristics</a>) .=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Based on this information I calculate=
 NSD of=C2=A0 -139dBm/Hz [-146dBFS/Hz + 10log10(0.707^2/100=CE=A9*1000)], s=
o -139dBm/Hz - -174dBm/Hz gives Noise Figure of 35dB? Add the 1.5 insertion=
 loss of the TCM2-63WX+ on the Daughterboard (<a href=3D"https://files.ettu=
s.com/manual/page_fbx.html">https://files.ettus.com/manual/page_fbx.html</a=
>), gives an approximate noise figure of the X440 at 36.5dB for 2.4GHz.</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Is this correct? Seems high=
, I don&#39;t have much experience calculating noise figure from ADC&#39;s =
so I&#39;m wondering if I&#39;m missing something.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Steve</div></div>

--000000000000db39d60620c58be6--

--===============3840220490059053276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3840220490059053276==--
