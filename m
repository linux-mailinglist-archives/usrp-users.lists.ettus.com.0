Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A028AD8D03
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 15:21:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E92638627E
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 09:21:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749820863; bh=pXIHEuNc2W/W2doq/YO8flk9n2gCCLnah7SgRbc2aqg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cJd04vlGCQcm+U7KypuB4NG988EzD6Hp8uL4v/BA6cQG507WzCk0baOgYUNWT+Qa6
	 FshRv3AU7agnxEndbhL9KsCfVTPX00mDyQqcHkybDMz91qV1NkpPnvShEz5lrKrL6M
	 4GczDFK5ITi+z8h1UEjaNkxETD19liHN4S+KME4Sj7slqIwVEIjCdBWZ0Hj55RPQ65
	 ygo5/8lTvQWR2RTVjYTp7Q0rgCT33G/3+wQFzhhSj7GK+fbhwpx9c5weALYjpKvudu
	 V9+/Bph/fdyP8LstoduPUAmUgqftPTcgOzmUX/gNeVx7ZnyyVC3jFC7zSTLceC+kbx
	 ttJ3MJuDnYBvQ==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AAE3385E67
	for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 09:20:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y7uV9oH2";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ade5b8aab41so443949466b.0
        for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 06:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749820837; x=1750425637; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lgsmqNmeM+KN4+Bbor5anyttWX+KuX1/jvkZMP39QCw=;
        b=Y7uV9oH2oCJz9tioQJqy8AJv55bxYDUy3PlnwjPSCWAGnN2MW8R18Fs2whyeMysReO
         Cf9NLaE1NpajBQthat6Rk7AL4L94GXuXgyYp3iR93gY5okaUHobB50rOHqyKwRPk5D39
         QKe3gfkswwi77Rd+RPT0NppCG9QUO8OrUH1yBPJI3EOqBKBxbRvGmZD2+Y83P11vkxvl
         S5j6FUNiRDBSlffSXyVvbdnzDRjIX1owqkcdDR99t6Fr6qDSVoP+/n8bqrlH/h05tsrM
         FA29gnYh4i1zoMa/f7MBdxIXjaSeJhDWY89q4ZSe2UE41C1qMMyXE5FHrcxjWFqW54i6
         KnUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749820837; x=1750425637;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lgsmqNmeM+KN4+Bbor5anyttWX+KuX1/jvkZMP39QCw=;
        b=QpL3xq7VbcrfiF+GdD/Kw8Hd1FRL+jP6yxPntrw4LehwhJJC2wfwXGCFDEoP0KX/+k
         UCL48GxP0w9IOc8078gZRFoC2wOOdtB6A6091d2AHbCd9xfFzy7d+uv8T2tpDkSKcBoO
         qfzgDRihwUPogr5w+u1PNt6JsmFotIsmsTPJsRdXuEv276k7+ULOycS5zY/mC/t4el31
         n8SxHMmHqWy33qw1KOn82rg0CxUtZNIHej6dbm1mgiYCmTSX/lP7T+3n5dkt6hK4J11/
         FFvl9nddblvuPSqbqMv9xu1xCf4JVqoE0E5ra3qP80glGm7OnYfgeZjhabqNb3+pd/Bq
         y2OQ==
X-Gm-Message-State: AOJu0YxyxWF8srKlr2f7fRsnzQdxz5zpQwkE0aeTflBXDycg0qZGGujm
	25Y50uFK8NVxTAGY+le9G1fea95ROhgJBiN2gY0s/dnD4mmmTucX+NMO4C3vI2izxjRZ8/fZ2mQ
	8nQYIHULvCdq2Ex1ZwtKvSp2oi8e4QafEoF+YEYA=
X-Gm-Gg: ASbGncuajhSXHGoSKZpj2LSe9nDH13UCUq3S2z9A9jFPmeKqxPwi6IDU7gEUeLWfzVc
	tmsvf69jKXZTlhfxYSB55h/6XevRCIRcIcLmauwyU1K722q2Uff0YOo6IlGgP10VnCn0bApmols
	2hGgTbJ3zM3/5wbQX0yD58KXqzdmatCT+ijH/WE4K6s1I=
