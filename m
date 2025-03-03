Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E6A4C2F6
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 15:13:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A256385368
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 09:13:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741011180; bh=98EpipQD9Emj/rpll19rgGvR9kT9L0GwvmOQq5l/XVM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YgP0Bc7DA23wFfoQ5p/zrEExy1fICwLOfIVYCmaRW44q/VlXLrVicv4sWwNqYhuV8
	 w+THosSn9IBx5QuvsP2AKCFUXs+grg17IrkFY7VOeJTj20ZNVpnte9FUt3j3iudVxt
	 MEcb3VMwr0S1tWvxxH3NdlQwkKo62Wkq/Z4iDh32VmyNnesF4kO/c1NtMgqAOgQVmM
	 8m11mYhUyeelDXeQ8Rtxdpz9uxVdR2A/Y7Iv2OX9Mp5tobwsvBSh6Z+2jWFvmxHZFP
	 Q1dcQyXjDZ+jYJRI+jpWYFihY4jeKTtITMJMgv0E0X+62kfp7RT0EK+t1J9qaCWBuE
	 o8mAinLmv+9zQ==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DE45380A46
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 09:12:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="vuQqMEyw";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5050d19e9so4976408a12.3
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 06:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1741011149; x=1741615949; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BPLeBGN6YOB87kzW7FOIFFfFMKTom1/VItmbaCj7g9Y=;
        b=vuQqMEywhB/VPbvrgw7hhBbF1UY8eBboV3iOmtW7/ywHnUpPgmQCUKXa0eN6JwcxfG
         3SIuE8O4BFDySrzXQ79hflAHPa9vHGUR6wTv28rXeRCsyjlkjmrHpYXydz8kcke3f5KA
         UycSRMDLc9LfavLRLHc+pld9tGaBCKR8xVez6buecO3KbTQFYmwwKODkXTEW2OMZ4lI3
         dY7+TR4fISmjhGQarlKsUJpkD+97cIVoif4pOBWnRe7UgCp9RvEup8Ah/jw4m3RFbY2s
         7s7YFu326flHZgG2ml93BqLRmSYgBHy4q8Ru6BEJP3hJowEU6FCJevL3VSLMpKaoTg72
         PLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741011149; x=1741615949;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BPLeBGN6YOB87kzW7FOIFFfFMKTom1/VItmbaCj7g9Y=;
        b=vVuUCK1bxF6WnTfonCUdYyhyj40fWBqknnt6qsSd3eNPm4d5/Ozl6TtlkZ338JTiAV
         wlT5lvEJsOPAXs49Qob3ux+MOgSm3l4zBFUkNN+LND5bKOCbLPIsVVZHUW+gQFNrMxal
         Bu5vAigCLzyP2jmdqP29szZS6i3dzhhVlB/h9sZr8F2k6yglqdBaKmVYJn2Shh0HTPsC
         84BaXyXoa5JScJSZshqe8zkpVMxRy+3GQmEI2y6zo6OzwjXNT3nv7/EkAOS8giLeIcpE
         SIRupnlhzIdMyzAKFeWlNCiXoYCRYYfkjYJRTaqN2cAl8SWJLi0FtJtiZRmBdNiO4NWg
         W8Xw==
X-Gm-Message-State: AOJu0Yyn9QmhwG2bMVZfppYDQeuGhgLkkWQMsluXXvYD6AfBihgUkUrH
	oNL1RzHIksXmY7Ko7z88hGqCxHa1rhokkT3XP/oeqY7TQAeH94hnEpxyeSvinQlG+Bppf3w7g+2
	GuBckUOD721vDJVAjvnYCoqaSxYmoAzRHdOOi+fI/
X-Gm-Gg: ASbGncvZYMHwXLz/j4HYGU2xz77/0yuRCxvFXxDwH0peLzbIOWZcG137jAU20zNaZHK
	oY5ZRA6hX/MSlxSoe6j+N1G/oWopSEGLb3DBUEWz+naf9TyYeDYNadUBWIL2tYYtnlbDcKtxYPw
	4mg8ewPi/Z0VJAzo+2MZI7MfYdwQp1W9afVrbXTmVhjGbsCAmqzo2XwYY=
X-Google-Smtp-Source: AGHT+IFUGqrIlO7kmlwjM4fadcUE+Vk+P2S7LSFTl4BvLcjSBc9EDcwd4+D1PRkrv1vWy2sUk5pA97Fuu2bRNT3xYiY=
X-Received: by 2002:a17:906:1990:b0:abf:3e68:6583 with SMTP id
 a640c23a62f3a-abf3e6866f5mr1347013166b.41.1741011148782; Mon, 03 Mar 2025
 06:12:28 -0800 (PST)
