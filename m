Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC9F388444
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 03:16:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD48A38569B
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 21:16:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IEXlJ/mC";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 99230384066
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 21:15:58 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id 1so9049295qtb.0
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 18:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=SXZ0/Pw1snBXC9NOkN/UOp4ce5X36yjWsL2Ux+/hyPc=;
        b=IEXlJ/mCBNpQ0QFFerPFhnCR2uS1SKEmzq45A8v3TNDSiFFLI/ZcvIG7OcB6mubUuG
         ejjUsIgXroBYQgoFfzhdOAU27mrJmcCLQ7SJCKUwJNTTbUQSq5v7xpE5PZ8ILns70oNf
         2pbbRtmttM7za2IwggW1iVWaGqQfowTdCKzzxmANHlGb6rOLwmJ+ZZydnsRsX2+kYnvG
         WjWJriL0OZea+6K1TRb8FFHfn6lYAXk845FH0d5ReUm8Dl8JNHNFt0YQbq7rmscKTVnx
         ABDRPBSA+WSFCEz/h7xUVQp1upP3PlVFgr+Me4L6FbyWSH00EAcTy4zsYiG+0dQzMoa3
         3E9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=SXZ0/Pw1snBXC9NOkN/UOp4ce5X36yjWsL2Ux+/hyPc=;
        b=ODP9ZKRIfUvZXuOPJFui2EnDHWZVxD45ArYhggdYm+7Dw0J41xKUQzBFd0o/ivKL/b
         jmppmF5KpH0zEOlDYhwF4UlQcVoLUcVLbB/CYQSaeCNN8HAtdNeazFl9QWtM7gSL4wAT
         iXpLuoc8NW+15szt0P9FMUzPe7lFOE0H8hdErw2tLj6uuD2rCqfS5NRr8RlOZZc1dcKh
         9FGHlPWm/UO4JzhcH1YV7gJe8Jr+7ua48sf5Qc/WOmvSjYsOKIlQV1MpM4V1gxQYx38q
         wSom7wpjw8U5pI9dF5RQz0ipSKIJXu5ThDlveLQdPDgcwIfDCBvYruNm3qDfumzChblv
         0Atw==
X-Gm-Message-State: AOAM532CBJMQSJfPKWkL0oBDlsYCQ6KwHdzu6ZBGoYCAf5XuOK+wfu10
	P0OL3C9LzSMO0WckuOsiX20tIZV3wu89YA==
X-Google-Smtp-Source: ABdhPJxhZ9ledD6IQ71ESvA88V++Dsv0NEYcXv4FwQjZ5fokeRwrpZV16JAzYkJTD/TNRYBm5q/Ldg==
X-Received: by 2002:a05:622a:40f:: with SMTP id n15mr8442672qtx.10.1621386957799;
        Tue, 18 May 2021 18:15:57 -0700 (PDT)
Received: from ?IPv6:2601:151:c000:a810:f508:c9a4:f2bc:f05c? ([2601:151:c000:a810:f508:c9a4:f2bc:f05c])
        by smtp.gmail.com with ESMTPSA id u11sm552600qtq.93.2021.05.18.18.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 18:15:57 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ@lists.ettus.com>
Date: Tue, 18 May 2021 21:15:56 -0400
Message-Id: <ED811382-97C0-47BC-A4EC-D096E87EA7AC@gmail.com>
References: <YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ@lists.ettus.com>
To: jcasallas2019@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: KZIY4LXF73KUW3IX37UNGK2ANKJ5JSJB
X-Message-ID-Hash: KZIY4LXF73KUW3IX37UNGK2ANKJ5JSJB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZIY4LXF73KUW3IX37UNGK2ANKJ5JSJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5960938794173156417=="


--===============5960938794173156417==
Content-Type: multipart/alternative; boundary=Apple-Mail-2C623A47-FAF2-4916-A804-7DEE0BE7BA3B
Content-Transfer-Encoding: 7bit


--Apple-Mail-2C623A47-FAF2-4916-A804-7DEE0BE7BA3B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Did you synthesize a custom FPGA image with Fosphor and FFT included?



<end transmission>

> On May 18, 2021, at 10:59, jcasallas2019@gmail.com wrote:
> =EF=BB=BF
> Hi,
>=20
>=20
>=20
> Thanks I did that and I do not have that error anymore, but now the GUI do=
e not show and the program terminates with (return error -11).
>=20
>=20
>=20
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge=
520e3ff
>=20
> [INFO] [X300] X300 initialization sequence...
>=20
> [INFO] [X300] Maximum frame size: 8000 bytes.
>=20
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>=20
> [INFO] [X300] Radio 1x clock: 200 MHz
>=20
> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this device=
.
>=20
> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>=20
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>=20
> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>=20
> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>=20
> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>=20
> >>> Done (return code -11)
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-2C623A47-FAF2-4916-A804-7DEE0BE7BA3B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">Did you synthesize a custom FP=
GA image with Fosphor and FFT included?</div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr"><br><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" s=
tyle=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-com=
position-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-fram=
e-color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On May 18, 2021, at 10:59, jcas=
allas2019@gmail.com wrote:<br><br></blockquote></div><blockquote type=3D"cit=
e"><div dir=3D"ltr">=EF=BB=BF<p>Hi, </p><p><br></p><p>Thanks I did that and I=
 do not have that error anymore, but now the GUI doe not show and the progra=
m terminates with (return error -11).</p><p><br></p><p><code>[INFO] [UHD] li=
nux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff</code></p=
><p><code>[INFO] [X300] X300 initialization sequence...</code></p><p><code>[=
INFO] [X300] Maximum frame size: 8000 bytes.</code></p><p><code>[INFO] [GPS]=
 Found an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></p><p><code>[INFO=
] [X300] Radio 1x clock: 200 MHz</code></p><p><code>[WARNING] [0/Radio#0] Se=
tting RX IQ Balance is not possible on this device.</code></p><p><code>gr::l=
og :DEBUG: rfnoc_rx_streamer0 - Committing graph...</code></p><p><code>[WARN=
ING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.</code></p><p><c=
ode>gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...</code></p><p><c=
ode>gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...</co=
de></p><p><code>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream co=
mmand...</code></p><p><code>&gt;&gt;&gt; Done (return code -11)</code></p><p=
><br></p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-2C623A47-FAF2-4916-A804-7DEE0BE7BA3B--

--===============5960938794173156417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5960938794173156417==--
