Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D15676F3BF
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 22:00:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFE56384B76
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 16:00:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691092854; bh=NqG8ZK9toX6QayuIZI3jvnKT0j8sH+X9Y1QOSPMGjuY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cvGt3VVafIUEqZiRWF5VNZTeZayeUcz5wti95YZfTXp1HrmL86Pf5wuVA6ETAnVj1
	 chc48OPRdsn/InfGJt+IHXaxJojyd9fWNKuQipbkZO9ixmTGv8aTYbZ5pSo3aMxHYf
	 hXQRzFmJgYpsYpvc9vWQzzgiJm1NWcNH0qKlbPjlXY9a00dVHLKBrJqZu1YY9fKyc8
	 TipDRJzCucTyjY46kpMGPxxY/CBkqMJN3TwjFScARImF8QJHySo+22wZKMv4R2TplI
	 MLfaKMRpDMMBuc96ky8yHAX1ur0AVrMWMXUn1I+9URFDFkmoCpF4jHT9QuoYkcewOK
	 OIef/iZp52R+g==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 16EEC384B3D
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 16:00:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fmsM20ze";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-52229f084beso1731380a12.2
        for <usrp-users@lists.ettus.com>; Thu, 03 Aug 2023 13:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691092817; x=1691697617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+dMqZZl/1ChBxMcooDbPGpY84tnCpcXA6WuPSdyBA/s=;
        b=fmsM20zeNO5qfS66GTTz89ue1Kv0qCI06y9H/eug061yRLV1uVajlp0zVBfsIK3z94
         lMkEbj1KQNOs1EECixSM+qgmE/QbLgxssTG8XefIYqh2sVBGk2czmYy8rvzXaWXuTo6J
         WTN2JGFs4cxHD/CfsNBLtYy4qtOwqiQacE/Zg4i40PNXjOZtNYTG+VRdFbPXxVhLDRus
         KMYiykEaR/H330TyfRgib65Nxks28o/DhrTfNYY+rEbCfBbkc0KZWtg1cpPQRu/j2CBL
         V9yXoETtXhp94c4t2UfcynDK/q+BeCZ0c8KrV5+RGqHgPOQJ/DWzlQot00+nTi6lOC/J
         7gYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691092817; x=1691697617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dMqZZl/1ChBxMcooDbPGpY84tnCpcXA6WuPSdyBA/s=;
        b=hC5suItSLlMTdaP5lObRFOsw/IrTAOiVXw+c1DFvA7LSHAuGxVR7OptFJDx0DxWPMp
         Xb2OHkVeXNpg3sR1vIaqA1N8n5c4eiarec11Ko+UMjN432oHAYabCwoi/FmpnltQTDUO
         RqyFWG/MfpkVE/hCrMDgRCyUegY5G/Gzo1mIdCeeCzsj9u4Zfn1d15MusclYTwEVoeRK
         njmK69HC68S0uNFyzXKqhzyeiDm9eFZAdhXslu+GK4SE029wKMQUc5685nk4c0jUqH+X
         qrnUZIyOHhFTFIV78XHwRoDGsxhB9usNITWV9n6k1glQbDw2JkMn8MeMoC9VRkWB26Cs
         NH1w==
X-Gm-Message-State: AOJu0Yzu18+CMF2d6m4eZQ84/IAHpO9CjMG7x3FonZw7+vb3h2hzK/zl
	OsQuNmNxuuF+vXe+B5XI7lGxtD3FKRZmautH1ZSdgj2S7zs=
X-Google-Smtp-Source: AGHT+IHr7oNPUwKrnNWLEIKj7ERMv+h4HDlBfYI1gcrciWasvG+GlY6m/dwZMXODW4MlgvpZgZTmcj5z6pmzlm/w+aM=
X-Received: by 2002:a50:ed8a:0:b0:523:1091:9f9e with SMTP id
 h10-20020a50ed8a000000b0052310919f9emr1557471edr.20.1691092816583; Thu, 03
 Aug 2023 13:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <1254906326.128380.1691050968443.JavaMail.zimbra@imt-atlantique.fr>
