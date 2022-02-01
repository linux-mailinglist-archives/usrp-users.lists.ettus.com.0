Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE324A5CEB
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 14:08:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E0DD384DEA
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 08:08:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AdGfHzoE";
	dkim-atps=neutral
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B3C4384DCC
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 08:07:05 -0500 (EST)
Received: by mail-vs1-f49.google.com with SMTP id b2so15941409vso.9
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 05:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ly9Hbr7zzFVt8Hun1L0RxrRudjeJSOc7NmnBYUv0HFA=;
        b=AdGfHzoEB/+984JjnQCUwW6tR7FVzC/Nm3IlrquNH5unEEzYwmstthNofIAr81Wc9K
         k6vxoEeA4voQJpKGyvNmUMu6McRF+g3L4b1lrLU1a24Xbg8gAQ658JsOIMD1jjhq0y0+
         AXbfnT9fbH94pMo6RF/9ep8i6eBENTFqJc3zIUJvSoQtGjzWWDzqARM6bf/W9Kabkwn+
         GmjMFKiAmmhADflYHIqYenkVylJRlCjMv2aAJvEYXJJDq1DuqIbg/lEF2MbBa1qTgtCu
         2S8o9JOMeuvqEIS8J8+tOlO8CbCbBqb+ciOC/HcCGHFO+DShulQBLTrNHheMr0C7J8yQ
         1A5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ly9Hbr7zzFVt8Hun1L0RxrRudjeJSOc7NmnBYUv0HFA=;
        b=OVRlnWRrxf+1eAANmiiNQU321szDCRbGb3dJqNystgt0+jVevzdfVwd73MCtaoSYRa
         FMVVIx/SdZNs1N6TY6d+dZlemiUtZzGllc+oSAZK0OesQcZhDD0ArETc1siha0QJIokR
         x7ReibwRq6Gr7FMAFxWGR89VloxrP0dEH3kvWpR7T8sfAcWLDQwa02SaPS0EfnX1HDUI
         c9E/NVlqS0plgwLRsyP1RNoJmFlpWyjo1wpnidwXMYZOuJLTSVBsBw5d5QdUl1UNH4Kc
         WXUpOTpV+x0cUf2k5Q+5ErPhLyWwoIu0XRaHSppupgbf2Mvq0ib1O7kL7hBsLopTBkqG
         plDg==
X-Gm-Message-State: AOAM532N0TbyH1B1fRClXfATewrBuB+MvsyKbFUcZWU1XttcLbWT42Tm
	gsgIRWQSpNM4CQc7lL3kPzCTaeBQYgqxRcPj+b78lMfWhR4=
X-Google-Smtp-Source: ABdhPJxoZoOr1Od0llWUYIc5deP3G/sbxYt4RqHEnKZgpW6n1O5xM/anVHNGYYy6H3iWDnPlheeGandcWKWWqqTbIF4=
X-Received: by 2002:a67:fd63:: with SMTP id h3mr8874608vsa.77.1643720824364;
 Tue, 01 Feb 2022 05:07:04 -0800 (PST)
MIME-Version: 1.0
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Tue, 1 Feb 2022 10:06:53 -0300
Message-ID: <CAOucfAOSPUtNpdPuNb3VaHKtaapZG_HLKuhvPLKgxvNU9dX-YQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: IYGNCKJQOT4AKZRTXRZYTYHYOR43MLL5
X-Message-ID-Hash: IYGNCKJQOT4AKZRTXRZYTYHYOR43MLL5
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E31x Fosphor example with RFNoC on UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYGNCKJQOT4AKZRTXRZYTYHYOR43MLL5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2663325870227020844=="

--===============2663325870227020844==
Content-Type: multipart/alternative; boundary="000000000000d8c4a805d6f493d7"

--000000000000d8c4a805d6f493d7
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm trying to implement the Fosphor example on an Ettus E312, but I've come
across some things that are unclear to me. I'm just starting to develop
with RFNoC, and I've read the manual, cross compiled everything for the
Ettus, etc.

As I understand (and it was mentioned in the mailing list a time ago), this
[1] guide is not up to date, as the "uhd_image_builder_gui.py" is no longer
available for UHD 4.0. I'm now going through [2], and I've two main
questions:

I. When I'm trying to make my own YAML file, I'm not sure if every block
needs to be connected to the rfnoc_chdr clock. What would be the way to
know for sure? I've been looking the YAML block descriptions but I couldn't
figure what exactly this "...clocks:  - name: rfnoc_chdr freq: "[]"  -
name: rfnoc_ctrl   freq: "[]"  - name: ce   freq: "[]"... "  means.

II. Lastly, I couldn't find the "rfnoc_fosphor_network_host/usrp.grc"
examples on this version. Is there any new place where I can find them or
should I create my own .grc? I'm trying to work with examples for now to
use as a reference in the early stages of my development.


[1].
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
[2]. https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0



Thank you very much for your time.
Regards,
Lautaro.

--000000000000d8c4a805d6f493d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hello everyone, <br></div><div class=3D"gmail_default" =
style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m tryin=
g to implement the Fosphor example on an Ettus E312, but I&#39;ve come acro=
ss some things that are unclear to me. I&#39;m just starting to develop wit=
h RFNoC, and I&#39;ve read the manual, cross compiled everything for the Et=
tus, etc.</div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">As I understand (and it was mentioned in the=
 mailing list a time ago), this [1] guide is not up to date, as<code><font =
face=3D"arial,sans-serif"> the &quot;uhd_image_builder_gui.py</font></code>=
<span style=3D"font-family:arial,sans-serif"><code></code></span>&quot; is =
no longer available for UHD 4.0. I&#39;m now going through [2], and I&#39;v=
e two main questions:</div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">I. When I&#39;m trying to make =
my own YAML file, I&#39;m not sure if every block needs to be connected to =
the rfnoc_chdr clock. What would be the way to know for sure? I&#39;ve been=
 looking the YAML block descriptions but I couldn&#39;t figure what exactly=
 this  &quot;...clocks:=C2=A0 - name: rfnoc_chdr freq: &quot;[]&quot;=C2=A0=
 - name: rfnoc_ctrl =C2=A0 freq: &quot;[]&quot;=C2=A0 - name: ce =C2=A0 fre=
q: &quot;[]&quot;... &quot;=C2=A0 means.<br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">II. Las=
tly, I couldn&#39;t find the &quot;rfnoc_fosphor_network_host/usrp.grc&quot=
; examples on this version. Is there any new place where I can find them or=
 should I create my own .grc? I&#39;m trying to work with examples for now =
to use as a reference in the early stages of my development.<br></div><div =
class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">[1]. <a href=3D"https://kb.ettus.com/Softw=
are_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettu=
s_from_Source">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-=
_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">[2]. <a=
 href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https:=
//kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></div><div class=3D=
"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvet=
ica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family=
:arial,helvetica,sans-serif">Thank you very much for your time.</div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Reg=
ards,</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetic=
a,sans-serif">Lautaro.<br></div></div>

--000000000000d8c4a805d6f493d7--

--===============2663325870227020844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2663325870227020844==--
