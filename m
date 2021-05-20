Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB14738B253
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 16:57:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9FB238447D
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 10:57:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="jxeetZBx";
	dkim-atps=neutral
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 536A83843C0
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 10:56:46 -0400 (EDT)
Received: by mail-io1-f49.google.com with SMTP id s7so801043iov.2
        for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 07:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=PdZ4mp7/aH3vprSJBj7ky42737DYVMI90NdfnNJ+Frs=;
        b=jxeetZBxxl++gD/ee4ZMK1Hf0alChzOHvSy9r7qUbqjvZbf9wySpmUxJ6zMiM6TIDm
         mVPhJI0qvsz773q8V24VT03bVlLuap535BUtXWJL/VzG8cAZohDW0q/cgPuY+pkgrGll
         akhsOAO0B8uQTCfVa+acSTdJb6LmF32mxd0pJaLoTWJlGSml5Ob/ZwqiOLY5Wfz6lYD2
         hpxP5a4aZSYvRDxLCguyF6tA60LsHR6nMR/u0yLGcOq4vO2tpxFofwecc8MNXL87akWh
         Q4uA5geRg5jv1ryXfzjSbDR0c2MQZXZaWRmx+1YOoWOaBrwmE4chFo2IaqlnHvbp7bne
         NIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PdZ4mp7/aH3vprSJBj7ky42737DYVMI90NdfnNJ+Frs=;
        b=MpuOB+ytxyKuULAc0N/s1X1lljuTC+hcpbWXEvOkcnZhfHmBymNC1tKDYg+zplZD6t
         Gmp+wJlh1XjUYAlZPmePi0p6MdRu9i4l6ZJocPoNjb9T+/yjPEA0S0zhNLfa72hc9uGT
         yglDDOHkpabqTFwIsfIrvBWDZSzoLU1n0pNt3EC/xUxyMLhDtGsO5Qm2R15TAGVkr33x
         mXDlN8VxHBDbDYa8kv8fPzwMgIi2iOy5Q/wm92dGrtez1484ubav+bJm2gjOF/sbu1LQ
         KlEJalc/YoVKnrclv61vcLegD21YYCgZgIRnRlOHYRlV4xo3a4fP0pF0VCAKazaaBkUm
         5QXQ==
X-Gm-Message-State: AOAM5302240flQ01zEREogKqnfY2jBCKZZ4R43wsBkzeqEYTxij35+3B
	p8cSE9xQZ5binL7fVEedG/VVS6YsdqbIGJbHajOubt+GUz5RX7/A
X-Google-Smtp-Source: ABdhPJydYmM7h4tZwZpPsq2ue8s4dQn8UU85mE5ewbtFYMqLbvY9q73FvhONl6C0ZZKGFP+zIn1t0vbGX3ZnMTZg2Gs=
X-Received: by 2002:a5d:818c:: with SMTP id u12mr5817349ion.81.1621522605415;
 Thu, 20 May 2021 07:56:45 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 20 May 2021 09:56:09 -0500
Message-ID: <CACaXmv-4sqdEo3San_=AJJOvCxRap5TvQ2s+g9AyOGndgHM3AA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: EJY7KJ3CX7AAPDHFB7ZXUDNHC3C5567F
X-Message-ID-Hash: EJY7KJ3CX7AAPDHFB7ZXUDNHC3C5567F
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SDR-Boston Panel Event on Wednesday May 26
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJY7KJ3CX7AAPDHFB7ZXUDNHC3C5567F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1297863187439617535=="

--===============1297863187439617535==
Content-Type: multipart/alternative; boundary="000000000000e4385105c2c42631"

--000000000000e4385105c2c42631
Content-Type: text/plain; charset="UTF-8"

SDR-Boston is launching our first-ever panel event.  This upcoming
inaugural event will focus on SDR-enabled hands-on education in a classroom
environment.

This panel event is scheduled for next week on Wednesday May 26 from 14:00
to 15:30 EDT (Boston time).

The event will be moderated by Professor Alex Wyglinski (WPI), and a panel
of world-class SDR educators will participate at this interactive event and
present lessons learned from their own classroom experiences: Dr Fraida
Fund (New York University), Dr Marc Lichtman (University of Maryland), and
Dr Cory Prust (Milwaukee School of Engineering).

To learn more about the event, and to register (registration is limited to
the first 100 attendees), please go to the website.

https://newsdr.org/workshops/sdr-classroom-panel/

--Neel Pandeya

--000000000000e4385105c2c42631
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">SDR-Boston is launching our first-ever panel event.=C2=A0 This =
upcoming inaugural event will focus on SDR-enabled hands-on education in a =
classroom environment.</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">This panel event is scheduled for next week on =
Wednesday May 26 from 14:00 to 15:30 EDT (Boston time).</div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif">The event will=
 be moderated by Professor Alex Wyglinski (WPI), and a panel of world-class=
 SDR educators will participate at this interactive event and present lesso=
ns learned from their own classroom experiences: Dr Fraida Fund (New York U=
niversity), Dr Marc Lichtman (University of Maryland), and Dr Cory Prust (M=
ilwaukee School of Engineering).</div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">To learn more about the event, and to=
 register (registration is limited to the first 100 attendees), please go t=
o the website.</div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><a href=3D"https://newsdr.org/workshops/sdr-classroom-p=
anel/">https://newsdr.org/workshops/sdr-classroom-panel/</a><br clear=3D"al=
l"></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-ser=
if"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">-=
-Neel Pandeya</font><div><br></div></div></div></div></div>

--000000000000e4385105c2c42631--

--===============1297863187439617535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1297863187439617535==--
