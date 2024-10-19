Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0389C9A4D21
	for <lists+usrp-users@lfdr.de>; Sat, 19 Oct 2024 13:35:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86A5F3856A2
	for <lists+usrp-users@lfdr.de>; Sat, 19 Oct 2024 07:35:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729337724; bh=R2V7zEk2TAarNZcYfB4tswvUtdKwbPgE9tMxeKNOhAo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VPrissnwyBnkrcxBZsL4VHW1vCyI29WsxG51tzsJGRPMjGf2yWV/RpDhksuSNopGR
	 qFdG3+7fjLSIqUP1z7MI6R3qLyzqpO8DoSytPOUVYbWChca6plb3Zowjm6TwUz+fcb
	 FrUkkbjUVcv8e0bDw3ft4+1DqpYwYeIJooBN6ClAdNWces1xilpEKb0yGP4Qv2wGTF
	 tPiubB++Wp61hbby7+FYSJFNdrcjifveOGpgj6TjQyb5gtJMP8SxJmp0kGsfQMr37c
	 ntCEIm0OY8yfe9LZ1IPKLQoKMIL5Hvo6c1PRCOi3P/ld8rZdNLfbY+xcyk2DAmqFqc
	 /IyLTvBlFel5A==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4188C3853B5
	for <usrp-users@lists.ettus.com>; Sat, 19 Oct 2024 07:34:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="YhOaWmOm";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6e3cdbc25a0so32889567b3.2
        for <usrp-users@lists.ettus.com>; Sat, 19 Oct 2024 04:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1729337682; x=1729942482; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EsQgoFhloPwmPow4P1KvX4JXOiVGaaRZ9NRsjcg6/qQ=;
        b=YhOaWmOmrh2anfd+t8k040uUcOLo7t8zN2B3Hncr6OsdLmTSI13C3Cer/EMtvocGLl
         x4c6fIAsSjZjcowgxPvwbWhh0tOrPvvVYlwsvvK2+4LLG/wSCAT2SMQbgk1Jo2736sEL
         /WEUJuALOWBfBDpE0fNPtpGva3D5DWqzUPx5sM+7VXxopQejbUF3fXmAQNfIoBLR7ajW
         9+Fg1WaqBakbS1FNeb6ijM8CDNsBde+NvgzGI3ivs4XR1hL3ud8UeAXBcuvjcSjonqN+
         778MWGUX9G2eX9aKmIRCwLDxEr+YWzw36U5F/FBne+3GmQuFMARTQwwUOPn6dGVKUqFJ
         rVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729337682; x=1729942482;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EsQgoFhloPwmPow4P1KvX4JXOiVGaaRZ9NRsjcg6/qQ=;
        b=rABGRjyiPsmYxe2aFHUGHHUr4FwLRUGfu7pVzrB2Oou6saL3gmvJlsUhQiVLKW4vmV
         KgekyzipV2T46fYHsiIW727qAhRNzbeEdWkrLPuHpFC7Q3GrlOBK0v75/LqZLm3Nj5pc
         AUXiBcmWSDpZMZcmzYduxeITmCSTVgUv2uq6+cR2Ax4pvEMcmShMChFJJKRtu01KcaBS
         eTRDvXAF7XO2CU5InwnaxmZQiTmm/UwUzseoEn2c+f8R9MRt+OZD2EJOcqltLS9GULp3
         J0eBiq/r8LueNuHpsfRbn0MMKxrnVERFuKgDQArnsWaUd9F2MF87wU28fVw91io2Jaz1
         bm4w==
X-Gm-Message-State: AOJu0YwiTSwyYvcE49PGgR967n4yV/Lu8rHW+4//L+uEyjg1ysIpBy63
	B0ofyQMScAf449unrCe8lqZpNw84/Eon2eRZJ7KBrMLDJr+6uaPuq7lWIzhHHgY/WQNPv2mj+Wi
	XfnBHyXiEYR5pho2v/Br40ffpo5v77dyl/xDrK4HQIboMbZph9gU=
