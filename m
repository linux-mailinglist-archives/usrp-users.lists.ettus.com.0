Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F9B84F690
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 15:09:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFFFD384E32
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 09:09:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707487740; bh=xUHEmCV+a1XVtyWqHvDRjhRPOmIK2LqkyYRfczcFra4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZBeUiOKMOY/TGI75m9dJtJF7TEWclVVEMoHdhsQjOV50eTy/UWd37muxh/fSXDK80
	 ICwhMY7yyiwXqWap7bSyTUYVjjphYUdsj3GJ9uKad6rirBXG7IWTGX7NfXcHu1ziWf
	 AKkL3SI9lnnTwHgOGrI+DltoAMTnWHhVJSP/r5kY0gFK6cgocAP/04c7uUNDpsW2fo
	 oIJoV6rfUF8UAxN6a+miDbdjg276BlP5EWCiCBFX8O/BvRvNLyzMBP/5u76XQWhtBr
	 TQSDlloqYr6jAMk3sx/4+PmBSPfx+yy7QWBM9j2Gy7oGaPw/X0hFzqHlCHQr7BQ7TA
	 jzwcTPJLUu0Dg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CBE63384DA5
	for <usrp-users@lists.ettus.com>; Fri,  9 Feb 2024 09:08:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LxVTin8x";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5610b9855a8so3217486a12.0
        for <usrp-users@lists.ettus.com>; Fri, 09 Feb 2024 06:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1707487681; x=1708092481; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0Bi33RAop3RBKyDhrnfrA8rVTinzXHMqvzmJ9jN0iWw=;
        b=LxVTin8xcjs5HC+Etez1YGk8gTKEzNsBD3XPQ4TKfI2/Hi+GjkK5ehqxOOZVd6xCXM
         K58cRVpSXz47X3Sh8XYmVgeHSpCllFO6vSVZw+VNCo6rQG5ZdUoYWmgT8HXG9+ibz5CH
         BF7wqTkpuz50bhjm/vbchOe1kkcCqymA3sYT+Aw7RTo1FQaDpC/jim5iWInC93P3J1EU
         fFHMYLksHCdeb7OltfCHaDIezrI3FCt80vDnVZoHspQ0AE3+Gm+ZDSlY0Qj/vL5irbtf
         8q9FATzK6pMv1rVurCnTnZ+x1PHkmaW6vYbO3pFqtBBrXkawqaZV3w9aTRdN5mc0/UjG
         dJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707487681; x=1708092481;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Bi33RAop3RBKyDhrnfrA8rVTinzXHMqvzmJ9jN0iWw=;
        b=xDruw3AC0XJjCKWnP72499hdxukYigVghEGoevkAIobqdtgEsBUwV4SKdyKnIWy4Y8
         A3sNEzZg37c8sbSA96i2jM7KEmHx2QjJny30JR/tj2oqG8ipf5d8gCDB+StXiIzceUCQ
         oUaFdzdYGm5QYXhjfLRoXAL8sr78evmb3Z+HjXvWtWP0MN3+GhSjco0nWbZeEplcSxIp
         W3LZmfdvWqdz55Uky0S0oIumUxaZDLt39Vkmt33U6Ef242ImpNhdSHFVotAM2UZSr/vi
         P+CfaCuQeI//S8ni8BOXZJ9V6dQjLNkay1rYVAHr+Z1vrrPglqtFBcIbtf7dtzZJqvQ5
         C/0Q==
X-Gm-Message-State: AOJu0Yx4CeirUgxEk40hQafV3c+3Le4bloPGGJL2T1stfEudadagvJBq
	Pij3w7Ky3ZT4HWFRxJX3zy4foKi4GWHWQKEHR4o9xblL3ME2r8H1q86eZG3MMXyW45EocxNLX0k
	oWy+hmds4mWNgCSWSoLfuYUNuHtM0lo4mN6wwIfF4zDQypVk=
X-Google-Smtp-Source: AGHT+IETa/tng/kCx/vlwqEDtNZ7CDFX/A1zDEq7g2b6grJfo6T0jeFdB8Og6zZ25R5yhWc68dDlgwaVknzgM4EU6Tw=
X-Received: by 2002:a05:6402:5d0:b0:55f:d8c9:60e5 with SMTP id
 n16-20020a05640205d000b0055fd8c960e5mr1065572edx.9.1707487681281; Fri, 09 Feb
 2024 06:08:01 -0800 (PST)
MIME-Version: 1.0
References: <fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg@lists.ettus.com>
In-Reply-To: <fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg@lists.ettus.com>
Date: Fri, 9 Feb 2024 09:07:49 -0500
Message-ID: <CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmail.com>
To: speik@hs-bremen.de
Message-ID-Hash: IAPPMUBFCFJ6Z7LZISBFYHPTUKDWKYY4
X-Message-ID-Hash: IAPPMUBFCFJ6Z7LZISBFYHPTUKDWKYY4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IAPPMUBFCFJ6Z7LZISBFYHPTUKDWKYY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0574320337989605735=="

