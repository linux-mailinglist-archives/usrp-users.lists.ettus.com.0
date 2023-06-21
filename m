Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AF3738A0E
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 17:47:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58209384A67
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 11:47:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687362437; bh=iE0FH8o22cSw/EKHLDRSrPJjCLWMy7w9Trk4l1EflCQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GWIi/m24cEhKs1aUEmdZzi880bx4NEwMMGFOp/YnfOPg7Lvgb3Vb2w02eExNhPJvz
	 VUmF5F2befgLRV7l/9E6+82tABASY7vsPsB7U1JAiMjdRmZ5hVuqQ3muolgMOLCc22
	 FBppwFreMmmUJxG8frPvIeYpX0FnsJqpksrc4t8/V+aVW08TNWXXC9iKvBy5dtLpee
	 PVEhjrhAf5exMoWh8hr7h5HwHApahWJJECyWAI5NUuAuFVx4PX/zVppIAWcbQ9/LP1
	 wNobhpZgWPjwhsIAbEfmpwssLfNOXl9BCub1MG7CtKExfc8kqCuF6NzLXf9sapvTck
	 nLHJH8LSpgAkg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 42FFA384A1F
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 11:46:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hEyZkbh+";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-988c495f35fso427412466b.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 08:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687362375; x=1689954375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eB4lnv6slDxGfyJZq9QbLDjt48CfdAvPqWp99QeCi6Q=;
        b=hEyZkbh+sPsJdv7RkNcolyPrkk8t2DRjVda1yPyppkUKP0fJYEa8B1ckFWNBwCwifw
         EUCXJzzD4pAcmYk3KS5VbayFu7stU1GwrodxhaAfR5UkbDDimf0Ag3dLGuZwDl2IT1xc
         xeVQtm05JGfh7cEvDdAfhFmVqlMChQ3j//qUp8HM1YQCUbjdZZ8GtUEzHiTuS6plTxOk
         oF0bh8FRTIfjzck0R8kkYGtTY5yAxvLO/EY4umgpUKm/KIKlyITupwmDFS0CEHAtzKso
         UrJSERJOwYdt8+wgEG7tZEidF8PlxwaChd8RxtB/Ryb1FV39vcLILfFI2fdba9Er+q0T
         59YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687362375; x=1689954375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eB4lnv6slDxGfyJZq9QbLDjt48CfdAvPqWp99QeCi6Q=;
        b=HeOvr374mw0OzJYPdhnf2Hj9k63pKZGbttE4C8RNslxI2aO3vCx1UoU5OVf0AtxSu/
         Avf3yN88HZwAbvO0qmY9yTDkH+yy1pU0wIS9astGeUOu8YuQnlYIPBAY83prBBIo8bJA
         O6UcrkGSgE8kG+/hLFMj0D1rSclFIcZTN65+eqOOKN/heDK+0Smj2UkHOOIhM1KR+TMs
         3W6uyWSmXcqIhyQ1kuu/mncgQHZwroQ99ANU1bgRAQp/F3OO+Dk2HZpnR6iUwFFTjsMp
         x6X77rTFMFDjqF9l3T1UmQKYPzmEaG28x5/XoI+Mmnxqul1Nwtft3SILDjWC6PA/kGZ/
         WgGA==
X-Gm-Message-State: AC+VfDwF1F+Zr0RekWPB9UXdQzAsxW/QdM1WzR6HSjZEttjxnIqlqEp9
	yHE9JTOduSg/ednk1+nfz0SfupmiNpRu03ECtWh23iQTU7k=
X-Google-Smtp-Source: ACHHUZ4cTWgW5/dHPITWfAgyt6sbcGOua+m/g5tgUJPw0874EZQdbHsyleCXsC6/5E2rH4Rkr2Q2p16niP9h0bn9QUU=
X-Received: by 2002:a17:907:3fa3:b0:94e:116:8581 with SMTP id
 hr35-20020a1709073fa300b0094e01168581mr16409166ejc.5.1687362374909; Wed, 21
 Jun 2023 08:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
 <b87ade32-d119-2a53-4cbc-efe60212a90c@gmail.com> <CAOkUcSs3xp1HxeEAF3FOjAU1GLkDqVLu+0-R7Yv2BnE5fa1rAA@mail.gmail.com>
 <CAFche=jJAskPqyBUFsgup8PRSvYC562rq5JUZPpDynVwG=e_qg@mail.gmail.com>
