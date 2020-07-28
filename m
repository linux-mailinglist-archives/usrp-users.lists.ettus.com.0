Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19789230BE0
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 15:57:31 +0200 (CEST)
Received: from [::1] (port=57440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0Q6g-0002rT-Qv; Tue, 28 Jul 2020 09:57:26 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:36329)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k0Q6d-0002gW-0F
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 09:57:23 -0400
Received: by mail-oi1-f177.google.com with SMTP id s144so7591045oie.3
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 06:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RZOC/9/hGaL2WYFFTb7cr4zhPcBINi7he9/nm+qqSu8=;
 b=ayJr1wEBK/N3RDDuuH4EgamO/uYl/XtmjPJ301F88Dl7nig/I1hzo//8xYrnUmLE8e
 pzqP/7lX7m1+KxGa67qhGv7H0trixg8UDY1SLU4ObcSIp/OUjKRiyjYSsAPXzZLedPik
 165bRB1dUr89iIzwUAMO2u91chMJIgKpQwNoHqDWmlc42jrB9icCEAybfFIvaG/lWIAv
 CD6jtUCEqCqiV0txtgMhec9XVeqNUZBAaHLPlsWmB7YVd8Vf45V6ruXTJ96RSx2Fktyc
 LvJWhkLj2qhGf7ANeJ4X29fYX2iNr/hjl8g7ofA2WXkSfj83KTeeGDnL+WG+tQcg5CJg
 tKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RZOC/9/hGaL2WYFFTb7cr4zhPcBINi7he9/nm+qqSu8=;
 b=ORH4zbUVJuMhvsnLoI5CRniME9lDu1g6DC4r4NoO8gYbj3AlONkFr5E1YfkTtfevXV
 LT/IWD199yZy3HNnov6XhGjaeWqg9LpdhgurOMRuflbJ5r5LRTIiq9k/PP6KYEOmH3d1
 UmLkpTnhAZ26eYRj/TUxtnBI1Ryc+2vO53TGyPcSRExIiH6FWLgHbRCl9QsagwJM/xOG
 tZTsorggqa0AZ/qRhV7z/z7Boq+2MYU4+ZczqAEijqexTBjWnIsFmhCoz8surULsmym2
 vctEoXVC1oAADpggr8xUnMmxENPS7hLHs5Cz/Swm7ldVhuIqR+t+he5s31lG17AIZGZG
 8F5A==
X-Gm-Message-State: AOAM531vRj8y4piUeHaSUssjPccRmcpXrH/NFSMhbghWf8b9dWBOYVIP
 rfAPF3zoasLKTWgZLo+jssHdGh4Y8g9TJ9FeIkJIqwZ3
X-Google-Smtp-Source: ABdhPJwt13yDCbKHOUFmbKfm+IrtmwgTu6WVLytTYIutDnmaxrLlgW2MQA2c4Ijk/p0cE1yrIcAkfwammtcguA9fOIU=
X-Received: by 2002:aca:524c:: with SMTP id g73mr3473806oib.150.1595944602087; 
 Tue, 28 Jul 2020 06:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
In-Reply-To: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
Date: Tue, 28 Jul 2020 09:56:31 -0400
Message-ID: <CAB__hTTTp5t8=VTZLnyZQGXwvy_WoUS1t=BjE00Npd7Dmua6OQ@mail.gmail.com>
To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="00000000000017530005ab80cf0c"
Subject: Re: [USRP-users] Issues generating and loading bitstreams with
 RFNoC blocks (UHD-3.15.LTS)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

--00000000000017530005ab80cf0c
Content-Type: multipart/alternative; boundary="0000000000001752fd05ab80cf0a"

--0000000000001752fd05ab80cf0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Try this patch file.  I received from Ettus a long time ago (Oct 2019?) but
it appears that it is still not fixed.
Rob

