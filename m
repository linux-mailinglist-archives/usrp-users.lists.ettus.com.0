Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD84E2A1E4
	for <lists+usrp-users@lfdr.de>; Sat, 25 May 2019 01:56:44 +0200 (CEST)
Received: from [::1] (port=39988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hUK3B-0006XP-CZ; Fri, 24 May 2019 19:56:37 -0400
Received: from mail-oi1-f181.google.com ([209.85.167.181]:46945)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sugandha.gupta@ettus.com>)
 id 1hUK2d-0006SR-Ok
 for usrp-users@lists.ettus.com; Fri, 24 May 2019 19:56:33 -0400
Received: by mail-oi1-f181.google.com with SMTP id 203so8225122oid.13
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 16:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=MbJzJSOB+2VKD3XVDTrVZg+9Z8CCcvNaB7UwO0Klw2Q=;
 b=hgZu98929aBA12O5Lp6VYVzGAocdXMmf254EsJ8Jck1R0ZWjnwQhkgypJjGyqNSmo6
 HNJQt05j0RIOiYf22ryi/GKhRU0SzL4cfzSgGFYZ91qqx2eyBtXrQnLflSa511rpBPa2
 APKOD3aSHmMXIOlLVHbvl+d5z4iauDk6LEB98+rOJ5v9q2M/4X0NQ2bg7vxXsfSjGwVb
 37w4PjD4TxsGLA37pXszuIyeU/4Sm6xs/6i2MUxjSGd+bodx2j9zy9nsSH1NqyUQ/yyW
 xzGVxDIbSO6d3MqHDr/DrpQPLTgtgen0SvKisLFHSrue/wq7p04y+AsDe9KaWcdi0hLx
 PdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MbJzJSOB+2VKD3XVDTrVZg+9Z8CCcvNaB7UwO0Klw2Q=;
 b=WzHt2Vjy6m4VzSQavKM1sVXBwDfcaBnrzy/UoT4lpaNPhkuZjWSH5CqAL/HSSAhbZY
 UxKTjqojKXF1pu6waqEhaTYSfly4Ze7oeImjvaJsi+Jr0gL9H5dHAU6D3RHYjxbvOhFj
 xd+npu8/mdY+e+RUgBBGLMFe74QFt2eNQ3ZrJpYMN5Zo05wPk4fgIB3u0U89K/Zzvg55
 rhs3ptZU+PnI72CVTN+vuawuuzZn/ls7ZjeJWgk1GwDIvhdLzfBxg+9gYZjAWeilDO+O
 vBbyhDNEmcFiKEdyU3xuNLuljBdCcYVyX0TbSWyDvWxG52V5OZv5oRiI5EifVnus0fT3
 HxnA==
X-Gm-Message-State: APjAAAWzgqgigSvzKg4c9PHDayiXYsQHL1rXC+gljit6stGwz11YIHWQ
 X+TbnmR8EXHb2r46swsBz0bivoJIKNocDa3UKKjuK16bRwqluIaD
X-Google-Smtp-Source: APXvYqx5/sQjBbC/byPiuTP4SC5K2d6UONT+SZaFaCF2p6kfVB16ZvLfSNpg8DFk7bWdywwzSddRiQ4mRpkwPHg30Pc=
X-Received: by 2002:aca:51c3:: with SMTP id f186mr7600657oib.144.1558742122616; 
 Fri, 24 May 2019 16:55:22 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 24 May 2019 16:55:11 -0700
Message-ID: <CAG_kd17n-vX73zmQHEP8KmYjDmLMsuqCMCKxirmz128Sfv2b=g@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] [UHD] Update to USRP E310 filesystem (v3.15.0.0
 pre-release)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sugandha Gupta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sugandha Gupta <sugandha.gupta@ettus.com>
Content-Type: multipart/mixed; boundary="===============4162982630456203570=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4162982630456203570==
Content-Type: multipart/alternative; boundary="00000000000083f5390589aaee29"

--00000000000083f5390589aaee29
Content-Type: text/plain; charset="UTF-8"

Hi all

We finally have a new filesystem for E310. This is an early release so
people can try it out before the final UHD-3.15.0.0 release.
The filesystem is now very similar to N3XX and E320 filesystem and will be
updated with every UHD release in future.

Here is a summary of the changes:
-  The new filesystem ( <https://github.com/EttusResearch/meta-ettus>
v3.15.0.0-e310_prerelease
<https://github.com/EttusResearch/meta-ettus/releases/tag/v3.15.0.0-e310_prerelease>
) <https://github.com/EttusResearch/meta-ettus> uses Linux kernel 4.15.
Customers can build custom filesystems as well. More details on that are in
the README
<https://github.com/EttusResearch/ettus-docker/tree/master/oe-build>. We
plan to move to Linux 4.18 for the final 3.15.0.0 release. Timeline for
that is still TBD.
- UHD version: v3.15.0.0-e310_prerelease
<https://github.com/EttusResearch/uhd/commits/v3.15.0.0-e310_prerelease>
- E310 FPGA
<https://github.com/EttusResearch/fpga/tree/v3.15.0.0-e310_prerelease/usrp3/top/e31x>
architecture now supports MPM <https://files.ettus.com/manual/page_mpm.html>.
If you have been using RFNoC, you should able to use your existing blocks
with no changes. The only change is the name of the image bit files
generated.
- These filesystems do not include GNURadio. Adding GNURadio maint 3.7
means adding python2 support on top of python3 which blows up the size of
the filesystem. In order to keep rootfs size small and have faster remote
mender <https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender>
updates, we decided to leave it out the default image. In order to use
GNURadio, custom images need to be created. We will add instructions for
adding GNURadio to the manual/knowledge base soon.