In-Reply-To: <CAFche=jJAskPqyBUFsgup8PRSvYC562rq5JUZPpDynVwG=e_qg@mail.gmail.com>
From: cyberphox <cyberphox@gmail.com>
Date: Wed, 21 Jun 2023 16:46:04 +0100
Message-ID: <CAOkUcSuL50_nJoEEanD3kpYppj=zUjdU=rQ1f3qzqdj3RiM0rA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: BYIKBRCTT3SLCTUXKQ6OAY23IY6OHLW5
X-Message-ID-Hash: BYIKBRCTT3SLCTUXKQ6OAY23IY6OHLW5
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 - Reading FPGA core temperature - USRP2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BYIKBRCTT3SLCTUXKQ6OAY23IY6OHLW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2941943480236660731=="

--===============2941943480236660731==
Content-Type: multipart/alternative; boundary="000000000000f6c12e05fea5aa23"

--000000000000f6c12e05fea5aa23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Many thanks for your quick reply Wade!

All the best
Marino


On Wed, 21 Jun 2023 at 16:44, Wade Fife <wade.fife@ettus.com> wrote:

> Hi Marino,
>
> The register is there, but it sounds like we don't expose it through the
> API. This utility is out of date, but it can still be used to read the
> temperature value:
>
> ~/uhd/firmware/usrp3/x300$ python2 x300_debug.py --addr=3D192.168.10.2
> --peek=3D0xA02C
>
> In that command, 192.168.10.2 is the IP address for the USRP's SFP port
> and 0xA02C is the address of the temperature register. That will return t=
he
> raw ADC code from the XADC. To convert that to a temperature, use this
> equation:
>
> Temperature(=C2=B0C) =3D XADC_Code * 503.975 / 4096 - 273.15
>
> Thanks,
>
> Wade
>
>
> On Wed, Jun 21, 2023 at 7:45=E2=80=AFAM cyberphox <cyberphox@gmail.com> w=
rote:
>
>> Thanks Marcus. I could not find any temperature sensors :(
>>
>>
>> On Thu, 15 Jun 2023 at 14:33, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 15/06/2023 06:31, cyberphox wrote:
>>> > Hi All
>>> >
>>> > I would like to read the FPGA core temperature of the Kintex within
>>> > the USRP2974, and any other temperature sensor available, ideally on
>>> > the RF boards.
>>> >
>>> >
>>> > Is there an API for this?
>>> >
>>> > thanks
>>> > marino
>>> You can use the "usrp_list_sensors" examples app to list all the sensor=
s
>>> that are available to the API -- and look at the code
>>>    to see how it uses the sensors API.
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f6c12e05fea5aa23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Many thanks=C2=A0for your quick reply Wade!</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">All=C2=A0the best</div><div dir=3D"au=
to">Marino</div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 Jun 2023 at 16:44, Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi=
 Marino,</div><div><br></div><div>The register is there, but it sounds like=
 we don&#39;t expose it through the API. This utility is out of date, but i=
t can still be used to read the temperature value:</div><div><br></div><div=
>~/uhd/firmware/usrp3/x300$ python2 x300_debug.py --addr=3D192.168.10.2 --p=
eek=3D0xA02C</div><div><br></div><div>
In that command,=20
192.168.10.2

is the IP address for the USRP&#39;s SFP port and 0xA02C is the address of =
the temperature register. That will return the raw ADC code from the XADC. =
To convert that to a temperature, use this equation:</div><div><br></div><d=
iv>Temperature(=C2=B0C) =3D XADC_Code * 503.975 / 4096 - 273.15</div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Jun 21, 2023 at 7:45=E2=80=AFAM cyberphox &lt;<a href=3D"mailto:cy=
berphox@gmail.com" target=3D"_blank">cyberphox@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Th=
anks Marcus. I could not find any temperature sensors :(</div><div><br></di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, 15 Jun 2023 at 14:33, Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 15/06/2023 0=
6:31, cyberphox wrote:<br>
&gt; Hi All<br>
&gt;<br>
&gt; I would like to read the FPGA core temperature of the Kintex within <b=
r>
&gt; the USRP2974, and any other temperature sensor available, ideally on <=
br>
&gt; the RF boards.<br>
&gt;<br>
&gt;<br>
&gt; Is there an API for this?<br>
&gt;<br>
&gt; thanks<br>
&gt; marino<br>
You can use the &quot;usrp_list_sensors&quot; examples app to list all the =
sensors <br>
that are available to the API -- and look at the code<br>
=C2=A0=C2=A0 to see how it uses the sensors API.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000f6c12e05fea5aa23--

--===============2941943480236660731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2941943480236660731==--
