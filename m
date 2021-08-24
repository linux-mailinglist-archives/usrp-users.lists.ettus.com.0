Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5079B3F6C1B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 01:13:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E3F3385391
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 19:13:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="sSRHO0YG";
	dkim-atps=neutral
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 94ECC384B41
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 19:13:14 -0400 (EDT)
Received: by mail-ua1-f51.google.com with SMTP id r20so7345013uat.2
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 16:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8e44thJCySDbH8rY/F17VT1o9aXx/jsbvXNxMq35pWU=;
        b=sSRHO0YGniVEJ5xesZ4IbWy6k0kVA6CGud+nNQ18tJ1janPgp5bPNIpyMQl+izQCZB
         Jy1kZsVP8cojB2WUThfssutpSr9lBGmsAf4PrhGrLfERGdSVs3Q9h8Aq1AVTIIA9MUWV
         iqUkxY00pC1Ff8PPOH/Rhbuelam00gRxsa+39B8pTgwNVl1BfIKu9JE1hMfqCGcHpEyz
         z9VhqRhk1V9CqcZXoEFkrIS+xKLRfMF76ypansW7sufmFBUx01/ouFbSea2X6aZQ/Jsk
         Ni+nAq+zkao79HzJGKA7NCZZp5M0eFGULCp14l93ZchYHDapDhL/OL1fbdqOeM2i6Ig7
         0lDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8e44thJCySDbH8rY/F17VT1o9aXx/jsbvXNxMq35pWU=;
        b=gv8Rs0GCr+iQHybVeYsMSRP1X45nnR9eSmoh+UE6xK0jcx7JRQD/KxMCEGkD3l/MlL
         d3OmE93OXgVs9bEmt1g/gu8f9aDOop9/ojR+Rax9EQzzgYnYjXG/+DidrwnyHGlUGXA6
         O9osjqDLzDWbWrnHg03APT/cI8jTIpYNGMKUthChm0LDIxTLpUjcZ33OYAbt8n9BNOTH
         QhnIv9Gdr5imjKHM/WWOuMRcbjW+c1qc+op26q1uY6AtAu+b0U0nUpgp3CJvzYZ5oPa+
         F8rz/TqWUwdiPrAsVXAog/Cl0HSJlVatVWuh+ng0H5mXNPMjTfXDemxnAwPY2groc0NX
         nWrQ==
X-Gm-Message-State: AOAM531GJwFY5hcTS9keaJMcitmp7XzuIAVI7REbmOK01K8vln0fO5rH
	Ml8cOaduBi5wtjQDMk4OdTbgIQ9AnJl7bQshw70L6kON
X-Google-Smtp-Source: ABdhPJxekLVBCCu/ABDkXDy6t5JsRVpwjOq0ZvGxGjx/5cisPOzEezeL17L5nyZzT98xF+57brmbgAD1xck83/HcxDc=
X-Received: by 2002:a05:6102:237a:: with SMTP id o26mr9104814vsa.42.1629846794076;
 Tue, 24 Aug 2021 16:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <CAL7q81tkGV0XUtAkdFC1m1S028dvtszXfDgHjnOU570NaHG7UA@mail.gmail.com>
In-Reply-To: <CAL7q81tkGV0XUtAkdFC1m1S028dvtszXfDgHjnOU570NaHG7UA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 24 Aug 2021 19:12:38 -0400
Message-ID: <CAL7q81uiL0O2rDdAiBN92iLwT4UUem7eXszrTNACKRgX=wDGqg@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Message-ID-Hash: WCKVWX4HGLSUQV24NQNQBZYPKKROUQGO
X-Message-ID-Hash: WCKVWX4HGLSUQV24NQNQBZYPKKROUQGO
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WCKVWX4HGLSUQV24NQNQBZYPKKROUQGO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7172952232320337913=="

--===============7172952232320337913==
Content-Type: multipart/alternative; boundary="0000000000003313c005ca564719"

--0000000000003313c005ca564719
Content-Type: text/plain; charset="UTF-8"

Hi Ivan,

I saw your other post. I think setting the SPP via stream args doesn't work
correctly. Try this instead:

spp = 1024
radio_block.set_properties(f"spp:0={spp}")

