Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F1D3D4F90
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jul 2021 20:50:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1DF1384712
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jul 2021 14:50:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a9lce1lg";
	dkim-atps=neutral
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E8A6384496
	for <usrp-users@lists.ettus.com>; Sun, 25 Jul 2021 14:49:58 -0400 (EDT)
Received: by mail-ej1-f42.google.com with SMTP id hp25so12752015ejc.11
        for <usrp-users@lists.ettus.com>; Sun, 25 Jul 2021 11:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hrXEoGFnrxsXrBuyPwPla+Y/uc69pg7ZkB5nQIWXWvI=;
        b=a9lce1lgTyzwWdy3dnU4mD9E5G9Cojgg9+/574d6IhMTdOF0LCw0olkv7g9jRc2YFc
         NcN5+z+jdlgi27ELdlwgArqod6V4HbdvG23eNDWIPr9A/z8fZDM6yASwE0s+SoKSut9p
         OWLTnn752FnTbdxqlJyQTfuQLyDhcUWVyKvCLDk7tdqpe9gCBkLLyCyhttKkRd/K27Qv
         i/zRU0XeCn/LX+erphtfIP20On2RKoSwF4xsZbiw+ewNCp3lBX0ugOTepS486CcPPke1
         b2IN8xLfqlx5cQj3YHeZ4bF9xTlIngdq/9/EBpSEvQ6g2ewIPPYPLgkT+LvuM5suRxhQ
         1pIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hrXEoGFnrxsXrBuyPwPla+Y/uc69pg7ZkB5nQIWXWvI=;
        b=otiYkxGzDNlGZ9aHAqx2a6ibbW3eB0L/TFeXkzW2SPFwUDQlltAw+e7eyyXkiubQOM
         b0o078lH/XCq61HFID5lTfWI37MejhjQR1Ayn1qXF8zp7lv7tZHsoBTAbnoXR1klkIbG
         fK1UreZoGOgaow//YYy+VzuDPAJP5Hu8r/onMHXXfJP4Jyn11sWkaaIHQIQBBbtqLZWG
         ZX6UsYrys/s2UI4xs1Qx1jfJ+AjN0EW9WA0Jt5rG9dba0S/2JMmO0H0bSEPlCKv5oTqu
         5e5rhd36sZPFdJu+qid64Bog3RwtMb51deDMtuJ9x8gvcEfABqN2DxqnJT4Oi9rHlJMT
         fEJw==
X-Gm-Message-State: AOAM530rSLS5nGqlOzjSEpz0jGyKCy3H56RaaZueAT90qbx8Gld3jJ+O
	wE0acx2W0L25fe8kAgFNMhm+1BoAhbXabFZbX8A=
X-Google-Smtp-Source: ABdhPJw+WfUf7t794AxdlDxYHOX8Op4ASw/5ZG2nWe/Qqis4oHTy1q5+7JWK0gEOso+AON9PSWjzTu12xnlbiCQ8lSo=
X-Received: by 2002:a17:907:11c1:: with SMTP id va1mr14047135ejb.365.1627238997162;
 Sun, 25 Jul 2021 11:49:57 -0700 (PDT)
MIME-Version: 1.0
References: <162671758034.11266.14725170775006293663@mm2.emwd.com>
In-Reply-To: <162671758034.11266.14725170775006293663@mm2.emwd.com>
From: Patrick Kane <prkane92@gmail.com>
Date: Sun, 25 Jul 2021 14:49:46 -0400
Message-ID: <CAOLzfSjmLyXK7xQQs9kQjYnoT6Yktz8k4Bh92jHCySjubLVAxA@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Message-ID-Hash: UHNJAEKIWXAILK5QYXKF3GOUXIHDD7KU
X-Message-ID-Hash: UHNJAEKIWXAILK5QYXKF3GOUXIHDD7KU
X-MailFrom: prkane92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Octoclock issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHNJAEKIWXAILK5QYXKF3GOUXIHDD7KU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5509360845412274655=="

--===============5509360845412274655==
Content-Type: multipart/alternative; boundary="00000000000064001405c7f71a5f"

--00000000000064001405c7f71a5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am having a similar issue. I have an Octoclock-G that is a bit older. I
followed the steps to reflash the MCU using the Altera-ICE programmer,
enabling Ethernet access in the older device. I have a similar issue to Bob
where I still can't see the GPSDO sensor in the probe. Are there any legacy
tricks for this?

