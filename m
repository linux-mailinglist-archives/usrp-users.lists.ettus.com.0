Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B048ED18
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:25:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B60EE3846B2
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:25:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A01zW+kq";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B7AF384DC5
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:24:16 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id c19so11005645qtx.3
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=O7IfwEfgRNi+FMGe73epGmk08orqb7oPIO54CPaUnpg=;
        b=A01zW+kqoyKOBEtxrG+ON6mcvGGiplWb+TYE0F4d7nNGYNWck5tnbIVg8lblqH80aM
         2JWv6SnEbvfqcvS96POfcpK4d22gvObL2tQ4lDuvYb54uaVmsYhDcjXzMxV4iHIywYFC
         i3LqaKiAYVBK78WOVCn63CBQUjhDVv/fAyNlehn4Hf80Dc9nUNXotZ8bfbINY3+klp2j
         zp1ooGC43snEORUL81YFt8LjB7I/i8P87V8G2od80eWPw4XeXxX7Ur3AthVdBA0yaRrE
         L7rqd0iyGNgtF3FgeK9g8J8m3q8KWBC6Q5wxIgVfRXyzTRsqbzpgRNACZ2GoKBcUchDR
         BBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=O7IfwEfgRNi+FMGe73epGmk08orqb7oPIO54CPaUnpg=;
        b=c8YOYSQVZ79U6rU5mowv5PJLAINzf7wRvg1PYJF+4+lPbekOLsJIk2NEksw0k+491a
         gl46a4Gl/c8OAvPBJvUc+Qa70Ddr/bjsNPIhm9sWva2m0RRxgyRR+HVtR9068TqvQkAB
         qxTcFhUFfLsUjJPKYpvaZfJQWtBVJ5ecymID72RqFhKbDz0bOdIqvrARud95AZdkl0lj
         4AU8J0b8RO6qkHg5YUEISRg4Q/Y79c/fCeEBgXphXkclgKwWa+vP4tJfSRanTeqM0pMS
         piGL/sGB8c+9hxGTFhXAf09vEaWN1Cr/jlayXCQsInY21NHCXwziViR1u7iJmG34trRG
         F6bw==
X-Gm-Message-State: AOAM532cRsRIWnPRXKKqIEqN6QxHstkHTd0kCJBCcNId4n5iCrnTEOy5
	IKcb4SmCDLnZGM8CU1VepVvagIX+lp8=
X-Google-Smtp-Source: ABdhPJw0eZGNHZFkA3ifQfpubVrWN6B6IQDKN5CpMv68zzXs9//fNBVJCuOAhZhbVNv6k5sv2oETAg==
X-Received: by 2002:ac8:5f4a:: with SMTP id y10mr7859444qta.139.1642173855704;
        Fri, 14 Jan 2022 07:24:15 -0800 (PST)
Received: from smtpclient.apple ([2600:380:407d:5347:5c46:c86d:a4da:e916])
        by smtp.gmail.com with ESMTPSA id j22sm3592898qko.117.2022.01.14.07.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:24:15 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 Jan 2022 10:24:14 -0500
Message-Id: <B8CE679B-550E-4820-B712-03736E875EFC@gmail.com>
References: <CAB__hTT6F+xQErQP-OCfJn5ct99E9wWcFF1YTLc9b-gvNSjLrw@mail.gmail.com>
In-Reply-To: <CAB__hTT6F+xQErQP-OCfJn5ct99E9wWcFF1YTLc9b-gvNSjLrw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: D7MP34FEDFGFNILKXYUIWGJF5KRVYVTI
X-Message-ID-Hash: D7MP34FEDFGFNILKXYUIWGJF5KRVYVTI
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D7MP34FEDFGFNILKXYUIWGJF5KRVYVTI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5687383542737330937=="


--===============5687383542737330937==
Content-Type: multipart/alternative; boundary=Apple-Mail-C234E3CF-679B-4BF3-A2CE-B5DEA4F2B078
Content-Transfer-Encoding: 7bit


--Apple-Mail-C234E3CF-679B-4BF3-A2CE-B5DEA4F2B078
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Rob, I was actually wondering that!

<end transmission>