X-Google-Smtp-Source: AGHT+IENhFbcudHFvBa/K4mDnXl5Mzz44hBmXC0DQemNQRAsa3hxtfuVVRVjfP6upkLhbucg99tVxFV/9l017gKZft8=
X-Received: by 2002:a17:907:3f26:b0:adb:2a81:46ba with SMTP id
 a640c23a62f3a-adec56b398dmr276795366b.34.1749820836873; Fri, 13 Jun 2025
 06:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c@lists.ettus.com>
In-Reply-To: <WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 13 Jun 2025 09:20:25 -0400
X-Gm-Features: AX0GCFuSEKqr4ViGzPSCSkr9jbS2uFD9PCzc0ursze81l2mkmGmzytM8Q4DJgJs
Message-ID: <CAEXYVK5voDAZNqakh3ZFL6Z+r8wnMENNokpDJ7ntkQvRPkoesw@mail.gmail.com>
To: anant.tripathi@technosci.com
Message-ID-Hash: GZNM4DDZSQX2GFK5YNHGONVNMORDPVCS
X-Message-ID-Hash: GZNM4DDZSQX2GFK5YNHGONVNMORDPVCS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZNM4DDZSQX2GFK5YNHGONVNMORDPVCS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3241318191340080507=="

--===============3241318191340080507==
Content-Type: multipart/alternative; boundary="000000000000670b98063773e991"

--000000000000670b98063773e991
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are looking to get the radio time and the 1PPS into your block using
the icores yaml definitions, then check the timekeeper and pps
broadcast-listener here:


https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7=
704cbd5/host/include/uhd/rfnoc/core/io_signatures.yml

Then check the BSP files in that same path for the BSP connection name.

You'll need to make some BSP connections like:

  - { srcblk: _device_, srcport: pps0,  dstblk: yourblock, dstport: pps }
  - { srcblk: _device_, srcport: time0, dstblk: yourblock, dstport: time }

That should give you the 64-bit time and the 1PPS.

Good luck.

Brian

On Fri, Jun 13, 2025 at 6:12=E2=80=AFAM <anant.tripathi@technosci.com> wrot=
e:

> Pretty much what the title says, our goal is to sync the timestamps to th=
e
> rising edge of the 1PPS signal such that they get reset exactly on the
> rising edge of the 1pps signal, and increment the count of a custom
> metadata tag, to the outgoing stream to the UHD application that we are
> working on.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000670b98063773e991
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you are looking to get the radio time and the 1PPS=
 into your block using the icores yaml definitions, then check the timekeep=
er and pps broadcast-listener here:</div><div><br></div><div>=C2=A0=C2=A0<a=
 href=3D"https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f=
942b9bcb7704cbd5/host/include/uhd/rfnoc/core/io_signatures.yml">https://git=
hub.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/hos=
t/include/uhd/rfnoc/core/io_signatures.yml</a></div><div><br></div><div>The=
n check the BSP files in that same path for the BSP connection name.</div><=
div><br></div><div>You&#39;ll need to make some BSP connections like:</div>=
<div><br></div><div>=C2=A0 - { srcblk: _device_, srcport: pps0, =C2=A0dstbl=
k: yourblock, dstport: pps }</div><div>=C2=A0 - { srcblk: _device_, srcport=
: time0, dstblk: yourblock, dstport: time }</div><div><br></div><div>That s=
hould give you the 64-bit time and the 1PPS.</div><div><br></div><div>Good =
luck.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun=
 13, 2025 at 6:12=E2=80=AFAM &lt;<a href=3D"mailto:anant.tripathi@technosci=
.com">anant.tripathi@technosci.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p>Pretty much what the title says, our g=
oal is to sync the timestamps to the rising edge of the 1PPS signal such th=
at they get reset exactly on the rising edge of the 1pps signal, and increm=
ent the count of a custom metadata tag, to the outgoing stream to the UHD a=
pplication that we are working on.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000670b98063773e991--

--===============3241318191340080507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3241318191340080507==--
