Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B369BC4310
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 11:50:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8611A3862B8
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 05:50:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759917041; bh=AN3w7qFd12iOANdI3IKR65lO3umYau2cVd3qdfHT1Lk=;
	h=References:In-Reply-To:From:Date:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VRRBA3Lt99zop8p94cTFtbgDipwE+r/vzyaeb5kexzJSxf611oU0lp/NCtpWIvKrY
	 /wJvvPYHI2R6DzEbQTqgFblzII+ofT6qEPB1Hjxiqi8bz5pm66BKo54emD6+EpG5np
	 v+iVW96l3w6Qxwrut0JjTve8iDnMD+0lm1bt+kHronJBbfGoLKSGhCnznTyfVVBcho
	 Lr6MMb/lZvobHdDOnvwCrB9wMXhyQ9zNpMWLkyU3w0y11LjuFQ9qaHZ5ZGoTJVn/0m
	 efWwtdC0v9hERDt9XNj8C3yGor2vdmDIs88t/ndqxMx4ZVxWI3f0Dx4FKGUcGs6X7y
	 TWkumtxvI//Dw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F7683860B6
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 05:50:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Qx+T5ExB";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b463f986f80so1169646566b.2
        for <usrp-users@lists.ettus.com>; Wed, 08 Oct 2025 02:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1759917017; x=1760521817; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szHFULAtstiZTXx8zzkJ3C7HDpgcD4Y2CtUX1X9r7yc=;
        b=Qx+T5ExBakFCixFnfPdlukBfMggy6XRxJxMyOmnkioSZ2CWu38x0FgajN1Jgzyf8J3
         cmBo8UUjXFi+e/FNgjf+wIbcipCaWbxmdDnWjDuRYd63zcKnhFf5C7uMjRMznE4hXfOF
         u6liJhX5gumDCGFWO1z/npBTIQD3qE+el5ufSdJuScWkdQk3bx4uZJDQ/Zfiyk6N+eui
         OstYZqxTQDxs+vJZy02Jv0zduc/+EjoDpaMcrQMGjNE+jlae2hsfoo9hQgFpuK35Pc4N
         qttOTDFPT+0mAE6w3Sz50zvArgdPY1e5QT5pBG6WNqchAKS/9SjazOeHozCZwgzpZlJC
         r9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917017; x=1760521817;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=szHFULAtstiZTXx8zzkJ3C7HDpgcD4Y2CtUX1X9r7yc=;
        b=lQD9SMkm6Lg//B7GSt17A4xfK8Dv8C+nE8KSt+EkHtg1rpEorBlo42NVPZQmN6BIOp
         Hb8cNA6pMy1Ucwr8ru13WvziSjUDDUDpqUzKlpUoDKgl7jG9FX5MMvUdYqDrje1w/4o0
         R5xWONoqr5z1w6JY0/8nFd8zY/6Y/K/bZqF4L7TJpd9ESc3JhpG4XiBnEf2QwawwXEHT
         VFyDB2Ialw81TyRWLUZQQREz5eciE3c6g9wa8qe6FyAAo9nfUm9PtcrryuvQ1htT/EID
         ZPqHwA3N9MzUW6DjoXpOAgKQWDhnNt6lmCCJNv1tIvdT2xqU80zr6dZRz+i75NP7hFoc
         /Skg==
X-Forwarded-Encrypted: i=1; AJvYcCVcyBV8hgqfya+Jaw8qruSQU91ev2kh1pv/FT8MCbW8FQRBve868W7QutTYVAszBipvuTLbHES+e7UT@lists.ettus.com
X-Gm-Message-State: AOJu0YywTxZhanaGJU7Tiix1vEjil06NX1OLD7jWfzFZoxmBFbtpNqfe
	NEjEFDaVTyGb/H3J2fI2FQz2RC/qIlRXMrSeYdZJ8FV1gGoeeJKw5R4sDRkG1hwU+sWs6G2K3P4
	BxfanHvPLwMVT4RZNDT3r7bK6pQ4UD6x5HM9ERvhpcbiXmgg+MrEbqUcksQVC85o=
