Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DAAAC312D
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 21:59:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74BBF384E82
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 15:58:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748116723; bh=J+pgLVo8pxgYb9bxaTKU9ezsxV2maqUXP+jgSY1+rGw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pnlHhL/gacSsjSBUI9ocmhIrfT0vsLHye8LNQQ26pvTBSpYohwwrBr/LzBU/efGUo
	 UhUpvMX6JyQMasGqipZuPBN9WAP3ELFxzRVMHPkPUGVZ45wQY8rSgB0WF1BKlAJ/OT
	 g+2Hjy/UqOA5rViHS93ld+VylZlXd8PD2izCMJaub8hRufP8wSauNh1YEjpuBmPlnr
	 2bRb9zYWM1pgyQot/w7l25HU9FxKuJoxgilNvIo8k0QW+6zUixcjMgy+hfQdxBPuit
	 M0OLL7fwD4MlREI/adixH4Od4jNShqUYFAzHiVI5xcv4BKjfmnR2JGJ47EL+FiKQrg
	 jT3A/eajE1mgA==
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id BD9C2380B40
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 15:57:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GdhUBFvh";
	dkim-atps=neutral
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3dc7830a386so3470765ab.1
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 12:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748116669; x=1748721469; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sutn+uB4PAnYZsn7sFSX9S4YjqX36WjTXBtrWYrkwWQ=;
        b=GdhUBFvh82ze02/cR0b91STG4ano3n/CeGqOWRpahWy8Tq8uk/O3viSJbNOITW34dF
         dlNuR1DSM/Rp7umSD+pmNmzLwASltTPVYX8YS/ZTVZrZcPzlnJ+c8e2K4uKpQBzcxIjK
         TFYt5/VMj13Et1uul5hwnHLPnnhaqXm3X1oBhwMUFo4XI7VavPruSTNRAto3etCWX8yh
         iuDn1OWQuHw5czexbxJZ7/o7ClB0cpTD1G9g9PC6KlSPPOl36e6LIogr/qgr3FjfeRWa
         GQr3382BHPWx8Q81lfqxauZpNo2t2/mH9/mBDdhlFhjgTAxxeH5AGLJmkhcBp4GnqpGX
         NAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748116669; x=1748721469;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sutn+uB4PAnYZsn7sFSX9S4YjqX36WjTXBtrWYrkwWQ=;
        b=N1E/lZguzaoKdSPBs0AvWS/jMCXt0fQTo6R3TnheKlPLPHHcoujZJOPym6PDRGxE48
         m7pIpMlFxtplKeQac2zfN5I9OZFdvgSWr+OIPvif5fuQxkJnsB5A5kxxjCMC6hYAJ36k
         EP6zvSxMW3TSO0FZOYqAPhMt3CsfYkocHD01wvma4aL4SS+ipgPvs7EXeKM7xr92OD25
         qkASHdpFa7qQGW0MmazhgWSf84Igp/ExchPCoqsYOYJOR+Wf9b1ojWHR301TNb0lhz0s
         1RKTe9VrVOOcaf0pIbsxd/k5IcJnjk5BDrdaePsnpqFrMOQUVJtTBsTgkKrdyYxWpoO9
         AeqA==
X-Gm-Message-State: AOJu0YzPV/hBF5of0/EluWSEQ7wWp/nepexnK6/qbr3Lj6DPfXR6KZxU
	ZkXVRc+lvpG3hxEIosDONGLMUrBDgWBhhmK4yWnMY5opmSsrmLZjsRfZjBa2mUkXv03yqJ8+vjV
	m2NTVHoReFvAsdto+8tTZHrQy2eojKhc=
X-Gm-Gg: ASbGncuMAn5GbnxZk93o2FnwVDb0ghvlZz9uPHViAsdIqZ8KZtlJkeRqFN1qXdwnUdj
	OAUfRMCrz90O2xYjZam7C8XXwrK2+f1KlK59jn6+rBe5tAfG2DYmln2uwXlAoq5jese8ONjWFyR
	iY40JtvW1vDfBg6eOy8/jIWEcKBit6w9c=
X-Google-Smtp-Source: AGHT+IH1/p9JtkM5oplOvt1sUDLWTXv8lD5pF3o4iFu/L6cYsZ6vwaO6wmPrNrYUWzVKtYps6at3RDXn2NqsF5e65mc=
X-Received: by 2002:a05:6602:750b:b0:85b:4afc:11d1 with SMTP id
 ca18e2360f4ac-86cbb84160fmr363923939f.5.1748116668849; Sat, 24 May 2025
 12:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2GepjAKY2rp33tEm3SuM1NNTtodD0AEb62M5nSyXnOKTA@mail.gmail.com>
 <7d797c2c-9229-42dd-beb0-bddd4eebf019@gmail.com>
In-Reply-To: <7d797c2c-9229-42dd-beb0-bddd4eebf019@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 22:57:37 +0300
X-Gm-Features: AX0GCFs-_HC6GYdHRYbJNve1jhp_dMSMvWm57kzX8NxBLlLzQ9EJEibIoc64hR0
Message-ID: <CAAxXO2GKPJLnhT9D+VR6_tC9890=Vd2g8sGoKxhf5+Hc2aOwhA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: E5K4K4UZQ5JPTKTMYME5YI2U4BVZKOTG
X-Message-ID-Hash: E5K4K4UZQ5JPTKTMYME5YI2U4BVZKOTG
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sensor issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E5K4K4UZQ5JPTKTMYME5YI2U4BVZKOTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1158229572677018315=="

--===============1158229572677018315==
Content-Type: multipart/alternative; boundary="00000000000012a36d0635e72113"

--00000000000012a36d0635e72113
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ty very much,

That worked.It converged in just 2 loops:)
I thought I was linking sensor to sensor, and lo_locked was updating in
real time:(
But this was a sensor_value_handle, not a sensor:(

BR
Nikos


On Sat, May 24, 2025 at 9:44=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2025-05-24 14:35, Nikos Balkanas wrote:
> > uhd_usrp_get_rx_sensor(dev[channel], "lo_locked", channel, &lo_locked))=
)
> You need to repeatedly call this in your while loop.
>
> All you're doing is getting the sensor value once, immediately after
> tuning, and then spinning on the value of the "value_to_bool"
> conversion, which
>    will never change, because you aren't getting a fresh value of the
> sensor.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000012a36d0635e72113
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Ty =
very much,</div><div class=3D"gmail_default" style=3D"font-size:small"><br>=
</div><div class=3D"gmail_default" style=3D"font-size:small">That worked.It=
 converged in just 2 loops:)</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">I thought I was linking sensor to sensor, and lo_locked was u=
pdating in real time:(</div><div class=3D"gmail_default" style=3D"font-size=
:small">But this was a sensor_value_handle, not a sensor:(</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">BR</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Nikos</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 24, 2025 at 9:44=
=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On 2025-05-24 14:35, Nikos Balkanas wrote:<br>
&gt; uhd_usrp_get_rx_sensor(dev[channel], &quot;lo_locked&quot;, channel, &=
amp;lo_locked)))<br>
You need to repeatedly call this in your while loop.<br>
<br>
All you&#39;re doing is getting the sensor value once, immediately after <b=
r>
tuning, and then spinning on the value of the &quot;value_to_bool&quot; <br=
>
conversion, which<br>
=C2=A0=C2=A0 will never change, because you aren&#39;t getting a fresh valu=
e of the <br>
sensor.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000012a36d0635e72113--

--===============1158229572677018315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1158229572677018315==--
