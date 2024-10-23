Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1BD9AC684
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 11:29:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2636380A6F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 05:29:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729675787; bh=CJNtftmNcnh8/vvEEzeGC54C+i0E93roqlmYyJxYCRQ=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xwU2UibcjlTHQWusUvsiQ8EN3Q6Y7AMWmWH2IR8VYGh0lKKd5J56KOwWsCJEJsDpI
	 TrLlsU5g/Iv+qLQFVC32vhvp4YhUosC5cPV2t8K5bRUGgk61GxProN46empPN0KfwB
	 m6EVVNVgt2ddqd6gfhM9/p8stwc59BMj//LNwzYkaq42iRNbCxdAv0nRU5M2Jc4OvI
	 npzRfVFLShhHFlAR+6L8gO68U7e7h8uHQEODYpwDrpZEI/Hqwf/hzuCqya5MgPckHV
	 JYEXeqBfdYOwQ+M6M40D7JiWRlh0Tt6itRZnDS+fEP/1/+DBogckILC0doX1l39TEs
	 u2ZPuGZUa6mMA==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 19413383E66
	for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 05:28:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="fQ7fJWEN";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso67053791fa.2
        for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 02:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729675731; x=1730280531; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b1+OvnzSggWo6RQA2/q2djjqsUA/HaBY3ymLstcmtr0=;
        b=fQ7fJWENFgfMFf7eMS0rrkizBh313EUDAuInDw2CQibmnacbfObiBa6GTl9S144opG
         FQgaMpYoMgcCFd73KvFfuwnUzWUUcqsgOM7ijkMvB6DMEIwJk32ZFJ2pk65LahmRNPjv
         l3pLteUTlw0CYQ7zkjSSRup/eheOawDKYq2YygQ3gpWVnQwSoElrt7Pux2Y/YGMDj2NJ
         UmY+3N7TT0Mtm4c8PC9rqRDUHqIolv0FvJWeQsJljRzIGsQK4vrZBbIv+arv2w3aA0MN
         tysSIEjSXOagvhZVju38m21xmiLnyvwtAY7iUUOG9JYMw2/3iHh2SDQm1L/C2wuY1jiy
         AGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729675731; x=1730280531;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b1+OvnzSggWo6RQA2/q2djjqsUA/HaBY3ymLstcmtr0=;
        b=LYhP6iODE8jxv+djva39N9+UvE13976G6dF3WFJZ2pBBc47ypPIdZdrxRRLdiJRYbI
         BeTaowdhK6IC0KKKeBCkk4Rq6usUrqKRiU6Dh2idc0JOpMB5+JMyguooiG9sOVr3LLhj
         zxkVjWMQdoElptHHkFmcS65Wma5NuU1m39KeeUUBZcLouIvry5cuX9m5y9qEg5IDZMRa
         EfRGDWNDKztuYovend+vXTxVYHwUIEhbaDiyqARcWBZdLHvx4bVbQ+9EYE7q8t3CSY5k
         zmGi5scfwjMQ/10KlETPHRtKX+TMI012BQEEM233iSIzk4E0Cug7GkuBJSqjPi8JiOSe
         E7Hg==
X-Gm-Message-State: AOJu0YwHhiM3LoeT1MuLk0gj1ytRShYoIvAUzSnarYe0RtU9myDyTUr3
	v72H92cUuRx2UMfgIM0BX4U8FFiZR8QqSFa8Tc3b8i8LMqBmvOniHwkZWHOXBXSq0rGIt7WaRFu
	JSZk5i0GsRDkj+idSydxl20U+TIrJ7w7oVqCQGfZa6cjiqjolUCk=
X-Google-Smtp-Source: AGHT+IF6z0x7VRExSh/5Qrqhbl5KnGXTAJyoEA/uH3137DTCE9bg3XQt3NgWGsqKR4U9lNe3zpTT4etSB/ph7lOxbpI=
X-Received: by 2002:a2e:bea1:0:b0:2f7:7cf7:474d with SMTP id
 38308e7fff4ca-2fc9d327f35mr10720541fa.27.1729675731209; Wed, 23 Oct 2024
 02:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA1D2w9i235stn2NUS9Kuu7f1_fnyKSLw0qhATzNbrmDEA@mail.gmail.com>