X-Gm-Gg: ASbGncswmw/S7fLIHoDXFvp/It7RO/5rt/t2Qxe215CaH11GHTeyhpRWJ7bodEZVfKD
	bjRuCyLISQJBtzCTX7MS7RYoMcPuCoHjA8IMjVjuMt/xvfSjlLz9+wpTGoSUZ3ihssODWoitJEQ
	TN7f5bC/mNiCHts6s8EkYEa3TUOkjOFjdFQKNKlWGGTnCeEcang0W6UobdGBDgl/j+XBaNhOqaP
	8SroG76MkZYv6i6yIy+63HYTVWHZUzxiiyPrlxRzevdL1o85KxjXNe+LAPK1bqxd2POHnQ=
X-Received: by 2002:a17:907:c1c:b0:b3e:8252:cd47 with SMTP id
 a640c23a62f3a-b50abaa3b7fmt307893466b.31.1759917017041; Wed, 08 Oct 2025
 02:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTS_UJDzk+NgQoObHMt2F0G2S0gc-_4qHZQ-DJjmbDfuYA@mail.gmail.com>
 <CH0PR10MB51798275B2E7A519E2A260BE991DA@CH0PR10MB5179.namprd10.prod.outlook.com>
 <CAB__hTSaZFC4pRXWMavj3agHDiZk8CfgLu1K+0je9BSz+kRCiA@mail.gmail.com>
In-Reply-To: <CAB__hTSaZFC4pRXWMavj3agHDiZk8CfgLu1K+0je9BSz+kRCiA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 8 Oct 2025 11:50:06 +0200
X-Gm-Features: AS18NWAxlXqePvIYI5ff4miCVLov_E7vcOYR3_ZnUH1WBOCzQT2iZMmO6Jx6vwo
Message-ID: <CAFOi1A4=PmFHp9K09Ho0nrbMx8mebCKEAhTZ7YMUUjA9m8DXLw@mail.gmail.com>
Message-ID-Hash: 5CBQI2TMTOHDUX33YYAL2C7P25QUGLKX
X-Message-ID-Hash: 5CBQI2TMTOHDUX33YYAL2C7P25QUGLKX
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Anderseck, Martin" <martin.anderseck@emerson.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx antenna Tx/Rx with full duplex streaming state
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CBQI2TMTOHDUX33YYAL2C7P25QUGLKX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0915273289234090840=="

--===============0915273289234090840==
Content-Type: multipart/alternative; boundary="000000000000a30e910640a29cc9"

--000000000000a30e910640a29cc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's a bit obscure, but the default is set in the register map:
https://github.com/EttusResearch/uhd/blob/master/host/lib/ic_reg_maps/gen_z=
bx_cpld_regs.py#L111

(i.e., default is cal-loopback).

--M

On Tue, Sep 23, 2025 at 11:15=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thanks for the reply Martin,
> I looked at the linked code, but it looks to me like it doesn't provide
> the answer. It seems to me that my question boils down to figuring out th=
e
> four entries in the lookup table RX0_ANT_1 which holds a switch setting f=
or
> each of the ATR states: 0X, RX, TX, XX.
>
> After reviewing the code snips you linked as well as where these function=
s
> are called from the zbx rx/tx programming experts for the specific case o=
f
> the Rx antenna configured for Tx/Rx and the Tx antenna configured for
> Tx/Rx, my mental compiler tells me that the only entry in RX0_ANT_1 that
> will be modified during the configuration is the ATR state RX.  The other=
 3
> states (0X,TX,and XX) in the table are not touched. I'm guessing that the=
se
> are defaulted elsewhere in the code, but I can't figure out where.
>
> Rob
>
> On Tue, Sep 23, 2025 at 10:09=E2=80=AFAM Anderseck, Martin via USRP-users=
 <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Rob,
