Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3B16ABFE9
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 13:52:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7258F385279
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 07:52:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678107153; bh=z1i1XIPlUmD2JaR+kEY2Zqwq3zHOEKpi8pQVMf0kCgY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bAs+B8pyOmP9Kl/juihP5tRHwqqLSXYUPoyprYZLlCXY+dYhRoq/TyQn9diS4+tWl
	 ysY8YUJ/GzYR+zoHpRBiTwde4lJHMS2wR/103KXUZ/pma+kYji5nGn2rAWmtT6lpp1
	 Ekur4BiURjGFiHr3Kj3xYa6rV6C5qW1anOXuLmBSJ5qq0CuUA2SjCVYukXHHkYHWNz
	 4jcSzPIgLGd+aajvu4YNCFzDOdHD5rAymu7bxsdbNGha+pil8pyO8Vm9Z/R+F1Havu
	 J7oZCa2677N2XuxsoTptqnPRNKxt5DlLD1bV+bBbDxN4zHfzSox/qObMa9Mohr9Epa
	 ct6u1OnbqvNXA==
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 682F4385279
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 07:52:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="jgqWXkN6";
	dkim-atps=neutral
Received: by mail-pl1-f176.google.com with SMTP id i3so10155669plg.6
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 04:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1678107147;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wpH3bfqct3ye5mAM6kFpSjE6dRNVdfI1JygzRv1jtYY=;
        b=jgqWXkN6d8LMEmLBZuqtSdk0UqFDD4mTEVZAGqY8PNe/yQ7iRtCpkfcn7ZF/FerWyA
         xeCo+HuacEdBx2iuqC8/FTgCRmeKNFLdGtcoQ1F3ddX45NoVvDf0BACMW15RJdt9sWFW
         ftkEf1OKfzBC+JyggtSMDWF7v8br8RaGILDD7R3PsE04u1Eiw+GRhqBh/+B+HEJKcekU
         oOaLnmni4n0/DiFHy/tuF2V8ijDVmcXdGf83QezG2+W+lZvoOjB69f9XYVfta9NU0ggN
         zi5xw/5yB1xTz0nAxz3Pq1hMCYw3RTzQH1+nHcHsrnn/ekEfo1TN0CzlfyG4IbFBItmk
         WcxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678107147;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wpH3bfqct3ye5mAM6kFpSjE6dRNVdfI1JygzRv1jtYY=;
        b=lJurwo97Kain79h3U6AKmlwHuBWd+oEekmY86ZRH+N+y/dNn4QktZoLL1VonCLqIW7
         6JkVOCB870j4n51EpnLiqIm1gS7XsBLy+tx9NMCR43JZ6GAQbwM9bdjytQsQynQN1hL0
         IlTsDvt0r1cbRcmNWPVWXTIf4EaxIn1G9KbcBbcAyk5jFIKl6T/NvK3dDX5FxgX5Gc/T
         xJlEW8gh2MFQwV4CFQad2w4kyzCLgAefR+XnK3fLP2I+JfQZsEkh1JJTigZvuUmn9Pug
         gBk+znvtwqKofvuMLI+D1gLrudyKIs9fp8rtpfleQC52BD52rzkrXYF+KRp2MwLuZeCP
         pH7A==
X-Gm-Message-State: AO0yUKVqnGxfsf2Vf5jvPVHF65EHVI61EvdnRvYVUytjNybmyo7idikv
	8VZ3fUV1zj3CWM8t4sFKBCzKOkh5tyNUooE5DdcgyMzfdIs4oBsd4C7wuQ==
X-Google-Smtp-Source: AK7set9+VBuKJB5nuhoOm57uK2LFCKNmNCXuwsS0LZmTAerIluwg1UmpNq6dBmy8A0+CW7NYxjS2Ry4ZBn//hW/bQIA=
X-Received: by 2002:a17:90a:b38a:b0:230:9b9f:5150 with SMTP id
 e10-20020a17090ab38a00b002309b9f5150mr3982851pjr.4.1678107146675; Mon, 06 Mar
 2023 04:52:26 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 6 Mar 2023 06:51:50 -0600
Message-ID: <CACaXmv95X8s4zfULuDwbNPOcSTRJxcTgZY_x3P2nfTPSto6dnQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DPT2HOQ4KLADDM346KGU7RX2IW2NUV26
X-Message-ID-Hash: DPT2HOQ4KLADDM346KGU7RX2IW2NUV26
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Save-the-Date: NEWSDR 2023 at WPI on Friday June 2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DPT2HOQ4KLADDM346KGU7RX2IW2NUV26/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5498619077484674401=="

--===============5498619077484674401==
Content-Type: multipart/alternative; boundary="0000000000005f821a05f63ac48e"

--0000000000005f821a05f63ac48e
Content-Type: text/plain; charset="UTF-8"

We would like to announce the 13th annual New England Workshop on Software
Defined Radio (NEWSDR) event on Friday June 2, to be hosted in-person at
Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.

Registration is required, but is completely free.

Please see our website for more information about the event and to register:

https://newsdr.org/workshops/newsdr2023/

We are always interested in having poster presentations at the event. You
can register your poster submission at our website.

If you would be interested in being an exhibitor or a sponsor for this
event, then please contact us.

We look forward to seeing you all at the event!

--0000000000005f821a05f63ac48e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"mono=
space">We would like to announce the 13th annual New England Workshop on So=
ftware Defined Radio (NEWSDR) event on Friday June 2, to be hosted in-perso=
n at Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, US=
A.</font></div><font face=3D"monospace"><br>Registration is required, but i=
s completely free.<br><br>Please see our website for more information about=
 the event and to register:<br><br><a href=3D"https://newsdr.org/workshops/=
newsdr2023/">https://newsdr.org/workshops/newsdr2023/</a><br><br>We are alw=
ays interested in having poster presentations at the event. You can registe=
r your poster submission at our website.<br><br>If you would be interested =
in being an exhibitor or a sponsor for this event, then please contact us.<=
br><br></font><div class=3D"gmail_default" style=3D""><font face=3D"monospa=
ce">We look forward to seeing you all at the event!</font><font face=3D"ver=
dana, sans-serif"></font></div><div class=3D"gmail_default" style=3D""><fon=
t face=3D"verdana, sans-serif"><br></font></div></div>

--0000000000005f821a05f63ac48e--

--===============5498619077484674401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5498619077484674401==--
