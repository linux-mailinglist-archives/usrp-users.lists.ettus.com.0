Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 992638179B8
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 19:32:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91DA4385577
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 13:32:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702924348; bh=qVQFxRUkYBw7v6tyxoLZhnoUQenVzfzQ7aLXdwoxIBM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IE0YZB8kl10Yb3N0aRw5P2ZYMCSvC5LmQIsojf0o4d3vMI6UgzoKe9EswmhmuKoFX
	 gZVI7G7tMs7KGPv44v2qr/EkEOx+XcpyVhAjyOrHw8MnnxeLxpa97jjaZki8kIyLHq
	 ehDxWJ2y36FXxFjz1ULNc5OK8gzp/OXkOuCjInCDeXG+wwVSns/L60Eh+26WCcrh+k
	 bgrq06v6oBZyrxfUejW8+YBUwfRc2Lm4qlXAWZtvkVV7lxuEDgnIngtqZAe/rFJq4v
	 jvEapfsU0DOQlpknYfd1miyX6X9jkD7GOOsyf7pSs8yt0HGF+hRaX/bxYlO7VqY/eb
	 D9bkqBBAKxPmA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 42C3C385115
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 13:31:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gL3387g4";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-55359dc0290so2432840a12.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 10:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702924317; x=1703529117; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zX02wPLWK3RRd2ChmrF7wAfyiVwprlEeVGC6d9yMI94=;
        b=gL3387g4JiuvrMh29qBHpQh3J3chFHj+ijNtz6wCXbBiXgDJl3iQPrDHbQpQKNtj23
         uvhqm/nhzAIr6epAbQNYhv74uCR4CmKXpOKEAc/Xl1yNeGuIW3xqfVraO8/yqPVQbKrY
         cBy6VnNZFznUQfk4vvw4GshDG5mUojjwgH45fHlYITyB48MRe9vtZdbFF1s7Xg8G6kq6
         /IwRyajOhG1QmmLTK6xC9ItFXqwegSwJoQbajpXPDhSosEBUuUCT+Rpz0JwfaqWIJ4RU
         5P9/yA/VIkkYxNLVPeNaCTYFFpQ4GQAAVECd9aafbJZ/lW+C3R9TZkoUHlflXj3ZlomS
         BQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702924317; x=1703529117;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zX02wPLWK3RRd2ChmrF7wAfyiVwprlEeVGC6d9yMI94=;
        b=ueGlFv8lsAe+Xcjw2og/K5aYHuwmk86d3eXQMeWMd+gKmMyVvbzhYrSIii2QktNj9F
         kiSSBBqj9y1z5nz32RB46PzjPkfIMc9kVqY0uYSMKBp3EFSvnHxR2hL9uqk6eLi2gCNo
         cBd5Dtxof/sG2a1zrZ+32tqaZez24EIptrV2Q61kl/YWSBxAhCBtF0Wm4uM0eevqGW1u
         Fdf3rdV3VC0xIVX6VQtqplfZrmh8HMlODqBkOvSdMQL7F2RfB/FgDo1A/wElGKQmpCZC
         jkaK/4fYL0gwGYKpFEo/vclcSe4EkY93tKQNwgUb7HgxP3n3K2P015HjFyDnMXE6G5tp
         ImpA==
X-Gm-Message-State: AOJu0Yw3JtdneOKHFYAGBGyX920QzihKBkGbW7Uvx4K7l8pAxrAEnTJb
	W4UYcSgqgiQUpN+O0G+gq4CMIwQ3WanFmP99F3jIT+i+gXI4oEte
X-Google-Smtp-Source: AGHT+IEPyhI5VRLJtHpY4dVDRL6GcGtcBhJaZw2Lo0SR1y3L6dbG3jxtbrWBuK+soJUf1EomzWi7cpLjgnoY5WAcBAw=
X-Received: by 2002:a50:a41c:0:b0:553:3926:1bc8 with SMTP id
 u28-20020a50a41c000000b0055339261bc8mr2781344edb.29.1702924316841; Mon, 18
 Dec 2023 10:31:56 -0800 (PST)