>>
>>
>>
>> Looking into the zbx_cpld_ctrl.cpp it looks like the RX Ant1 switch is
>> not moved away from the TX/RX port:
>>
>>
>> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zb=
x/zbx_cpld_ctrl.cpp#L322-L325
>>
>> and
>> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zb=
x/zbx_cpld_ctrl.cpp#L276-L277
>>
>>
>>
>> For the TX part I=E2=80=99d have to look up what the amplifiers in the a=
ntenna
>> settings mean exactly, though.
>>
>>
>>
>> /Martin
>>
>>
>>
>> *From:* Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Monday, September 15, 2025 10:23 PM
>> *To:* usrp-users <usrp-users@lists.ettus.com>
>> *Subject:* [EXTERNAL] [USRP-users] Rx antenna Tx/Rx with full duplex
>> streaming state
>>
>>
>>
>> Hi,
>>
>> I am wondering if anyone knows what happens with the Tx and Rx switches
>> in the case of the Rx antenna setting of Tx/Rx for a full-duplex streami=
ng
>> state. In particular, I'm interested in the case of the X410/ZBX where t=
he
>> switches in question are Sw 1 (Rx) and Sw 11 (Tx).  It seems that if the
>> streaming state were Rx only, both of these switches would route the Tx/=
Rx0
>> port to the Rx path. But, for the case of simultaneous Tx/Rx streaming, =
I
>> expect that Sw 11 (Tx) is changed to the Tx path. What I'm unclear about=
 is
>> what happens to Sw 1 (Rx).  Does this change to the Rx1 port or does it
>> remain on the Tx/Rx0 port?
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a30e910640a29cc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s a bit obscure, but the default is set in the=
 register map:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/ma=
ster/host/lib/ic_reg_maps/gen_zbx_cpld_regs.py#L111">https://github.com/Ett=
usResearch/uhd/blob/master/host/lib/ic_reg_maps/gen_zbx_cpld_regs.py#L111</=
a></div><div><br></div><div>(i.e., default is cal-loopback).</div><div><br>=
</div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_contain=
er"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 23, 2025 at 11:15=E2=
=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks for the r=
eply Martin,</div><div>I looked at the linked code, but it looks to me like=
 it doesn&#39;t provide the answer. It seems to me that my question boils d=
own to figuring out the four entries in the lookup table RX0_ANT_1 which ho=
lds a switch setting for each of the ATR states: 0X, RX, TX, XX.=C2=A0=C2=
=A0</div><div><br></div><div>After reviewing the code snips you linked as w=
ell as where these functions are called from the zbx rx/tx programming expe=
rts for the specific case of the Rx antenna configured for Tx/Rx and the Tx=
 antenna configured for Tx/Rx, my mental compiler tells me that the only en=
try in RX0_ANT_1 that will be modified during the configuration is the ATR =
state RX.=C2=A0 The other 3 states (0X,TX,and XX) in the table are not touc=
hed. I&#39;m guessing that these are defaulted elsewhere in the code, but I=
 can&#39;t figure out where.</div><div><br></div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep =
23, 2025 at 10:09=E2=80=AFAM Anderseck, Martin via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div>





<div lang=3D"DE">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi Rob,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">Lookin=
g into the zbx_cpld_ctrl.cpp it looks like the RX Ant1 switch is not moved =
away from the TX/RX port:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/=
zbx/zbx_cpld_ctrl.cpp#L322-L325" target=3D"_blank">https://github.com/Ettus=
Research/uhd/blob/master/host/lib/usrp/dboard/zbx/zbx_cpld_ctrl.cpp#L322-L3=
25</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">and
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/d=
board/zbx/zbx_cpld_ctrl.cpp#L276-L277" target=3D"_blank">
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zbx/z=
bx_cpld_ctrl.cpp#L276-L277</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">For th=
e TX part I=E2=80=99d have to look up what the amplifiers in the antenna se=
ttings mean exactly, though.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">/Marti=
n<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-US=
" style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif"> Rob =
Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
<br>
<b>Sent:</b> Monday, September 15, 2025 10:23 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Rx antenna Tx/Rx with full duplex s=
treaming state<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am wondering if anyone knows what happens with the=
 Tx and Rx switches in the case of the Rx antenna setting of Tx/Rx for a fu=
ll-duplex streaming state. In particular, I&#39;m interested in the case of=
 the X410/ZBX where the switches in question
 are Sw 1 (Rx) and Sw 11 (Tx).=C2=A0 It seems that if the streaming state w=
ere Rx only, both of these switches would route the Tx/Rx0 port to the Rx p=
ath. But, for the case of simultaneous Tx/Rx streaming, I expect that Sw 11=
 (Tx) is changed to the Tx path. What
 I&#39;m unclear about is what happens to Sw 1 (Rx).=C2=A0 Does this change=
 to the Rx1 port or does it remain on the Tx/Rx0 port?=C2=A0<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a30e910640a29cc9--

--===============0915273289234090840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0915273289234090840==--