Note that the SD card shipped with E310s does not contain the latest
filesystem images. In order to use the new filesystems, the SD cards need
to be manually flashed. You can download the filesystem and new SDK here
<http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease>.
Follow the instructions in E310 manual page
<https://files.ettus.com/manual/page_usrp_e3xx.html> to burn a new SD card
and get started. The manual page also contains a Migration Guide to help
setup the device and suggests possible changes to customer applications.
Please let us know if you have any questions. You can report bugs here
https://github.com/EttusResearch/uhd/issues.

- Sugandha


-- 
Sugandha Gupta
Senior FPGA/Software Engineer
Ettus Research, a National Instruments Brand

--00000000000083f5390589aaee29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all<br></div><div><br></div><div>We finally have a=
 new=20
filesystem for E310. This is an early release so people can try it out=20
before the final UHD-3.15.0.0 release.=C2=A0 <br></div><div>The filesystem =
is now very similar to N3XX and E320 filesystem and will be updated with ev=
ery UHD release in future. <br></div><div><br></div><div>Here is a summary =
of the changes:</div><div><div>-=C2=A0 The new <a href=3D"https://github.co=
m/EttusResearch/meta-ettus" target=3D"_blank">filesystem (</a><a href=3D"ht=
tps://github.com/EttusResearch/meta-ettus/releases/tag/v3.15.0.0-e310_prere=
lease" target=3D"_blank">v3.15.0.0-e310_prerelease</a><a href=3D"https://gi=
thub.com/EttusResearch/meta-ettus" target=3D"_blank">)</a> uses Linux kerne=
l 4.15. Customers can build custom filesystems as well. More details on tha=
t are in the <a href=3D"https://github.com/EttusResearch/ettus-docker/tree/=
master/oe-build" target=3D"_blank">README</a>. We plan to move to Linux 4.1=
8 for the final 3.15.0.0 release. Timeline for that is still TBD.=C2=A0 <br=
></div><div>- UHD version:=C2=A0<a href=3D"https://github.com/EttusResearch=
/uhd/commits/v3.15.0.0-e310_prerelease" target=3D"_blank">v3.15.0.0-e310_pr=
erelease</a></div></div><div>- <a href=3D"https://github.com/EttusResearch/=
fpga/tree/v3.15.0.0-e310_prerelease/usrp3/top/e31x" target=3D"_blank">E310 =
FPGA</a>
 architecture now supports <a href=3D"https://files.ettus.com/manual/page_m=
pm.html">MPM</a>. If you have been using RFNoC, you should
 able to use your existing blocks with no changes. The only change is=20
the name of the image bit files generated. <br></div><div>- These=20
filesystems do not include GNURadio. Adding GNURadio maint 3.7 means=20
adding python2 support on top of python3 which blows up the size of the=20
filesystem. In order to keep rootfs size small and have faster remote <a hr=
ef=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender">=
mender</a>
 updates, we decided to leave it out the default image. In order to use=20
GNURadio, custom images need to be created. We will add instructions for
 adding GNURadio to the manual/knowledge base soon. <br></div><div><p>Note
 that the SD card shipped with E310s does not contain the latest=20
filesystem images. In order to use the new filesystems, the SD=20
cards need to be manually flashed. You can download the filesystem and new =
SDK <a href=3D"http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.=
0.0-e310_prerelease" target=3D"_blank">here</a>. Follow the instructions in=
 <a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html" target=3D"_=
blank">E310 manual page</a>
 to burn a new SD card and get started. The manual page also contains a Mig=
ration Guide=20
to help setup the device and suggests possible changes to customer=20
applications. <br></p></div><div>Please let us know if you have any questio=
ns. You can report bugs here <a href=3D"https://github.com/EttusResearch/uh=
d/issues" target=3D"_blank">https://github.com/EttusResearch/uhd/issues</a>=
.</div><div><br></div><div>- Sugandha<br></div><div><br></div><div><br></di=
v>-- <br><div dir=3D"ltr" class=3D"m_2981159480886782629gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v>Sugandha Gupta</div>Senior FPGA/Software Engineer<div>Ettus Research, a N=
ational Instruments Brand</div><div><br></div><div><br></div></div></div></=
div></div></div>

--00000000000083f5390589aaee29--


--===============4162982630456203570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4162982630456203570==--