MIME-Version: 1.0
References: <yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4@lists.ettus.com>
In-Reply-To: <yL7ewvrNPW8xuPnq2TlzX26mCtThu262PFZdoCLHOE4@lists.ettus.com>
Date: Mon, 18 Dec 2023 12:31:45 -0600
Message-ID: <CAB__hTSSewe-dLiReGwLpRWwttj4kE8B9tFdy+RoeJGTqejM=A@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Message-ID-Hash: GM33KAJL75LLJGC7LNUUQZYSZGZJRYTS
X-Message-ID-Hash: GM33KAJL75LLJGC7LNUUQZYSZGZJRYTS
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GM33KAJL75LLJGC7LNUUQZYSZGZJRYTS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4271258228678651088=="

--===============4271258228678651088==
Content-Type: multipart/alternative; boundary="000000000000fca7d3060cccf68a"

--000000000000fca7d3060cccf68a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Can you attach the YML file you are using to build the image?  Also, I
notice that you are trying to load a file out of the
"../top/e31x/build-E310_SG3/" folder rather than the "../top/e31x/build/"
folder. At the conclusion of the build, the outputs are copied into the
"build" folder. I doubt this matters, but you might try using the one in
the "build" folder (and maybe also take a look at file system time stamps
on the files in each folder to see if they are the same).
Rob

On Mon, Dec 18, 2023 at 11:59=E2=80=AFAM <engr.muhd.hassan@gmail.com> wrote=
:

> Hi All,
>
>
> I am trying to run this command =E2=80=9Cuhd_image_loader --args
> type=3De3xx,adr=3D192.168.10.2
> --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31x.b=
it=E2=80=9D
>
>
> But I get error which is =E2=80=9CError: RuntimeError: Failure to create
> rfnoc_graph=E2=80=9D.
>
> the whole output is =E2=80=9C[INFO] [UHD] linux; GNU C++ version 9.4.0;
> Boost_107100; UHD_4.4.0.HEAD-0-g5fac246b
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,=
name=3Dni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,skip_=
init=3D1
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
>
> [INFO] [MPM.PeriphManager] Device serial number: 31370FC
>
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards=
.
> Ignoring some of them.
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,=
name=3Dni-e31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,adr=
=3D192.168.10.2,find_all=3D1
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully
> initialized!
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `adr=3D192.168.10.2,find_all=3D1,fpga=3Dn/a,mgmt_addr=3D192.168.10.2,name=
=3Dni-e31x-31370FC,product=3De310_sg3'.
>
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Replay#0!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: OpTimeout: Control operation timed out waiting for ACK
>
> Error: RuntimeError: Failure to create rfnoc_graph.=E2=80=9D
>
>
> I am trying to build an fpga image with RFNoC. I have YML file which
> includes replay block which I copied to the folder (uhd/fpga/usrp3/top/e3=
1x)
>
> I have executed this command =E2=80=9Crfnoc_image_builder -y
> ./e310_rfnoc_image_core.yml -t E310_SG3 --fpga-dir ~/uhd/fpga/=E2=80=9D.
>
>
> After this command I got no errors but warnings. result is
>
> Warnings: 1073
>
> Critical Warnings: 125
>
> Errors: 0
>
> make[1]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'
>
> Exporting bitstream file...
>
> Exporting build report...
>
> Build DONE ... E310_SG3=E2=80=9D
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fca7d3060cccf68a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr"><div>Can you at=
tach the YML file you are using to build the image?=C2=A0 Also, I notice th=
at you are trying to load a file out of the &quot;../top/e31x/build-E310_SG=
3/&quot; folder rather than the &quot;../top/e31x/build/&quot; folder. At t=
he conclusion of the build, the outputs are copied into the &quot;build&quo=
t; folder. I doubt this matters, but you might try using the one in the &qu=
ot;build&quot; folder (and maybe also take a look at file system time stamp=
s on the files in each folder to see if they are the same).</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Dec 18, 2023 at 11:59=E2=80=AFAM &lt;<a href=3D"mailto:engr.muh=
d.hassan@gmail.com">engr.muhd.hassan@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi All, </p><p><br></p><p>=
I am trying to run this command =E2=80=9Cuhd_image_loader --args type=3De3x=
x,adr=3D192.168.10.2 --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-E310_SG3/e31x.bit=E2=80=9D</p><p><br></p><p>But I get error which is =
=E2=80=9CError: RuntimeError: Failure to create rfnoc_graph=E2=80=9D.</p><p=
>the whole output is =E2=80=9C[INFO] [UHD] linux; GNU C++ version 9.4.0; Bo=
ost_107100; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[INFO] [MPMD] Initializing 1 d=
evice(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3De3xx,produc=
t=3De310_sg3,serial=3D31370FC,name=3Dni-e31x-31370FC,fpga=3Dn/a,claimed=3DF=
alse,addr=3D192.168.10.2,skip_init=3D1</p><p>[INFO] [MPMD] Claimed device w=
ithout full initialization.</p><p>[INFO] [MPMD IMAGE LOADER] Starting updat=
e. This may take a while.</p><p>[INFO] [MPM.PeriphManager] Installing compo=
nent `fpga&#39;</p><p>[INFO] [MPM.PeriphManager] Installing component `dts&=
#39;</p><p>[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<=
/p><p>[INFO] [MPM.RPCServer] Resetting peripheral manager.</p><p>[WARNING] =
[MPM.PeriphManager] Skipping HW/SW compatibility check!</p><p>[INFO] [MPM.P=
eriphManager] Device serial number: 31370FC</p><p>[WARNING] [MPM.PeriphMana=
ger] Found more EEPROM paths than daughterboards. Ignoring some of them.</p=
><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.10.2,type=3De3xx,product=3De310_sg3,serial=3D31370FC,name=3Dni-e=
31x-31370FC,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.10.2,adr=3D192.168.10=
.2,find_all=3D1</p><p>[WARNING] [MPM.PeriphManager] Cannot run deinit(), de=
vice was never fully initialized!</p><p>[INFO] [MPM.PeriphManager] init() c=
alled with device args `adr=3D192.168.10.2,find_all=3D1,fpga=3Dn/a,mgmt_add=
r=3D192.168.10.2,name=3Dni-e31x-31370FC,product=3De310_sg3&#39;.</p><p>[WAR=
NING] [RFNOC::GRAPH] One or more blocks timed out during flush!</p><p>[INFO=
] [0/Radio#0] Performing CODEC loopback test on channel 0 ... </p><p>[INFO]=
 [0/Radio#0] CODEC loopback test passed</p><p>[INFO] [0/Radio#0] Performing=
 CODEC loopback test on channel 1 ... </p><p>[INFO] [0/Radio#0] CODEC loopb=
ack test passed</p><p>[ERROR] [RFNOC::GRAPH] Error during initialization of=
 block 0/Replay#0!</p><p>[ERROR] [RFNOC::GRAPH] Caught exception while init=
ializing graph: RfnocError: OpTimeout: Control operation timed out waiting =
for ACK</p><p>Error: RuntimeError: Failure to create rfnoc_graph.=E2=80=9D<=
/p><p><br></p><p>I am trying to build an fpga image with RFNoC. I have YML =
file which includes replay block which I copied to the folder (uhd/fpga/usr=
p3/top/e31x)</p><p>I have executed this command =E2=80=9Crfnoc_image_builde=
r -y ./e310_rfnoc_image_core.yml -t E310_SG3 --fpga-dir ~/uhd/fpga/=E2=80=
=9D.</p><p><br></p><p>After this command I got no errors but warnings. resu=
lt is </p><p>Warnings:           1073</p><p>Critical Warnings:  125</p><p>E=
rrors:             0</p><p>make[1]: Leaving directory &#39;/home/grcusrp/uh=
d/fpga/usrp3/top/e31x&#39;</p><p>Exporting bitstream file...</p><p>Exportin=
g build report...</p><p>Build DONE ... E310_SG3=E2=80=9D</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000fca7d3060cccf68a--

--===============4271258228678651088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4271258228678651088==--
