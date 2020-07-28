Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 111EA230DEF
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 17:34:16 +0200 (CEST)
Received: from [::1] (port=58256 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0RcL-0001CY-Mj; Tue, 28 Jul 2020 11:34:13 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:37893)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k0RcH-00013I-E6
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 11:34:09 -0400
Received: by mail-oi1-f182.google.com with SMTP id u63so6084864oie.5
 for <usrp-users@lists.ettus.com>; Tue, 28 Jul 2020 08:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUBqDAFqLf/neUjuuO4dDOcJOgGYOCQovW8tO95Kvuc=;
 b=jcqNgtlpW/RkuGtF+BP6rU0wCr8DfuzVON4hLjwxeWGJ1h+1sg6V0kcv83NEwRGx2y
 8hyP5z/KQfBsxbiW9uzcnW6+wNjbvqHFXNI760XJ2DZAco/Lu1Dll95pbpa/6hAD6Ppu
 w8RDd5h+7VWVkYgrGUlcOf4t9CXHr/Q29V+o3KpVHcHy5seqb4AWjyJ5ZhKTHghetIBV
 56HkrNLEun0OZU84eqTE0poxxjzCtJWkBnfdEZvm82iKhyVeBNI5t0CfiPMEREsMWXwQ
 nM7AQ5i0Yykm2gbIAohzrC9ixz+uLQF51zLblOy5z8FmuWKCzb9Be/cVzm6SDmuyfVP5
 TOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUBqDAFqLf/neUjuuO4dDOcJOgGYOCQovW8tO95Kvuc=;
 b=dijqi5iZfrPj1/Q89E04blgij+uC1YomNGXRKSaESiTQWkjRV1e8wVXAsnNc7vrnWQ
 1wIiYksYELs8ajaPuEB6TAcYQR3HZ0l7ZoP0ncmZ291gpNFWwpVLzQm4d/BQYtHdQWQz
 jTJTvg5g3ZGjad2gm+X78IINgjIVek1UtT6kl9rpxZgQmEO6ceNcHEhp1CVyP+RgSHT+
 +WQLcxAjKL7LSCFAAT0JNZEmCnokNzENToo78xwCWnWSnlcc/hJZKXRVJoz54hfMsHEJ
 EX761vJ6ZlJjH6Umd8tMcJq21x1lAJq+U8tGaNHYVQMds9S2q8rYE6I/dmgZj3mGae77
 0I+g==
X-Gm-Message-State: AOAM5337Z61Bhzzf1t8GfmMhFznmWQujEslnglrdLYAb1oblcGC97c6y
 nrYLUuTp9/tBn8YvXWoKBROwvKzBS2ZN3e+lVP2fkA==
X-Google-Smtp-Source: ABdhPJzfL7p4AhmJcIlTYXZVig8JcaEinARI0MBFkiNJDNcZ3Dkr0RuZnOwyGT1zOdnYkNzyKQ/xtOXmME18uLN7NuA=
X-Received: by 2002:aca:5594:: with SMTP id j142mr3969216oib.33.1595950408438; 
 Tue, 28 Jul 2020 08:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAOx6OK3UT0i3cARatAb5h3TyM53dXa0011GfXw3h-B-J=DzoLQ@mail.gmail.com>
 <CAB__hTTTp5t8=VTZLnyZQGXwvy_WoUS1t=BjE00Npd7Dmua6OQ@mail.gmail.com>
 <CAOx6OK179enDrLv+0qtQ+k_jxeWtV6pBOpgzxWTSkc3_BKor1A@mail.gmail.com>
In-Reply-To: <CAOx6OK179enDrLv+0qtQ+k_jxeWtV6pBOpgzxWTSkc3_BKor1A@mail.gmail.com>
Date: Tue, 28 Jul 2020 11:33:17 -0400
Message-ID: <CAB__hTSfSyVoy+KyKs1Q0JcksqL68+--5mU6RurPtQ50jWXuPg@mail.gmail.com>
To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============6750338119868050668=="
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

--===============6750338119868050668==
Content-Type: multipart/alternative; boundary="0000000000002ccf4d05ab8229fe"

--0000000000002ccf4d05ab8229fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

so, the problem is that uhd_image_builder.py still can't find your OOT noc
block (error: module not found)?

This file looks for several methods for including your OOT block.  I think
it first looks for a Makefile.inc if it exists in your OOT 'rfnoc' folder.
If it doesn't find that, it looks for perhaps the same file in your
'rfnoc/fpga-src' folder.  And, if not that looks for the file Makefile.srcs
in that folder.  I'm sure I don't have it exactly right, but perhaps just
look at uhd_image_builder.py to see the logic in the "create_oot_include"
function.  Somehow, it seems it is not finding your block.  If you have no
luck with Makefile.srcs, you could try adding Makefile.inc to various
folders.

Rob

On Tue, Jul 28, 2020 at 11:25 AM Jorge Arroyo Giganto <jarroyo@gradiant.org=
>
wrote:

