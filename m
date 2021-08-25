Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 282133F7D8A
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 23:15:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67266383C21
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 17:15:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mQ4zJIkJ";
	dkim-atps=neutral
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by mm2.emwd.com (Postfix) with ESMTPS id C701A383BD0
	for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 17:14:54 -0400 (EDT)
Received: by mail-il1-f171.google.com with SMTP id l10so945491ilh.8
        for <usrp-users@lists.ettus.com>; Wed, 25 Aug 2021 14:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=9RoGzoJKIbJAD65NafXFRu2xPrxiAZCAxjIniFsg/uc=;
        b=mQ4zJIkJVFHhEOloV4LtHetAj4bcD/sYx0tTN06Ymkt7BsDhiaOp5rBxeRxL7DOnYa
         6e3PyQPeeEq4TZwPCqmSWwJHg+4hUl4faBME0o/F1JlEUUp8KyRq+F/Nb45ID8ZzBd5A
         vDjNGgnx2aElmZQD92TzTvUQg8I8FyKC56XHwswmDcr3uc4QCs9MO2g2bXd08VcY01Q3
         q7UVtvT2hN6e1P8Xkyc8AyJAS/zsmBmMnCykdCVD+sx7FbJLH+51mlu7UXtIozcbW/WF
         n1atS64A8jM3tO0A+XzXJ5XKwx7UwknGGzwnPviwmeTlvxkU+9b3Ogq18wx7MjwfSIR+
         FRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=9RoGzoJKIbJAD65NafXFRu2xPrxiAZCAxjIniFsg/uc=;
        b=CzIvLqO15B7CxfydHWa0fFjyIKbkpI5Io9PPKVrgCHhhXqcZXd9pOkULitWI1xKHf9
         EdyVekDYhwgHOV14n0qvpaRq5GpvlI2EIjZImKL8Z/VGfG4Ql00pJVVfBlM0vv5Zj5F9
         qpCwi5YSyorFom0o+feI6KpfGQH8o+SRtMsNo2BctDquglRlhsjj7c31QFYT1RAKMzsA
         nLO6RIHLP79jxSzS84A9RxZuvVw76WSTRLgRryuO3rSO4H9d4hgOTBUjIZwlcKH/ZN0L
         SzaEmg4DKNCk4ncc4RhoOpS09Q4rwA997EOJfF2go7J3FiUYVv0JnEtDhz/QJe9gafke
         SY9Q==
X-Gm-Message-State: AOAM53123jTZOhGh4ovzgtCfN9odz0ajG/qhAvssCXea6NTj9Ry5zbLO
	TXQv0ji2RRc1E5tmZjaB+kmyh7orwfY8sleI9DmniOSZuXY=
X-Google-Smtp-Source: ABdhPJyijvAZzStmJiJdujjTFEvRr8oI0agkfFEzfnt4dRceRbmuJL+20uFfgwCQVzfHJ7BzSF5IH3+LpqPbDaKQat4=
X-Received: by 2002:a05:6e02:168d:: with SMTP id f13mr267020ila.12.1629926094056;
 Wed, 25 Aug 2021 14:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <CAL7q81tkGV0XUtAkdFC1m1S028dvtszXfDgHjnOU570NaHG7UA@mail.gmail.com> <CAL7q81uiL0O2rDdAiBN92iLwT4UUem7eXszrTNACKRgX=wDGqg@mail.gmail.com>
In-Reply-To: <CAL7q81uiL0O2rDdAiBN92iLwT4UUem7eXszrTNACKRgX=wDGqg@mail.gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Thu, 26 Aug 2021 00:14:42 +0300
Message-ID: <CAPRRyxtfGWfgcT2Gef-RbwGYtS=_TkyOEM5_GfrFWyUoznj60w@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: UDV45K7ZK7MBU55JVR6AOX7XXMAV3VVL
X-Message-ID-Hash: UDV45K7ZK7MBU55JVR6AOX7XXMAV3VVL
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDV45K7ZK7MBU55JVR6AOX7XXMAV3VVL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0082729153829626758=="

--===============0082729153829626758==
Content-Type: multipart/alternative; boundary="000000000000d8b25505ca68bd0d"

