Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F313D500227
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 00:56:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDBA73818E9
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 18:56:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649890567; bh=2fD/NlcHaAajdrUBSbf2711DdYoXd9ilU0rq8Zv35A8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oWeo+29vC8OeZaMVoMI7sJsJF0vsRdIUVNEeirN1UTHyzqHrGbfp/00jDS/nP3UxM
	 Ufve75ZBzO5McBwbEuGA0iPCxdecyhJeH3YBIv+w4wFaxS0DLa9zCJozzn20gCCYCM
	 IbMeOU9S9/i0Ex/SEVk7tKXn7kosr3s+19RtO469kVo6JGaFp0Fkns4Znyisk5Gkyu
	 CremN9ZI8ABKDFQURgIRqPVXNPrNpMcbnqSmEilwZegTYEW56DBp9FMSdTdE0hxJg3
	 DgtvHM3P6Yt9uOw3rtqUIrDeqIgcT+UHJ4gNnl2mJGRbPufV9NuFUnPxqJABfjGU07
	 jP8jayS4SvhQw==
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 43E443841CC
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 18:54:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y74OYhku";
	dkim-atps=neutral
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-e2a00f2cc8so3581581fac.4
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 15:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=1wowdCngcuRJSYXmGhZKN1U5Bl9ig0EQKbn/XA+3bwc=;
        b=Y74OYhku6WOzJzHXqjMaz0cm0QFEZs52LD9BWf6CMTqvzkYzEAGG/fpaBQoiReNgvm
         tSheCwufH1KatP+qgLaxp38/Hm8dNxU1TVvAbp7hG6MR8ghsIpjLblQnIxvQl5+uX2sB
         FckOKMLX0mvh2f6N1YJkUvFxAL7M2WzXm1NWQGba2bHhIBKn9GVozJtqByTZntH3tLpJ
         J7qe/gMzkS+dezMCrP4LMFwiatsKrD9uXSV31+QRgb7OH7S137rVVCaO5iYoCjnW3Ba/
         fFH5DZ/OzCdnCaT1bX16Sb82b4HmOcfdnvzmCfPJDIGqSozl6tu5CUzRSdKh3IvZeCfx
         RW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1wowdCngcuRJSYXmGhZKN1U5Bl9ig0EQKbn/XA+3bwc=;
        b=TnFG7mQFTv9MD6/ZGKm0jlit18DHAGObH0l1CmNKwZ0/38oq/jTB4Zl0pITE9N3UaC
         p3XXXqfE5GS803zdLpIZVpOVfTi+PQ102IRYmmVian7LTGWlaVvImRxKQTESMSI09PcN
         wYZ2VXh4CF+FPdO3tszTwriJVmJNctH4DGNpC0uBNC7FcxN1g4T1L+FQN6nmlF6ghXSP
         /64vBPBJFs/P8VFgNS4Uwxgtq+2UtCcCF42xcaXSHt3Tb2YnHNCbsjGP1N7MNIhS4M4m
         CKB18+0tsN0UxkD6iPRM/z6WB5MwP2rl++Ap1QkiuloZOEWeGfT7bwXd2YaI8Db418fB
         0rgA==
X-Gm-Message-State: AOAM533bT7sVhDOUT06FODQaHL+xc20BdZrGMRMoxRveM4nH9KtGgJ7b
	8lNrA0SMCBwMkL0liaO6iBWFTtIFcg4PGtiYNe/3qHCLAhIDCg==
X-Google-Smtp-Source: ABdhPJyk8em95PoaMrScPN0JCJzljfz4Wsqf8U9SYRDik28W7KHkYuft8+MLCVkYOzPEpqrLVyLzpzRUh/7T4Jb12PY=
X-Received: by 2002:a05:6870:d38e:b0:e2:f229:1a1d with SMTP id
 k14-20020a056870d38e00b000e2f2291a1dmr444855oag.251.1649890496278; Wed, 13
 Apr 2022 15:54:56 -0700 (PDT)
