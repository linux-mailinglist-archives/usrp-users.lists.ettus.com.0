Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBD538BDE
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 09:16:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23F2238409D
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 03:16:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653981386; bh=liKNfwxpNq+Q7Hs77wlaxb1ghMHlskrBHuVxIx64+j4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FVjH38Pe4xu/Yipqk342+7Ys3MPwbjmhvsqi5CF+MQu8EMurM04R6RyvQFNUH226C
	 6KbPQNmFg3VUSGXXrQa2o2tjr6aUaLHY4GkclR85f1v8eKgmdq1OS4kLZA/+fEZy2w
	 BNNTiH4l8YQtF1HXnQ8jaL6I+p1Rc7TXS2red7WGhywKtw6ZSija43PI89w5+5yLtT
	 vqd66/+ObxMEvKHEK0s5oeNWCQ+m6P/NmG6BZ1zY4LZcW9a4oNGLrKI+BJysQvmugm
	 z6M5VQrgmxEd4Mut2fYxZoGOklaD6nLqVLbNRN2tJ++ggBkCHQD4jg7r4+wPL0LggZ
	 gZQzkvqo2oaVw==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id AD833383E15
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 03:15:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MmE+9Nir";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-2fee010f509so129408847b3.11
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 00:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=gBJIFRIHXtDuZMl5RIKMF66SglvBLm4G8wwshwYA1Zg=;
        b=MmE+9NirWq+sOnuWDomGswsT/BMPNhu+V5s43c05mxFJBHu2Du8eqVJBQWOyZ4L+Hg
         XbrDMD74sA93S3l+UoLV8CLNzxN4Fc3RCqfZqbCe2aSKtDOK8vodxd6hAleb2Ve02Ea3
         iie5Wof/WClz7Rh/YQKOi1smITNYpN9BBL69q2zIIvKRZC8IMHWa1UjF15YJd6UHluqW
         XFm1k3w5PP5BbVPozYtDcz75I9QbAOhi2iGaNRIKV5d7ASaMKxiZAKpXvE3em5C7oNsD
         hCHVJqTlRPyngrhQlBWcrc1qnDpusWCNgyZNIkByb4oKe74y/u2HW49L1snR4qX2t4aj
         m8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gBJIFRIHXtDuZMl5RIKMF66SglvBLm4G8wwshwYA1Zg=;
        b=F9wIt7lMiiLAm87jaLCBIFPHNXyZ8OTn4A716jJ6QSnpisIm0ev7JOVuwUJGOkIs9R
         jcPbC5/WW7Ka0QpDJYJnxGemx5eFRMC+9d0/gF1cxHV//x563Q35gXD3PIcTN+cxdu0A
         /g2koVe1wjaCABHXeh3aaYt0+E5sQtJCjZU+NPSKOazMwSt3mfSoZ7JO1vWHta0ibGYs
         eeUNFd1zCIU/hFyc9lYNZvoDtgDblDcDzrqCrz/A62QeWUxxDqxaDkBXoCk6SaYWArzf
         mo9qbev8gZksle9aETQkAGgN7LU1sfeBVgkNKq2N4E0TbGePft/GHlfYioQO19ox6mQI
         pZDA==
X-Gm-Message-State: AOAM532Ys8MBgJFhg8bob4uvnmoANBCrqJ26BXmKufL3F73AsgWfGGWC
	doxNjQm8cbBaMjYj4r0JiKlW5wxTsnO2c7lIa0shiUc92H8=
X-Google-Smtp-Source: ABdhPJyMnPnrZny23ujepYq5wkJSeSQjkQ4kZ2eUCFUO3FILRKEubGg60OFDAlNTiN52kFtacdjVMHdx1cr7FqMJ984=
X-Received: by 2002:a81:4688:0:b0:300:3205:ff1e with SMTP id
 t130-20020a814688000000b003003205ff1emr36837198ywa.162.1653981315742; Tue, 31
 May 2022 00:15:15 -0700 (PDT)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Tue, 31 May 2022 10:15:04 +0300
Message-ID: <CAHqKquxc8D6TRz0XHwyP5+6qw47qT_iunVDBGBPfEJ4UT=HwtQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2ISXMQWSDRIQH32HBZQORP3VCBBWVDDW
X-Message-ID-Hash: 2ISXMQWSDRIQH32HBZQORP3VCBBWVDDW
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] errors while installing uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ISXMQWSDRIQH32HBZQORP3VCBBWVDDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1364145298636994821=="

