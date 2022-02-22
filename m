Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F28464BFFA6
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 18:06:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D48BE384EAD
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 12:06:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GolXihnG";
	dkim-atps=neutral
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A426384716
	for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 12:05:21 -0500 (EST)
Received: by mail-yb1-f169.google.com with SMTP id v186so42611978ybg.1
        for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 09:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s+iat9g9vPU0tSRtGmZrJuNTf3QlmBKFiVOMYGtPBlA=;
        b=GolXihnGK3S4mD5RU1nRko8DOGiMPO8w+i5Y/3pXi8H+FagE2xKRRsaMKa8SN3+0fM
         iCTbpnkHzeZBxRG9+S/RpJB2iMu7x34OAjdxeHQ5K7OONMB5R1/1Xe6xTETuNadHLiGn
         yNNk2awKmjywIep0QPW/w8Kmk4Q6+Cze4efVJI8zdvVamKXhKaOiZhWjLNRMUCUF76s9
         AYOCD8Oq7jmTbDsTOI+puzd+CClPGSp1G4X8bzuJute9MsF6+VsTgyZYOWyNBqRwjTO2
         +VNSJbae6Rn7EM4jYEjzFErDfEOqoqofm8t+kFf31yCBHozCyq3WlizT8Snpng14RqZR
         hooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s+iat9g9vPU0tSRtGmZrJuNTf3QlmBKFiVOMYGtPBlA=;
        b=4K77PGcYwuFKTTplruRzn4tA9jeZZSNs5h9KZjKKA8OtBpM+qi9asv08Bw/kPxtWp4
         L07x1lEm5x7Ijek2v6SC/VwzcgKXFs5HFpL6lrU4/AwIGB5uQ+QaLVsvdhgpD81FOYSS
         pwFkGoqo8Z5JZrIlHoc9sVCWTZUllCUcjE5X0Uy6Ws0dSYmnQVUa1rNxDg9aa9OH3o6k
         /V2FfC0Lg0xGnDO8gLN9bnlRjZqLELc+JAI/Krf3Qs3soJY8mV9PQ4Ld443xG25ESbck
         awxzklP9JRBRnc7gNWxszpYTaJjigCEQHJ6299AvHltckuENRj2ufyfKmFBh7tcwuLjM
         zlVA==
X-Gm-Message-State: AOAM533Yc8uY9TlP+D0Cbsj551/iZ3u6+KErt2cBqwM4yYGI4NfUdE25
	9XbldMbSn3zoTh4hvsEvJqXrKBUpFgHMJLxyDOg=
X-Google-Smtp-Source: ABdhPJwrCZNO0RrrqxldYALnH6Q7PzXk8WYIwEGn7JX042SBN2PaifwpUN6Lng8Vtt5RucC/bivI10MEbsCxM2J4nKY=
X-Received: by 2002:a25:ef47:0:b0:622:7be6:7a0 with SMTP id
 w7-20020a25ef47000000b006227be607a0mr24032329ybm.191.1645549520713; Tue, 22
 Feb 2022 09:05:20 -0800 (PST)
MIME-Version: 1.0
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
 <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com> <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
 <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com>
In-Reply-To: <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com>
From: Alvaro Pendas Recondo <apruhd@gmail.com>
Date: Tue, 22 Feb 2022 18:05:12 +0100
Message-ID: <CAAC=UJOKOnQ0W2i9FWoDGcgN8otCV4-43BD7tjtvUoo0AKNtFg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OIVY2FY5E7UN4HX4VUSTYVBQ5CGMUDZV
X-Message-ID-Hash: OIVY2FY5E7UN4HX4VUSTYVBQ5CGMUDZV
X-MailFrom: apruhd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OIVY2FY5E7UN4HX4VUSTYVBQ5CGMUDZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5225679024582257964=="

--===============5225679024582257964==
Content-Type: multipart/alternative; boundary="000000000000a47af405d89e5a77"