In-Reply-To: <1254906326.128380.1691050968443.JavaMail.zimbra@imt-atlantique.fr>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 3 Aug 2023 16:00:05 -0400
Message-ID: <CAEXYVK7sCxS1FtLndFoHkTGUqwU6Yr79JFyRiU-yCEehzf6c4Q@mail.gmail.com>
To: EVAN LAURANS <evan.laurans2@imt-atlantique.fr>
Message-ID-Hash: 5ISVFH6E5V26U7U4VJQRDKNF4NZBDPJW
X-Message-ID-Hash: 5ISVFH6E5V26U7U4VJQRDKNF4NZBDPJW
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ISVFH6E5V26U7U4VJQRDKNF4NZBDPJW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5178930873944212758=="

--===============5178930873944212758==
Content-Type: multipart/alternative; boundary="0000000000009d620706020a3a41"

--0000000000009d620706020a3a41
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 3, 2023 at 4:24=E2=80=AFAM EVAN LAURANS <evan.laurans2@imt-atla=
ntique.fr>
wrote:

> Hi all,
>
> I use the USRP X310 to analyze signal and i use the 10 MHz REF OUT for an
> external device. I noticed that=E2=80=99s the REF OUT hasn=E2=80=99t a fr=
equency of 10 MHz
> when i am using a 184.32 MHz master clock rate but about 9.96 MHz, wherea=
s
> the REF OUT frequency is 10 MHz with a master clock rate of 200MHz.
> Is there any way to have a REF OUT at the frequency of 10 MHz with a
> master clock rate of 184.32 MHz ?
>

Probably not.  The schematic has all these signals coming from an LMK04816
which is an integer-N PLL.  Here is the clock control for the x300:


https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/x300/x300_cl=
ock_ctrl.cpp#L655

Note that the VCO frequency is set to 2400 MHz when a 200 MHz master clock
rate is set, but 2580.48 MHz for 184.32 MHz.

You'll be limited to whatever that chip can provide.

Brian

--0000000000009d620706020a3a41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 3, 2023 at 4:24=E2=80=AFAM EV=
AN LAURANS &lt;<a href=3D"mailto:evan.laurans2@imt-atlantique.fr">evan.laur=
ans2@imt-atlantique.fr</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
I use the USRP X310 to analyze signal and i use the 10 MHz REF OUT for an e=
xternal device. I noticed that=E2=80=99s the REF OUT hasn=E2=80=99t a frequ=
ency of 10 MHz when i am using a 184.32 MHz master clock rate but about 9.9=
6 MHz, whereas the REF OUT frequency is 10 MHz with a master clock rate of =
200MHz.<br>
Is there any way to have a REF OUT at the frequency of 10 MHz with a master=
 clock rate of 184.32 MHz ?<br></blockquote><div><br></div><div>Probably no=
t.=C2=A0 The schematic has all these signals coming from an LMK04816 which=
=C2=A0is an integer-N PLL.=C2=A0 Here is the clock control for the x300:</d=
iv><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResea=
rch/uhd/blob/master/host/lib/usrp/x300/x300_clock_ctrl.cpp#L655">https://gi=
thub.com/EttusResearch/uhd/blob/master/host/lib/usrp/x300/x300_clock_ctrl.c=
pp#L655</a></div><div><br></div><div>Note that the VCO frequency is set to =
2400 MHz when a 200 MHz master clock rate is set, but 2580.48 MHz for 184.3=
2 MHz.</div><div><br></div><div>You&#39;ll be limited to whatever that chip=
 can provide.</div><div><br></div><div>Brian</div></div></div>

--0000000000009d620706020a3a41--

--===============5178930873944212758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5178930873944212758==--