--===============1364145298636994821==
Content-Type: multipart/alternative; boundary="000000000000ca3ea405e0498899"

--000000000000ca3ea405e0498899
Content-Type: text/plain; charset="UTF-8"

Hello USRP experts

I am re-installing UHD on my laptop from this site "
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
"

But when i try to execute the command cmake ../ i get an error, i fixed it
by changing

"Boost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO" OFF ON)
to this

"Boost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO" ON ON)


and it works fine, but now i got an error after executing the command make


the error is :


Traceback (most recent call last):
  File "/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py",
line 361, in <module>
    eob_p = 0b1000000,
  File "/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py",
line 347, in parse_tmpl
    from mako.template import Template
ImportError: No module named mako.template
make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:219:
lib/transport/vrt_if_packet.cpp] Error 1
make[2]: *** Deleting file 'lib/transport/vrt_if_packet.cpp'
make[1]: *** [CMakeFiles/Makefile2:686: lib/CMakeFiles/uhd.dir/all] Error 2
make: *** [Makefile:163: all] Error 2



How may I solve it?


Regards

Rouba

--000000000000ca3ea405e0498899
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello USRP experts=C2=A0<div><br></div><div>I am re-instal=
ling UHD on my laptop from this site &quot;<a href=3D"https://kb.ettus.com/=
Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_=
on_Linux">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a>&quot;</div><div><br></div><div>=
But=C2=A0<span style=3D"color:rgb(36,41,47);font-family:-apple-system,Blink=
MacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">when i try to e=
xecute the command cmake ../ i get an error, i fixed it by changing=C2=A0</=
span></div><div><span style=3D"color:rgb(36,41,47);font-family:-apple-syste=
m,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px"><br></sp=
an></div><div><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0px=
;margin-bottom:16px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacS=
ystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color=
 Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px">&quot;Boost_FOUND;H=
AVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO&quot; OFF ON)<br style=
=3D"box-sizing:border-box">to this</p><p dir=3D"auto" style=3D"box-sizing:b=
order-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,Blin=
kMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0=
px">&quot;Boost_FOUND;HAVE_PYTHON_PLAT_MIN_VERSION;HAVE_PYTHON_MODULE_MAKO&=
quot; ON ON)</p><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0=
px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;S=
egoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=
=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-a=
pple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-se=
rif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px=
;margin-bottom:0px">and it works fine, but now i got an error after executi=
ng the command make</p><p style=3D"box-sizing:border-box;margin-top:0px;col=
or:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Sego=
e UI Emoji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=3D"box-=
sizing:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-sys=
tem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quo=
t;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-=
bottom:0px">the error is :</p><p style=3D"box-sizing:border-box;margin-top:=
0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=
=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-a=
pple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-se=
rif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px=
;margin-bottom:0px">Traceback (most recent call last):<br>=C2=A0 File &quot=
;/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py&quot;, line =
361, in &lt;module&gt;<br>=C2=A0 =C2=A0 eob_p =3D 0b1000000,<br>=C2=A0 File=
 &quot;/home/qw/workarea/uhd/host/lib/transport/gen_vrt_if_packet.py&quot;,=
 line 347, in parse_tmpl<br>=C2=A0 =C2=A0 from mako.template import Templat=
e<br>ImportError: No module named mako.template<br>make[2]: *** [lib/CMakeF=
iles/uhd.dir/build.make:219: lib/transport/vrt_if_packet.cpp] Error 1<br>ma=
ke[2]: *** Deleting file &#39;lib/transport/vrt_if_packet.cpp&#39;<br>make[=
1]: *** [CMakeFiles/Makefile2:686: lib/CMakeFiles/uhd.dir/all] Error 2<br>m=
ake: *** [Makefile:163: all] Error 2<br></p><p style=3D"box-sizing:border-b=
ox;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSys=
temFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color E=
moji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px"><br=
></p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,41,47);f=
ont-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,=
Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;f=
ont-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizing:border-box;=
margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystem=
Font,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom:0px">How ma=
y I solve it?</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb=
(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot=
;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;;font-size:14px;margin-bottom:0px"><br></p><p style=3D"box-sizing=
:border-box;margin-top:0px;color:rgb(36,41,47);font-family:-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px;margin-bottom=
:0px">Regards</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb=
(36,41,47);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot=
;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;;font-size:14px;margin-bottom:0px">Rouba</p></div></div>

--000000000000ca3ea405e0498899--

--===============1364145298636994821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1364145298636994821==--
