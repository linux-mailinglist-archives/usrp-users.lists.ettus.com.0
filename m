Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBE55AA05D
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 21:49:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03895388B67
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 15:49:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662061765; bh=dwFAN2kTeK/5W4Bnbtcuj7ZyvXmNAxrmR+vu8V9ZmkM=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B5D89eD98wixglgrwNkBXtvcW2cZmJPLr9W+E8jN8UnN+E5v+DZlizi/6hMMHCaLM
	 +C2mg+L9ddXDt6ohjwMCqxMHAMmoygXs/vpLeq7q1oej7yYyyZ3zTg0USmdILFNL9b
	 pydxIEXxWz3A2UeD18I7brnJvG8gBgkRnAY//E1erJnUwo6DGsZmgJ3ddZb5X4+ItU
	 46dthJhWjZYwL9RF/thgB1TNqXpD16UBGTNjrRDvR247Kjszw5F++WxpR8Xb0ruC3R
	 McOIinsZiMwcnQLrfdiRL+zCzFawXcxt64yJE7Ym/4OAYuEgZ2jfW6b96vOx9otBmR
	 GOH+NdkE+0XJQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C33F3884FD
	for <usrp-users@lists.ettus.com>; Thu,  1 Sep 2022 15:48:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eM1fcBSj";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id j17so14299506qtp.12
        for <usrp-users@lists.ettus.com>; Thu, 01 Sep 2022 12:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date;
        bh=q70/Ns+nJO8aUZdqQ94NJTRxImDvQzuKfuYbUsvopLM=;
        b=eM1fcBSjXp26ekstK/cKQ468scFQHgtaePO/80OY6N+0/t/fjjUO2Hxg0GKz3fxMdf
         kRFMqEXfEbTPxze4CzGEMTP9yEzi78ysH43leMVP+HwFD7p2L6LZrYJjKIHol2Rf7XHl
         n3eJZuIQ7L2t/H24C55qOWKqHWEU/GnCZdVxioixG+teqxPjuazKzrTLbJRp53XVHtKd
         1l7hCz/d0V3BH/cGUDR69bMjeVYrsH+j5gJdhuHggoX4aBob4dRcwwxws4UeE4GWM35w
         plgMSi3DGUzVi2kwAQWShvTgiqthaihU1gxmqK5vUaUNSoKgBykS5pl5PihmckBJKs3Q
         vBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date;
        bh=q70/Ns+nJO8aUZdqQ94NJTRxImDvQzuKfuYbUsvopLM=;
        b=xkCTj5QKb2hv5Zm8eaLRCJpJNVxVsqlvg+KUDEEfXZa/F3N683EoSDyCjL8roxqNPY
         5G4Ck3fuXbAviaHv7d7n6Cz5n4AEn4mXggt90BK9hZQEPfsbHTCZxrImHJ4QB5ABRDZA
         FkrjUs5smNm8BATc0mY7irxjI+wN6xZxpR2Xiz9XJlbbFeEdubklkbkHvxqyqPh331Qz
         UbSX2TRlVHe/baIer+ncwG+ZD3Qz00ANzkRDiOWpmp83szxIp31cDW9Lq0pc1TwkV04f
         RHPc+XlAyygtemS+c5m2kH/xZtEKrWHPUYlIeirsG3uvMCXxwrMNmcLzhIj8JCPo7xQE
         kEoA==
X-Gm-Message-State: ACgBeo2pdCf7D/CQC6c1U/XkJygkt0D36ujbL4pFTowtj83LDbgAu1U9
	BROpSphTiwjxiieReguZAHANYC3IxtbbOQ==
X-Google-Smtp-Source: AA6agR4Zlb7gT/bcaP0LlSk0dLboHs/Vy061XHMUXwlA8erJX+Vwa+nj3FlF+4XuaW2LaN/Hhp1H6A==
X-Received: by 2002:a05:622a:10d:b0:343:5ebc:a9f3 with SMTP id u13-20020a05622a010d00b003435ebca9f3mr25891190qtw.383.1662061688848;
        Thu, 01 Sep 2022 12:48:08 -0700 (PDT)
Received: from smtpclient.apple ([2600:4040:4023:f900:4937:d4a7:bd1a:d88c])
        by smtp.gmail.com with ESMTPSA id w14-20020ac843ce000000b00343681ee2e2sm10180358qtn.35.2022.09.01.12.48.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 12:48:08 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 1 Sep 2022 15:48:07 -0400
Message-Id: <5C091054-213D-4D1C-9C96-34DC2F59AC21@gmail.com>
References: <CAB__hTTnjTJwi3Css61Uwa6XqZ_vij0SJLTgKQnKNAi+dw-pxQ@mail.gmail.com>
In-Reply-To: <CAB__hTTnjTJwi3Css61Uwa6XqZ_vij0SJLTgKQnKNAi+dw-pxQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: SJHMIVXTJQVZNVZTTBUD6D5RJKK5VO3Z
X-Message-ID-Hash: SJHMIVXTJQVZNVZTTBUD6D5RJKK5VO3Z
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_radio_loopback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SJHMIVXTJQVZNVZTTBUD6D5RJKK5VO3Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3628612546264712085=="


--===============3628612546264712085==
Content-Type: multipart/alternative; boundary=Apple-Mail-7B48BB28-853B-4FB2-955F-15C4408FA16D
Content-Transfer-Encoding: 7bit


--Apple-Mail-7B48BB28-853B-4FB2-955F-15C4408FA16D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Oh ok, yes. I was a bit confused when I read it, but Now I understand. Yes y=
ou would have to have sample streaming to the host. I believe the FFT block h=
as a magnitude output that you could query. It=E2=80=99s been a while since I=
 looked at the code, but it was talked about at GRcon last year as a good ca=
