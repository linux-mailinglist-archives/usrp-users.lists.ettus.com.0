Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A133B84BAA7
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:12:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A21D385130
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 11:12:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707235938; bh=FZXW6AyH8QhBLcLp7vLS8o0Zb0oSQaZ8DxMa20DWmlo=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dkfoWLP9PhFjsNdBFso4RtOa9VIVhCxKaMYnFYEEyf7Y/BfRGqNoxf9jDzgxFSwiG
	 u8Q5OdAADLv/rI3KeN95PXWwSvGs81fbmTIz7cpZTYZfyglGfXveOm5yQapdHd4FJF
	 TA0/3wHhPgtwJjuVPZYX9lCnnQfiU5Imb6WSAO9L6z2yguDmx1Z8EXe3RMDOr/jOLK
	 l90GML3YhSdzahigcFfn1TqDrQio6eossKd73utRamOuqJDDBCFl1Fhbi2s5KNL2cD
	 6jaaAY+gM6b22GIWbKmPrz4aKF5k3bxEH9KX2PHvZY5UkFV1h89QumaFPP5DUmZ2F6
	 7XkqzeDfg0V4Q==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B6493383922
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 11:11:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XDX7TjoT";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-78562c1ca4dso113979085a.0
        for <usrp-users@lists.ettus.com>; Tue, 06 Feb 2024 08:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707235880; x=1707840680; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Br9BY8AJ08gahkaXXCydO+uO4ScAar009z7tGrL0/Q=;
        b=XDX7TjoTK0LG1HYlSJR4dMOMnwYoLHLJzG4TIy7qEqfYCzORfkGTEXyh5hL5O/tmfd
         DCAH4gOvw5teSstcZU43a7HZXhEyo8Sw2D6Gh6h2J8l5caWAYteAHPhzkbal9iZ1KwWJ
         VgJYpW7suItS98x/XZ/renCIlDj2ej9zXSG88lDtJSzV2tY+IUum7UMOaswqFR1okzL6
         vVO8rW3xSNE2eqaNLOU6uSEoQWotpbdZtQaua9CDXFKyKJzB5cArE7VWhck7S9CtlEfu
         0YjuIRte/6BS4m/homhwClGuAV42WV8+Erf4KwcAL9w6mrhgHEnxgJ6dZqMvzHfLG9HG
         i8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707235880; x=1707840680;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Br9BY8AJ08gahkaXXCydO+uO4ScAar009z7tGrL0/Q=;
        b=eCqRrgd4Fi3Dra3qLpJklFpTmxkD9WsJYMyUNPf5hAp6k25mcw3OqcRP0yInbmszmp
         +hl4h+wrNoz/wBaz0tICOH0RqRZ1vBHTfpwpLhEL4Ys2N7AmZqgqrveNjY8UOmqrK2J6
         3IsS4bYPQsdBszs5lE1mqk99OOJWr5PHWpqKOSeHxfxtP3lUqfaBrK4YMP/JG8BzCsUL
         FzzDAGtE+7ZjDmuVQ3yqhksn3ppTp9rQ75jERE+1fZwpxjp0Hd1qznd//y9v1JTvVhk/
         8RI4s8xeaM4sq7A28j7maWH5tUcBqQrvaf8Cx6lcnyXmqbcVo/GXvBfuKVqZNcD7O780
         IuPw==
X-Gm-Message-State: AOJu0YzimL7lo4xGmUggxqyR3cBWbriloS7/qYyicJCgt3AwGzr1G4qN
	FRbmJR99dUm7FIsfFal0FY4XJfhp43eYcMK8p4P903E5JaSz0us7vyIYT98Y
X-Google-Smtp-Source: AGHT+IHdBCRCVOSplsw4Os+5HfdVZF7ad1WYlswyGG0nL9T8eMdZPz3/stCSny4eQGzFmrCkrOX5MA==
X-Received: by 2002:a05:620a:28cc:b0:785:728b:9a8a with SMTP id l12-20020a05620a28cc00b00785728b9a8amr3412820qkp.57.1707235879710;
        Tue, 06 Feb 2024 08:11:19 -0800 (PST)
Received: from smtpclient.apple ([174.93.0.146])
        by smtp.gmail.com with ESMTPSA id s18-20020ae9f712000000b007840721780bsm1021335qkg.66.2024.02.06.08.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 08:11:19 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 6 Feb 2024 11:11:00 -0500
