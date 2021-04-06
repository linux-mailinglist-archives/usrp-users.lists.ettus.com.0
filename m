Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0D23555F0
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 16:01:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4F29384164
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 10:01:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="edmss/TO";
	dkim-atps=neutral
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id BA78A383DBF
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 10:01:01 -0400 (EDT)
Received: by mail-il1-f174.google.com with SMTP id p8so8799707ilm.13
        for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 07:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=4D1p2MOCSyvAIVWUsTkuhFRGuHuhC3Jgyu347SFDPj0=;
        b=edmss/TOC3GMdybw+KhZZo1f/+/LopAdnv079hG8A+t842bTHTY6DMYV0XBhxcdoMp
         +EkcQi5Fao6ayqk6XQcjXidlnU7koihDr6wDz7UFlDvVchTSFz1PepVlrbcOk66Hunko
         1D1hzbyQnXn/ZAnqKFBNnPiuUVbXaaVBTeZ1Fffyqj8zuk9xZmA0d1nMuvMplBDwr0Qa
         fW9yYzqW3N/BIrNAeDwnd5p6KheLZc9i5mkLpRehUTQ4f4Pm8soOjfepuaFzJGIpm2PE
         xbbJ1Re1x47CKay4KXjYKKAFJvZUq+yFcQXMzDnjWEgdt6f87YluLRGJWLuQozrr2PO0
         ZU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4D1p2MOCSyvAIVWUsTkuhFRGuHuhC3Jgyu347SFDPj0=;
        b=p41qcNUjR9Hxu+ft0RChpvYGWagmSSxdl1SgWbYDiG6f8OjGRGJ2cvUW5KKAiyc4M5
         cYxV3vF8gVtJKIWomvGPG44nWEXCMjV37zPwHR1JNIZWQCykksGAON4fcZbn7YyuGGSN
         LiNUbes/Ltri6892IxCtp7q5iKqD2YVZLWXQ485u1A45LDCbqCN/9dpWMPdO6cJAM3Kl
         VJpEJTqbJaELYSX2m7crJ8EAdggpuSKZ5jYd6eFX/mxNGAFzBTDu150OeVidfTWRSOPe
         bpnAEp/pjhf4F6RH4wi5z94FJ1BmX5K/7aJ5IUX9xH/FLrCBvl6kGIqxSfIe2xZvRL32
         D4JQ==
X-Gm-Message-State: AOAM531TIC/+qUSHn2MA1h2H7YDbq8OrnsR6I+/muj+Ujv5XH47jfQYW
	ai3gzpLKAzF4B2SoA/sTU4F7NU1gzm3B7E9/y6ETMTaViw3iEG9X
X-Google-Smtp-Source: ABdhPJwuvK5cv+klsTjYQ1MPVrLTcdvcEc5Zdw4GVY96r/wtK+qEYxkjpFwrtlHgskG3TZXJxVGOqCl8nQTGATvZbxk=
X-Received: by 2002:a05:6e02:1303:: with SMTP id g3mr24112018ilr.262.1617717660613;
 Tue, 06 Apr 2021 07:01:00 -0700 (PDT)
MIME-Version: 1.0
From: Rich Gopstein <rich@ourowndomain.com>
Date: Tue, 6 Apr 2021 10:00:49 -0400
Message-ID: <CANsNeaqE-mLR7TboX=zdGbF59wiKOc3RdUO93EidTnW=AmWRvQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HDO2CXNJBVGF3WQIT7VQMIKE4FJPZIBV
X-Message-ID-Hash: HDO2CXNJBVGF3WQIT7VQMIKE4FJPZIBV
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help enabling CAN0 on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDO2CXNJBVGF3WQIT7VQMIKE4FJPZIBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5800888344988944908=="

--===============5800888344988944908==
Content-Type: multipart/alternative; boundary="000000000000820a6605bf4e3e9c"

--000000000000820a6605bf4e3e9c
Content-Type: text/plain; charset="UTF-8"

I have an E310 (sg3) that I need to enable the CAN controller on and route
the signals out to the GPIO connector.  After that, I'll work on the Linux
driver.

I'm a newbie to Vivado, so I could use some detailed help.  What I've done
so far:

   - Built an Ubuntu 18.04 system
   - Installed Vivado 2018.3.1
   - Downloaded the EttusResearch/fpga.git repo
   - Tested "make E310_sg3" both with and without the "GUI=1" setting.


I tried going in to Vivado and enabling the CAN0 controller, but I wasn't
able to figure out how to rebuild the design (or route the signals to the
GPIO connector)

Any help would be appreciated.

Rich

--000000000000820a6605bf4e3e9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have an E310 (sg3) that I need to enable the CAN control=
ler on and route the signals out to the GPIO connector.=C2=A0 After that, I=
&#39;ll work on the Linux driver.<div><br></div><div>I&#39;m a newbie to Vi=
vado, so I could use some detailed help.=C2=A0 What I&#39;ve done so far:</=
div><div><ul><li>Built an Ubuntu 18.04 system</li><li>Installed Vivado 2018=
.3.1</li><li>Downloaded the=C2=A0EttusResearch/fpga.git repo</li><li>Tested=
 &quot;make E310_sg3&quot; both with and without the &quot;GUI=3D1&quot; se=
tting.</li></ul></div><div><br></div><div>I tried going in to Vivado and en=
abling the CAN0 controller, but I wasn&#39;t able to figure out how to rebu=
ild the design (or route the signals to the GPIO connector)</div><div><br><=
/div><div>Any help would be appreciated.</div><div><br></div><div>Rich</div=
><div><br></div></div>

--000000000000820a6605bf4e3e9c--

--===============5800888344988944908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5800888344988944908==--