On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
> I=E2=80=99m working on getting a solid workflow to build and use RFNoC bl=
ocks. I=E2=80=99m
> using branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3.7 (also, pack=
et
> gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS branch=
).
> I=E2=80=99m using an E310 (SG1), with the SD image I get with
> =E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.sd=
img). Also, I=E2=80=99m
> running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3 installed.
>
> A couple of weeks ago I started trying to follow the =E2=80=98Getting Sta=
rted with
> RFNoC Development=E2=80=99 guide, and tried using rfnoc-devel and master =
branches,
> but it seems like this UHD-3.15.LTS is the one working the best for me, b=
ut
> I still have some issues.
>
> Following the guide, I built a custom block (gain), which I was able to
> get through the testbench (after quite a bit of attempts), but when tryin=
g
> to generate a bitstream (.bit file) with my gain block I got the followin=
g
> errors:
>
>
>     ~/rfnoc_UHD315/src/uhd-fpga/usrp3/tools/scripts$
> ./uhd_image_builder.py gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial/ -d
> e31x -t E310_RFNOC -m 4 =E2=80=93fill-with-fifos
>
>      .
>
>      .
>
>      .
>
>      ERROR: [Synth 8-439] module 'noc_block_gain' not found
> [/home/jarroyo/rfnoc_UHD315/
> src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst_e31x.v:20]
>
>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x_core'
> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]
>
>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x'
> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]
>
>      [00:01:46] Current task: Synthesis +++ Current Phase: Starting
>
>      ERROR: [Common 17-69] Command failed: Synthesis failed - please see
> the console or run log file for details
>
>      [00:01:46] Current task: Synthesis +++ Current Phase: Finished
>
>      [00:01:46] Process terminated. Status: Failure
>
>
> If it is useful information, I was able to successfully generate a
> bitstream with existing RFNoC blocks (=E2=80=98./uhd_image_builder.py win=
dow fft -d
> e31x -t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, is=
 working), so
> that=E2=80=99s why I guess my main issue is with the gain custom block.
>
>
> Also, another issue I=E2=80=99m having is using uhd_image_loader on the E=
310
> terminal when loading my own bitstreams:
>
>
>      root@ni-e31x:~# uhd_image_loader
> --args=3D"type=3De3xx,addr=3D192.168.10.2" --fpga-path
> /usr/share/uhd/images/e31x.bit
>
>      [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-0-gaea0e2de
>
>      No applicable UHD devices found
>
>
> Is there anything I might be doing wrong? Or is this workflow with these
> branches and tool versions not the most appropiate currently?
>
>
> Thanks in advance,
>
>
> Jorge
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001752fd05ab80cf0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try this patch file.=C2=A0 I received from Ettus a long ti=
me ago (Oct 2019?) but it appears that it is still not fixed.<div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">


=09
	<span></span>
=09
=09


<p style=3D"margin-bottom:0cm;line-height:100%">Hi,</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">I=E2=80=99m working on
getting a solid workflow to build and use RFNoC blocks. I=E2=80=99m using
branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3.7 (also, packet
gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS
branch). I=E2=80=99m using an E310 (SG1), with the SD image I get with
=E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.sdim=
g).
Also, I=E2=80=99m running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3
installed.</p>

<p style=3D"margin-bottom:0cm;line-height:100%">A couple of weeks
ago I started trying to follow the =E2=80=98Getting Started with RFNoC
Development=E2=80=99 guide, and tried using rfnoc-devel and master
branches, but it seems like this UHD-3.15.LTS is the one working the
best for me, but I still have some issues.</p>

<p style=3D"margin-bottom:0cm;line-height:100%">Following the guide,
I built a custom block (gain), which I was able to get through the
testbench (after quite a bit of attempts), but when trying to
generate a bitstream (.bit file) with my gain block I got the
following errors:</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br></p><p style=3D"margin-=
bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0 ~/rfnoc_UHD315/src/uhd-fpga=
/usrp3/tools/scripts$
./uhd_image_builder.py gain fft -I
	~/rfnoc_UHD315/src/rfnoc-tutorial/ -d e31x -t E310_RFNOC -m 4
