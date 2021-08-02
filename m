Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C42F3DCFF2
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 07:13:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBC05383E87
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 01:13:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nQpx+8Uq";
	dkim-atps=neutral
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C5E1383BA6
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 01:12:51 -0400 (EDT)
Received: by mail-ed1-f41.google.com with SMTP id n2so22733268eda.10
        for <usrp-users@lists.ettus.com>; Sun, 01 Aug 2021 22:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WkzLgdewaGs7YEEZeueJPg7VmgK2y+qXewGRWai+ZV8=;
        b=nQpx+8UqiLcBN1T7hgdI9nOTeCjzbLGs7plJHw/gYnTtaSOuFWOoYEf5YD6A4aIjkx
         qIhkw//smG5HZcrZ1J+Ds7zQRRuDIAQNwOePtvMnf6T/abGS+6tJPvyn5JadgB1CIl4B
         sB/gfx9a+98B9oihR9E8uv64byJF2cAReJpNYPwLWM8btIl+1JrLuJ7HClbiQN2Wk2XD
         iYYPOuFGbn9uTO2LRQReihWE7YnlhyfaHFUB8+lNSbyRg5ha9VJTginuvlNxx+uBGWVr
         qG0F1eI7HEM34COXIPTPtIvMyseWNvxUWIIB+N/Ok003NW61GAmBgbbIlRdS2SPGyygY
         LXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WkzLgdewaGs7YEEZeueJPg7VmgK2y+qXewGRWai+ZV8=;
        b=lZER6FAC27O2sSweN8Hd1fL9hqA57FmFm+c6Tv0tfkPmwjKD5VjecTnwO8v47R8uoj
         UBAZSVLPWSOWPq7LSZX6a2pp5C73+vuinyrmTvi96z3Mt2hpwNszXtsgMfyN8H7lu+fL
         5nns6mPjfz8kztRT9RDmccn0aceLkaa/g9zbnxwEvR8Zg9qGz1+3R7JujCofb8zM/1QF
         O669CQ7elbQiVGA/8A0XcaIM4PYq5elb1GppQQT2/QA6xsHiwHxC7TPjbnXf+lah3CR2
         xcc3zHtwAfcxw/sT0UEqxzvF4h9unWWJaL9S9HKJPsTXRhtNKlLNWzU+0Y1xCwDKuF6d
         oXPQ==
X-Gm-Message-State: AOAM532iyC/GyErXPazepIffEOsj9qJkAD4Qyptn7zaKepdbYy+gGAjc
	zSICwMb8+CA+YlBO0+524LnYm0h/+EmSPQJY6P9KNU2d
X-Google-Smtp-Source: ABdhPJyPddmfhEBVQFlRgyWaqd81lv4IIjWIpi+ZIwvs/qdS6Gdr7m+tpVm+mI4fP3EWxjv/R/5m8ptfhc58GV/RyKU=
X-Received: by 2002:aa7:d6cf:: with SMTP id x15mr17023818edr.59.1627881170153;
 Sun, 01 Aug 2021 22:12:50 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Ozer <danielozer22@gmail.com>
Date: Mon, 2 Aug 2021 08:12:38 +0300
Message-ID: <CAE_Rk57FWHzJCE2bT+sf=URPKg+RpS3et46v8rHCUrrPKduT4w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IN3H2T2ORIUR3AUJQGRPFDU4UVKQO4AE
X-Message-ID-Hash: IN3H2T2ORIUR3AUJQGRPFDU4UVKQO4AE
X-MailFrom: danielozer22@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question on the usrp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IN3H2T2ORIUR3AUJQGRPFDU4UVKQO4AE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5887549682717953094=="

--===============5887549682717953094==
Content-Type: multipart/alternative; boundary="000000000000e235c905c88c9e88"

--000000000000e235c905c88c9e88
Content-Type: text/plain; charset="UTF-8"

Hi,
Its been a while that I'm using the usrp x310 with twinRx and i have some
question on it :

1. Is it possible to use the 184.32M clock in the system while using the
twinRx that required 200M clock? (I have no problem to change the bitfile)

2.DDC and DUC (ettus rfnoc blocks): where i can find the spec of each block
?
+ Is it possible to do a fractional decimation with the DDC?

3. While using high sample rate 50M+ i saw that once in a while  'D' is
written to the terminal . How can get an interrupt that indicates that a
packet has lost ? Is it one packet every time or only some of the packet
not arriving ? Is there a way to make sure that packets won't lost ?

--000000000000e235c905c88c9e88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto">Its been a while that I&#39;m using =
the usrp x310 with twinRx and i have some question on it :</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">1. Is it possible to use the 184.32M clo=
ck in the system while using the twinRx that required 200M clock? (I have n=
o problem to change the bitfile)</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">2.DDC and DUC (ettus rfnoc blocks): where i can find the spec of =
each block ?</div><div dir=3D"auto">+ Is it possible to do a fractional dec=
imation with the DDC?</div><div dir=3D"auto"><br></div><div dir=3D"auto">3.=
 While using high sample rate 50M+ i saw that once in a while=C2=A0 &#39;D&=
#39; is written to the terminal . How can get an interrupt that indicates t=
hat a packet has lost ? Is it one packet every time or only some of the pac=
ket not arriving ? Is there a way to make sure that packets won&#39;t lost =
?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>

--000000000000e235c905c88c9e88--

--===============5887549682717953094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5887549682717953094==--
