Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 603088FBBB3
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 20:32:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBB7838530C
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 14:31:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717525919; bh=FnDDjWQEsT0jOR9vPdlcyqWItL+7h4qKRts7OtZQlY0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yOchT5uFJ53M1twv4Y5bQ0TDhbijiIdKywmXWEGrbmzPmYg3Bx1azVh2JoCZyho5/
	 eu/Vo9wMB11PfkeuT4uy9CNYw0gXFca1npIItQkHh5+iT2TCU32N+PWhWa/UabuElG
	 I1J2nqACmlgk1H/FU+Mf+o432wV52uRpx0qVRD45sf2poxkNEJlytJpHl4C/PoZkEw
	 P0WbU3++ydhYJveE1YF6n9IsEf6uiTKvh73Ox4DkxPvKffhQVGaL8aMS8lohE2LRWp
	 3n/460wcmN6ISZCSCylJqGEY0HdIB9wXO7iNm4auuTkWZIp8OwSQbbT2FRWf+580SD
	 oPlt3byb4h/Dw==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FE623852F8
	for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2024 14:31:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="J6MT3FfK";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eaa794eb9fso45980381fa.2
        for <usrp-users@lists.ettus.com>; Tue, 04 Jun 2024 11:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1717525887; x=1718130687; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6n5L/4LReVHsKyEp+BkQwiL6eVN4yhpZ5xxuFfL/p1Q=;
        b=J6MT3FfKYdQKmYNC3oM0xa59eu5hyGmjZ/RUDj7V+DegJxetJ1sts946t2x8K+RBBP
         8YIY58hwJqM2GpYiXttzXhrVpAdn9REJEximQV7jc04+nx3Z5yqPI12AG+xG7IkrjHt5
         yB8QCWAPr0592GSanbZC0YrF7eUSxXSH0v5EwTGDDhAWYw8sFnaY/3sPdgm9DqOKnLCl
         kA46oxjt5D1Y52MKOhxE1ZNl6g+vo3CkHs9HSiN/8SVec/boaDyrXRtUAaKxVZfLAL4w
         7pHW3Og3lTLERUdaMCqbWYSSgzinpK40mQZbE3qvn5OQKcSaXWhrfUJ2Mblv3jeYEAW0
         Ksmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717525887; x=1718130687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6n5L/4LReVHsKyEp+BkQwiL6eVN4yhpZ5xxuFfL/p1Q=;
        b=jjWMG5wlWR2hPh9/leDibAHAIRLXlnCL9HKoQL5hjbtuM9Ev400Z7J338p25fSZHaD
         lpz/zHIKQdoXxL/eGWfJUHrFvdxSI7gn/DkJg47wZvjd/0GaRuLFrOqWnnmV2PNWRU5D
         vr5vHKtwIpcO19mwCl3eJ7VRhUgNQM5dY6nLHjCLg/ORh3OCAVp3znFL0HWLELMwNvWe
         j4FnSjxypxFz88Fzrn0wysrkoAA+G2anHWcQI/a9PkWa12XlG8Hop+Iz3dFYtFnc0MPq
         TBlpVeTzvWZI6BGekhtBR1FNK6ew+aB3exjBMTPCJGZGaNs30/5cVZuUfVcYkD6VD8Nb
         ufDQ==
X-Gm-Message-State: AOJu0YxRN1Wcw1W5PFGai9RYIgODY0a4E2MlkK9vrafX+OveZBYiHRef
	H203SQu1Yl4F1e9xcReB/qxn2QdIXWe4UOSy7YwVPuScriu+fFTtFmIha2Hw/Bi7GMmnfOquiOU
	+2Vj21sZW2xrObi80JEkJ0tiq/kXGptunJkSaDeg/LNpK/ZkQvjWw9A==
X-Google-Smtp-Source: AGHT+IFx6+AMACz3SxRzqWPpt/1IpU9+DukkfJu08IqvBg1hqDPM1kheBm0Q8N8HmKutXktcUf4M6oHm5p0Qt10r8ZY=
X-Received: by 2002:a2e:96c3:0:b0:2ea:8abf:3a5e with SMTP id
 38308e7fff4ca-2eac79ecddemr681451fa.24.1717525886590; Tue, 04 Jun 2024
 11:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM>
 <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
In-Reply-To: <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 4 Jun 2024 13:30:50 -0500
Message-ID: <CACaXmv_BOVsVWYBKXmTn0iFW0xjF4q7m5uueoJb7UL8hCb3bYg@mail.gmail.com>
To: guemdani23@hotmail.com
Message-ID-Hash: 3AXOUBXAQNRXS7K4TUH246HI62SW74TI
X-Message-ID-Hash: 3AXOUBXAQNRXS7K4TUH246HI62SW74TI
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3AXOUBXAQNRXS7K4TUH246HI62SW74TI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2937583306328336357=="

--===============2937583306328336357==
Content-Type: multipart/alternative; boundary="0000000000005cfd19061a14a8fc"

--0000000000005cfd19061a14a8fc
Content-Type: text/plain; charset="UTF-8"

Hello Moussa:

No, the NI ORAN O-RU is being implemented only on the USRP X410.

Please let me know if you have any further questions.

--Neel Pandeya


On Tue, 4 Jun 2024 at 08:58, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/06/2024 09:23, Moussa GUEMDANI wrote:
>
> Hello,
>
> I would like to know if I can use the usrp x310 as an O-RU, connected to a
> CU/DU via openfronthaul interface, (split 7.2x)
>
> Best regards
> Moussa
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> There is this:
>
> https://openairinterface.org/wp-content/uploads/2023/11/Neel-Pandeya-NI.pdf
>
> I'll ask Neel if there's an implementation for X310.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005cfd19061a14a8fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello=C2=A0Moussa:</div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif">No,=C2=A0the=C2=A0NI O=
RAN O-RU is being implemented only on the USRP X410.</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Please let me k=
now if you have any further questions.</div><div class=3D"gmail_default" st=
yle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, 4 Jun 2024 at 08:58, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 04/06/2024 09:23, Moussa GUEMDANI
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        Hello,</div>
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        I would like to know if I can use the usrp x310 as an O-RU,
        connected to a CU/DU via openfronthaul=C2=A0interface, (split 7.2x)=
</div>
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        Best regards</div>
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        Moussa</div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    There is this:<br>
    <br>
<a href=3D"https://openairinterface.org/wp-content/uploads/2023/11/Neel-Pan=
deya-NI.pdf" target=3D"_blank">https://openairinterface.org/wp-content/uplo=
ads/2023/11/Neel-Pandeya-NI.pdf</a><br>
    <br>
    I&#39;ll ask Neel if there&#39;s an implementation for X310.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005cfd19061a14a8fc--

--===============2937583306328336357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2937583306328336357==--
