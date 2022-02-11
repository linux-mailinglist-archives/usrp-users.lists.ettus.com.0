Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C844B2904
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 16:22:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47B81385556
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 10:22:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MnW7IGSf";
	dkim-atps=neutral
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EEB1384EA6
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 10:21:45 -0500 (EST)
Received: by mail-pl1-f180.google.com with SMTP id w1so4942481plb.6
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 07:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=3ueJTsHxcMILoqD9NDWiW7Q7pcki8791Y2k0G8cNEuM=;
        b=MnW7IGSfYQZEQGrZaypDJ8RPbJFlcTQJBllw565g4vUOtY/6kZC3s1U/E30lL3Z428
         RtMSiiKSRWrXFIJ9G2yezH/qIbNG6hkAZ3JW+hYPgpJ3JU6rNo7P/xOwGckZ0BCWbEt5
         8y00482ZbnquoolBhJ4uEwV9p5az6BrfAKfxsep9/L6YnzJ53c+Shb5QlySKmKFdu8ki
         d0DIG/l5p8C2Q48Mi8gAqlCeakRFxc0pkfoXeOi84kBkco984xiUvZtOKcwmktHWIkaZ
         fEE6DkjeraZA3W7OEGnPFiWsI/2OFGVSLPCBHf7OyrVoy8KgCjJGMSsIcZgyo5JgMdfG
         opFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3ueJTsHxcMILoqD9NDWiW7Q7pcki8791Y2k0G8cNEuM=;
        b=qnGbLtMUcW4CAfN6gzaq/IQvwEVm11mk9rXsS+G6qIYL6LGSdo97l2Qy4a9i+2cWqi
         lnF0kgCQedEwhN7IMoaXrbxgKMxzgrBL1L63sCgJSfeVOFyugmU/fR7yPHT1MZYqIoWC
         Ceyb/mpXTB/Q+fgcxNJdpPG9vWkeqEz+eE64Bma+6X1DWGSdYiQ246zyXH+wGxJ9I9D8
         eAqrAOhePY4soQuePG3wZ6nst009la3Bny6+vG9RDSfKnCxyZY1gusPIY7YxNbiqdWNC
         7rPm2H4y35+RhlSqMpL1Psqy6Ci+LHqQX41K1j9VVgeKzX95JskcYkH/aOG9JsHBFGly
         fzyA==
X-Gm-Message-State: AOAM53219HyW8jbWaw9rFegvnIQXiMZ+KzL66yu8YS3p1IedMT6RZZ+R
	4VFaysAQ0GJzQC4bWK2vr5AvPWdEokttP1UyUOSGihgoeIc=
X-Google-Smtp-Source: ABdhPJwUITQRr5zshOz3TS8jXtI1XvezAvmewIyKiHUaNUr3qKjor8ywucOC/L8U4XzS88ng8rMfnacBuIpUVnLqIa4=
X-Received: by 2002:a17:90b:2342:: with SMTP id ms2mr869716pjb.109.1644592904191;
 Fri, 11 Feb 2022 07:21:44 -0800 (PST)
MIME-Version: 1.0
From: Craigs List <5000craigslist@gmail.com>
Date: Fri, 11 Feb 2022 09:21:33 -0600
Message-ID: <CAE+UwfAbei+kPHJ9rmFU-zfCRaxMwonBtiCp3h41XhJ+Nc8mpw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 55SMGJ3ULXOBCOOS7WGI4O5UUYSD2RLM
X-Message-ID-Hash: 55SMGJ3ULXOBCOOS7WGI4O5UUYSD2RLM
X-MailFrom: 5000craigslist@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 AGC mode change/AD9361 register access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/55SMGJ3ULXOBCOOS7WGI4O5UUYSD2RLM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1535300638078998801=="

--===============1535300638078998801==
Content-Type: multipart/alternative; boundary="000000000000dac22305d7bf9f9a"

--000000000000dac22305d7bf9f9a
Content-Type: text/plain; charset="UTF-8"

Hello,

Looking to enable fast mode AGC on the E310. The default seems to be slow
mode as indicated by
https://github.com/EttusResearch/uhd/blob/7ac01c7f979aab8fac5e62f596ff0af52cedec40/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp

set_rx_agc() only enables AGC. I couldn't find any function to change the
mode, so I assume it will have to be done manually with register writes. Is
there a C++ API that will allow this?

Regards,
KT

--000000000000dac22305d7bf9f9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Looking to enable fas=
t mode AGC on the E310. The default seems to be slow mode as indicated by=
=C2=A0 <a href=3D"https://github.com/EttusResearch/uhd/blob/7ac01c7f979aab8=
fac5e62f596ff0af52cedec40/host/lib/usrp/common/ad9361_driver/ad9361_device.=
cpp">https://github.com/EttusResearch/uhd/blob/7ac01c7f979aab8fac5e62f596ff=
0af52cedec40/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp</a></div>=
<div><br></div><div>set_rx_agc() only enables AGC. I couldn&#39;t find any =
function to change the mode, so I assume it will have to be done manually w=
ith register writes. Is there a C++ API that will allow this?</div><div><br=
></div><div>Regards,</div><div>KT<br></div></div>

--000000000000dac22305d7bf9f9a--

--===============1535300638078998801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1535300638078998801==--