> On Jan 14, 2022, at 09:26, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Forgot to mention, there are some nice LEDs on the LO Tx Outputs that will=
 tell you if you have a given port enabled.
>=20
>> On Fri, Jan 14, 2022 at 9:25 AM Rob Kossler <rkossler@nd.edu> wrote:
>> Hi Paul,
>> Based on the block diagram, I think I would set both LOs to use an extern=
al source. I would set the Tx0 export the LO on Tx Output 0 and then route i=
t directly back into Tx Input 1 which then goes to a 1:2 splitter to feed bo=
th inputs.  In addition to exporting the LO and setting the LO source to ext=
ernal for both ports, you also need to enable the Tx Output 0 (disabled by d=
efault). I've forgotten the command to do so.
>> Rob
>>=20
>>=20
>>=20
>>> On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides <maud.dib1984@gmail.com> w=
rote:
>>> I am trying to configure the N321 to take some TX phase measurements bet=
ween RF0 and RF1=20
>>> I have updated the file system to the latest release using the KB guidan=
ce.=20
>>>=20
>>> My host/software side is:
>>> GNURadio 3.9.5
>>> UHD 4.1.0.5
>>> Ubuntu 20.04
>>>=20
>>> My gr-uhd block has the LO settings:
>>> Channel 0 export =3D true
>>> Channel 0 LO =3D internal
>>>=20
>>> Channel 1 export =3D false
>>> Channel 1 LO =3D external
>>>=20
>>> On the hardware side am I understanding the LO diagram correctly that in=
 order to achieve the highest phase accuracy between channels i need to shar=
e the LO between the transmit ports of RF0 and RF1?=20
>>> If so, would I do that by physically connecting the TX LO OUT0 (really 0=
-3) to TX LO IN1?=20
>>>=20
>>> Am I missing anything obvious for the settings and/or is there a more de=
sirable way to do this?
>>>=20
>>> Thanks
>>>=20
>>> <end transmission>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-C234E3CF-679B-4BF3-A2CE-B5DEA4F2B078
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Thanks Rob, I was actually wondering that!<=
br><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webki=
t-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-=
color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(=
77, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr"=
><br><blockquote type=3D"cite">On Jan 14, 2022, at 09:26, Rob Kossler &lt;rk=
ossler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"=
><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Forgot to mention, there are som=
e nice LEDs on the LO Tx Outputs that will tell you if you have a given port=
 enabled.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Jan 14, 2022 at 9:25 AM Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Paul,<div>Based on the<a hre=
f=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_lo_sharing" t=
arget=3D"_blank"> block diagram</a>, I think I would set both LOs to use an e=
xternal source. I would set the Tx0&nbsp;export the LO on Tx Output 0 and th=
en route it directly back into Tx Input 1 which then goes to a 1:2 splitter t=
o feed both inputs.&nbsp; In addition to exporting the LO and setting the LO=
 source to external for both ports, you also need to enable the Tx Output 0 (=
disabled by default). I've forgotten the command to do so.</div><div>Rob</di=
v><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides=
 &lt;<a href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.dib198=
4@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">I am trying to configure the N321 to take some TX phase measurements b=
etween RF0 and RF1 <br>
I have updated the file system to the latest release using the KB guidance. <=
br>
<br>
My host/software side is:<br>
GNURadio 3.9.5<br>
UHD 4.1.0.5<br>
Ubuntu 20.04<br>
<br>
My gr-uhd block has the LO settings:<br>
Channel 0 export =3D true<br>
Channel 0 LO =3D internal<br>
<br>
Channel 1 export =3D false<br>
Channel 1 LO =3D external<br>
<br>
On the hardware side am I understanding the LO diagram correctly that in ord=
er to achieve the highest phase accuracy between channels i need to share th=
e LO between the transmit ports of RF0 and RF1? <br>
If so, would I do that by physically connecting the TX LO OUT0 (really 0-3) t=
o TX LO IN1? <br>
<br>
Am I missing anything obvious for the settings and/or is there a more desira=
ble way to do this?<br>
<br>
Thanks<br>
<br>
&lt;end transmission&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-C234E3CF-679B-4BF3-A2CE-B5DEA4F2B078--

--===============5687383542737330937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5687383542737330937==--