--===============0574320337989605735==
Content-Type: multipart/alternative; boundary="000000000000b3afc00610f374c5"

--000000000000b3afc00610f374c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is fixed in 4.5 and 4.6.  Are you able to switch?
Rob

On Fri, Feb 9, 2024 at 5:04=E2=80=AFAM <speik@hs-bremen.de> wrote:

> Hi,
>
> I am facing the same problem.
>
> I am on a Linux machine and hardware is an X300 with a UBX160.
>
> When I am above 500 MHz the actual carrier freq becomes about 2000 MHz
> smaller.
>
> I checked it with the uhd example script  tx_waveforms that comes with th=
e
> uhd install. Below is the output. Note that actual frequency is negative.
> There is no output at 915 MHz on a spectrum analyzer. Below 500 MHz
> everything is fine.
>
> Same happens when using Gnuradio.
>
>  Thanks
>
> Soren
>
>
> ------------------------------
>
> $ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400; UHD_4.4.0.0+ds1=
-4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
> Device: X-Series Device
> Mboard 0: X300
> RX Channel: 0
> RX DSP: 0
> RX Dboard: A
> RX Subdev: UBX RX
> RX Channel: 1
> RX DSP: 1
> RX Dboard: B
> RX Subdev: Unknown (0xffff) - 0
> TX Channel: 0
> TX DSP: 0
> TX Dboard: A
> TX Subdev: UBX TX
> TX Channel: 1
> TX DSP: 1
> TX Dboard: B
> TX Subdev: Unknown (0xffff) - 0
>
> Setting TX Rate: 5.000000 Msps...
> Actual TX Rate: 5.000000 Msps...
>
> Setting TX Freq: 915.000000 MHz...
> Setting TX LO Offset: 0.000000 MHz...
> Actual TX Freq: -1085.000002 MHz...
>
> Setting TX Gain: 0.000000 dB...
> Actual TX Gain: 0.000000 dB...
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Setting device timestamp to 0...
> Checking TX: TXLO: locked ...
> Press Ctrl + C to stop streaming...
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b3afc00610f374c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is fixed in 4.5 and 4.6.=C2=A0 Are you able to switch=
?<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 9, 2024 at 5:04=E2=80=AFAM &lt;<a href=3D"mailt=
o:speik@hs-bremen.de">speik@hs-bremen.de</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><p>Hi,</p><p>I am facing the same p=
roblem.</p><p>I am on a Linux machine and hardware is an X300 with a UBX160=
.</p><p>When I am above 500 MHz the actual carrier freq becomes about 2000 =
MHz smaller. </p><p>I checked it with the uhd example script=C2=A0 tx_wavef=
orms that comes with the uhd install. Below is the output. Note that actual=
 frequency is negative. There is no output at 915 MHz on a spectrum analyze=
r. Below 500 MHz everything is fine.</p><p>Same happens when using Gnuradio=
. </p><p>=C2=A0Thanks</p><p>Soren</p><p>=C2=A0</p><div><hr></div><p>$ ./tx_=
waveforms --freq 915e6 --rate 5e6 --gain 0</p><p>Creating the usrp device w=
ith: ...<br>[INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400; UHD_4=
.4.0.0+ds1-4<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X3=
00] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MH=
z<br>Using Device: Single USRP:<br>Device: X-Series Device<br>Mboard 0: X30=
0<br>RX Channel: 0<br>RX DSP: 0<br>RX Dboard: A<br>RX Subdev: UBX RX<br>RX =
Channel: 1<br>RX DSP: 1<br>RX Dboard: B<br>RX Subdev: Unknown (0xffff) - 0<=
br>TX Channel: 0<br>TX DSP: 0<br>TX Dboard: A<br>TX Subdev: UBX TX<br>TX Ch=
annel: 1<br>TX DSP: 1<br>TX Dboard: B<br>TX Subdev: Unknown (0xffff) - 0</p=
><p>Setting TX Rate: 5.000000 Msps...<br>Actual TX Rate: 5.000000 Msps...</=
p><p>Setting TX Freq: 915.000000 MHz...<br>Setting TX LO Offset: 0.000000 M=
Hz...<br>Actual TX Freq: -1085.000002 MHz...</p><p>Setting TX Gain: 0.00000=
0 dB...<br>Actual TX Gain: 0.000000 dB...</p><p>[WARNING] [0/Radio#0] Attem=
pting to set tick rate to 0. Skipping.<br>Setting device timestamp to 0...<=
br>Checking TX: TXLO: locked ...<br>Press Ctrl + C to stop streaming...</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b3afc00610f374c5--

--===============0574320337989605735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0574320337989605735==--
