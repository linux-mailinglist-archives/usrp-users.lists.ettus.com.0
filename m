Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF0835C506
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 13:25:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15B7B383F59
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 07:25:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kumunetworks.com header.i=@kumunetworks.com header.b="QOt+Q14h";
	dkim-atps=neutral
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C884383D7A
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 07:24:35 -0400 (EDT)
Received: by mail-pf1-f180.google.com with SMTP id a12so8992311pfc.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 04:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kumunetworks.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=/oBB/52G0MWlDhRVzaUwt5MDxyWo/LYhp/VOW3hbuII=;
        b=QOt+Q14hrDs/Sq2Yn3LIuMhvc5OQ9khcU2+mlwO35Ul/yrsTMATgsZwd1KJZ2/jA7U
         YpiAHKMfeSA7yM4otxaLkMgmrhvjcmH0IRAHoL/W8ZJMADDj2pm+SmNt7KZXkfi8UGhm
         dgy1UcMUKCVbSYnNu+QVjOKzYqEo5YYZG5IyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/oBB/52G0MWlDhRVzaUwt5MDxyWo/LYhp/VOW3hbuII=;
        b=lAvruC7i3wFc9ft/s2IsrWF/uRJHvapP6GfmgmnWxkaeRSJBk/qbh0gnQwbtWWdezn
         w9+sCBuZYJy9n2br/owTB8lLJSbZWBFcfLHBhspZjSGVIwU6sPDf+fFJZ1rNz57JGQ0l
         igJZ4eJ+Z8/0V3nEr8wbhhvMGoYJEuKTEO+lquZmOvUD1iXK4ezWlkfX0kwhmjy0INB3
         kPlfURVXvderfN+be4qUYEjycQJn2yNwWhFd5/bUNmj7EduwGoVRU3wW8E1/nRBxePZR
         WuH6TFcZJDoHy4vt4cSdqYji6pK5urBnStNvOQ8gykQtTpH3nzMFwLr9EwNdZOkcxZq1
         NMog==
X-Gm-Message-State: AOAM530mbpSc/obUk1wpoQRBP4t3MALx2Sb4zGwyPAhhTsPjtfoAR4Q2
	W+a2M5qqrAJUbQs33P/HxEbdYMGVjTP/4qP9H2ZqwuelLWDtjg==
X-Google-Smtp-Source: ABdhPJysyEX688NRSt6k3E6ThlTqUYZNcqnNPA04E3zjGhYAcrSy1FvVptbkpaBfvxWwj8YCavMu5e7RR5Dsjxn+Uiw=
X-Received: by 2002:a63:7c42:: with SMTP id l2mr12117096pgn.98.1618226673846;
 Mon, 12 Apr 2021 04:24:33 -0700 (PDT)
MIME-Version: 1.0
From: Christian Hahn <christian@kumunetworks.com>
Date: Mon, 12 Apr 2021 04:24:23 -0700
Message-ID: <CAJrPtHmHjZSF+q0A8La+1KbNd+6nsTC5t==uUEKtTE5jNeJesw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ROLVAX5IDXBQHT5XI6XNBUJXO7AH6GYJ
X-Message-ID-Hash: ROLVAX5IDXBQHT5XI6XNBUJXO7AH6GYJ
X-MailFrom: christian@kumunetworks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] python-uhd and USRP use-cases
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROLVAX5IDXBQHT5XI6XNBUJXO7AH6GYJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8150103953042741292=="

--===============8150103953042741292==
Content-Type: multipart/alternative; boundary="0000000000000f9d0f05bfc4c20f"

--0000000000000f9d0f05bfc4c20f
Content-Type: text/plain; charset="UTF-8"

Hi USRP-users,

This is not a question.  Just a call for general discussion.  Sharing how
we use USRPs.  Wondering how others do too.  Thanks

I wanted to share this repository with anyone that wants to use older UHD
releases with Python.  This repository started off as an internal company
tool in 2015 and I threw it up on Github in 2017.  At the time, I was swept
away with how flexible USRPs were, but wanted a more agile means to
automate them - enter Python.  At work, we use a fleet of X300s, N310s and
B210s for production test and research.  For various reasons, we cannot
always use the latest UHD versions.  For example, in some of our legacy
production test fixtures we are still using v3.9.7.

https://github.com/christian-hahn/python-uhd

In conjunction with this repository, we have a higher-layer software stack
that wraps python-uhd and makes it appear "vector signal generator"-like.
We maintain temperature compensated calibration for all of our USRP X300s
from 50 MHz to 6 GHz that offers a relative accuracy of 0.05 dB and an
absolute accuracy of < 0.2 dB.  This service runs on a modest desktop
besides each pair of USRP X300s, exposes a REST API and basically abstracts
them to look like any old Keysight-like MXG signal generator.  You give it
a waveform, a center frequency, output power and it handles the rest.

I am curious.  Do others use USRPs in similar signal generator like
use-cases?  For production test?  Would anyone be interested in using them
as such?  Should I work to clean-up and open source the signal-generator
like service?  It may be tricky to handle the calibration, but I could
probably include a 'best guess' model for a X300+UBX-160 combination.

Cheers,
Christian

--0000000000000f9d0f05bfc4c20f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi USRP-users,<div><br></div><div>This is not a question.=
=C2=A0 Just a call for general=C2=A0discussion.=C2=A0 Sharing how we use US=
RPs.=C2=A0 Wondering how others do too.=C2=A0 Thanks</div><div><br></div><d=
iv>I wanted to share this repository with anyone that wants to use older UH=
D releases with Python.=C2=A0 This repository started off as an internal co=
mpany tool in 2015 and I threw it up on Github in 2017.=C2=A0 At the time, =
I was swept away with how flexible USRPs were, but wanted a more agile mean=
s to automate them - enter Python.=C2=A0 At work, we use a fleet of X300s, =
N310s and B210s for production test and research.=C2=A0 For various reasons=
, we cannot always use the latest UHD versions.=C2=A0 For example, in some =
of our legacy production test fixtures we are still using v3.9.7.</div><div=
><br></div><div><a href=3D"https://github.com/christian-hahn/python-uhd">ht=
tps://github.com/christian-hahn/python-uhd<br></a></div><div><br></div><div=
>In conjunction with this repository, we have a higher-layer software stack=
 that wraps python-uhd and makes it appear &quot;vector signal generator&qu=
ot;-like.=C2=A0 We maintain temperature compensated calibration for all of =
our USRP X300s from 50 MHz to 6 GHz that offers a relative accuracy of 0.05=
 dB and an absolute accuracy of &lt; 0.2 dB.=C2=A0 This service runs on a m=
odest desktop besides each pair of USRP X300s, exposes a REST API and basic=
ally abstracts them to look like any old Keysight-like MXG signal generator=
.=C2=A0 You give it a waveform, a center frequency, output power and it han=
dles the rest.</div><div><br></div><div>I am curious.=C2=A0 Do others use U=
SRPs in similar signal generator like use-cases?=C2=A0 For production test?=
=C2=A0 Would anyone be interested in using them as such?=C2=A0 Should I wor=
k to clean-up and open source the signal-generator like service?=C2=A0 It m=
ay be tricky to handle the calibration, but I could probably include a &#39=
;best guess&#39; model for a X300+UBX-160 combination.</div><div><br></div>=
<div>Cheers,</div><div>Christian</div></div>

--0000000000000f9d0f05bfc4c20f--

--===============8150103953042741292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8150103953042741292==--