Also, if you are streaming over Ethernet (i.e. network mode), make sure
your MTU is set to 8000 on both the host and the E310.

Jonathon

On Tue, Aug 24, 2021 at 7:06 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hello Ivan,
>
> Are you steaming into the ARM processor / PS or are you streaming over the
> network? Are you running a UHD app or using GNU Radio?
>
> Jonathon
>
> On Tue, Aug 24, 2021 at 5:40 PM Ivan Zahartchuk <adray0001@gmail.com>
> wrote:
>
>> Hi,
>> I try to set length of fft = 512 or 1024 for USRP E310 (RFNoC UHD 4), but when the value is set I haven`t received the data. When the fft = 256 it`s work fine.
>>
>> My graph looks like this:
>> 0/Radio#0:0==>0/FFT#0:0
>> 0/FFT#0:0==>0/SEP#0:0
>>
>> Setup of my SEP is:
>>
>> stream_endpoints:
>>   ep0:                       # Stream endpoint name
>>     ctrl: True                      # Endpoint passes control traffic
>>     data: True                      # Endpoint passes data traffic
>>     buff_size: 32768              # Ingress buffer size for data
>>
>> How can I set value fft length 512 or 1024 and how it`s work?
>> I would greatly appreciate your answer.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003313c005ca564719
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan,<div><br></div><div>I saw your other post. I think=
 setting the SPP via stream args doesn&#39;t work correctly. Try this inste=
ad:</div><div><br></div><div><font face=3D"monospace">spp =3D 1024</font></=
div><div><font face=3D"monospace">radio_block.set_properties(f&quot;spp:0=
=3D{spp}&quot;)</font></div><div><font face=3D"monospace"><br></font></div>=
<div><font face=3D"arial, sans-serif">Also, if you are streaming over Ether=
net (i.e. network mode), make sure your MTU is set to 8000 on both the host=
 and the E310.</font></div><div><font face=3D"arial, sans-serif"><br></font=
></div><div><font face=3D"arial, sans-serif">Jonathon</font></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, A=
ug 24, 2021 at 7:06 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pend=
lum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hello Ivan,<div><br></div><div>Are you steaming into the ARM processor / P=
S or are you streaming over the network? Are you running a UHD app or using=
 GNU Radio?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 24, 2021 at =
5:40 PM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=
=3D"_blank">adray0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><pre id=3D"gmail-m_443402=
1599818501822gmail-m_569070520946322894gmail-m_-4617021993655051441gmail-m_=
5583763484096827127gmail-m_-9129863988751152434gmail-m_7885690478197112252g=
mail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en=
">Hi,<br>I try to set length of fft =3D 512 or 1024 for USRP E310 (RFNoC UH=
D 4), but when the value is set I haven`t received the data. When the fft =
=3D 256 it`s work fine.<br></span></pre><pre id=3D"gmail-m_4434021599818501=
822gmail-m_569070520946322894gmail-m_-4617021993655051441gmail-m_5583763484=
096827127gmail-m_-9129863988751152434gmail-m_7885690478197112252gmail-tw-ta=
rget-text" style=3D"text-align:left"><span lang=3D"en">My graph looks like =
this:<br>0/Radio#0:0=3D=3D&gt;0/FFT#0:0<br>0/FFT#0:0=3D=3D&gt;0/SEP#0:0<br>=
<br></span></pre><pre id=3D"gmail-m_4434021599818501822gmail-m_569070520946=
322894gmail-m_-4617021993655051441gmail-m_5583763484096827127gmail-m_-91298=
63988751152434gmail-m_7885690478197112252gmail-tw-target-text" style=3D"tex=
t-align:left"><span lang=3D"en">Setup of my SEP is:<br><br>stream_endpoints=
:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint pa=
sses data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br><br></span></p=
re><pre id=3D"gmail-m_4434021599818501822gmail-m_569070520946322894gmail-m_=
-4617021993655051441gmail-m_5583763484096827127gmail-m_-9129863988751152434=
gmail-m_7885690478197112252gmail-tw-target-text" style=3D"text-align:left">=
<span lang=3D"en">How can I set value fft length 512 or 1024 and how it`s w=
ork?<br>I would greatly appreciate your answer.</span></pre></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000003313c005ca564719--

--===============7172952232320337913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7172952232320337913==--