X-Google-Smtp-Source: AGHT+IFkScg/paoW7NhYKNVjW4ohLFkQrLVhT0xwyAIpUW9eFBDyWNQYPf9syg+Bh5/sBr4yq5BOc/RQobZS/bNTVTc=
X-Received: by 2002:a05:690c:3104:b0:6e3:2608:d5af with SMTP id
 00721157ae682-6e5bfceb4f4mr42733747b3.26.1729337682586; Sat, 19 Oct 2024
 04:34:42 -0700 (PDT)
MIME-Version: 1.0
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Sat, 19 Oct 2024 17:04:26 +0530
Message-ID: <CAF=K0BGKQzHX=-vVc1dki_9e35YyE3hMcdc0fXGynZknvUH4xQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: M3JF2UU2CHTNWMIHOLNBFF763XRWE45X
X-Message-ID-Hash: M3JF2UU2CHTNWMIHOLNBFF763XRWE45X
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error on using RFNoC Digital Down convetor (DDC).
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3JF2UU2CHTNWMIHOLNBFF763XRWE45X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2044020338132366861=="

--===============2044020338132366861==
Content-Type: multipart/alternative; boundary="000000000000448f590624d2ceca"

--000000000000448f590624d2ceca
Content-Type: text/plain; charset="UTF-8"

Hello,

I am having USRP X300 device with following tool versions:

Vivado 2021.1 - AR76780n,
GNU radio version - v3.11.0.0git-820-g2adbd4ea
UHD version - UHD_4.7.0.0-84-gbdada1ed


I am trying to use the default example present in the GNU radio example
folder *"rfnoc_radio_ddc.grc"*. *I* am  able to down convert the input
signal with the desired frequency however on using frequency shift feature
it hives following error:


[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
[ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError:
Attempting to overwrite property `freq@USER:0' with a new value after it
was locked!
Traceback (most recent call last):
  File "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_radio_ddc.py", line
330, in <module>
    main()
  File "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_radio_ddc.py", line
309, in main
    tb.start()
  File "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py",
line 116, in start
    top_block_start_unlocked(self._impl, max_noutput_items)
RuntimeError: RfnocError: ResolveError: Attempting to overwrite property
`freq@USER:0' with a new value after it was locked!


I have used the default .bit file which includes DDC blocks. Please suggest
how to resolve this.







-- 
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009

--000000000000448f590624d2ceca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><p dir=3D"auto">I am having USRP X300 device w=
ith following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p><p dir=3D"auto"><br></p><p>I am t=
rying to use the default example present in the GNU radio example folder <b=
>&quot;rfnoc_radio_ddc.grc&quot;</b>. <b>I</b> am=C2=A0 able to down conver=
t the input signal with the desired frequency however on using frequency sh=
ift feature it hives following error:</p><p><br></p><p>[WARNING] [0/Radio#0=
] Attempting to set tick rate to 0. Skipping.<br>[ERROR] [RFNOC::GRAPH::DET=
AIL] 0/DDC#0: RfnocError: ResolveError: Attempting to overwrite property `f=
req@USER:0&#39; with a new value after it was locked!<br>Traceback (most re=
cent call last):<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples=
/grc/rfnoc_radio_ddc.py&quot;, line 330, in &lt;module&gt;<br>=C2=A0 =C2=A0=
 main()<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfno=
c_radio_ddc.py&quot;, line 309, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=
=A0 File &quot;/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block=
.py&quot;, line 116, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(sel=
f._impl, max_noutput_items)<br>RuntimeError: RfnocError: ResolveError: Atte=
mpting to overwrite property `freq@USER:0&#39; with a new value after it wa=
s locked!</p><p><br></p><p>I have used the default .bit file which includes=
 DDC blocks. Please suggest how to resolve this.<br></p><p><br></p><p><br><=
/p><p><br></p><p><br></p></div></div></div></div><br clear=3D"all"><br><spa=
n class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Regard=
s,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,136,136)">=
<font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=3D"https://=
ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhBJmIl6LIH5q6u=
QDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyronics Innovatio=
n Labs Pvt Ltd</b><br></font></span></div><div><div><span style=3D"color:rg=
b(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op Estate=C2=A0=
<br>Satara Road, Pune - 411009</font></span></div></div><div><br></div></di=
v></div></div>

--000000000000448f590624d2ceca--

--===============2044020338132366861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2044020338132366861==--