MIME-Version: 1.0
References: <Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw@lists.ettus.com>
In-Reply-To: <Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 3 Mar 2025 15:12:17 +0100
X-Gm-Features: AQ5f1JqV6dG5tJnj-x-uDYba-fL6sn4aCo8gJxdxXE3LwzY9bTu-OOqQ5DWMgf0
Message-ID: <CAFOi1A4phtn6+7PxzTTONy_UUozgdTsKKz4VWGQ_fX8v4a87tA@mail.gmail.com>
To: philip.tustin@mediatek.com
Message-ID-Hash: 5QVIH3TVKAROGOUO5TOBTMGO6THMJNXD
X-Message-ID-Hash: 5QVIH3TVKAROGOUO5TOBTMGO6THMJNXD
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem running the MPM daemon & MPC Server
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QVIH3TVKAROGOUO5TOBTMGO6THMJNXD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8081172202362808799=="

--===============8081172202362808799==
Content-Type: multipart/alternative; boundary="00000000000012d64a062f70bfbe"

--00000000000012d64a062f70bfbe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Before we go down the rabbit hole of debugging, why are you doing this? Is
this to enable the simulator?

--M

On Tue, Feb 25, 2025 at 12:41=E2=80=AFAM philip.tustin--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> After building the MPM daemon, I am trying (currently unsuccessfully) to
> execute the MPM daemon & RPC server.
>
> The following MPM build sequence creates the file
> *=E2=80=98libusrp-periphs.so.4.8.0=E2=80=99* in the directory * =E2=80=98=
/usr/lib=E2=80=99*. In the same
> directory *=E2=80=98/usr/lib=E2=80=99*, the symlink *=E2=80=98libusrp-per=
iphs.so=E2=80=99* references
> *=E2=80=98libusrp-periphs.so.4.8.0=E2=80=99*.
>
> *cd uhd/mpm*
>
> *mkdir build*
>
> *cd build*
>
> *cmake ../*
>
> *sudo make -j2 install*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> I also see the shared object file *=E2=80=98libpyusrp_periphs.so=E2=80=98=
* located in the
> sub-directory *=E2=80=98/usr/lib/python3.10/site-packages/usrp_mpm=E2=80=
=99*.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> To start the MPM daemon and RPC server, I am executing the python file
> *=E2=80=98uhd/mpm/python/usrp_hwd.py=E2=80=99* using the following comman=
d.
>
> *python3 ./usrp_hwd.py*
>
> *Q. Is this how I should be starting the MPM daemon and RPC server ?*
>
> Note that this file does the following import.
>
> *import usrp_mpm.libpyusrp_periphs as lib*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> *This is the output I see on the command-line (see error at the end).*
>
> *Traceback (most recent call last):*
>
> * File "/home/mediatek/uhd2/uhd/mpm/python/./usrp_hwd.py", line 15, in
> <module>*
>
> * import usrp_mpm as mpm*
>
> * File "/usr/local/lib/python3.10/site-packages/usrp_mpm/__init__.py",
> line 25, in <module>*
>
> * from . import periph_manager*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/periph_manager/__init__=
.py",
> line 14, in <module>*
>
> * from .base import PeriphManagerBase*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/periph_manager/base.py"=
,
> line 24, in <module>*
>
> * from usrp_mpm.xports import XportAdapterMgr*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/__init__.py", li=
ne
> 11, in <module>*
>
> * from .xport_adapter_mgr import XportAdapterMgr*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/xport_adapter_mg=
r.py",
> line 15, in <module>*
>
> * from .xport_adapter_ctrl import XportAdapterCtrl*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/xport_adapter_ct=
rl.py",
> line 15, in <module>*
>
> * from usrp_mpm.sys_utils.uio import UIO*
>
> * File
> "/usr/local/lib/python3.10/site-packages/usrp_mpm/sys_utils/uio.py", line
> 14, in <module>*
>
> * import usrp_mpm.libpyusrp_periphs as lib*
>
> *ModuleNotFoundError: No module named 'usrp_mpm.libpyusrp_periphs'.*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> I confirmed that the directory *=E2=80=98/usr/lib/python3.10/site-package=
s*=E2=80=98 is
> in the path. It SHOULD therefore be found when using the following import
> statement.
>
> *import usrp_mpm.libpyusrp_periphs as lib*
>
> *Q. Any idea why this is NOT working for me ?*
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000012d64a062f70bfbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Before we go down the rabbit hole of debugging, why a=
re you doing this? Is this to enable the simulator?</div><div><br></div><di=
v>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25, 2025 at 12:41=E2=80=AFAM p=
hilip.tustin--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hello,<br><br>After building the MPM da=
emon, I am trying (currently unsuccessfully) to execute the MPM daemon &amp=
; RPC server.<br><br>The following MPM build sequence creates the file <str=
ong>=E2=80=98libusrp-periphs.so.4.8.0=E2=80=99</strong> in the directory <s=
trong> =E2=80=98/usr/lib=E2=80=99</strong>. In the same directory <strong>=
=E2=80=98/usr/lib=E2=80=99</strong>, the symlink <strong>=E2=80=98libusrp-p=
eriphs.so=E2=80=99</strong> references <strong>=E2=80=98libusrp-periphs.so.=
4.8.0=E2=80=99</strong>.</p><p><em>cd uhd/mpm</em></p><p><em>mkdir build</e=
m></p><p><em>cd build</em></p><p><em>cmake ../</em></p><p><em>sudo make -j2=
 install</em></p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>I also see the sh=
ared object file <strong>=E2=80=98libpyusrp_periphs.so=E2=80=98</strong> lo=
cated in the sub-directory <strong>=E2=80=98/usr/lib/python3.10/site-packag=
es/usrp_mpm=E2=80=99</strong>.</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>To start the MPM daemon and RPC server, I am executing the python file <st=
rong>=E2=80=98uhd/mpm/python/usrp_hwd.py=E2=80=99</strong> using the follow=
ing command.</p><p><em><strong>python3 ./usrp_hwd.py</strong></em><br><br><=
/p><p><strong>Q. Is this how I should be starting the MPM daemon and RPC se=
rver ?</strong></p><p>Note that this file does the following import.</p><p>=
<em><strong>import usrp_mpm.libpyusrp_periphs as lib</strong></em></p><p>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br><strong>This is the output I see o=
n the command-line (see error at the end).</strong><br><br><em>Traceback (m=
ost recent call last):</em></p><p><em>  File &quot;/home/mediatek/uhd2/uhd/=
mpm/python/./usrp_hwd.py&quot;, line 15, in &lt;module&gt;</em></p><p><em> =
   import usrp_mpm as mpm</em></p><p><em>  File &quot;/usr/local/lib/python=
3.10/site-packages/usrp_mpm/__init__.py&quot;, line 25, in &lt;module&gt;</=
em></p><p><em>    from . import periph_manager</em></p><p><em>  File &quot;=
/usr/local/lib/python3.10/site-packages/usrp_mpm/periph_manager/__init__.py=
&quot;, line 14, in &lt;module&gt;</em></p><p><em>    from .base import Per=
iphManagerBase</em></p><p><em>  File &quot;/usr/local/lib/python3.10/site-p=
ackages/usrp_mpm/periph_manager/base.py&quot;, line 24, in &lt;module&gt;</=
em></p><p><em>    from usrp_mpm.xports import XportAdapterMgr</em></p><p><e=
m>  File &quot;/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/__in=
it__.py&quot;, line 11, in &lt;module&gt;</em></p><p><em>    from .xport_ad=
apter_mgr import XportAdapterMgr</em></p><p><em>  File &quot;/usr/local/lib=
/python3.10/site-packages/usrp_mpm/xports/xport_adapter_mgr.py&quot;, line =
15, in &lt;module&gt;</em></p><p><em>    from .xport_adapter_ctrl import Xp=
ortAdapterCtrl</em></p><p><em>  File &quot;/usr/local/lib/python3.10/site-p=
ackages/usrp_mpm/xports/xport_adapter_ctrl.py&quot;, line 15, in &lt;module=
&gt;</em></p><p><em>    <strong>from usrp_mpm.sys_utils.uio import UIO</str=
ong></em></p><p><em><strong>  File &quot;/usr/local/lib/python3.10/site-pac=
kages/usrp_mpm/sys_utils/uio.py&quot;, line 14, in &lt;module&gt;</strong><=
/em></p><p><em><strong>    import usrp_mpm.libpyusrp_periphs as lib</strong=
></em></p><p><em><strong>ModuleNotFoundError: No module named &#39;usrp_mpm=
.libpyusrp_periphs&#39;.</strong></em><br><br></p><p>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>I confirmed that the directory <strong>=E2=80=98/usr/lib/py=
thon3.10/site-packages</strong>=E2=80=98 is in the path. It SHOULD therefor=
e be found when using the following import statement. </p><p><em><strong>im=
port usrp_mpm.libpyusrp_periphs as lib</strong></em><br><br><strong>Q. Any =
idea why this is NOT working for me ?</strong><br><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000012d64a062f70bfbe--

--===============8081172202362808799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8081172202362808799==--