--000000000000d8b25505ca68bd0d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I followed your advice on passing the spp parameter but it didn't
help. I get the error:
 [ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.



=D1=81=D1=80, 25 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 02:13, Jonathon Pe=
ndlum <jonathon.pendlum@ettus.com>:

> Hi Ivan,
>
> I saw your other post. I think setting the SPP via stream args doesn't
> work correctly. Try this instead:
>
> spp =3D 1024
> radio_block.set_properties(f"spp:0=3D{spp}")
>
> Also, if you are streaming over Ethernet (i.e. network mode), make sure
> your MTU is set to 8000 on both the host and the E310.
>
> Jonathon
>
> On Tue, Aug 24, 2021 at 7:06 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hello Ivan,
>>
>> Are you steaming into the ARM processor / PS or are you streaming over
>> the network? Are you running a UHD app or using GNU Radio?
>>
>> Jonathon
>>
>> On Tue, Aug 24, 2021 at 5:40 PM Ivan Zahartchuk <adray0001@gmail.com>
>> wrote:
>>
>>> Hi,
>>> I try to set length of fft =3D 512 or 1024 for USRP E310 (RFNoC UHD 4),=
 but when the value is set I haven`t received the data. When the fft =3D 25=
6 it`s work fine.
>>>
>>> My graph looks like this:
>>> 0/Radio#0:0=3D=3D>0/FFT#0:0
>>> 0/FFT#0:0=3D=3D>0/SEP#0:0
>>>
>>> Setup of my SEP is:
>>>
>>> stream_endpoints:
>>>   ep0:                       # Stream endpoint name
>>>     ctrl: True                      # Endpoint passes control traffic
>>>     data: True                      # Endpoint passes data traffic
>>>     buff_size: 32768              # Ingress buffer size for data
>>>
>>> How can I set value fft length 512 or 1024 and how it`s work?
>>> I would greatly appreciate your answer.
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000d8b25505ca68bd0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-tw-ta-container gmail-F0azHf gmail-tw-=
nfl" id=3D"gmail-tw-target-text-container" tabindex=3D"0"><pre class=3D"gma=
il-tw-data-text gmail-tw-text-large gmail-XcVN5d gmail-tw-ta" id=3D"gmail-t=
w-target-text" style=3D"text-align:left" dir=3D"ltr"><span class=3D"gmail-Y=
2IQFc" lang=3D"en">I followed your advice on passing the spp parameter but =
it didn&#39;t help. I get the error:
 [ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.</span></pre></div><di=
v class=3D"gmail-tw-target-rmn gmail-tw-ta-container gmail-F0azHf gmail-tw-=
nfl" id=3D"gmail-tw-target-rmn-container"><pre class=3D"gmail-tw-data-place=
holder gmail-tw-text-small gmail-tw-ta" id=3D"gmail-tw-target-rmn" style=3D=
"text-align:left" dir=3D"ltr"><span class=3D"gmail-Y2IQFc"><br></span></pre=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">=D1=81=D1=80, 25 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 02:13, Jona=
thon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pen=
dlum@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi Ivan,<div><br></div><div>I saw your other post.=
 I think setting the SPP via stream args doesn&#39;t work correctly. Try th=
is instead:</div><div><br></div><div><font face=3D"monospace">spp =3D 1024<=
/font></div><div><font face=3D"monospace">radio_block.set_properties(f&quot=
;spp:0=3D{spp}&quot;)</font></div><div><font face=3D"monospace"><br></font>=
</div><div><font face=3D"arial, sans-serif">Also, if you are streaming over=
 Ethernet (i.e. network mode), make sure your MTU is set to 8000 on both th=
e host and the E310.</font></div><div><font face=3D"arial, sans-serif"><br>=
</font></div><div><font face=3D"arial, sans-serif">Jonathon</font></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Aug 24, 2021 at 7:06 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello Ivan,<div><br></div><div>Are you steaming into the ARM proce=
ssor / PS or are you streaming over the network? Are you running a UHD app =
or using GNU Radio?</div><div><br></div><div>Jonathon</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 24, =
2021 at 5:40 PM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" =
target=3D"_blank">adray0001@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><pre id=3D"gmail-m_-6=
981615830243263739gmail-m_4434021599818501822gmail-m_569070520946322894gmai=
l-m_-4617021993655051441gmail-m_5583763484096827127gmail-m_-912986398875115=
2434gmail-m_7885690478197112252gmail-tw-target-text" style=3D"text-align:le=
ft" dir=3D"ltr"><span lang=3D"en">Hi,<br>I try to set length of fft =3D 512=
 or 1024 for USRP E310 (RFNoC UHD 4), but when the value is set I haven`t r=
eceived the data. When the fft =3D 256 it`s work fine.<br></span></pre><pre=
 id=3D"gmail-m_-6981615830243263739gmail-m_4434021599818501822gmail-m_56907=
0520946322894gmail-m_-4617021993655051441gmail-m_5583763484096827127gmail-m=
_-9129863988751152434gmail-m_7885690478197112252gmail-tw-target-text" style=
=3D"text-align:left"><span lang=3D"en">My graph looks like this:<br>0/Radio=
#0:0=3D=3D&gt;0/FFT#0:0<br>0/FFT#0:0=3D=3D&gt;0/SEP#0:0<br><br></span></pre=
><pre id=3D"gmail-m_-6981615830243263739gmail-m_4434021599818501822gmail-m_=
569070520946322894gmail-m_-4617021993655051441gmail-m_5583763484096827127gm=
ail-m_-9129863988751152434gmail-m_7885690478197112252gmail-tw-target-text" =
style=3D"text-align:left"><span lang=3D"en">Setup of my SEP is:<br><br>stre=
am_endpoints:<br>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctr=
l: True =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0# Endpoint passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# =
Endpoint passes data traffic<br>=C2=A0 =C2=A0 buff_size: 32768 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br><br=
></span></pre><pre id=3D"gmail-m_-6981615830243263739gmail-m_44340215998185=
01822gmail-m_569070520946322894gmail-m_-4617021993655051441gmail-m_55837634=
84096827127gmail-m_-9129863988751152434gmail-m_7885690478197112252gmail-tw-=
target-text" style=3D"text-align:left"><span lang=3D"en">How can I set valu=
e fft length 512 or 1024 and how it`s work?<br>I would greatly appreciate y=
our answer.</span></pre></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000d8b25505ca68bd0d--

--===============0082729153829626758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0082729153829626758==--
