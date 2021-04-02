Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D940352AFD
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 15:26:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 922FE383CD5
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 09:26:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A//ErD/B";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id DFA69383C1F
	for <USRP-users@lists.ettus.com>; Fri,  2 Apr 2021 09:25:47 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id i9so5267599qka.2
        for <USRP-users@lists.ettus.com>; Fri, 02 Apr 2021 06:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=nigRbG/lKYoysdN/dHENvqeAGO6Y56c6Rae4kuaf07U=;
        b=A//ErD/BzFq+FSizQBjPdqQtyAUSCJEOLmmeyiMeGOCBJghDZFyQkpIZ2puRi1BCyu
         yjBtNGcr1B3+Ya5AbMubehMJ4rY2o+92Fd5I+zD+ouxfj82G3sNTQ408BUguyOTXyLJY
         Wyu7llzWBOlyw2YBUnQvf7EhwE47SdH27Z1uvlhABEGrF9b25w0WO5ZOWEDhqbvXLCUO
         jziz+kyzMxUqMvlmiEWJKZCk9nO1Pcr4SvrCdyWlWvanwZNKsqSwtSObvDInP4ZzWov1
         +zwCigfpCnXXPX3j1yNA6rvmiYS8gKyO4A/+duNTKLokdV0+dEyo1NDRgWIJylz5YUhh
         39Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=nigRbG/lKYoysdN/dHENvqeAGO6Y56c6Rae4kuaf07U=;
        b=WSDhjgsXbvv2YqL3ziGoRKZPeINcPFXAnKoEolORRdOkHIF6eMR0Qbnb4zD0b9FtB6
         dhgOxgoSJXrhVAmK18ZfA9y/zO+8JoFhc8QcVFEtHV+CW89WSiy4DHKKqwKQ8L2TOpjj
         dYWPe+Rhfh3FSNHsuEcbILLjDWEA7KqJePSFr3sLlunsW5WC4aLE+xQX3s0eTBirz/VH
         npLByYVwG2uw4KdRW2qWDdaU0WJAy77I0W0aBd6YfuE5q0h76u3t6n2y/GrnvDFwbpwD
         gDpdH7tjltoLII/s9y/uGYo2aS10J8/sv/lzqdH0ncPciO1OUOfg0vIZuTC5wxM6fJk+
         xMdA==
X-Gm-Message-State: AOAM532qYpUNTkZoJqfVszvha+ic8uWs85K8sfZSsumKDXJ9JFhu9B7B
	1uvkbexQBsUafptaFAOA1UsXGzEGEBM=
X-Google-Smtp-Source: ABdhPJx0ToTEfgquWNELnxi3O1hanzarYQOijRS+NE/Wp/BRYpM50AV9vq/u9Dp+kdiIa0udircV4Q==
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr13370127qkc.121.1617369947146;
        Fri, 02 Apr 2021 06:25:47 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k8sm6432898qth.74.2021.04.02.06.25.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 06:25:46 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 2 Apr 2021 09:25:45 -0400
Message-Id: <4C788C8B-7A43-4838-90A5-590E404AAF67@gmail.com>
References: <CALNMZ8W__YmMuZzNEwSRKE6WhdYr5b0c0-XdAM-39i=YFrOO4A@mail.gmail.com>
In-Reply-To: <CALNMZ8W__YmMuZzNEwSRKE6WhdYr5b0c0-XdAM-39i=YFrOO4A@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: RXJ3FETK46EDP6FW62A2MZ5XAJT27YIY
X-Message-ID-Hash: RXJ3FETK46EDP6FW62A2MZ5XAJT27YIY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RXJ3FETK46EDP6FW62A2MZ5XAJT27YIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6149961069541961628=="


--===============6149961069541961628==
Content-Type: multipart/alternative; boundary=Apple-Mail-47FE14F6-9027-40DB-8416-7F3B82570D79
Content-Transfer-Encoding: 7bit


--Apple-Mail-47FE14F6-9027-40DB-8416-7F3B82570D79
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=99s=
 probably a compiler flag that needs to be set that you=E2=80=99re missing, b=
ut I don=E2=80=99t know what that is.=20

Also, in general, you don=E2=80=99t need to become root to compile and build=
 code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D



Sent from my iPhone

> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <brendan.horsfield@vectalabs=
.com> wrote:
>=20
> =EF=BB=BF
> Hi Folks,
>=20
> I would like to interface my Raspberry Pi 4 to a USRP B210 via the Python A=
PI.  This requires the UHD driver to be built from source.  Unfortunately, w=
henever I try this I encounter some errors that stop the build process in it=
s tracks.
>=20
> Details of the error are as follows:
>=20
> [ 53%] Linking CXX executable test_clock_synch
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_comp=
are_exchange_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_load=
_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_stor=
e_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_fetc=
h_add_8'
> collect2: error: ld returned 1 exit status
> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95: exam=
ples/test_clock_synch] Error 1
> make[1]: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles/test_clock_sy=
nch.dir/all] Error 2
> make: *** [Makefile:163: all] Error 2
>=20
> The process I have been using is as follows:
>=20
> STEP 1:  INSTALL DEPENDENCIES
> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3-doc=
utils python3-mako python3-numpy python3-requests python3-ruamel.yaml python=
3-setuptools cmake build-essential
>=20
> STEP 2:  BUILD UHD DRIVER FROM SOURCE
> cd /home/pi
> mkdir workarea-uhd
> cd workarea-uhd
> git clone https://github.com/EttusResearch/uhd
> cd uhd
> git checkout v4.0.0.0
> cd host
> mkdir build
> cd build
> sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
> sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>=20
> My system configuration is as follows:
> Hardware: Raspberry Pi 4 Model B Rev 1.4
> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
> Ettus USRP B210
>=20
> Does anyone know what the problem could be, and how I can resolve it?
>=20
> One final note:  Using PyBOMBS, I was able to successfully build & install=
 the UHD driver and connect to the USRP.  Unfortunately the PyBOMBS build do=
es not include the Python API, which is what I really want.  Is there a diff=
erent version of the PyBOMBS build that includes the Python API?
>=20
> Thanks & Regards,
> Brendan.
>=20
>=20
>  =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-47FE14F6-9027-40DB-8416-7F3B82570D79
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Perhaps look at the PyBombs recipe for your=
 platform=E2=80=94there=E2=80=99s probably a compiler flag that needs to be s=
et that you=E2=80=99re missing, but I don=E2=80=99t know what that is.&nbsp;=
<div><br></div><div>Also, in general, you don=E2=80=99t need to become root t=
o compile and build code=E2=80=94only needed during the =E2=80=9Cmake instal=
l=E2=80=9D</div><div><br></div><div><br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 2, 2021, at 7=
:19 AM, Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<=
div dir=3D"ltr">Hi Folks,<div><br></div><div>I would like to interface my Ra=
spberry Pi 4 to a USRP B210 via the Python API.&nbsp; This requires the UHD d=
river to be built from source.&nbsp; Unfortunately, whenever I try this I en=
counter some errors that stop the build process in its tracks.</div><div><br=
></div><div>Details of the error are as follows:</div><div><br></div><div>[ 5=
3%] Linking CXX executable test_clock_synch<br>/usr/bin/ld: ../lib/libuhd.so=
.4.0.0: undefined reference to `__atomic_compare_exchange_8'<br>/usr/bin/ld:=
 ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_load_8'<br>/usr/bi=
n/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_store_8'<br>/=
usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_fetch_a=
dd_8'<br>collect2: error: ld returned 1 exit status<br>make[2]: *** [example=
s/CMakeFiles/test_clock_synch.dir/build.make:95: examples/test_clock_synch] E=
rror 1<br>make[1]: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles/test_=
clock_synch.dir/all] Error 2<br>make: *** [Makefile:163: all] Error 2<br></d=
iv><div><br></div><div>The process I have been using is as follows:</div><di=
v><br></div><div>STEP 1:&nbsp; INSTALL DEPENDENCIES<br>sudo apt-get install l=
ibboost-all-dev libusb-1.0-0-dev doxygen python3-docutils python3-mako pytho=
n3-numpy python3-requests python3-ruamel.yaml python3-setuptools cmake build=
-essential<br><br>STEP 2:&nbsp; BUILD UHD DRIVER FROM SOURCE</div><div>cd /h=
ome/pi<br>mkdir workarea-uhd<br>cd workarea-uhd<br>git clone <a href=3D"http=
s://github.com/EttusResearch/uhd" target=3D"_blank">https://github.com/Ettus=
Research/uhd</a><br>cd uhd<br>git checkout v4.0.0.0<br>cd host<br>mkdir buil=
d<br>cd build<br>sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DO=
N ../<br>sudo make&nbsp; ---&gt;&nbsp;&nbsp;(ERRORS OCCUR DURING "MAKE" PROC=
ESS)<br><br>My system configuration is as follows:<br>Hardware: Raspberry Pi=
 4 Model B Rev 1.4<br>OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)<br=
>Ettus USRP B210<br></div><div><br></div><div>Does anyone know what the prob=
lem could be, and how I can resolve it?<br></div><div><br></div><div>One fin=
al note:&nbsp; Using PyBOMBS, I was able to successfully build &amp; install=
 the UHD driver and connect to the USRP.&nbsp; Unfortunately the PyBOMBS bui=
ld does not include the Python API, which is what I really&nbsp;want.&nbsp; I=
s there a different version of the PyBOMBS build that includes the Python AP=
I?</div><div><br></div><div>Thanks &amp; Regards,</div><div>Brendan.</div><d=
iv><br></div><div><br></div><div>&nbsp;&nbsp;</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-47FE14F6-9027-40DB-8416-7F3B82570D79--

--===============6149961069541961628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6149961069541961628==--
