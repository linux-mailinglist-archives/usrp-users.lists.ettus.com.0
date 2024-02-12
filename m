Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED04851DD7
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 20:21:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DA7B384BE9
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 14:21:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707765705; bh=Qe/MMvMyGqMLTCooohZAiSHXCF+xFMfztTvzl3zru1M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=e6tqtdgGoIHWuZYyquNH6FvjnkAUw+eIM+JCoCYwmd8+UE/GOrzrudp9l9QRllj1c
	 bbVz9Ioh7lYWtq6KgbRffF64lYBGYuDUxY/vcpEksgyr5C5sCgxvHebMGb9tcjR38I
	 Ode9I/l5KcuTR66kBZMGp6x0Undmmwc6BXUlbzk5C8tANq+328HJ/Ts/rXl6+CdzAQ
	 NDV4ipapeZlATpRKTKiJbIISwLlxLIlfZ38qHfZx+mAlOT6MGi309mUB1Ac8z/Q+7z
	 jFUUVftFrg0TDU0XdznLagxs4htn1XH7/nbK8cp+ZhFtNGAf6z5ZcERhjS8e1wcqqq
	 qUTJeei1hNDBA==
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D99A3383D1E
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 14:21:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PMXb4SXl";
	dkim-atps=neutral
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d07ffa0a9cso40794111fa.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707765666; x=1708370466; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hGS2q0c59ZW7ykesIVzmCWSIKcbLp/ULEo8FULaX/0s=;
        b=PMXb4SXlVBsslqfpVBSkTRQgx2MICcByKgLoJ/ns2j6E96huMPhgXbGST65JZ+hxmr
         tCP/ovZrkPjDDhP4PZwvV7F1KSBoudNX1S/00eZG3aSe5jlZ78zRRrGO+HoGYlNU7j4F
         Apvwe0BQfsWEpTtAE2wuFPA9xe53IpFDp/BTebf6V9K/AUwrv+6oFhAVCeXGJUn2wSRR
         9jye8EgBJ1VLlQWeMuUZ+FlPj3sfO8z5foO0RLoVg8/hty3khBPMF/M33FYkHivKMDoN
         Jvzp5sppP/Y3eilXGXjaicbr/g9dgQ4DOuht/vCNYOtASqAlNMui4L0zeCbNKgjp1hPy
         rfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707765666; x=1708370466;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGS2q0c59ZW7ykesIVzmCWSIKcbLp/ULEo8FULaX/0s=;
        b=jy2pyYSAt3Q3pmCBaYs1On0zFwRa3GAjCrv7Zki8prGME7ISIqvb69/eAAKLOurTr/
         oVe0+rj9YAzb0I0RB5FgkRiSVtbKJr2EdejHGsj+q6WtI8qb4oYtG/QzF5CE28GWVyH9
         4kkdBkWBbd3scrSzY5OnJ/xLJnVsIXiZcyL4yqjbVYdkHxr8spVHbajt4q/sRutfKagO
         NhW3+QNzISxqnbB+UUcyNHlh241xoH2jDCltXgU6UqRRLi05YS6YllvI0BTCgwJg/52g
         WwBwD0I1aSuUXMgqHHnBZYvWCaAD0WOdJP/IKkcCg7xatwn7Ne6ThbnA9BYewp878b5N
         SmSA==
X-Gm-Message-State: AOJu0YwmTnwg2wU+Kasc6HPp+lj704aOCkTSVe0PFQGUiFLSDyd5dpjm
	m4ImK77APGgOR57cr2mXGmLAzFbtaGrmyVeQHSxBAL4B6XOLeos92l847cJebiFsvS0o1TJvK8h
	HG7+QOkZ5xrwl3vKshbcBr15rt5M=
X-Google-Smtp-Source: AGHT+IF1TVvSqE33CM0FlGfnrHElnXvVO5xVDT0G+6cGpl9DDfe8CvLFAap7p9mAoT3Z3kZjbsrHiRWEAX9LQ65wKwY=
X-Received: by 2002:a2e:7219:0:b0:2d0:e1fc:9ca0 with SMTP id
 n25-20020a2e7219000000b002d0e1fc9ca0mr4416432ljc.29.1707765666098; Mon, 12
 Feb 2024 11:21:06 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com> <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
In-Reply-To: <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 12 Feb 2024 14:20:54 -0500
Message-ID: <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: ZFXFLLRS7QG3XCBLXGQ3ND2I7DGQCQDQ
X-Message-ID-Hash: ZFXFLLRS7QG3XCBLXGQ3ND2I7DGQCQDQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gaytanc4@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZFXFLLRS7QG3XCBLXGQ3ND2I7DGQCQDQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1776908039002672904=="

--===============1776908039002672904==
Content-Type: multipart/alternative; boundary="000000000000e330400611342dc6"

--000000000000e330400611342dc6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi <dario@iptronix.com> =
wrote:

> You have to install gr-ettus which contains what's needed for compiling
> OOT blocks and also installs rfnock blocks
>

My recommendation is to not start here and to start with newer software.
Use the latest UHD and the latest GNU radio.

You're starting at a dead-end path if you continue with the versions you
currently have and require gr-ettus.

Brian

--000000000000e330400611342dc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM D=
ario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><div>You have to install gr-ettu=
s which contains what&#39;s needed for compiling OOT blocks and also instal=
ls rfnock blocks=C2=A0</div></div></blockquote><div><br></div><div>My recom=
mendation is to not start here and to start with newer software.=C2=A0 Use =
the latest UHD and the latest GNU radio.</div><div><br></div><div>You&#39;r=
e starting at a dead-end path if you continue with the versions you current=
ly have and require gr-ettus.</div><div><br></div><div>Brian</div></div></d=
iv>

--000000000000e330400611342dc6--

--===============1776908039002672904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1776908039002672904==--
