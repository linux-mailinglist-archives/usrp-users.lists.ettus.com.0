Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0974AA71F
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 07:28:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2377385E81
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 01:28:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fsCHZf5o";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0998B385E5F
	for <usrp-users@lists.ettus.com>; Sat,  5 Feb 2022 01:27:39 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id i10so24872975ybt.10
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 22:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=uxClSq/8Jm6L8q2sWW2o8j/IhmZgi5kJoHmV8KbKYc0=;
        b=fsCHZf5o+dbMKTngUNnrcS2mLeizj5rcVNKSaNnKTz5WvrLrP1Qz2sBcpBrT5IjXgs
         tm7+uDH1lTXOfk7doZBy+lD5AsOSDvULHIW0tnal8Odw7wZHpjl1spltCbm3FSfsn0rM
         eSh/blOcgg8kQByTJLREFpHYWYuB0XSjWQaWrvauuwubxBtXqmxmKWMbg08pUjV7M5LN
         oX2DsZ/Xkn7ENGT9yP2tiZqeZYfDJ6HI6+q5asIo2H479VISuZclmgAnUXGcmBRPMgB5
         eNrKyr/N5fbWvT9Dn4jXvohj0ZvkDR18SVD6Q5mSRcWYktqJd7iwEFxN/gMadzHY7ePB
         LAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uxClSq/8Jm6L8q2sWW2o8j/IhmZgi5kJoHmV8KbKYc0=;
        b=ZlAYHQDUt87ykBl9CbB4OmG7pr43R89bxX8UDy46lcIfBK/okNsDrnTuNPzs972YSl
         n5KRQXpDJbrO6wfdU0u0lA7Lt7G2tCgSxQqSr4v9Mo95gsjV+QgOtaQ76x2baBPERpJ9
         kB3uqTzOUVmcRU/emyFo7CMrNKsfKDmkvEu6zW0ZbSYC4O3K6gCO0VYc3BtyY3wK5pJ/
         5tmi0R+RT+H48822eBiyx2Ut62PfdN30FTy9v2FBUy547ud7F7U5A3knkJDxUY3Y8VS5
         RoCxHyR5Q0U9mEgsppxCSICR3g4rMqHq1VGQwCaUZP6tPISxp9RrnZOcr99bQ6vMco1Z
         99Jg==
X-Gm-Message-State: AOAM531SMsXSSwyx0T2BLQTVkUXlwZyznSjBHMmsBiVu+bwZx5cdJTHv
	aUInaqGpafu2haPWUwaMla1tMaS5psO2yHNFf4I8wwAapVf3ogCL
X-Google-Smtp-Source: ABdhPJzoPcGta0FdjmwN/Sgm5xX5+Nz9efjr6FFeFiYBRcv1pBiSRtY+K5CpTOePzjpLMM6lTHIuaRJ3p+Mgg6KquwY=
X-Received: by 2002:a5b:d4e:: with SMTP id f14mr2356685ybr.678.1644042458556;
 Fri, 04 Feb 2022 22:27:38 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 5 Feb 2022 09:57:21 +0330
Message-ID: <CAA=S3PsPWHqfaPe-_HqwoOGqvJ2uA_59h9AKiTsMcyZFA7mv3Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XATZ35HXOWF6Q6BUB2N5JMIU4JIYFMXT
X-Message-ID-Hash: XATZ35HXOWF6Q6BUB2N5JMIU4JIYFMXT
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] what's BSP connections in USRP RFNOC image core files?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XATZ35HXOWF6Q6BUB2N5JMIU4JIYFMXT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5451223288811983373=="

--===============5451223288811983373==
Content-Type: multipart/alternative; boundary="000000000000bcebde05d73f767b"

--000000000000bcebde05d73f767b
Content-Type: text/plain; charset="UTF-8"

Hi, In RFNOC image core files I saw that BSP connection?
what's them and what's the difference between ordinary connections and BSP
connections...

thanks in advance

*BSP connections:*
# BSP Connections
  - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio0 }
  - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
ctrlport_radio1 }
  - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
  - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
x300_radio }
  - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
x300_radio }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
time_keeper }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
time_keeper }