> Hi Rob,
>
> Thanks a lot for your patch file, but unfortunately I'm still getting the
> same errors when trying to use custom RFNoC blocks with
> uhd_image_builder.py.
>
> Any other help would be greatly appreciated,
>
> Jorge
>
> El mar., 28 jul. 2020 a las 15:56, Rob Kossler (<rkossler@nd.edu>)
> escribi=C3=B3:
>
>> Try this patch file.  I received from Ettus a long time ago (Oct 2019?)
>> but it appears that it is still not fixed.
>> Rob
>>
>> On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>>
>>>
>>> I=E2=80=99m working on getting a solid workflow to build and use RFNoC =
blocks.
>>> I=E2=80=99m using branches UHD-3.15.LTS and GNU Radio=E2=80=99s maint-3=
.7 (also, packet
>>> gr-ettus from the master branch and uhd-fpga from the UHD-3.15.LTS bran=
ch).
>>> I=E2=80=99m using an E310 (SG1), with the SD image I get with
>>> =E2=80=98uhd_images_downloader -t e310 -t sdimg=E2=80=99 (usrp_e310_fs.=
sdimg). Also, I=E2=80=99m
>>> running Ubuntu 18.04 and I=E2=80=99ve got Vivado 2018.3 installed.
>>>
>>> A couple of weeks ago I started trying to follow the =E2=80=98Getting S=
tarted
>>> with RFNoC Development=E2=80=99 guide, and tried using rfnoc-devel and =
master
>>> branches, but it seems like this UHD-3.15.LTS is the one working the be=
st
>>> for me, but I still have some issues.
>>>
>>> Following the guide, I built a custom block (gain), which I was able to
>>> get through the testbench (after quite a bit of attempts), but when try=
ing
>>> to generate a bitstream (.bit file) with my gain block I got the follow=
ing
>>> errors:
>>>
>>>
>>>     ~/rfnoc_UHD315/src/uhd-fpga/usrp3/tools/scripts$
>>> ./uhd_image_builder.py gain fft -I ~/rfnoc_UHD315/src/rfnoc-tutorial/ -=
d
>>> e31x -t E310_RFNOC -m 4 =E2=80=93fill-with-fifos
>>>
>>>      .
>>>
>>>      .
>>>
>>>      .
>>>
>>>      ERROR: [Synth 8-439] module 'noc_block_gain' not found
>>> [/home/jarroyo/rfnoc_UHD315/
>>> src/uhd-fpga/usrp3/top/e31x/rfnoc_ce_auto_inst_e31x.v:20]
>>>
>>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x_core'
>>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x_core.v:17]
>>>
>>>      ERROR: [Synth 8-6156] failed synthesizing module 'e31x'
>>> [/home/jarroyo/rfnoc_UHD315/src/uhd-fpga/usrp3/top/e31x/e31x.v:13]
>>>
>>>      [00:01:46] Current task: Synthesis +++ Current Phase: Starting
>>>
>>>      ERROR: [Common 17-69] Command failed: Synthesis failed - please se=
e
>>> the console or run log file for details
>>>
>>>      [00:01:46] Current task: Synthesis +++ Current Phase: Finished
>>>
>>>      [00:01:46] Process terminated. Status: Failure
>>>
>>>
>>> If it is useful information, I was able to successfully generate a
>>> bitstream with existing RFNoC blocks (=E2=80=98./uhd_image_builder.py w=
indow fft -d
>>> e31x -t E310_RFNOC -m 3 =E2=80=93fill-with-fifos=E2=80=99 for example, =
is working), so
>>> that=E2=80=99s why I guess my main issue is with the gain custom block.
>>>
>>>
>>> Also, another issue I=E2=80=99m having is using uhd_image_loader on the=
 E310
>>> terminal when loading my own bitstreams:
>>>
>>>
>>>      root@ni-e31x:~# uhd_image_loader
>>> --args=3D"type=3De3xx,addr=3D192.168.10.2" --fpga-path
>>> /usr/share/uhd/images/e31x.bit
>>>
>>>      [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
>>> UHD_3.15.0.0-0-gaea0e2de
>>>
>>>      No applicable UHD devices found
>>>
>>>
>>> Is there anything I might be doing wrong? Or is this workflow with thes=
e
>>> branches and tool versions not the most appropiate currently?
>>>
>>>
>>> Thanks in advance,
>>>
>>>
>>> Jorge
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>

--0000000000002ccf4d05ab8229fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">so, the problem is that uhd_image_builder.py still can&#39=
;t find your OOT noc block (error: module not found)?=C2=A0<div><br></div><=
div>This file looks for several methods for including your OOT block.=C2=A0=
 I think it first looks for a Makefile.inc if it exists in your OOT &#39;rf=
noc&#39; folder.=C2=A0 If it doesn&#39;t find that, it looks for perhaps th=
e same file in your &#39;rfnoc/fpga-src&#39; folder.=C2=A0 And, if not that=
 looks for the file Makefile.srcs in that folder.=C2=A0 I&#39;m sure I don&=
#39;t have it exactly right, but perhaps just look at uhd_image_builder.py =
to see the logic in the &quot;create_oot_include&quot; function.=C2=A0 Some=
how, it seems it is not finding your block.=C2=A0 If you have no luck with =
Makefile.srcs, you could try adding Makefile.inc to various folders.<div><b=
r></div><div>Rob</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jul 28, 2020 at 11:25 AM Jorge Arroyo=
 Giganto &lt;<a href=3D"mailto:jarroyo@gradiant.org">jarroyo@gradiant.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thank=
s a lot for your patch file, but unfortunately I&#39;m still getting the sa=
me errors when trying to use custom RFNoC blocks with uhd_image_builder.py.=
</div><div><br></div><div>Any other help would be greatly appreciated,</div=
><div><br></div><div>Jorge<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">El mar., 28 jul. 2020 a las 15:56, Rob =
Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Try this patch file.=C2=A0 I received from =
Ettus a long time ago (Oct 2019?) but it appears that it is still not fixed=
.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jul 28, 2020 at 6:27 AM Jorge Arroyo Giganto via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">


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

--0000000000002ccf4d05ab8229fe--


--===============6750338119868050668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6750338119868050668==--

