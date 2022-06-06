Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0894653E40B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 12:19:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80C0D38409E
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 06:19:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654510753; bh=7X5deZWFunAOCQb6NtGwB7XygSOjmWLko78Qso6Qzko=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WQzVkxIR9wMK6MblutxZPuAc6Ubd8sxRcl90zWx2vbOOSnhfIJX0fl2fVlc3Gi1bD
	 VUmffXM3omqi+seyyH2WNkTrXkm+e5AT0pGo+rZY+wmtuxrFCSO3T2vFpTjSN813Z7
	 02x2kM6WLFZ++PgYGkCY+HZu2FuhN+ge0ipChibDCCrqNE5YwgxJ4hvnDtJKm++8X/
	 i4ZKy1tZ7ZNsU2IaElDos8dlIu0I9OZ99+8/z/Uazcnbw3UV4ZYgDjcw3qA3FhT8rn
	 3j2JB7P8bZ/gpIZpe0w+ZQIDGbgUtmRQ0W+s2mnsAPWc9oYyPR8ESGJm2JQbJNU07M
	 5ZGWwD1Ujz1yA==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id DED5F383FA6
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 06:17:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kVdzXfFl";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id p13so24835931ybm.1
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 03:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=k+LpTEGj4dUrbBnIhgBtMghWoWXAmvBbdeN8d57slI8=;
        b=kVdzXfFlnaDmlX0OXpautXDlmGpXtYWReOFwrAlFperuTwfs1U4NxiyrRikjaVO+p1
         bAL3sRNcjw2Y0S92/B8flT514455Ox+WcudK3GgWDlQGoVbp5crguGwQFnR0tFjSRHjw
         f03A/UZEM85ZvdcBUnmfj6zJMMKe9HTw4pjcnzgD6nYgORsq0K8kmdNVNwE9Xs2x5w4s
         fhE6XK0TSt/lUVPILpPSuJYzJFDtMIioA4dVHExljygEpYNRRpy8mCbstuwOKHoybg+A
         /kqq7avzDwXJqVtici7r3zcD7U7Lxrv51Ah/UWqXrpxECVZnq1YWMPLI+KlzSXbuSYpA
         2csw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=k+LpTEGj4dUrbBnIhgBtMghWoWXAmvBbdeN8d57slI8=;
        b=E8FKdVcBGis3fjfdTX/gOvQ1EEjattHM/YDIPAq4yc8qyjy3u7AiRHCA6HTx3wAF4C
         RcnrotqVSJQI7cdqXSFtNHSPItqZW6djx6TAuEe7sks4cLBGP9mIdY3U99CbRt+mVHaL
         hjuXiVfTZ/ZLB3/yLDuGzVSNZ3fvn4wqEq5g3L2CkHkyYsEEWcUSi1skkblgMLUP9L0v
         PVBbBZtt0SJjKVoLJc1EwCwzP7Q1J+to/Iq1J/P8xsm2nT5F7d41sdIFUFzoCpHnECGf
         S7PQl17T9dv2G14oiIm27MZhU4LZasRPFq2+gCrncxAMyTs+Hu361ZJ/TUqFnIZc9+qL
         JttQ==
X-Gm-Message-State: AOAM530JJFbs1g11QG/ZFx8qkYs7C2TdpYK6tfg+wGMdXcu10tIiHF5Z
	8vN8lTK96/Swf8gXPWFUIUKTB0Q46Egf/q02WYjs4LfDtH0=
X-Google-Smtp-Source: ABdhPJwz76DQlj4eEIEVegAG09E888AI/oHnQYd6ur2M5KK7ElU9fdJ7icx+5mVhMLK6twc/lF9nRX7+XgsaiGEeOrc=
X-Received: by 2002:a25:2a58:0:b0:663:66ae:e4e3 with SMTP id
 q85-20020a252a58000000b0066366aee4e3mr7845986ybq.286.1654510679202; Mon, 06
 Jun 2022 03:17:59 -0700 (PDT)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Mon, 6 Jun 2022 13:17:48 +0300
Message-ID: <CAHqKquzHcAQLC9rcJeCBLd0mfNFGu8MWq0ko8qupxAH0KL=VbQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Q6SUWOFAGWLCDIWLA2V7POZUYXMFZEV3
X-Message-ID-Hash: Q6SUWOFAGWLCDIWLA2V7POZUYXMFZEV3
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] couldn't install uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6SUWOFAGWLCDIWLA2V7POZUYXMFZEV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6202618239005250977=="

--===============6202618239005250977==
Content-Type: multipart/alternative; boundary="0000000000004fa08a05e0c4c9ba"

--0000000000004fa08a05e0c4c9ba
Content-Type: text/plain; charset="UTF-8"

Hello USRP users

I am trying to install uhd on my desktop, i tried these steps:

$ lsb_release -a
$ sudo add-apt-repository ppa:ettusresearch/uhd
$ sudo apt-get update
$ sudo apt-get install libuhd-dev libuhd4.2.0 uhd-host
$ ldconfig -p | grep uhd
$ sudo add-apt-repository -y ppa:ettusresearch/uhd
$ sudo apt-get update
$ sudo apt-get install uhd-host



but when I checked that everything works with uhd:

$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1No UHD Devices Found


How may I solve this?

Notes: I am working on ubuntu 20.04, and my using USRP N210



Best Regards
Rouba

--0000000000004fa08a05e0c4c9ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello USRP users<div><br></div><div>I am trying to install=
 uhd on my desktop, i tried these steps:</div><div><blockquote type=3D"cite=
"><div dir=3D"ltr"><div>$ lsb_release -a</div><div>$ sudo add-apt-repositor=
y ppa:ettusresearch/uhd</div><div>$ sudo apt-get update</div><div>$ sudo ap=
t-get install=C2=A0<span class=3D"gmail-il">libuhd</span>-dev=C2=A0<span cl=
ass=3D"gmail-il">libuhd4</span>.2.0 uhd-host</div><div>$ ldconfig -p | grep=
 uhd</div><div>$ sudo add-apt-repository -y ppa:ettusresearch/uhd</div><div=
>$ sudo apt-get update</div><div>$ sudo apt-get install uhd-host</div></div=
></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><div><br></div><di=
v><br></div><div>but when I checked that everything works with uhd:</div></=
div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><div>$ uhd_find=
_devices</div><div>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=
 UHD_4.2.0.0-0ubuntu1~focal1No UHD Devices Found</div><div><br></div><div><=
br></div></div></blockquote>How may I solve=C2=A0this?</div><div><br></div>=
<div>Notes: I am working on ubuntu 20.04, and my using USRP N210</div><div>=
<br></div><div><br></div><div><br></div><div>Best Regards</div><div>Rouba</=
div></div>

--0000000000004fa08a05e0c4c9ba--

--===============6202618239005250977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6202618239005250977==--
