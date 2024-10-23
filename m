Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1679AC81E
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 12:45:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24775384D09
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 06:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729680328; bh=GbZxL9c8Xl69ERFKlj9EYNXn9EJTB1n7uLdjeRx/roY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LzlqPMrCqJ8uHF4BkJ93PJb8wpq+FF2FGeu+6odr9EkfQbq1UbdBahxP3KEnneQ4D
	 BDDQAIntD/ZJwalXfboroAVrIhW7R/PnluIbSSsWMMEzXx4T2T0qLm8nj5INhyMU9z
	 XbK9AAOG4xekxriYrFsSyeSI2eWiP8CPWFW/U1V+x752Ou+5lJW/5UQSe7FiEzsUuc
	 NnAuxfI3uudzROcMSpZjtzo4hPa+dOTdyPTzm4zJwe5TKUm9XwWWn346xhRWqRbO5q
	 zCBKn2VwrJHLq5wijzZY2mm/1ZyevDZMsYw0ZLDJ7cwlTESYw55ZMbI3+EWjUSj/d7
	 R2jdDlPH+cecw==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id DE2FD380AEF
	for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 06:45:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="W3c0B+kd";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6e2e4237da4so60582907b3.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 03:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1729680307; x=1730285107; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KEFuDCE0QHDvEraZv52cOcBvR7D42NG86L++iKKu5WU=;
        b=W3c0B+kddJ/WFvOcrIKW63OPGRzVF46QxYn69is7S1zU5BWrtDOIrugOQ5F5WarsxE
         a7nUxOr/lkciVR41NajIqLhjO49uHbrGr3OMR3xqjqW2oicqKIqjwNpBma26YLlXUfa7
         YspeVu4kbxW1FQYmhctrBt8uP/Fq5+kjjYuLVjJw5BJ7B6jyu8nGFkxNq5/9qomfr81k
         YWnk+7PwIV56qgZSCPyHBM/NwuHHybUThPQxluzwVs1fSi9pwWIO3ovttfSqYt/PyXzb
         VeRJRlA5IvxTRAOzk61HYXEzbdmCqGawis4+JD/uDzpE+YWt4uxA5V9eHVG42coSlmtH
         XG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729680307; x=1730285107;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KEFuDCE0QHDvEraZv52cOcBvR7D42NG86L++iKKu5WU=;
        b=EKesVbhr7Nss+M2m+SDMcOqCGWvMM7NXEVZM8d5QwNRcxQo1BYVBasyQrfHuKDirCR
         /1iVtIWbBl4xSpd6uuFuz4lotv5+gOeEAc4YUlcm5ZZFNY3SjxAQ13ePKG4Mz3pvkqBm
         bWwmuFuj69JADJ3fKzP1+nu1T2RfDPMPAwVvx3dA/T3yOxnYMqnOP+tC4hL35uTOuwJ2
         N+5gqWmp9vHTbCjDUkzlTh1qShKTUI0R7+/4v7iC1dbFwQIqB5mOAYYRC/2cbDh6zAcD
         BIcF1QsO98i6D0I7+wX1jHdbNhShpT7YxELplZMzLLKumfBxvuKgOy9nydzUnHwMT3N3
         ou9w==
X-Gm-Message-State: AOJu0Yzns/BhsTbMq/mM85smBe35A6W7cZ6f94nQtVqHQU1rZvpNvpJS
	eSaAlSISdQmgkvFs8Q7+52aoSIPQJibdhKdVWxHTM9NQoptFXicb3O/ZoS46SoaiGacH7g7My3L
	i9mDlxsO3XvriSGWsfaKzx6Yv/HSPlNcmIgSOCht8qTPZ7Vb4RC0=
X-Google-Smtp-Source: AGHT+IHj8VlHK6a387H4T0F3cjD90EmfrTYcHLXCSL/e+17yz0gELunpTIx4MfXDf2OjdJk7ukQaJQnREiCFLD6Yybo=
X-Received: by 2002:a05:690c:11:b0:6e5:bea2:1099 with SMTP id
 00721157ae682-6e7f0e6617emr20953717b3.21.1729680306995; Wed, 23 Oct 2024
 03:45:06 -0700 (PDT)
MIME-Version: 1.0
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Wed, 23 Oct 2024 16:14:51 +0530
Message-ID: <CAF=K0BGvENW-hcz4zpGvHC+F9U7AcAaEJ3vyb4vfi_h--mb=Ng@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2HDUTR4QWODNWZQUFISOECHZSF6E6JMF
X-Message-ID-Hash: 2HDUTR4QWODNWZQUFISOECHZSF6E6JMF
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error on using split stream and FFT rfnoc block.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HDUTR4QWODNWZQUFISOECHZSF6E6JMF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8412760442444734709=="

--===============8412760442444734709==
Content-Type: multipart/alternative; boundary="00000000000046295506252294ef"

