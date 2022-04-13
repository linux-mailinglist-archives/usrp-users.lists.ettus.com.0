Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7692C4FF788
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 15:21:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55F863847CE
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 09:21:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649856102; bh=e3yNt1DOXTUEDs1W25sEYCZ5eB/2E+T9BiBFR+1TEy8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oqBKjLQZSqupXr8PsMcoTwmyjiyVdfF3Lzxf5XvoC7qF7vHwU5/r6hSjaDD0jCkfK
	 CPQEwJHNEFKTzz9mVyJQ0x9/TBOHJt/Jcc8IifYLUsXtWo541Lcwd6jBa2EXlkFOzy
	 ciUV+ceYyQ+5fZnIoQw0hWHiWIKPvkxQR7vKkirZTAs/qkq7IVheShUXPLGlyAyJ4x
	 5She08rRoh5Al3Uux5Q4X/vT+ZxCwumDhwAB55ktzvvKMvaKhy9wd2QLlclOIS6v3F
	 2Y1p4cs5BPVqwcPLzKoOoAp3B789Jd6Mvk3l3aRgDehcLtW8VNR3x0gcCEGbHiFXZJ
	 mxLgvpN4GhDow==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E3D73847C0
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 09:20:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="iTbvJBAK";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id r2so1800966iod.9
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 06:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=py6+yQ/tNqIo58cj9er+HXmr5Gilz7gBmyiper3N4aE=;
        b=iTbvJBAKZB0Q8jk2IDFCOtPsQcmBaaNqcapvcea3qxiq4T+9B4baxwiDT2EyAsZjZj
         FWnb4eSTeQvvoKCrVAFh3WfokSKZMvljeL7gfuQsFnmOijRbwwkyCke1Ff+R5HL9G+C5
         2PujN5wClK6ckTz1mtdz1/2Qww0XOsb32P5XahxBFgKGNTOzbkwEVX90gV6VHMXV5GKu
         te6SToqVnzXGgVylv0ujjQL18M4BCKZgs6bzeveaE6SWGcoD3xinU2Hq6sohdiftRHQ6
         7BtI/evppbzbHuoA8V0eSVpqf8m4ci/W2zKNTvVp83bVCocNznD3k+sAYO3Oa2oVF5F7
         0Mfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=py6+yQ/tNqIo58cj9er+HXmr5Gilz7gBmyiper3N4aE=;
        b=MxuoUJg74NDdba/zTe/vqxoG/IwYIMuRTiUhTohnnFZNUpkP7QEUgccm0+sNZlvQ22
         cpSuTY8ipYKeW+RfdeBLAKbk8pg3YvBy6UIjF1f6cxIl2dJGW22ctGmnnmtbCiaKt4an
         vSCEAT24BOQBKF4eVxKK9WonDY64Ux0Zk+6gNJEPL/nwvW/BYEPZzZxr3Enmu6dXPvex
         hdjtxxwc59vE2EadKDf3wflbA8yIjb8FHyzunvy/cPgg5XiYpMGi88DspyV74I8uC2rY
         T3IDkFJQ5gHdYzY5AlRCgBwg3AOGDNt515nCOCHqt5LToXstxzgVl/O2xKAgjYsLTWxW
         rajg==
X-Gm-Message-State: AOAM532sbougXGazi3u6ljkpmq7Xd4wBMg6mJ5C6cz+vuNi74HoXaX3d
	dX8jccUb8t+jKfDyqQiOydLQ0Gf6/fM5lSKVYnt2kOPS4C4JLh1y
X-Google-Smtp-Source: ABdhPJy3+hlUEVXZWdDr1YIvKO0DTwis9RmZpeRx+xceurHSgJBylzM4whPXZjg+d1bf9rfrNLezcAa7rrWUHrCu6tY=
X-Received: by 2002:a6b:f408:0:b0:64c:b4b4:9164 with SMTP id
 i8-20020a6bf408000000b0064cb4b49164mr17163452iog.24.1649856037420; Wed, 13
 Apr 2022 06:20:37 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 13 Apr 2022 08:20:01 -0500
Message-ID: <CACaXmv-DdJbLgsymtibYVP_V+YHn4rYUVoaMMFeqaJmgu6XCkw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 5XD3C7FXXMF6X4QYLH5DVHYLG4I7UUDG
X-Message-ID-Hash: 5XD3C7FXXMF6X4QYLH5DVHYLG4I7UUDG
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2022 -- Save the Date!! -- Friday June 3
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5XD3C7FXXMF6X4QYLH5DVHYLG4I7UUDG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1141974308362089661=="

--===============1141974308362089661==
Content-Type: multipart/alternative; boundary="0000000000000a920f05dc890b62"

--0000000000000a920f05dc890b62
Content-Type: text/plain; charset="UTF-8"

Save-the-Date!!

NEWSDR 2022 will be held on Friday June 3.

The event is free and will be fully virtual, and within an interactive
virtual environment.

Please visit our website for updates on the agenda.

More information and registration instructions will be posted at the end of
this week.

https://newsdr.org/workshops/newsdr2022/

--0000000000000a920f05dc890b62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">Save-the-Date!!</font></div><font face=3D"verdana, sans-se=
rif"><br>NEWSDR 2022 will be held on Friday June 3.<br><br>The event is fre=
e and will be fully virtual, and within an interactive virtual environment.=
<br><br>Please visit our website for updates on the agenda.<br><br>More inf=
ormation and registration instructions will be posted at the end of this we=
ek.<br><br></font><div class=3D"gmail_default" style=3D""><font face=3D"ver=
dana, sans-serif"><a href=3D"https://newsdr.org/workshops/newsdr2022/">http=
s://newsdr.org/workshops/newsdr2022/</a></font></div><div class=3D"gmail_de=
fault" style=3D""><font face=3D"verdana, sans-serif"><br></font></div><div =
class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"></fon=
t></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br clear=3D"all"></div></div>

--0000000000000a920f05dc890b62--

--===============1141974308362089661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1141974308362089661==--