=E2=80=93fill-with-fifos
</p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=
=A0 .</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 .<=
/p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 .<=
br></p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=
=C2=A0 ERROR: [Synth
8-439] module &#39;noc_block_gain&#39; not found
[/home/jarroyo/rfnoc_UHD315/	src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst=
_e31x.v:20]
</p><p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=
=A0 ERROR: [Synth
8-6156] failed synthesizing module &#39;e31x_core&#39;
	[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]</p=
>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 ER=
ROR: [Synth
8-6156] failed synthesizing module &#39;e31x&#39;
	[/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Current
task: Synthesis +++ Current Phase: Starting</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 ER=
ROR: [Common
17-69] Command failed: Synthesis failed - please see the console or
run 	log file for details</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Current
task: Synthesis +++ Current Phase: Finished</p>
<p style=3D"margin-bottom:0cm;line-height:100%">=C2=A0=C2=A0=C2=A0=C2=A0 [0=
0:01:46] Process
terminated. Status: Failure</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">If it is useful
information, I was able to successfully generate a bitstream with
existing RFNoC blocks (=E2=80=98./uhd_image_builder.py window fft -d e31x
-t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, is workin=
g), so
that=E2=80=99s why I guess my main issue is with the gain custom block.</p>

<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Also, another issue
I=E2=80=99m having is using uhd_image_loader on the E310 terminal when
loading my own bitstreams:</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 root@ni-e31x:~# uhd_image_loader
--args=3D&quot;type=3De3xx,addr=3D192.168.10.2&quot; --fpga-path
	/usr/share/uhd/images/e31x.bit</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
UHD_3.15.0.0-0-gaea0e2de</p>
<p style=3D"margin-bottom:0.25cm;line-height:115%">=C2=A0=C2=A0=C2=A0=C2=A0=
 No applicable UHD devices found</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>

<p style=3D"margin-bottom:0cm;line-height:100%">Is there anything I
might be doing wrong? Or is this workflow with these branches and
tool versions not the most appropiate currently?</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Thanks in advance,</p>
<p style=3D"margin-bottom:0cm;line-height:100%"><br>

</p>
<p style=3D"margin-bottom:0cm;line-height:100%">Jorge</p>

</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001752fd05ab80cf0a--
--00000000000017530005ab80cf0c
Content-Type: text/x-patch; charset="US-ASCII"; name="fix_rfnoc_build.patch"
Content-Disposition: attachment; filename="fix_rfnoc_build.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kd606u3u0>
X-Attachment-Id: f_kd606u3u0

ZGlmZiAtLWdpdCBhL3VzcnAzL3Rvb2xzL3NjcmlwdHMvdWhkX2ltYWdlX2J1aWxkZXIucHkgYi91
c3JwMy90b29scy9zY3JpcHRzL3VoZF9pbWFnZV9idWlsZGVyLnB5CmluZGV4IDIzYmZhMmQ5Li4x
NTg3ZGQyNSAxMDA3NTUKLS0tIGEvdXNycDMvdG9vbHMvc2NyaXB0cy91aGRfaW1hZ2VfYnVpbGRl
ci5weQorKysgYi91c3JwMy90b29scy9zY3JpcHRzL3VoZF9pbWFnZV9idWlsZGVyLnB5CkBAIC0z
MDMsMjQgKzMwMywxOCBAQCBkZWYgY3JlYXRlX29vdF9pbmNsdWRlKGRldmljZSwgaW5jbHVkZV9k
aXJzKToKICAgICAgICAgICAgIGN1cnJwYXRoID0gb3MucGF0aC5hYnNwYXRoKHN0cihkaXJzKSkK
ICAgICAgICAgICAgIGlmIG9zLnBhdGguaXNkaXIoY3VycnBhdGgpICYgKG9zLnBhdGguYmFzZW5h
bWUoY3VycnBhdGgpID09ICJyZm5vYyIpOgogICAgICAgICAgICAgICAgICMgQ2FzZSAxOiBQb2lu
dGVkIGRpcmVjdGx5IHRvIHJmbm9jIGRpcmVjdG9yeQotICAgICAgICAgICAgICAgIG9vdF9wYXRo
ID0gY3VycnBhdGgKKyAgICAgICAgICAgICAgICBvb3RfcGF0aCA9IG9zLnBhdGguZGlybmFtZShj
dXJycGF0aCkKICAgICAgICAgICAgIGVsaWYgb3MucGF0aC5pc2Rpcihvcy5wYXRoLmpvaW4oY3Vy
cnBhdGgsICdyZm5vYycpKToKICAgICAgICAgICAgICAgICAjIENhc2UgMjogUG9pbnRlZCB0byB0
b3AgbGV2ZWwgcmZub2MgbW9kdWxlIGRpcmVjdG9yeQotICAgICAgICAgICAgICAgIG9vdF9wYXRo
ID0gb3MucGF0aC5qb2luKGN1cnJwYXRoLCAncmZub2MnKQotICAgICAgICAgICAgZWxpZiBvcy5w
YXRoLmlzZmlsZShvcy5wYXRoLmpvaW4oY3VycnBhdGgsICdNYWtlZmlsZS5pbmMnKSk6Ci0gICAg
ICAgICAgICAgICAgIyBDYXNlIDM6IFBvaW50ZWQgdG8gYSByYW5kb20gZGlyZWN0b3J5IHdpdGgg
YSBNYWtlZmlsZS5pbmMKICAgICAgICAgICAgICAgICBvb3RfcGF0aCA9IGN1cnJwYXRoCiAgICAg
ICAgICAgICBlbHNlOgogICAgICAgICAgICAgICAgIHByaW50KCdObyBSRk5vQyBtb2R1bGUgZm91
bmQgYXQgJyArIG9zLnBhdGguYWJzcGF0aChjdXJycGF0aCkpCiAgICAgICAgICAgICAgICAgY29u
dGludWUKICAgICAgICAgICAgIGlmIG9vdF9wYXRoIG5vdCBpbiBvb3RfZGlyX2xpc3Q6CiAgICAg
ICAgICAgICAgICAgb290X2Rpcl9saXN0LmFwcGVuZChvb3RfcGF0aCkKLSAgICAgICAgICAgICAg
ICBuYW1lZF9wYXRoID0gb3MucGF0aC5qb2luKCckKEJBU0VfRElSKScsIGdldF9yZWxhdGl2ZV9w
YXRoKGdldF9iYXNlZGlyKCksIG9vdF9wYXRoKSkKKyAgICAgICAgICAgICAgICBuYW1lZF9wYXRo
ID0gb3MucGF0aC5qb2luKCckKEJBU0VfRElSKScsIGdldF9yZWxhdGl2ZV9wYXRoKGdldF9iYXNl
ZGlyKCksIG9vdF9wYXRoKSwgJ3Jmbm9jJykKICAgICAgICAgICAgICAgICBpbmNmaWxlLndyaXRl
KE9PVF9ESVJfVE1QTC5mb3JtYXQob290X2Rpcj1uYW1lZF9wYXRoKSkKLSAgICAgICAgICAgICAg
ICBpZiBvcy5wYXRoLmlzZmlsZShvcy5wYXRoLmpvaW4ob290X3BhdGgsICdNYWtlZmlsZS5pbmMn
KSk6Ci0gICAgICAgICAgICAgICAgICAgICMgQ2hlY2sgZm9yIE1ha2VmaWxlLmluYwotICAgICAg
ICAgICAgICAgICAgICBpbmNmaWxlLndyaXRlKE9PVF9JTkNfVE1QTCkKLSAgICAgICAgICAgICAg
ICBlbGlmIG9zLnBhdGguaXNmaWxlKG9zLnBhdGguam9pbihvb3RfcGF0aCwgJ3Jmbm9jJywgJ01h
a2VmaWxlLmluYycpKToKKyAgICAgICAgICAgICAgICBpZiBvcy5wYXRoLmlzZmlsZShvcy5wYXRo
LmpvaW4ob290X3BhdGgsICdyZm5vYycsICdNYWtlZmlsZS5pbmMnKSk6CiAgICAgICAgICAgICAg
ICAgICAgICMgQ2hlY2sgZm9yIE1ha2VmaWxlLmluYwogICAgICAgICAgICAgICAgICAgICBpbmNm
aWxlLndyaXRlKE9PVF9JTkNfVE1QTCkKICAgICAgICAgICAgICAgICBlbGlmIG9zLnBhdGguaXNm
aWxlKG9zLnBhdGguam9pbihvb3RfcGF0aCwgJ3Jmbm9jJywgJ2ZwZ2Etc3JjJywgJ01ha2VmaWxl
LnNyY3MnKSk6CkBAIC00NDYsOCArNDQwLDcgQEAgZGVmIGRldmljZV9kaWN0KGFyZ3MpOgogICAg
ICAgICAnZTMxMCc6J2UzMDAnLAogICAgICAgICAnZTMyMCc6J2UzMjAnLAogICAgICAgICAnbjMw
MCc6J24zeHgnLAotICAgICAgICAnbjMxMCc6J24zeHgnLAotICAgICAgICAnbjMyMCc6J24zeHgn
CisgICAgICAgICduMzEwJzonbjN4eCcKICAgICB9CiAgICAgcmV0dXJuIGJ1aWxkX2Rpclthcmdz
XQogCmRpZmYgLS1naXQgYS91c3JwMy90b3AvbjN4eC9NYWtlZmlsZS5uM3h4LmluYyBiL3VzcnAz
L3RvcC9uM3h4L01ha2VmaWxlLm4zeHguaW5jCmluZGV4IDlhOGU5ZWMxLi5kZGZhNmU1YSAxMDA2
NDQKLS0tIGEvdXNycDMvdG9wL24zeHgvTWFrZWZpbGUubjN4eC5pbmMKKysrIGIvdXNycDMvdG9w
L24zeHgvTWFrZWZpbGUubjN4eC5pbmMKQEAgLTM2LDggKzM2LDggQEAgaW5jbHVkZSAkKExJQl9E
SVIpL2F4aS9NYWtlZmlsZS5zcmNzCiBpbmNsdWRlICQoTElCX0RJUikvcmFkaW8vTWFrZWZpbGUu
c3JjcwogaW5jbHVkZSAkKExJQl9ESVIpL3doaXRlX3JhYmJpdC93cl9jb3Jlc192NF8yL01ha2Vm
aWxlLnNyY3MKIGluY2x1ZGUgJChMSUJfRElSKS9yZm5vYy9NYWtlZmlsZS5zcmNzCi1pbmNsdWRl
ICQoQkFTRV9ESVIpL24zeHgvTWFrZWZpbGUuT09ULmluYwogaW5jbHVkZSAkKEJBU0VfRElSKS9u
M3h4L01ha2VmaWxlLnNyY3MKK2luY2x1ZGUgJChCQVNFX0RJUikvbjN4eC9NYWtlZmlsZS5PT1Qu
aW5jCiBpbmNsdWRlICQoQkFTRV9ESVIpL24zeHgvZGJvYXJkcy9yaC9NYWtlZmlsZS5zcmNzCiBp
bmNsdWRlICQoQkFTRV9ESVIpL24zeHgvZGJvYXJkcy9tZy9NYWtlZmlsZS5zcmNzCiBpbmNsdWRl
ICQoQkFTRV9ESVIpL24zeHgvZGJvYXJkcy9laXNjYXQvTWFrZWZpbGUuc3Jjcwo=
--00000000000017530005ab80cf0c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--00000000000017530005ab80cf0c--