Message-Id: <AAAFF3E5-1154-4A14-A0B9-3AC66142531A@gmail.com>
References: <BN7PR07MB4244C79C6CC2825D4B0FD476B0462@BN7PR07MB4244.namprd07.prod.outlook.com>
In-Reply-To: <BN7PR07MB4244C79C6CC2825D4B0FD476B0462@BN7PR07MB4244.namprd07.prod.outlook.com>
To: "Ramesh, Eshan" <esrh@gatech.edu>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: 36JSBPPJTV77RNVUXEMH2SSAPHEMJYRL
X-Message-ID-Hash: 36JSBPPJTV77RNVUXEMH2SSAPHEMJYRL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multiple USRP-2901 reference signal sync problem with gnuradio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/36JSBPPJTV77RNVUXEMH2SSAPHEMJYRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3148256659697002017=="


--===============3148256659697002017==
Content-Type: multipart/alternative; boundary=Apple-Mail-4D4E02DC-7E46-4310-BCF7-79380B1E8E6F
Content-Transfer-Encoding: 7bit


--Apple-Mail-4D4E02DC-7E46-4310-BCF7-79380B1E8E6F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Multi device synchronization isn=E2=80=99t supported on 2901.=20

Sharing the minimal flow graph that shows your error issue would be useful.=20=


Sent from my iPhone

> On Feb 5, 2024, at 9:24 PM, Ramesh, Eshan <esrh@gatech.edu> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
> I'm trying to use a common reference signal to sync two
> USRP-2901s. I'm using gnuradio with the default USRP sink and source
> blocks, and we're using an external signal generator into the "REF IN"
> port.
>=20
> If we use the same USRP for the transmitter and receiver (but on
> different subdevs (RF channels)), when the reference signal is not
> present, we see an error as expected:=20
>=20
> "usrp_sink :warning: Sensor 'ref_locked' failed to lock within timeout on m=
otherboard 0."
>=20
> Turning on the reference signal generator gets rid of this error.
>=20
> However, when we try to use two USRPs connected to the same reference
> signal, the error does not appear even if the signal is off. Setting
> one radio's clock source to be "internal" and the other's "external",
> and then modifying the reference signal frequency seems to have no
> effect, so I think the radios are not really synced. I would expect
> that I'd see a frequency difference if the reference signal frequency was
> slightly incorrect in a loopback scenario.
>=20
> Is there a reason why the error does not appear when using multiple
> USRPs even though there is no reference signal, and the radios remain
> seemingly unsynchronized?
>=20
> Thanks,
> Eshan Ramesh
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-4D4E02DC-7E46-4310-BCF7-79380B1E8E6F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Multi device synchronization isn=E2=80=99t s=
upported on 2901.&nbsp;<div><br></div><div>Sharing the minimal flow graph th=
at shows your error issue would be useful.&nbsp;<br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 5=
, 2024, at 9:24 PM, Ramesh, Eshan &lt;esrh@gatech.edu&gt; wrote:<br><br></bl=
ockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12p=
t; color: rgb(0, 0, 0);">Hi,</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
I'm trying to use a common reference signal to sync two</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
USRP-2901s. I'm using gnuradio with the default USRP sink and source</span><=
/div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
blocks, and we're using an external signal generator into the "REF IN"</span=
></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
port.</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
If we use the same USRP for the transmitter and receiver (but on</span></div=
>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
different subdevs (RF channels)), when the reference signal is not</span></d=
iv>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
present, we see an error as expected:&nbsp;</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
"usrp_sink :warning: Sensor 'ref_locked' failed to lock within timeout on mo=
therboard 0."</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Turning on the reference signal generator gets rid of this error.</span></di=
v>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
However, when we try to use two USRPs connected to the same reference</span>=
</div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
signal, the error does not appear even if the signal is off. Setting</span><=
/div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
one radio's clock source to be "internal" and the other's "external",</span>=
</div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
and then modifying the reference signal frequency seems to have no</span></d=
iv>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
effect, so I think the radios are not really synced. I would expect</span></=
div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
that I'd see a frequency difference if the reference signal frequency was</s=
pan></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
slightly incorrect in a loopback scenario.</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Is there a reason why the error does not appear when using multiple</span></=
div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
USRPs even though there is no reference signal, and the radios remain</span>=
</div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
seemingly unsynchronized?</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Thanks,</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
Eshan Ramesh</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServ=
ice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">=
<br>
<br>
</span></div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-4D4E02DC-7E46-4310-BCF7-79380B1E8E6F--

--===============3148256659697002017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3148256659697002017==--