Thanks,
Pat

On Mon, Jul 19, 2021 at 2:00 PM Tillson, Bob (US) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have an octoclock-g with gps lock light on and all other lights
> functioning =E2=80=9Cnormally=E2=80=9D.
>
>
>
> I want to get nmea strings from it, but when I probe it, it tells me ther=
e
> is no gpsdo J
>
>
>
> See below, any thoughts?
>
>
>
> uhd_usrp_probe --args type=3Doctoclock,addr=3D192.168.100.134
>
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_105300; UHD_3.14.1.1-0-unknown
>
> [INFO] [OCTOCLOCK] Opening an OctoClock device...
>
> [INFO] [OCTOCLOCK] Detecting internal GPSDO...
>
> [INFO] [GPS] No GPSDO found
>
> [WARNING] [OCTOCLOCK] Device reports that it has a GPSDO, but we cannot
> communicate with it.
>
> [INFO] [OCTOCLOCK] Detecting external reference...false
>
> [INFO] [OCTOCLOCK] Detecting switch position...Prefer external
>
> [INFO] [OCTOCLOCK] Device is using internal reference
>
>   _____________________________________________________
>
> /
>
> |       Device: OctoClock Device
>
> |     _____________________________________________________
>
> |    /
>
> |   |       Mboard: OctoClock
>
> |   |   mac-addr: 00:80:2f:24:79:e3
>
> |   |   ip-addr: 192.168.100.134
>
> |   |   gateway: 192.168.100.1
>
> |   |   netmask: 255.255.255.0
>
> |   |   serial: 3183E75
>
> |   |   revision: 4
>
> |   |   FW Version: 3
>
> |   |
>
> |   |   Sensors: ext_ref_detected, gps_detected, using_ref, switch_pos
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064001405c7f71a5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am having a similar issue. I have an Octoclock-G that is=
 a bit older. I followed the steps to reflash the MCU using the Altera-ICE =
programmer, enabling Ethernet access in the older device. I have a similar =
issue to Bob where I still can&#39;t see the GPSDO sensor in the probe. Are=
 there any legacy tricks for this?=C2=A0<div><br></div><div>Thanks,</div><d=
iv>Pat</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Jul 19, 2021 at 2:00 PM Tillson, Bob (US) via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">





<div lang=3D"EN-US">
<div class=3D"gmail-m_97217452810667310WordSection1">
<p class=3D"MsoNormal">I have an octoclock-g with gps lock light on and all=
 other lights functioning =E2=80=9Cnormally=E2=80=9D.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I want to get nmea strings from it, but when I probe=
 it, it tells me there is no gpsdo
<span style=3D"font-family:Wingdings">J</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">See below, any thoughts?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">uhd_usrp_probe --args type=3Doctoclock,addr=3D192.16=
8.100.134<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (=
Red Hat 4.8.5-39); Boost_105300; UHD_3.14.1.1-0-unknown<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Opening an OctoClock device...<u>=
</u><u></u></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting internal GPSDO...<u></u=
><u></u></p>
<p class=3D"MsoNormal">[INFO] [GPS] No GPSDO found<u></u><u></u></p>
<p class=3D"MsoNormal">[WARNING] [OCTOCLOCK] Device reports that it has a G=
PSDO, but we cannot communicate with it.<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting external reference...fa=
lse<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Detecting switch position...Prefe=
r external<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [OCTOCLOCK] Device is using internal referenc=
e<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 _____________________________________________=
________<u></u><u></u></p>
<p class=3D"MsoNormal">/<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: OctoCl=
ock Device<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 __________________________=
___________________________<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0 /<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Mboard: OctoClock<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr: 00:80:2f:24:79=
:e3<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr: 192.168.100.134=
<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 gateway: 192.168.100.1<u=
></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 netmask: 255.255.255.0<u=
></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 3183E75<u></u><u=
></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 4<u></u><u></u=
></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 FW Version: 3<u></u><u><=
/u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 <u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ext_ref_detecte=
d, gps_detected, using_ref, switch_pos<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000064001405c7f71a5f--

--===============5509360845412274655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5509360845412274655==--