*Other connections:*
 # ep0 to radio0(0) - RFA TX
  - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # radio(0) to ep0 - RFA RX
  - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  # radio0(1) to ep1 - RFA RX
  - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  # ep2 to radio1(0) - RFA TX
  - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # radio1(0) to ep2 - RFA RX
  - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
  - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
  # radio0(1) to ep3 - RFA RX
  - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
  - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  # ep4 to replay0(0)
  - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
  # replay0(0) to ep4
  - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
  # ep5 to replay0(1)
  - { srcblk: ep5,     srcport: out0,  dstblk: replay0, dstport: in_1 }
  # replay0(1) to ep5
  - { srcblk: replay0, srcport: out_1, dstblk: ep5,     dstport: in0  }

--000000000000bcebde05d73f767b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, In RFNOC image core files I saw that BSP connection?<d=
iv>what&#39;s them and what&#39;s=C2=A0the difference=C2=A0between ordinary=
=C2=A0connections and BSP connections...</div><div><br></div><div>thanks in=
 advance</div><div><br></div><div><b>BSP connections:</b></div><div># BSP C=
onnections<br>=C2=A0 - { srcblk: radio0, srcport: ctrl_port, dstblk: _devic=
e_, dstport: ctrlport_radio0 }<br>=C2=A0 - { srcblk: radio1, srcport: ctrl_=
port, dstblk: _device_, dstport: ctrlport_radio1 }<br>=C2=A0 - { srcblk: re=
play0, srcport: axi_ram, dstblk: _device_, dstport: dram }<br>=C2=A0 - { sr=
cblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport: x300_radio }=
<br>=C2=A0 - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstp=
ort: x300_radio }<br>=C2=A0 - { srcblk: _device_, srcport: time_keeper, dst=
blk: radio0, dstport: time_keeper }<br>=C2=A0 - { srcblk: _device_, srcport=
: time_keeper, dstblk: radio1, dstport: time_keeper }<br><b><br></b></div><=
div><br></div><div><b>Other connections:</b></div><div>=C2=A0# ep0 to radio=
0(0) - RFA TX<br>=C2=A0 - { srcblk: ep0, =C2=A0 =C2=A0srcport: out0, =C2=A0=
dstblk: duc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc0, =C2=A0 src=
port: out_0, dstblk: radio0, dstport: in_0 }<br>=C2=A0 # radio(0) to ep0 - =
RFA RX<br>=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: ddc0, =C2=A0 d=
stport: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, dstblk: e=
p0, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep1 - RFA RX=
<br>=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc0, =C2=A0 dstport=
: in_1 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_1, dstblk: ep1, =
=C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # ep2 to radio1(0) - RFA TX<br>=
=C2=A0 - { srcblk: ep2, =C2=A0 =C2=A0srcport: out0, =C2=A0dstblk: duc1, =C2=
=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc1, =C2=A0 srcport: out_0, dstb=
lk: radio1, dstport: in_0 }<br>=C2=A0 # radio1(0) to ep2 - RFA RX<br>=C2=A0=
 - { srcblk: radio1, srcport: out_0, dstblk: ddc1, =C2=A0 dstport: in_0 }<b=
r>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_0, dstblk: ep2, =C2=A0 =C2=
=A0dstport: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep3 - RFA RX<br>=C2=A0 - {=
 srcblk: radio1, srcport: out_1, dstblk: ddc1, =C2=A0 dstport: in_1 }<br>=
=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =C2=A0d=
stport: in0 =C2=A0}<br>=C2=A0 # ep4 to replay0(0)<br>=C2=A0 - { srcblk: ep4=
, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: replay0, dstport: in_0 }<br>=
=C2=A0 # replay0(0) to ep4<br>=C2=A0 - { srcblk: replay0, srcport: out_0, d=
stblk: ep4, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=A0 # ep5 to replay0(1=
)<br>=C2=A0 - { srcblk: ep5, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: rep=
lay0, dstport: in_1 }<br>=C2=A0 # replay0(1) to ep5<br>=C2=A0 - { srcblk: r=
eplay0, srcport: out_1, dstblk: ep5, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<b><=
br></b></div></div>

--000000000000bcebde05d73f767b--

--===============5451223288811983373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5451223288811983373==--
