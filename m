Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD82E232659
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jul 2020 22:42:22 +0200 (CEST)
Received: from [::1] (port=42734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0su3-0006Jp-9F; Wed, 29 Jul 2020 16:42:19 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:40242)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1k0stz-0006Cz-Ry
 for usrp-users@lists.ettus.com; Wed, 29 Jul 2020 16:42:15 -0400
Received: by mail-ot1-f45.google.com with SMTP id c25so18490012otf.7
 for <usrp-users@lists.ettus.com>; Wed, 29 Jul 2020 13:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X4YKwSLbTIwM901N8tycQphuOKAO2/dxmqeF/YJL9xo=;
 b=j5bIKSL7NUoSJotaV5/uKzu1ebn3lfE5kYryRybnw2r+kXz+qgEEzdzjd307zhocKe
 RGb/r8ACfRaQbWFvie8ldzOUNUHPx1iWzqS4P7mcvTDl/Rf9JyZOOChnRsR4tr0KIbER
 TXd4W2hwIEJzbj9AegFupTsu1BucOkggpNMggw44lmWHkrB2SUEifQ5sFB00da4YRYYo
 DrT3tuaa5amdWBATpxegKqNS1UGjd22rnuai5O/p68y4UbWhX+4oSbew8pMpORXDwHX1
 Xah6EHqU62EmYVg6xRabF6TH0hODVrNDUMa5uuVnKy7cUla4BSMkeJM0mamg5Go5lZou
 R4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X4YKwSLbTIwM901N8tycQphuOKAO2/dxmqeF/YJL9xo=;
 b=Q9pyiRuVCZdMz8+/i117n5IYAB/FMlD5m0PYZcMkK5hLg7tX08kQMT4vFQAgkHET/F
 MKQWHRJuIXKg5JfotYdNWRFQb5eacZKVQf5vBkvw66T/qbzuRRjCl4QC40shQqEAvyfH
 /Kaen2OFVBNqKLeP3ny+rxjnsdyFZDRpS5Wk4MDoGUZZL8gcJGU8OQiV3Bjfu3lCEMC9
 kc4A9umSt3pNOIjiSW06XudZGLkpbZ5zx1Gp/t0BN7j7f7+Hxv/+UG6bldQgjRU2yZwX
 9IcoZzkNLfuE9lLk6sOkuO/s1u8dxNokCL5L53typLH8vpF9DB76lC7waBBUcg5qRKo1
 3z0w==
X-Gm-Message-State: AOAM532KaalSFseTOkD66SzD/g7lXa5AdAp8+7wbSEmZMGExRcEHAQK8
 Xlpbt6TbFUF4ehKAa4OUBnwpFPRvvmsiTzRt8cQ7bQ==
X-Google-Smtp-Source: ABdhPJyOAbSYVRJiKEQkiP0X3oOgP4HU+EFujeW+sfT3EnC5pGcoY3rsyz0Gxdc4F+CN2nkUCy+a5cKo+j0/5jWDk/E=
X-Received: by 2002:a05:6830:1d62:: with SMTP id
 l2mr28156246oti.24.1596055294899; 
 Wed, 29 Jul 2020 13:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
 <CAB__hTTTp5t8=VTZLnyZQGXwvy_WoUS1t=BjE00Npd7Dmua6OQ@mail.gmail.com>
 <CAOx6OK179enDrLv+0qtQ+k_jxeWtV6pBOpgzxWTSkc3_BKor1A@mail.gmail.com>
 <CAB__hTSfSyVoy+KyKs1Q0JcksqL68+--5mU6RurPtQ50jWXuPg@mail.gmail.com>
In-Reply-To: <CAB__hTSfSyVoy+KyKs1Q0JcksqL68+--5mU6RurPtQ50jWXuPg@mail.gmail.com>
Date: Wed, 29 Jul 2020 22:41:23 +0200
Message-ID: <CAOx6OK3oP7Brh=ZoaZDa2AVz-n7nFPNFUkVrvFKVZBxoRp_T0A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0555750849229986249=="
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

--===============0555750849229986249==
Content-Type: multipart/alternative; boundary="000000000000e50d2205ab9a9444"

--000000000000e50d2205ab9a9444
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

After a while understanding how uhd_image_builder.py works, I couldn't
figure out a way to fix the "create_oot_include" function, but I managed to
make uhd_image_builder.py find my OOT block (noc_block_gain.v). Maybe it's
not the most elegant way to do it, but it worked for me.