ndidate for a simple energy detector, obviously you said you wouldn=E2=80=99=
t need to detect anything so the magnitude of a signal bin vs noise bin coul=
d help find dynamic range. I=E2=80=99m assuming you have a known signal freq=
uency and a known frequency which is unoccupied (noise only).=20

<end transmission>

> On Sep 1, 2022, at 15:26, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Thanks Paul,
> After re-reading my original email, it was a bit misleading.  The streamin=
g samples are never coming to the host - they are just looped from Rx to Tx o=
n the FPGA.  Thus, I can't determine the digital power on the host.  I'm gue=
ssing that the probe signal block you mentioned operates on the host rather t=
han the FPGA.  I'm looking for some simple power detector that may be part o=
f the RFNoC radio block or DDC block that I could query occasionally from th=
e host to determine the digital signal power level.
> Rob
>=20
>> On Thu, Sep 1, 2022 at 1:39 PM Paul Atreides <maud.dib1984@gmail.com> wro=
te:
>> Hey Rob:
>> If you use GNURadio, The probe signal block can take in a stream and the f=
unction probe block can poll The level on a time interval that you set in th=
e block. Then you can use that changing variable elsewhere in the flowgraph t=
o adjust the gain.=20
>>=20
>> <end transmission>
>>=20
>> > On Sep 1, 2022, at 10:46, Rob Kossler <rkossler@nd.edu> wrote:
>> >=20
>> > =EF=BB=BF
>> > Hi,
>> > I am interested in implementing a relatively simple repeater applicatio=
n on the X310 and E310. I ran the Ettus rfnoc_radio_loopback example and thi=
s is nearly a perfect fit for the functionality I want. However, I am wonder=
ing how my application can intelligently set the Rx Gain & Tx Gain. Actually=
, the Tx gain is easy: I can leave it fixed or I can change it inversely wit=
h the Rx gain to maintain constant loop gain.  But, the Rx Gain I would like=
 to set based on input signal power. =20
>> >=20
>> > I'm not thinking of a fast AGC or even logic residing on the FPGA at al=
l. I'm thinking more along the lines of the host PC occasionally querying an=
 "rssi" or other digital power estimate and then changing the Rx gain in res=
ponse.  I don't care about actual power levels - I just want to maximize the=
 digital dynamic range.
>> >=20
>> > I know that I can implement a custom RFNoC block that simply passes sam=
ples through while computing this estimate such that it can be queried with a=
 register read. But, before doing so, I'm wondering if something already exi=
sts such that I wouldn't have to do so.=20
>> > Rob
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7B48BB28-853B-4FB2-955F-15C4408FA16D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Oh ok, yes. I was a bit confused when I rea=
d it, but Now I understand. Yes you would have to have sample streaming to t=
he host. I believe the FFT block has a magnitude output that you could query=
. It=E2=80=99s been a while since I looked at the code, but it was talked ab=
out at GRcon last year as a good candidate for a simple energy detector, obv=
iously you said you wouldn=E2=80=99t need to detect anything so the magnitud=
e of a signal bin vs noise bin could help find dynamic range. I=E2=80=99m as=
suming you have a known signal frequency and a known frequency which is unoc=
cupied (noise only).&nbsp;<div><br><div dir=3D"ltr">&lt;<span class=3D"Apple=
-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875=
); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-co=
mposition-frame-color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;<=
/span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 1, 2022, a=
t 15:26, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Thank=
s Paul,<div>After re-reading my original email, it was a bit misleading.&nbs=
p; The streaming samples are never coming to the host - they are just looped=
 from Rx to Tx on the FPGA.&nbsp; Thus, I can't determine the digital power o=
n the host.&nbsp; I'm guessing that the probe signal block you mentioned ope=
rates on the host rather than the FPGA.&nbsp; I'm looking for some simple po=
wer detector that may be part of the RFNoC radio block or DDC block that I c=
ould query occasionally from the host to determine the digital signal power l=
evel.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Sep 1, 2022 at 1:39 PM Paul Atreides &lt;<a h=
ref=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hey Rob:<br>
If you use GNURadio, The probe signal block can take in a stream and the fun=
ction probe block can poll The level on a time interval that you set in the b=
lock. Then you can use that changing variable elsewhere in the flowgraph to a=
djust the gain. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Sep 1, 2022, at 10:46, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi,<br>
&gt; I am interested in implementing a relatively simple repeater applicatio=
n on the X310 and E310. I ran the Ettus rfnoc_radio_loopback example and thi=
s is nearly a perfect fit for the functionality I want. However, I am wonder=
ing how my application can intelligently set the Rx Gain &amp; Tx Gain. Actu=
ally, the Tx gain is easy: I can leave it fixed or I can change it inversely=
 with the Rx gain to maintain constant loop gain.&nbsp; But, the Rx Gain I w=
ould like to set based on input signal power.&nbsp; <br>
&gt; <br>
&gt; I'm not thinking of a fast AGC or even logic residing on the FPGA at al=
l. I'm thinking more along the lines of the host PC occasionally querying an=
 "rssi" or other digital power estimate and then changing the Rx gain in res=
ponse.&nbsp; I don't care about actual power levels - I just want to maximiz=
e the digital dynamic range.<br>
&gt; <br>
&gt; I know that I can implement a custom RFNoC block that simply passes sam=
ples through while computing this estimate such that it can be queried with a=
 register read. But, before doing so, I'm wondering if something already exi=
sts such that I wouldn't have to do so. <br>
&gt; Rob<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-7B48BB28-853B-4FB2-955F-15C4408FA16D--

--===============3628612546264712085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3628612546264712085==--