In-Reply-To: <CAEL-RA1D2w9i235stn2NUS9Kuu7f1_fnyKSLw0qhATzNbrmDEA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 23 Oct 2024 11:28:39 +0200
Message-ID: <CAFOi1A7EA+2TLZKUsud=dj=SYz2y65xjEzYDMMswwG7WN8oZjQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 5X2TBNV7I3GMXU6JKXBS5MHFO5TBMJGO
X-Message-ID-Hash: 5X2TBNV7I3GMXU6JKXBS5MHFO5TBMJGO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Best way to transfer samples from DDR to a laptop using only 1Gbps cable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5X2TBNV7I3GMXU6JKXBS5MHFO5TBMJGO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8726166523515769972=="

--===============8726166523515769972==
Content-Type: multipart/alternative; boundary="00000000000089399f062521837d"

--00000000000089399f062521837d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

can you provide some more info? What you're doing makes sense and is the
right approach. Are you using a regular UHD streamer? Are you using the
replay_capture.py example to get started?

-M

On Wed, Oct 23, 2024 at 6:33=E2=80=AFAM hui cj <cjh416593819@gmail.com> wro=
te:

> Hello everyone!
>
> Given the limitation that I can only connect my laptop to the x310 via a
> single 1Gbps Ethernet cable, I am considering using the Replay module to
> temporarily store the samples from the radio in DDR.
> However, when I attempt to transfer the data back to my laptop using the
> Replay module again, I encounter incomplete data transmission and respons=
e
> timeouts. I suspect this might be due to a lack of flow control when the
> x310 transmits to the remote streamer.
> My question is, how can I ensure a complete and reliable transfer of all
> DDR data to my laptop, while also maximizing the transfer rate (close to
> 1Gbps) in this scenario?
>
> Thanks!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000089399f062521837d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>can you provide some mor=
e info? What you&#39;re doing makes sense and is the right approach. Are yo=
u using a regular UHD streamer? Are you using the replay_capture.py example=
 to get started?</div><div><br></div><div>-M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2024=
 at 6:33=E2=80=AFAM hui cj &lt;<a href=3D"mailto:cjh416593819@gmail.com">cj=
h416593819@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div><span style=3D"color:rgb(6,6,7);f=
ont-family:-apple-system,blinkmacsystemfont,&quot;Helvetica Neue&quot;,helv=
etica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot;=
Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14p=
x;letter-spacing:0.25px">Hello everyone!</span></div><div><span style=3D"co=
lor:rgb(6,6,7);font-family:-apple-system,blinkmacsystemfont,&quot;Helvetica=
 Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&q=
uot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-ser=
if;font-size:14px;letter-spacing:0.25px"><br></span></div><span style=3D"co=
lor:rgb(6,6,7);font-family:-apple-system,blinkmacsystemfont,&quot;Helvetica=
 Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&q=
uot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-ser=
if;font-size:14px;letter-spacing:0.25px">Given the limitation that I can on=
ly connect my laptop to the x310 via a single 1Gbps Ethernet cable, I am co=
nsidering using the Replay module to temporarily store the samples from the=
 radio in DDR. </span><div><span style=3D"color:rgb(6,6,7);font-family:-app=
le-system,blinkmacsystemfont,&quot;Helvetica Neue&quot;,helvetica,&quot;seg=
oe ui&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot;Hiragino Sans G=
B&quot;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14px;letter-spacin=
g:0.25px">However, when I attempt to transfer the data back to my laptop us=
ing the Replay module again, I encounter incomplete data transmission and r=
esponse timeouts. I suspect this might be due to a lack of flow control whe=
n the x310 transmits to the remote streamer. </span></div><div><span style=
=3D"color:rgb(6,6,7);font-family:-apple-system,blinkmacsystemfont,&quot;Hel=
vetica Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFan=
g SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sa=
ns-serif;font-size:14px;letter-spacing:0.25px">My question is, how can I en=
sure a complete and reliable transfer of all DDR data to my laptop, while a=
lso maximizing the transfer rate (close to 1Gbps) in this scenario?</span><=
br><div><span style=3D"color:rgb(6,6,7);font-family:-apple-system,blinkmacs=
ystemfont,&quot;Helvetica Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,r=
oboto,&quot;PingFang SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Micro=
soft Yahei&quot;,sans-serif;font-size:14px;letter-spacing:0.25px"><br></spa=
n></div><div><span style=3D"color:rgb(6,6,7);font-family:-apple-system,blin=
kmacsystemfont,&quot;Helvetica Neue&quot;,helvetica,&quot;segoe ui&quot;,ar=
ial,roboto,&quot;PingFang SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;=
Microsoft Yahei&quot;,sans-serif;font-size:14px;letter-spacing:0.25px">Than=
ks!</span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000089399f062521837d--

--===============8726166523515769972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8726166523515769972==--
