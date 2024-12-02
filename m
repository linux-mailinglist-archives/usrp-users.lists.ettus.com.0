Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C11859DFF37
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 11:44:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1134C3852A4
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 05:44:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733136293; bh=8B10Pro6gxSpqsZzyy7bWZsQE0Tdga8fSX7XhN1wP7U=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GidwZajiib3ww2+Dn9bw6KuU0WeaDGr5vbboG906gsuOm3+ogmeL00DtbDXFVb7OF
	 0583FpCENH7o5SdbFyuVq4DEAJf4srdUi76JQsArpJo+TiXv0ICEs9NjCG3W0Z0Hdd
	 YhfD39dv+vqBReMSmrfgXsxo1BGvuTydvkbgF+ZFNJLtZ/lR8+SiWhIRvmo5g7eJdI
	 4XnHV4wW7KHVPgW45csu6b5RUPPbt8tvMAQyQeZDxASBRRJ1sq0r0rqj74Xfdyd3lX
	 eWmC0qfpyqJyTeFF+xgfuaZHpddDfNQTCHirpLiC27X/r5lZQ1bgi0CMrSQrOL3QQY
	 JdQ0jQfPpLvDw==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id F01AD381410
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 05:44:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j1YkvNxv";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6ef0ef11aafso38295267b3.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 02:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733136251; x=1733741051; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9R1uXM04/XD235x//CB/c5l78rW1XBw/G703DpibJ30=;
        b=j1YkvNxv3qveuZuklXpXmHbrFGYFuAnBD5lwZjMIKz7awFupbalMtD2vNotc6Wvb4h
         ke2t0imD1waZlzw5i6zM1pODVUtBzgAp4qIpJRXpztp5+ovZLVWCIz1paJiPTbTOVxBB
         y1gTFzb7CuNlHRtXkeEtV1j3R7pFS2t1uhgCldDufucxTUBsKyGcPALsAiZxppnKiFZ5
         LFwr4tpL5zTlcoG/hvDC8/d3cwVrdb/nMF3f7T7N/FB9kV1b9CmxYmaUjXMm4KiHsj9s
         00zXJB2A0SvWugdJVZ9ck2pMEzPv7AXEx/P5cXE4iX8XBFVWBhVNlfpdu+3nLn7uwvdn
         6mow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733136251; x=1733741051;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9R1uXM04/XD235x//CB/c5l78rW1XBw/G703DpibJ30=;
        b=vyDD1wewvDIrtT26CSzSeJNEHeprWG6gp8GgxTm2Yk0iXUtGKwhxUqHFHt4f+79ecp
         LvtFu0rtQengd967XuS5jOaK3/9JOY1VJYJaHU8AMYu70uK0UE6EWhogNn7DQFJ/YG8h
         8LjFMT0QpUEmFgMysAF/IjFus3DlAen5a5xUf2QoUpyQW7wHY/FB9NxHtf2V+HDIs+cq
         QcXPqE3drIMXyZkqXuaLaFpiapzBA7fBAMH970ATZk7c52wEAdOxt/E2m3Uo32CCNv7p
         mZtlaZCYFC9/oc3SdJ7O+V+O08M36iv0M8iTG59uN0ZezWePCN1KjJnMvTu/Fq/3hxGq
         LXVw==
X-Gm-Message-State: AOJu0YzXAdbpzaDz9q067l5krtDf0uuPm8HrWqK2em75ndOllNF8T8c7
	2VsiFxti4vmH8cNnLJbFjCCU6UxVW3iF7H2pBlEjQgI0S0sJUgiVew+5SDrdloAq1o+JpirGVMr
	8R7Upmwx431L33L8LToas55v1cgYSlg==
X-Gm-Gg: ASbGncuVhS18TLx8sJ4uJBgu6UUHLzK37j25TRgXeNRpMal3h71a80PMZw5GRGOcmZR
	0OUkgXAvEugQPkG4rHVakhLKQSqJXXm0=
X-Google-Smtp-Source: AGHT+IFs697NOcxpgSygChO9b/6ncy57UPLySFeJRGTmC/tQ62vcTsVoG0ShaLyT5D2CSFpdaIDGoNKRfNtEGMX7dCI=
X-Received: by 2002:a05:6902:2784:b0:e39:96af:53b7 with SMTP id
 3f1490d57ef6-e3996af85e1mr7353735276.52.1733136251244; Mon, 02 Dec 2024
 02:44:11 -0800 (PST)
MIME-Version: 1.0
From: Muhammad Anas <anasg8274@gmail.com>
Date: Mon, 2 Dec 2024 15:43:59 +0500
Message-ID: <CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MXIXVX2IATX4TNWGUES5AL24JY6PKMKL
X-Message-ID-Hash: MXIXVX2IATX4TNWGUES5AL24JY6PKMKL
X-MailFrom: anasg8274@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N210 Gain Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXIXVX2IATX4TNWGUES5AL24JY6PKMKL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5016986117639911235=="

--===============5016986117639911235==
Content-Type: multipart/alternative; boundary="0000000000009a568c0628473ad9"

--0000000000009a568c0628473ad9
Content-Type: text/plain; charset="UTF-8"

Dear,

I'm using USRP N210 with GNU radio companion for transmission of signal of
50M Hz and testing the signal on the R&S FSH20 Spectrum analyzer using SMA
cable, unfortunately I am not getting the desired gain level of 20 dBm
according to the datasheet of USRP, in the spectrum analyzer. I'm getting
-92 dBm at 0 level gain from the usrp sink block in GNU radio and getting
the only max -68 dBm gain at 25 gain level from USRP sink block. After 25,
to even 100 level, I'm still getting the -68 dBm at the receiving point.
Here are my settings of FSH20:

Ref: -20 dBm
Att: 20 dB
RBW and VBW: 30k Hz
SWT: 1.29 s

Kindly, help me that if the problem is with the USRP or I will do something
to achieve the desired gain of 20 dBm, without using any external
amplifier. What are the reasons behind this problem and how I can diagnose
them.

Regards
Muhammad Anas

--0000000000009a568c0628473ad9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;=
m using USRP N210 with GNU radio companion for transmission of signal of 50=
M Hz and testing the signal on the R&amp;S FSH20 Spectrum analyzer using SM=
A cable, unfortunately I am not getting the desired gain level of 20 dBm ac=
cording to the datasheet of USRP, in the spectrum analyzer. I&#39;m getting=
 -92 dBm at 0 level gain from the usrp sink block in GNU radio and getting =
the only max -68 dBm gain at 25 gain level from USRP sink block. After 25, =
to even 100 level, I&#39;m still getting the -68 dBm at the receiving point=
. Here are my settings of FSH20:</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Ref: -20 dBm</div><div dir=3D"auto">Att: 20 dB</div><div dir=3D"a=
uto">RBW and VBW: 30k Hz</div><div dir=3D"auto">SWT: 1.29 s</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Kindly, help me that if the problem i=
s with the USRP or I will do something to achieve the desired gain of 20 dB=
m, without using any external amplifier. What are the reasons behind this p=
roblem and how I can diagnose them.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Regards</div><div dir=3D"auto">Muhammad Anas</div></div>

--0000000000009a568c0628473ad9--

--===============5016986117639911235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5016986117639911235==--