--00000000000046295506252294ef
Content-Type: text/plain; charset="UTF-8"

Hello,

I am having USRP X300 device with following tool versions:

Vivado 2021.1 - AR76780n,
GNU radio version - v3.11.0.0git-820-g2adbd4ea
UHD version - UHD_4.7.0.0-84-gbdada1ed

I have added FFT and Spliter RFNoC blocks in my bit file. The
"uhd_usrp_probe" command shows correct connection in the blocks.

| | RFNoC blocks on this device:
| |
| | * 0/DDC#0
| | * 0/FFT#0
| | * 0/Radio#0
| | * 0/Replay#0
| | * 0/SplitStream#0
| _____________________________________________________
| /
| | Static connections on this device:

| | * 0/Radio#0:0==>0/DDC#0:0
| | * 0/Radio#0:1==>0/DDC#0:1
| | * 0/DDC#0:1==>0/SEP#0:0
| | * 0/DDC#0:0==>0/SplitStream#0:0
| | * 0/SplitStream#0:1==>0/FFT#0:0
| | * 0/SplitStream#0:0==>0/SEP#2:0
| | * 0/FFT#0:0==>0/SEP#1:0
| | * 0/SEP#3:0==>0/Replay#0:0
| | * 0/Replay#0:0==>0/SEP#3:0
| | * 0/SEP#4:0==>0/Replay#0:1
| | * 0/Replay#0:1==>0/SEP#4:0

However, on running example code available on GNURADIO
*"rfnoc_split_stream.grc"*. I get following error:

*1. When FFT size = 1024 (as in the example given in gnu radio)*


*--------------------------------------------------------------------------------------------------------------------------*