I copied my noc_block_gain.v file (after making sure it passed the
testbench) to the /uhd-fpga/usrp3/lib/rfnoc folder, and added the following
line to the Makefile.srcs from that same folder, in the same way the other
blocks are added:
        noc_block_gain.v \

After doing that, I was able to successfully generate my bitstream with
'./uhd_image_builder.py gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial -d
e31x -t E310_RFNOC -m 3 --fill-with-fifos'.

Also, in case it's useful, I was also able to fix the uhd_image_loader
issue I mentioned I had with the E310, changing the IP address to localhost
worked just fine (--args=3D"type=3De3xx,addr=3D127.0.0.1").

Thank you for your help,

Jorge


El mar., 28 jul. 2020 a las 17:33, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:

> so, the problem is that uhd_image_builder.py still can't find your OOT no=
c
> block (error: module not found)?
>
> This file looks for several methods for including your OOT block.  I thin=
k
> it first looks for a Makefile.inc if it exists in your OOT 'rfnoc' folder=
.
> If it doesn't find that, it looks for perhaps the same file in your
> 'rfnoc/fpga-src' folder.  And, if not that looks for the file Makefile.sr=
cs
> in that folder.  I'm sure I don't have it exactly right, but perhaps just
> look at uhd_image_builder.py to see the logic in the "create_oot_include"
> function.  Somehow, it seems it is not finding your block.  If you have n=
o
> luck with Makefile.srcs, you could try adding Makefile.inc to various
> folders.
>
> Rob
>
> On Tue, Jul 28, 2020 at 11:25 AM Jorge Arroyo Giganto <
> jarroyo@gradiant.org> wrote:
>
>> Hi Rob,
>>
>> Thanks a lot for your patch file, but unfortunately I'm still getting th=
e
>> same errors when trying to use custom RFNoC blocks with
>> uhd_image_builder.py.
>>
>> Any other help would be greatly appreciated,
>>
>> Jorge
>>
>> El mar., 28 jul. 2020 a las 15:56, Rob Kossler (<rkossler@nd.edu>)
>> escribi=C3=B3:
>>
>>> Try this patch file.  I received from Ettus a long time ago (Oct 2019?)
>>> but it appears that it is still not fixed.
>>> Rob
>>>
>>> On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>>
>>>>
>>>> I=E2=80=99m working on getting a solid workflow to build and use RFNoC=
 blocks.
>>>> I=E2=80=99m using branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-=
3.7 (also, packet
>>>> gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS bra=
nch).
>>>> I=E2=80=99m using an E310 (SG1), with the SD image I get with
>>>> =E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs=
.sdimg). Also, I=E2=80=99m
>>>> running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3 installed.
>>>>
>>>> A couple of weeks ago I started trying to follow the =E2=80=98Getting =
Started
>>>> with RFNoC Development=E2=80=99 guide, and tried using rfnoc-devel and=
 master
>>>> branches, but it seems like this UHD-3.15.LTS is the one working the b=
est
>>>> for me, but I still have some issues.
>>>>
>>>> Following the guide, I built a custom block (gain), which I was able t=
o
>>>> get through the testbench (after quite a bit of attempts), but when tr=
ying
>>>> to generate a bitstream (.bit file) with my gain block I got the follo=
wing
>>>> errors:
>>>>
>>>>
>>>>     ~/rfnoc_UHD315/src/uhd-fpga/usrp3/tools/scripts$
>>>> ./uhd_image_builder.py gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial/ =
-d
>>>> e31x -t E310_RFNOC -m 4 =E2=80=93fill-with-fifos
>>>>
>>>>      .
>>>>
>>>>      .
>>>>
>>>>      .
>>>>
>>>>      ERROR: [Synth 8-439] module 'noc_block_gain' not found
>>>> [/home/jarroyo/rfnoc_UHD315/
>>>> src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst_e31x.v:20]
>>>>
>>>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x_core'
>>>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17=
]
>>>>
>>>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x'
>>>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]
>>>>
>>>>      [00:01:46] Current task: Synthesis +++ Current Phase: Starting
>>>>
>>>>      ERROR: [Common 17-69] Command failed: Synthesis failed - please
>>>> see the console or run log file for details
>>>>
>>>>      [00:01:46] Current task: Synthesis +++ Current Phase: Finished
>>>>
>>>>      [00:01:46] Process terminated. Status: Failure
>>>>
>>>>
>>>> If it is useful information, I was able to successfully generate a
>>>> bitstream with existing RFNoC blocks (=E2=80=98./uhd_image_builder.py =
window fft -d
>>>> e31x -t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example,=
 is working), so
