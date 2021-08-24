Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A913F6B4D
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 23:40:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7271C3848E2
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:40:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b131mKmw";
	dkim-atps=neutral
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 931753840C8
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 17:40:07 -0400 (EDT)
Received: by mail-il1-f170.google.com with SMTP id h29so21998821ila.2
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 14:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GX4SklOy/nzXfJgbSQHo3fjqFNHGOvlbt0i2hsSoQBM=;
        b=b131mKmwBcfyPt22T+yBr8UlrP/cvUyRwGkMsSFnmTKOGAI0XDJaSDKk8y6ttQ0txj
         ozR5vVs8NMuUR26ynnzmxu2kGFfvnRrRe/IjVhF0RRhsykYQYMnbwXn1SFYBKPjQrxC+
         b3gfpvLFujoNAP/3rDrdRvsOj8N9+kwb8daVIENwRI8a1+drAmOMsTfl8U9ldXuUizpU
         WP9lIe+PZlUQHQaFnI27tvvnW9QsF1hMY5MJffn1ZDjzUnaQVDy0iVwknQpVVhfxENTc
         1YdIiEqm9QAQjS4xoSOEjAjNj1tAuc4OpQAEEy64lQmzbcDbPLEWH6e2OIfOcSPa2sFw
         ntFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GX4SklOy/nzXfJgbSQHo3fjqFNHGOvlbt0i2hsSoQBM=;
        b=kkjPSI1i/Dd17F89wD+rxWuiX6GAGfGZis/nF7JBwbwlGkZxtd8XiOnT0+b8V9gc5x
         3DMFD19rWH4gPVvu3boRAMinNCbElovu4GK7mcWYe2JbIKwExii33Y8fLvrW0GEWi0Px
         Bx0iOeujHP1xEisMIzlFjIDcoVOoa7EQ7Nx9rsnQrhiFoeFSd05iaz9saAdzHH2fzmQQ
         Llwi8ZgvxjO2fW+OCWiXu0Ipl1JVRdjjyVc4+P0Cum0wEGSVd3gkYsI/IQiqmQFvfXL2
         RTqVah/fJqp0OBaMfI67qh6zj73lwpSdfb5QSolyGgQpU3K2XIsk80fbAzIha8Ci9msc
         nQgA==
X-Gm-Message-State: AOAM532LgeGBBIRMlGakvUOlyve6IMT8Il6oynXlK8cJiOyrdw0S6A2E
	pwGM/E+nnaRRd+NhF9c6URclBe7XpWyCx0yX3xciTh4P6Sc=
X-Google-Smtp-Source: ABdhPJxNxzAP65amUdUn/C3D/eFn4xHhUT+vIWNK4nJ52zbbg24WT7fpH4V6r3L6ivuVEBGXhZF2wqv1yLnGmBx5OSw=
X-Received: by 2002:a92:de46:: with SMTP id e6mr29039121ilr.273.1629841206881;
 Tue, 24 Aug 2021 14:40:06 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Wed, 25 Aug 2021 00:39:56 +0300
Message-ID: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>, "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: I7JYY3PHN5KEVWQ2GFGBSOVDUO6AY2HR
X-Message-ID-Hash: I7JYY3PHN5KEVWQ2GFGBSOVDUO6AY2HR
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7JYY3PHN5KEVWQ2GFGBSOVDUO6AY2HR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0662968915661378216=="

--===============0662968915661378216==
Content-Type: multipart/alternative; boundary="0000000000002d327505ca54fae6"

--0000000000002d327505ca54fae6
Content-Type: text/plain; charset="UTF-8"

Hi,
I try to set length of fft = 512 or 1024 for USRP E310 (RFNoC UHD 4),
but when the value is set I haven`t received the data. When the fft =
256 it`s work fine.

My graph looks like this:
0/Radio#0:0==>0/FFT#0:0
0/FFT#0:0==>0/SEP#0:0

Setup of my SEP is:

stream_endpoints:
  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768              # Ingress buffer size for data

How can I set value fft length 512 or 1024 and how it`s work?
I would greatly appreciate your answer.

--0000000000002d327505ca54fae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Hi,<br>I try to set le=
ngth of fft =3D 512 or 1024 for USRP E310 (RFNoC UHD 4), but when the value=
 is set I haven`t received the data. When the fft =3D 256 it`s work fine.<b=
r></span></pre><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-X=
cVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left"><s=
pan class=3D"gmail-Y2IQFc" lang=3D"en">My graph looks like this:<br>0/Radio=
#0:0=3D=3D&gt;0/FFT#0:0<br>0/FFT#0:0=3D=3D&gt;0/SEP#0:0<br><br></span></pre=
><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-XcVN5d gmail-tw=
-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left"><span class=3D"g=
mail-Y2IQFc" lang=3D"en">Setup of my SEP is:<br><br>stream_endpoints:<br>=
=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoin=
t passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes da=
ta traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br><br></span></pre><pre=
 class=3D"gmail-tw-data-text gmail-tw-text-large gmail-XcVN5d gmail-tw-ta" =
id=3D"gmail-tw-target-text" style=3D"text-align:left"><span class=3D"gmail-=
Y2IQFc" lang=3D"en">How can I set value fft length 512 or 1024 and how it`s=
 work?<br>I would greatly appreciate your answer.</span></pre></div>

--0000000000002d327505ca54fae6--

--===============0662968915661378216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0662968915661378216==--
