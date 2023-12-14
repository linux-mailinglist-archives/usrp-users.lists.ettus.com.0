Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E84813D45
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 23:29:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6AE0385365
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 17:29:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702592952; bh=/eyipW3IGhV8LotjEdAdmpcjZUji9p0x2mkOkLp+Qlc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=0kDbtqnEtXUf6Mwt7d7MAbjEbnycW3PjeWF/1Ztl9XMPlSnEUtcz+Vsk2zKYser4K
	 wiqQC8b/GveGBBrh48dnIHcJ3yXiJ7rj1oa6HLkcATFCMEwPrbRKTHwXPJnE8dbj8w
	 aBYf2icbZpUg3H60jdyh+Us04AW/cTDp1osMRoGSxg3+EA9q5wHvsX8QmLlTvFjcRF
	 x/1pZOur6ba1eyBLOxVC2D2wTSi5VpBtL/vKyWXFncZeHP6rqM3PvN+5Vg0nVvqwqW
	 dVN3fjyHjtCZOB4Nb65yYEexefloicOB2y6RRZS6kqz5XYua5yPS9GmzK7tb0/M2Rl
	 ReT5Zx0a05Vtg==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B5D3138531A
	for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 17:29:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="JHsS6+MS";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3b9de2332e3so55000b6e.1
        for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 14:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1702592946; x=1703197746; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dEuPLN5RO6qHmKAGRuQ7faKnwRsdjKyYNNPc2pOx0tQ=;
        b=JHsS6+MSlVeo8G6AsEOAV8gSAOnCckmbxDa4K0ysDT/YGW2yEh/Vvu/D8IZ0OMwW8D
         0sXl5Cujc03Gt558WTnHt/gSJkkQSTtCWDnOMiaSrsLgzRYbniLE45TpQ8YY1jGkYchf
         7vhkb6jNov/pET0i8Bn/jaaVW3CjHWtmfyeklJDOqGvNYXovmqkJ3bZG74iXFFvI1LmT
         gOtCOhssEwV4tGEWzIWqeBBkIIi60LMyPiReXSSGgnwXslKuTwLSjpSH0mGhDY7PgIIl
         kLsqOIj7JwdD2UHugb7zEc+jen1dh7MS81/o6uJw2NAh19c4Xl/KenbEe600mHJCoLk3
         ssmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702592946; x=1703197746;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEuPLN5RO6qHmKAGRuQ7faKnwRsdjKyYNNPc2pOx0tQ=;
        b=EvJdhekbty0rQx6Tyx894eGkdxEinmCZb9zAR3H6DGH0KaTaBnn4hc4NQ2PNS3vmCa
         NBdEvWPHanS6ZtZDDppIIN1ZmCt1CWAzUOdEM/mGVX4BclsV8mOC4io2QY4H30RYem0m
         +jBjTeLRNsdE2R4ReBIRvuD6appVAlqW7Gxm7rCOr7Ig8dtblV2hyqIM4WriCjU+DlnK
         piTtCfprOy7IJhisuuOsK6B90MUq3xvaQ5AH4MROU66JacODDo+qLecEAaVr5ntDArAg
         HcGFsaHoUQe5h30IE+EKAWXNgrP8f+nkXnP3QAVTVqrhBlDZPKkRX5qg9UZ3fdpT1jXg
         OstA==
X-Gm-Message-State: AOJu0YxBdSjs399id+2ME2+NZ1daMbzkX9FBWfgfXoByyi3MKOiEywVJ
	uutbIdYkOd1wy2ACWJnr+ZPywgKU7cZXOe/MNCNQr111lruUo8OeC08/Vg==
X-Google-Smtp-Source: AGHT+IFawSpgMM46Va2GvXeqoy5N5vFp5b5mHhjWayZXZ75eItX+RurHDygMltaT3cj1eemdpUQ10KEq8c1yfXPyerg=
X-Received: by 2002:a05:6808:120c:b0:3b2:e761:fadd with SMTP id
 a12-20020a056808120c00b003b2e761faddmr10043249oil.16.1702592945711; Thu, 14
 Dec 2023 14:29:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