>>>> that=E2=80=99s why I guess my main issue is with the gain custom block=
.
>>>>
>>>>
>>>> Also, another issue I=E2=80=99m having is using uhd_image_loader on th=
e E310
>>>> terminal when loading my own bitstreams:
>>>>
>>>>
>>>>      root@ni-e31x:~# uhd_image_loader
>>>> --args=3D"type=3De3xx,addr=3D192.168.10.2" --fpga-path
>>>> /usr/share/uhd/images/e31x.bit
>>>>
>>>>      [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
>>>> UHD_3.15.0.0-0-gaea0e2de
>>>>
>>>>      No applicable UHD devices found
>>>>
>>>>
>>>> Is there anything I might be doing wrong? Or is this workflow with
>>>> these branches and tool versions not the most appropiate currently?
>>>>
>>>>
>>>> Thanks in advance,
>>>>
>>>>
>>>> Jorge
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>

--000000000000e50d2205ab9a9444
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Aft=
er a while understanding how uhd_image_builder.py works, I couldn&#39;t fig=
ure out a way to fix the &quot;create_oot_include&quot; function, but I man=
aged to make uhd_image_builder.py find my OOT block (noc_block_gain.v). May=
be it&#39;s not the most elegant way to do it, but it worked for me. <br></=
div><div><br></div><div>I copied my noc_block_gain.v file (after making sur=
e it passed the testbench) to the=20


=09
	<span></span>/uhd-fpga/usrp3/lib/rfnoc folder, and added the following lin=
e to the Makefile.srcs from that same folder, in the same way the other blo=
cks are added:</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 noc_blo=
ck_gain.v \=C2=A0</div><div><br></div><div>After doing that, I was able to =
successfully generate my bitstream with &#39;./uhd_image_builder.py gain ff=
t -I ~/rfnoc_UHD315/src/rfnoc-tutorial -d e31x -t E310_RFNOC -m 3 --fill-wi=
th-fifos&#39;.</div><div><br></div><div>Also, in case it&#39;s useful, I wa=
s also able to fix the uhd_image_loader issue I mentioned I had with the E3=
10, changing the IP address to localhost worked just fine (--args=3D&quot;t=
ype=3De3xx,addr=3D127.0.0.1&quot;).</div><div><br></div><div>Thank you for =
your help,</div><div><br></div><div>Jorge<br></div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mar., =
28 jul. 2020 a las 17:33, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.ed=
u">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">so, the problem is that uhd_ima=
ge_builder.py still can&#39;t find your OOT noc block (error: module not fo=
und)?=C2=A0<div><br></div><div>This file looks for several methods for incl=
uding your OOT block.=C2=A0 I think it first looks for a Makefile.inc if it=
 exists in your OOT &#39;rfnoc&#39; folder.=C2=A0 If it doesn&#39;t find th=
at, it looks for perhaps the same file in your &#39;rfnoc/fpga-src&#39; fol=
der.=C2=A0 And, if not that looks for the file Makefile.srcs in that folder=
.=C2=A0 I&#39;m sure I don&#39;t have it exactly right, but perhaps just lo=
ok at uhd_image_builder.py to see the logic in the &quot;create_oot_include=
&quot; function.=C2=A0 Somehow, it seems it is not finding your block.=C2=
=A0 If you have no luck with Makefile.srcs, you could try adding Makefile.i=
nc to various folders.<div><br></div><div>Rob</div></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 28, 20=
20 at 11:25 AM Jorge Arroyo Giganto &lt;<a href=3D"mailto:jarroyo@gradiant.=
org" target=3D"_blank">jarroyo@gradiant.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
"><div>Hi Rob,</div><div><br></div><div>Thanks a lot for your patch file, b=
ut unfortunately I&#39;m still getting the same errors when trying to use c=
ustom RFNoC blocks with uhd_image_builder.py.</div><div><br></div><div>Any =
other help would be greatly appreciated,</div><div><br></div><div>Jorge<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">El mar., 28 jul. 2020 a las 15:56, Rob Kossler (&lt;<a href=3D"mailto=
:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Try this patch file.=C2=A0 I received from Ettus a long time ago (Oct 201=
9?) but it appears that it is still not fixed.<div>Rob</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 28,=
 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">


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
</blockquote></div>
</blockquote></div><br></div>

--000000000000e50d2205ab9a9444--


--===============0555750849229986249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0555750849229986249==--