MIME-Version: 1.0
From: Dario Fertonani <dario.fertonani@gmail.com>
Date: Wed, 13 Apr 2022 15:54:44 -0700
Message-ID: <CAJGEdAiB2THbMiYaTDvFTeAcE-n_yf5ga5AA71kdwQXx5Ejw4w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: HZDNVXRSY76HKKEU57YIWGDCFDBEFXL6
X-Message-ID-Hash: HZDNVXRSY76HKKEU57YIWGDCFDBEFXL6
X-MailFrom: dario.fertonani@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 broken on UHD versions newer than 3.15.0?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZDNVXRSY76HKKEU57YIWGDCFDBEFXL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5705675340739286418=="

--===============5705675340739286418==
Content-Type: multipart/alternative; boundary="000000000000f2f2d705dc911028"

--000000000000f2f2d705dc911028
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm here to report that the "golden standard" for benchmarking the B210
streaming performance is giving us issues with the latest UHD versions.

The following command

./benchmark_rate --rx_channels "0,1" --rx_rate 30720000 --tx_channels "0,1"
--tx_rate 30720000 --duration 120

gives flawless output with UHD 3.10.3 and 3.15.0, but orrible output with
UHD 4.1+, with everything else being equal. These results hold on several
x86 machines (Intel i7, i9, Xeon, and AMD Ryzen and Epyc) and with at least
five different B210 devices. In each case, for a given host machine, USB
cable, and B210 device, we compiled UHD from source and saw the results
degrade sharply simply by running the command from the newer folders.

We typically run UHD from Ubuntu packages (3.10.3 for Ubuntu 18, 3.15.0 for
Ubuntu 20, or whatever is in the latest Ubuntu PPA) rather than building it
from source code. We went through the source code route because we saw
issues and wanted to reproduce them with the official "benchmark_rate"
utility, which unfortunately comes only with the source code version.
However, I want to point out that the poor results seen
with "benchmark_rate" are consistent with the poor results of our own code
when built with newer UHD versions.

Thanks,
Dario

--000000000000f2f2d705dc911028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m here to report that the &qu=
ot;golden standard&quot; for benchmarking the B210 streaming performance is=
 giving us issues with the latest UHD versions.</div><div><br></div><div>Th=
e following command</div><blockquote style=3D"margin:0 0 0 40px;border:none=
;padding:0px"><div><font face=3D"monospace">./benchmark_rate --rx_channels =
&quot;0,1&quot; --rx_rate 30720000 --tx_channels &quot;0,1&quot; --tx_rate =
30720000 --duration 120</font></div></blockquote><div>gives flawless output=
 with UHD 3.10.3 and 3.15.0, but orrible output with UHD 4.1+, with everyth=
ing else being equal. These results hold on several x86 machines (Intel i7,=
 i9, Xeon, and AMD Ryzen and Epyc) and with at least five different B210 de=
vices. In each case, for a given host machine, USB cable, and B210 device, =
we compiled UHD from source and saw the results degrade sharply simply by r=
unning the command from the newer folders.</div><div><br></div><div>We typi=
cally run UHD from Ubuntu packages (3.10.3 for Ubuntu 18, 3.15.0 for Ubuntu=
 20, or whatever is in the latest Ubuntu PPA) rather than building it from =
source code. We went through the source code route because we saw issues an=
d wanted to reproduce them with the official &quot;benchmark_rate&quot; uti=
lity, which unfortunately comes only with the source code version. However,=
 I want to point out that the poor results seen with=C2=A0&quot;benchmark_r=
ate&quot; are consistent with the poor results of our own code when built w=
ith newer UHD versions.</div><div><br></div><div>Thanks,</div><div>Dario</d=
iv><div><br></div><div><br></div><div><br></div></div>

--000000000000f2f2d705dc911028--

--===============5705675340739286418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5705675340739286418==--
