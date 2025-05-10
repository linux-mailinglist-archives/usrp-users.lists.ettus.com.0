Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E2EAB213A
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 06:56:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD7F4385D57
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 00:56:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746853016; bh=DfsdXt9vKkHZT5YLNXsQqKd0lICXtQkkKZ+WL6JmY80=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FRWV16UkJWMHVB+2GiJfk2C1fB85u1OQoa01JjH8QTVceDI4KJMCZRI9dslnNuMeo
	 Y4MtBIczIdy4D0UH9oqqRKnZBNvHjwmSIQ/IGvBV7vEbCMZKM7Ccsid8P3vTFU2DCR
	 lKOOBVkl+Nhcb+H+VUEozarO4q7djclRTi2u3PlBzk85RibyirFFhb0tGyIuedeynR
	 +Ns5AWrjf/auNvEkB907gDpUV4E9q3CQAa2Mdbcf4q5DWXPkGrjhe6tRriAXvHfYcR
	 HeVqCL9eGwfFe1UerfjJ7d1DNnIDXJryVotIROnEShA5QfhV96hPDTeq+xjBLKM7+9
	 xY1kque/L9sDQ==
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 58A85385D4E
	for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 00:56:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eSYaWsQ4";
	dkim-atps=neutral
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3d90208e922so12464705ab.3
        for <usrp-users@lists.ettus.com>; Fri, 09 May 2025 21:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746853007; x=1747457807; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O8OnLVvmmyVFukd31pz7YTxwfCA13SjMxxAus0rV8Yw=;
        b=eSYaWsQ4qIaiMf53nr4hvHfkOMzNWl+l2R5jBgzZ2ksaaU948EkDVlZWnWDo1c50zo
         OFux1Eu+pOmhGAVXKqVIlIBDooYjTFsbS270ekjj6TLZMK0lvgRu4npQvoUFQdUzS+dE
         Lyt6Zv1Vt19J9VWEXIIB6B7lgz5v6Oi16zH72vp6ojhLgxWQTEH40sGIEvzR3YtuGXxU
         bJRHHjNqsK7JUPvwyVbqtiNm4oge/AcNN4xIjWxOVPR1cESeyUDSov504Z0FM9GDXsO5
         8xQB/cEJFTxi2rvG5cmY/uGE8wUgVH60VUQC1e4eGnM84g8YSBoq9WGJX4tHbiS/aGZ3
         i8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746853007; x=1747457807;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O8OnLVvmmyVFukd31pz7YTxwfCA13SjMxxAus0rV8Yw=;
        b=lOOQfuK9jbVsofYgS+ah2J51bfbUF0zkOWR9zkjsbmHyt8OnIpW5ozcfWw6Ied8LVb
         vx+KB1kOYLRPMePwxbd+WbBhb/VyQlVQQXw6s4hR1fv6tHoaPJ5e5BcFHMcfUS6oMx6f
         ctgfmhzo6NW7A7Py58Vt6sQDKIEzv2W2QHiNP/OCPPon5vrY3E9aNnzLYnjuqPXP5c5g
         cs7gAWCkoylNmIRrFFM5MIE2F4/9HBkGUlgz/BaYtu6eR+AeLInPyumxidbNV0knoubq
         FLR+Mf8kRoJsxjlLt4IX5ZudhLB7frxXulyxNYH1yMf62Dv+EnyADiXgVLyjUFCmHn5L
         WiLg==
X-Gm-Message-State: AOJu0YwnYxn8Gi6ZwgFy/I9oV2j53ZfcYUg0/oh4ObsT5D8MkAPYirwt
	odrqAvNtx2Rhtg/IgzDGgZuRNcT2cPKnl154//nJ+dEG7GL+W4YuwxNdabCHvtumrbSBCcR/pXF
	2ctsQ1AcIjPbqCMS2Sevz+T26gQLow0AgpOY=
X-Gm-Gg: ASbGncvkjisgX08ziN/acypUhRLA6i2CDO6CFQpGw9k5ZwGco4L1yQz4b9ylsyavXmG
	rQc676Lj7NcvvgweMmpI6JICra/oPyV8H2Gj7YEb4tfo5lSyM/BUqeUY+MjK9iCyobXD+p+EaLO
	Mye5/eV6yLDYgD+s9DLdzz0O/4pXPkoBlAmfdTcw==
X-Google-Smtp-Source: AGHT+IGPX2ZoIpqUqzTOwFtfBIFFdbGSnHdmjib5GntrgBKcpUsizckU3EfDUXEEPb+ho4YBxH10Yu3GlLYOEF+V8vg=
X-Received: by 2002:a05:6e02:b4c:b0:3d4:337f:121c with SMTP id
 e9e14a558f8ab-3da7e1e7cfamr61356445ab.10.1746853007280; Fri, 09 May 2025
 21:56:47 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 10 May 2025 07:56:36 +0300
X-Gm-Features: AX0GCFujw3Jh4POo7tLI-iz478Zv_zla1aUrp2W0zu59AUS60RWZ7dDSl-ILEno
Message-ID: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AC67D44YB7SZUWKLFL7OZGJXJNMAEMOT
X-Message-ID-Hash: AC67D44YB7SZUWKLFL7OZGJXJNMAEMOT
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AC67D44YB7SZUWKLFL7OZGJXJNMAEMOT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8258498749189900160=="

--===============8258498749189900160==
Content-Type: multipart/alternative; boundary="000000000000f9516d0634c0e83e"

--000000000000f9516d0634c0e83e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I recently changed my host application to complex double. I had to change
my stream_args to
fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
ptr = (void **)&zin;
Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I have
only 1196 maxsamples, and crashes. I don't need the sse2 code for my
conversion. I only use 1024 complex
 samples/packet for fft. I am very happy with the generic chdr_sc16_to_xx.
Does anyone have any fc64 experience and how one can pass the void buffer
pointer to
skip the sse2 code?

TIA
Nikos

--000000000000f9516d0634c0e83e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
all,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">I recently changed m=
y host application to complex double. I had to change my stream_args to</di=
v><div class=3D"gmail_default" style=3D"font-size:small">fc64. I pass my vo=
id pointer to uhd_rx_streamer_recv same as before:</div><div class=3D"gmail=
_default" style=3D"font-size:small">ptr =3D (void **)&amp;zin;</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Unfortunately, the=C2=A0=C2=
=A0convert_chdr_1_to_fc64_1_guts doesn&#39;t like it, I have only 1196 maxs=
amples, and crashes. I don&#39;t need the sse2 code for my conversion. I on=
ly use 1024 complex</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">=C2=A0samples/packet for fft. I am very happy with the generic=C2=A0ch=
dr_sc16_to_xx.</div><div class=3D"gmail_default" style=3D"font-size:small">=
Does anyone have any fc64 experience and how one can pass the void buffer p=
ointer to</div><div class=3D"gmail_default" style=3D"font-size:small">skip =
the sse2 code?</div><div class=3D"gmail_default" style=3D"font-size:small">=
<br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><=
div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div>

--000000000000f9516d0634c0e83e--

--===============8258498749189900160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8258498749189900160==--