In-Reply-To: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
Date: Thu, 14 Dec 2023 17:28:55 -0500
Message-ID: <CANvw1+Q-WcRPAK-M-xJrjaPmj-wgtAwQfTpvr55SRLU9douEdQ@mail.gmail.com>
To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Message-ID-Hash: VVTSSCQZ7KHLDHLKGUJPFHQBYPO2LG2L
X-Message-ID-Hash: VVTSSCQZ7KHLDHLKGUJPFHQBYPO2LG2L
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change UHD Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVTSSCQZ7KHLDHLKGUJPFHQBYPO2LG2L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============5366713841203914588=="

--===============5366713841203914588==
Content-Type: multipart/alternative; boundary="000000000000ba0802060c7fcfac"

--000000000000ba0802060c7fcfac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi LoyCurtis,

You can install different version of UHD by changing your branch to the
version's tag on the GitHub repository as shown below,

```
git clone https://github.com/EttusResearch/uhd.git
git checkout tags/v4.0.0.0
...
```
With these steps, you change your branch to a specific version release.
Then you need to build it again as usual.

Let me know if you have any questions.

A.

On Thu, Dec 14, 2023 at 5:21=E2=80=AFPM LoyCurtis Smith via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to Ubuntu
> 22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect to =
my
> USRP x310s via "*uhd_find_devices*." I can only PING them, and I can only
> communicate with them via UHD when explicitly stating the IP Address of m=
y
> USRP. I was able to communicate with the devices via UHD v
>
> While troubleshooting what is blocking the traffic with my IT staff, I am
> trying to change the UHD version from 4.5 to UHD version 4.0 to see if it
> changes anything. However, I do not see any instructions on installing a
> different UHD version. I installed UHD from source following the NI build
> guide (https://files.ettus.com/manual/page_build_guide.html).
>
> Please assist.
>
> V/r
>
> LoyCurtis Smith
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ba0802060c7fcfac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi LoyCurtis,</div><div><br></div><div>You can instal=
l different version of UHD by changing your branch to the version&#39;s tag=
 on the GitHub repository as shown below,<br></div><div><br></div><div>```<=
br></div><div>git clone <a href=3D"https://github.com/EttusResearch/uhd.git=
">https://github.com/EttusResearch/uhd.git</a> <br></div><div>git checkout =
tags/v4.0.0.0 <br></div><div>... <br></div><div>```</div><div>With these st=
eps, you change your branch to a specific version release. Then you need to=
 build it again as usual.<br></div><div><br></div><div>Let me know if you h=
ave any questions.<br></div><div><br></div><div>A.<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14,=
 2023 at 5:21=E2=80=AFPM LoyCurtis Smith via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to Ubuntu =
22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect to my=
 USRP x310s via &quot;<b>uhd_find_devices</b>.&quot; I can only PING them, =
and I can only communicate with them via UHD when explicitly stating the IP=
 Address of my USRP. I was able to communicate with the devices via UHD v <=
br><br>While troubleshooting what is blocking the traffic with my IT staff,=
 I am trying to change the UHD version from 4.5 to UHD version 4.0 to see i=
f it changes anything. However, I do not see any instructions on installing=
 a different UHD version. I installed UHD from source following the NI buil=
d guide (<a href=3D"https://files.ettus.com/manual/page_build_guide.html" t=
arget=3D"_blank">https://files.ettus.com/manual/page_build_guide.html</a>).=
=C2=A0</div><div><br></div><div>Please assist.=C2=A0<br clear=3D"all"><div>=
<div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><font color=3D"#073763"><br></font></div><div dir=3D"ltr"><font co=
lor=3D"#073763">V/r</font><div><span style=3D"background-color:rgb(255,255,=
255)"><font color=3D"#073763"><br></font></span></div><div><span style=3D"b=
ackground-color:rgb(255,255,255)"><font color=3D"#073763">LoyCurtis Smith</=
font></span></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ba0802060c7fcfac--

--===============5366713841203914588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5366713841203914588==--