--000000000000a47af405d89e5a77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I am aware of the 4-channel, but I just forget about it when doing
comparison. The explanation behind is that I only have 3 antennas right
now, so I am actually working with 3 Rx.
About setting Sync to "Unknown PPS", I had tried before, with no result,
but I have setted again. However, I have never tried to modify the "start
time", which in GNU Radio is -1.0 by default. The interesting thing is that
if I try to set a positive value I get the error
gr::log :WARN: usrp_source1 - USRP Source Block caught rx error:
ERROR_CODE_LATE_COMMAND

El mar, 22 feb 2022 a las 17:15, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2022-02-22 11:08, Alvaro Pendas Recondo wrote:
> > I am trying to reproduce the simple example described in
> >
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Device=
s
> > (I did first with 2 N210 with a perfect result both with a MIMO cable
> > and an octoclock). I am using GNU Radio, so I attach the two schemes.
> > Those are, 2 B210 2 Rx that works as well as with 2 N210; and 2 B210 4
> > Rx, where the problem arises. I already knew that B210 is not
> > recommended for MIMO with multiple devices, but I was just giving it a
> > try. By the way, I also was capable of reproducing the test with one
> > B210 and one N210 both synchronized with the octoclock. I also attach
> > screenshots showing the problem between signals of two different
> > devices (again, this only happens when using 4 Rx, but not when using
> > 2 Rx with 2 different B210).
> >
> Use a synch of "Unknown PPS", and also set the "start time" to 1 or 2 in
> your source blocks.  Also in the 4-channel flow-graph your lowest
> channel has no delay or multiply
>    blocks in-line, which means it will have (I think) a different
> effective group delay compared to the other streams.
>
>
>

--000000000000a47af405d89e5a77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I am aware of the 4-channel, but I just forget about =
it when doing comparison. The explanation behind is that I only have 3 ante=
nnas right now, so I am actually working with 3 Rx.=C2=A0<div>About setting=
 Sync to &quot;Unknown PPS&quot;, I had tried before, with no result, but I=
 have setted=C2=A0again. However, I have never tried to modify the &quot;st=
art time&quot;, which in GNU Radio is -1.0 by default. The interesting thin=
g is that if I try to set a positive value I get the error</div><div>gr::lo=
g :WARN: usrp_source1 - USRP Source Block caught rx error: ERROR_CODE_LATE_=
COMMAND<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">El mar, 22 feb 2022 a las 17:15, Marcus D. Leech (&lt;<a h=
ref=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) esc=
ribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2=
022-02-22 11:08, Alvaro Pendas Recondo wrote:<br>
&gt; I am trying to reproduce the simple example described in <br>
&gt; <a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_wi=
th_USRP_Devices" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/=
Synchronization_and_MIMO_Capability_with_USRP_Devices</a> <br>
&gt; (I did first with 2 N210 with a perfect=C2=A0result both with a MIMO c=
able <br>
&gt; and an octoclock). I am using=C2=A0GNU Radio, so I attach the two sche=
mes. <br>
&gt; Those are, 2 B210 2 Rx that works as well as with 2 N210; and 2 B210 4=
 <br>
&gt; Rx, where the problem arises. I already knew that B210 is not <br>
&gt; recommended for MIMO with multiple devices, but I was just giving it a=
 <br>
&gt; try. By the way, I also was capable of reproducing the test with one <=
br>
&gt; B210 and one N210 both synchronized=C2=A0with the octoclock. I also at=
tach <br>
&gt; screenshots=C2=A0showing the problem between signals of two different =
<br>
&gt; devices=C2=A0(again, this only happens when using 4 Rx, but not when u=
sing <br>
&gt; 2 Rx with 2 different B210).<br>
&gt;<br>
Use a synch of &quot;Unknown PPS&quot;, and also set the &quot;start time&q=
uot; to 1 or 2 in <br>
your source blocks.=C2=A0 Also in the 4-channel flow-graph your lowest <br>
channel has no delay or multiply<br>
=C2=A0=C2=A0 blocks in-line, which means it will have (I think) a different=
 <br>
effective group delay compared to the other streams.<br>
<br>
<br>
</blockquote></div>

--000000000000a47af405d89e5a77--

--===============5225679024582257964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5225679024582257964==--
