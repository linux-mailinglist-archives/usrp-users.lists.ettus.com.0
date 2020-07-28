Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85770230DB6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 17:26:26 +0200 (CEST)
Received: from [::1] (port=58190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0RUk-0000LU-JK; Tue, 28 Jul 2020 11:26:22 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:45223)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1k0RUg-0000En-Ij
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 11:26:18 -0400
Received: by mail-ot1-f41.google.com with SMTP id h1so15131931otq.12
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 08:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4QtketuUfksf+G604ArIvidvpbB7Fp0Pl72Qihjs8o4=;
 b=ZzL9tANAWQtFGrBF9eFktwX4P3U0DLNDtqkB1liJDXmW0KnVUtgRLSMn+BebyU2r6e
 ewTVpMJRNg1svG6lq6ntClCeojfDQV1Kk5ZJsyCMJsk8JcPXe1aMaDPulJai5p2ckob4
 L2mqeUrmIOjQdaW0PybcjnGccpl4s8uz+jmmqKkRct+XZfY4c0Aup0XHYzgavjFCg1Hf
 f6gqCLJxDsxno74wpX/3M4SIY9wl34rZ3oc0AoN5GHXTEWmpF0RFgc0lX6gh2Q3ATuvu
 6XgsNWOIFnzu5dkLA5/363lJsAQtJLKs2/Q4SIqA7vCOvM6wR/p3LBqg3hb5rtiO2GFo
 yS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4QtketuUfksf+G604ArIvidvpbB7Fp0Pl72Qihjs8o4=;
 b=HULZVUMnLgdH4QMt70O0YWv+6Pwffqy8RYz2TyQ+mu37GefpBLwvzTnvKWSWaQRKOh
 nOV0SBfYZMH8J2FbHXUJhtbwX3Maa4Q1s7TSBzsh3tzfAofiFqPqBOTWboI31KclE6lH
 JAifDQc4fiasfmcxw1RsiU4WFcOj5bX+oPkR4XLkXiLerFajJevOY1wgDFrPOucjKcmr
 Iti7GaybDco3avGvlv/4h45LBdg3TWn5zc9cxjxTdN4MF09LcD4WeYLURNOgIoONUeIS
 cVk30QSy+irZEW/75AoFzevxbJMlojAHZWLl3N9lPJsocYXAYJhFY462r+XSiNaRs3SC
 h9uw==
X-Gm-Message-State: AOAM533O0oPVbHfNohSnAHz4NoSbsKCaXMELE2rn4EXSs14ZRyRS3jy2
 uDAC1fPJW4U4mrdPZHTBlrzOApog7RNXB3caRxHWrA==
X-Google-Smtp-Source: ABdhPJxSf9pqwnOXjvLeGJkPHT8UOKqTT8afjWi6CnxOKX+cP2MGFyQNqvWYNfNRqsNb666W63RtNO/PbK9+Sv4uQIw=
X-Received: by 2002:a9d:630f:: with SMTP id q15mr24066229otk.337.1595949937727; 
 Tue, 28 Jul 2020 08:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
 <CAB__hTTTp5t8=VTZLnyZQGXwvy_WoUS1t=BjE00Npd7Dmua6OQ@mail.gmail.com>
In-Reply-To: <CAB__hTTTp5t8=VTZLnyZQGXwvy_WoUS1t=BjE00Npd7Dmua6OQ@mail.gmail.com>
Date: Tue, 28 Jul 2020 17:25:26 +0200
Message-ID: <CAOx6OK179enDrLv+0qtQ+k_jxeWtV6pBOpgzxWTSkc3_BKor1A@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users@lists.ettus.com
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============0021628775139069610=="
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

--===============0021628775139069610==
Content-Type: multipart/alternative; boundary="0000000000001e449005ab820d6f"

--0000000000001e449005ab820d6f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks a lot for your patch file, but unfortunately I'm still getting the
same errors when trying to use custom RFNoC blocks with
uhd_image_builder.py.