*[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024 but
max value is 364Traceback (most recent call last):  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
347, in <module>    main()  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
326, in main    tb.start()  File
"/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
116, in start    top_block_start_unlocked(self._impl,
max_noutput_items)RuntimeError: ValueError: Samples per packet is
incompatible with atomic item size!*

*--------------------------------------------------------------------------------------------------------------------------*
How to know what is atomic size and how can I set it. On searching for this
error I came across following link:

*https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb10352cf875d604d74
<https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb10352cf875d604d74>*

This says rx stream is having a bug and AIS is in unit bytes, and spp in
unit items. It was a response of two years back with the uhd version
v4.3.0.0-rc1
<https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0-rc1>. Does this
explanation still hold? What is the max FFT size I can use? I want to use
*2048*, what changes need to be done for it.

*1. When FFT size = 256*

*--------------------------------------------------------------------------------------------------------------------------*









*[ERROR] [RFNOC::GRAPH::DETAIL] The following properties could not be
resolved:[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:0
atomic_item_size]Traceback (most recent call last):  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
347, in <module>    main()  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
326, in main    tb.start()  File
"/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
116, in start    top_block_start_unlocked(self._impl,
max_noutput_items)RuntimeError: RfnocError: ResolveError: Could not resolve
properties.*

*--------------------------------------------------------------------------------------------------------------------------*

Am I doing anything wrong in the yml script because the connection seems
correct in the uhd_usrp_probe command. On further searching I found that
SPP i.e. sample per packet must be the same for all the blocks. Tried doing
it in gnu radio by assigning the args option with f"spp={fft_size}". Is
this correct? It gives no change in error howver I get additional warning
as

[WARNING] [0/FFT#0] set_properties() cannot set property `spp': No such
property.
[WARNING] [0/DDC#0] set_properties() cannot set property `spp': No such
property.


Please help me to solve these errors.

-- 
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009

--00000000000046295506252294ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div><p dir=3D"auto">I am =
having USRP X300 device with following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p>
<p dir=3D"auto">I have added FFT and Spliter RFNoC blocks in my bit file. T=
he &quot;uhd_usrp_probe&quot; command shows correct connection in the block=
s.</p>
<p dir=3D"auto">|   |       RFNoC blocks on this device:<br>
|   |<br>
|   |   * 0/DDC#0<br>
|   |   * 0/FFT#0<br>
|   |   * 0/Radio#0<br>
|   |   * 0/Replay#0<br>
|   |   * 0/SplitStream#0<br>
|     _____________________________________________________<br>
|    /<br>
|   |       Static connections on this device:</p>
<p dir=3D"auto">|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#0:0<br>
|   |   * 0/DDC#0:0=3D=3D&gt;0/SplitStream#0:0<br>
|   |   * 0/SplitStream#0:1=3D=3D&gt;0/FFT#0:0<br>
|   |   * 0/SplitStream#0:0=3D=3D&gt;0/SEP#2:0<br>
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#1:0<br>
|   |   * 0/SEP#3:0=3D=3D&gt;0/Replay#0:0<br>
|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#3:0<br>
|   |   * 0/SEP#4:0=3D=3D&gt;0/Replay#0:1<br>
|   |   * 0/Replay#0:1=3D=3D&gt;0/SEP#4:0</p>
<p dir=3D"auto">However, on running example code available on GNURADIO <str=
ong>&quot;rfnoc_split_stream.grc&quot;</strong>. I get following error:</p>=
<p><b>1. When FFT size =3D 1024 (as in the example given in gnu radio)</b><=
/p><p><i>------------------------------------------------------------------=
--------------------------------------------------------<br></i></p><p><i>[=
ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024 but ma=
x value is 364<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line =
347, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/q=
uasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 326, i=
n main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/pyth=
on3.8/dist-packages/gnuradio/gr/top_block.py&quot;, line 116, in start<br>=
=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, max_noutput_items)<br>Ru=
ntimeError: ValueError: Samples per packet is incompatible with atomic item=
 size!</i></p><p><i>-------------------------------------------------------=
-------------------------------------------------------------------</i></p>=
</div><div>How to know what is atomic size and how can I set it. On searchi=
ng for this error I came across following link:</div><div><br></div><div><i=
><a href=3D"https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702f=
fbdb10352cf875d604d74">https://github.com/EttusResearch/uhd/commit/f163af41=
a47ab4c702ffbdb10352cf875d604d74</a></i></div><div><br></div><div>This says=
 rx stream is having a bug and <span class=3D"gmail-ws-pre-wrap extended-co=
mmit-description-container gmail-f6 gmail-wb-break-word gmail-text-mono gma=
il-prc-Text-Text-0ima0">AIS is in unit bytes, and spp in unit items. It was=
 a response of two years back with the uhd version </span><span class=3D"gm=
ail-f1 gmail-text-bold gmail-d-inline gmail-mr-3"><a href=3D"https://github=
.com/EttusResearch/uhd/releases/tag/v4.3.0.0-rc1" class=3D"gmail-Link--prim=
ary gmail-Link">v4.3.0.0-rc1</a>. Does this explanation still hold? What is=
 the max FFT size I can use? I want to use <b>2048</b>, what changes need t=
o be done for it.</span></div><div><span class=3D"gmail-f1 gmail-text-bold =
gmail-d-inline gmail-mr-3"><br></span></div><div><b>1. When FFT size =3D 25=
6</b></div><div><b><br></b></div><div><b>----------------------------------=
---------------------------------------------------------------------------=
-------------</b></div><div><i>[ERROR] [RFNOC::GRAPH::DETAIL] The following=
 properties could not be resolved:<br>[ERROR] [RFNOC::GRAPH::DETAIL] Dirty:=
 RxStreamer#1[INPUT_EDGE:0 atomic_item_size]<br>Traceback (most recent call=
 last):<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfno=
c_split_stream.py&quot;, line 347, in &lt;module&gt;<br>=C2=A0 =C2=A0 main(=
)<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_spli=
t_stream.py&quot;, line 326, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 =
File &quot;/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py&=
quot;, line 116, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(self._i=
mpl, max_noutput_items)<br>RuntimeError: RfnocError: ResolveError: Could no=
t resolve properties.</i></div><div><b>------------------------------------=
---------------------------------------------------------------------------=
-----------<br></b></div><div><span class=3D"gmail-f1 gmail-text-bold gmail=
-d-inline gmail-mr-3"><br></span></div><div><span class=3D"gmail-f1 gmail-t=
ext-bold gmail-d-inline gmail-mr-3">Am I doing anything wrong in the yml sc=
ript because the connection seems correct in the uhd_usrp_probe command. On=
 further searching I found that SPP i.e. sample per packet must be the same=
 for all the blocks. Tried doing it in gnu radio by assigning the args opti=
on with </span>f&quot;spp=3D{fft_size}&quot;. Is this correct? It gives no =
change in error howver I get additional warning as <br></div><div><br></div=
><div>[WARNING] [0/FFT#0] set_properties() cannot set property `spp&#39;: N=
o such property.<br>[WARNING] [0/DDC#0] set_properties() cannot set propert=
y `spp&#39;: No such property.</div><div><br></div><div><br></div><div>Plea=
se help me to solve these errors. <br></div><div><span class=3D"gmail-f1 gm=
ail-text-bold gmail-d-inline gmail-mr-3"><br></span></div><div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Regards,<div>=
<b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#000000"><b><img width=3D"200" height=3D"43" src=3D"https://ci3.goo=
gleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhBJmIl6LIH5q6uQDkghvz=
zXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyronics Innovation Labs =
Pvt Ltd</b><br></font></span></div><div><div><span style=3D"color:rgb(136,1=
36,136)"><font color=3D"#000000">#11, Electronics Co-op Estate=C2=A0<br>Sat=
ara Road, Pune - 411009</font></span></div></div><div><br></div></div></div=
></div></div>

--00000000000046295506252294ef--

--===============8412760442444734709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8412760442444734709==--