Any other help would be greatly appreciated,

Jorge

El mar., 28 jul. 2020 a las 15:56, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:

> Try this patch file.  I received from Ettus a long time ago (Oct 2019?)
> but it appears that it is still not fixed.
> Rob
>
> On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>>
>> I=E2=80=99m working on getting a solid workflow to build and use RFNoC b=
locks.
>> I=E2=80=99m using branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3.=
7 (also, packet
>> gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS branc=
h).
>> I=E2=80=99m using an E310 (SG1), with the SD image I get with
>> =E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.s=
dimg). Also, I=E2=80=99m
>> running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3 installed.
>>
>> A couple of weeks ago I started trying to follow the =E2=80=98Getting St=
arted
>> with RFNoC Development=E2=80=99 guide, and tried using rfnoc-devel and m=
aster
>> branches, but it seems like this UHD-3.15.LTS is the one working the bes=
t
>> for me, but I still have some issues.
>>
>> Following the guide, I built a custom block (gain), which I was able to
>> get through the testbench (after quite a bit of attempts), but when tryi=
ng
>> to generate a bitstream (.bit file) with my gain block I got the followi=
ng
>> errors:
>>
>>
>>     ~/rfnoc_UHD315/src/uhd-fpga/usrp3/tools/scripts$
>> ./uhd_image_builder.py gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial/ -d
>> e31x -t E310_RFNOC -m 4 =E2=80=93fill-with-fifos
>>
>>      .
>>
>>      .
>>
>>      .
>>
>>      ERROR: [Synth 8-439] module 'noc_block_gain' not found
>> [/home/jarroyo/rfnoc_UHD315/
>> src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst_e31x.v:20]
>>
>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x_core'
>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]
>>
>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x'
>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]
>>
>>      [00:01:46] Current task: Synthesis +++ Current Phase: Starting
>>
>>      ERROR: [Common 17-69] Command failed: Synthesis failed - please see
>> the console or run log file for details
>>
>>      [00:01:46] Current task: Synthesis +++ Current Phase: Finished
>>
>>      [00:01:46] Process terminated. Status: Failure
>>
>>
>> If it is useful information, I was able to successfully generate a
>> bitstream with existing RFNoC blocks (=E2=80=98./uhd_image_builder.py wi=
ndow fft -d
>> e31x -t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, i=
s working), so
>> that=E2=80=99s why I guess my main issue is with the gain custom block.
>>
>>
>> Also, another issue I=E2=80=99m having is using uhd_image_loader on the =
E310
>> terminal when loading my own bitstreams:
>>
>>
>>      root@ni-e31x:~# uhd_image_loader
>> --args=3D"type=3De3xx,addr=3D192.168.10.2" --fpga-path
>> /usr/share/uhd/images/e31x.bit
>>
>>      [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
>> UHD_3.15.0.0-0-gaea0e2de
>>
>>      No applicable UHD devices found
>>
>>
>> Is there anything I might be doing wrong? Or is this workflow with these
>> branches and tool versions not the most appropiate currently?
>>
>>
>> Thanks in advance,
>>
>>
>> Jorge
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000001e449005ab820d6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Tha=
nks a lot for your patch file, but unfortunately I&#39;m still getting the =
same errors when trying to use custom RFNoC blocks with uhd_image_builder.p=
y.</div><div><br></div><div>Any other help would be greatly appreciated,</d=
iv><div><br></div><div>Jorge<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">El mar., 28 jul. 2020 a las 15:56, Ro=
b Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) =
escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Try this patch file.=C2=A0 I received from Ettus a long tim=
e ago (Oct 2019?) but it appears that it is still not fixed.<div>Rob</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">


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
</blockquote></div><br></div>

--0000000000001e449005ab820d6f--


--===============0021628775139069610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0021628775139069610==--

