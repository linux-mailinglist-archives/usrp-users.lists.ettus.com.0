Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C76C23C48F
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 08:57:14 +0200 (CEST)
Received: from [::1] (port=45768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haaiQ-0001Uz-5f; Tue, 11 Jun 2019 02:57:06 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:42086)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <kailash.kain@gmail.com>)
 id 1haaiM-0001Pr-VE
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 02:57:03 -0400
Received: by mail-oi1-f193.google.com with SMTP id s184so8120313oie.9
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 23:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=UjvZInR509m7QmVxrJSWIQiQIYH2DcN7C8EL9BPNYqk=;
 b=nyxKair9QEa3xPZ7t3IWyptj+NIw3nv7ighO0QNMef0XB5Wo9SYAU9ol/sotV38OOK
 qmNEaSQMhIGldiPJjL/vJRY1GhOi95Xv/C5rxbH/36dm2TgUjIyav70q2OF7RvUsTKE6
 kjwVLeqM9IXGPk8o/H4lLqRZDrahdg0vDt/d/4ytXFEm7Y4jeRpyR3BZUAdWKnNOOgPq
 DNQDT9z0u6Zsyy4rIS3Ty93hk4iJlMcXMCpPBwd1grGJ82EQG8x+tcPJjlj0nXEGFpvN
 uFun/hs9H7heE7qWzHIcIEMxafrDZRkdSGZAJbO4MlpQwTMwH4TjJXvm2GjleMDh0UR4
 NZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UjvZInR509m7QmVxrJSWIQiQIYH2DcN7C8EL9BPNYqk=;
 b=hzUkqjIv8duadC21DcHwASiDQXufOw5ESaTt+inHVLHvM2PmaabgfKibehwbG6+k3t
 57huC16q9u4WHciFROGanf6Ic5iqrSWdPM5MFBJHXgX2WWWvXq5jf02PsVxAlpioHC9T
 /82zVSnQy3V45iCsFFzC5/fNa+vEwNHABkDYlmQFJ1Fy4b48fNIRIJwPIaVSbAETdEqF
 EnWkWW2AC0ah/k2Y77xa/D5Djd+ogZm7Wl14EnGdnR0ffZHvwbwg5shrbRb19OKGnY9g
 cJ380qv+WfGqBpO9GJ+sP3OwQS7+vZzTPAFADtgBUW7O7pW0ep70NIi5mGccLQWoGMF4
 ufzw==
X-Gm-Message-State: APjAAAWRqQAd/defd8BWH/7uesMyqeJAiB4oXzl5tJfw6niUzb8us3JK
 CCuQWz44dhPaLI3GnLYb3T/wdVNtEGJdN0sWgjVuYT2t
X-Google-Smtp-Source: APXvYqz31wLH8wqftiLfoQKwI3RDfhmNe0oy0uS1Qvx/wjhHfhc6Mv45PAeekPrBTSzisuJu2HEniyLE/Tn8xxqS4s4=
X-Received: by 2002:aca:4e16:: with SMTP id c22mr14150161oib.161.1560236181936; 
 Mon, 10 Jun 2019 23:56:21 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 11 Jun 2019 12:25:56 +0530
Message-ID: <CAAMvqVEabgQrw=sp_EmTwfXPG+pVF5yigwioHf8v6pT+jz=rhQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Unable to detect X310 over pcie
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
From: kailash kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: kailash kumar <kailash.kain@gmail.com>
Content-Type: multipart/mixed; boundary="===============0605802194597018850=="
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

--===============0605802194597018850==
Content-Type: multipart/alternative; boundary="00000000000063e0fc058b06cbc4"

--00000000000063e0fc058b06cbc4
Content-Type: text/plain; charset="UTF-8"

Hi,

I am unable to detect X310 over pcie. I have installed uhd(v3.14.0.0) and
compiled and installed RIO drivers as well. Below is my configuration:

UHD RIO Installer version:
niusrprio-installer-18.0.0

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo
niusrprio_pcie start
Making sure drivers are up to date...
Module nikal is up-to-date
Module nibds is up-to-date
Module nistreamk is up-to-date
Module NiRioSrv is up-to-date
Module niusrpriok is up-to-date
Loading: NiRioSrv niusrpriok
Starting: niusrpriorpc

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ lsmod | grep -i
ni
niusrpriok            417792  0
NiRioSrv              942080  0
nistreamk             131072  2 niusrpriok,NiRioSrv
nibds                  57344  2 niusrpriok,NiRioSrv
nikal                  98304  4 niusrpriok,NiRioSrv,nistreamk,nibds

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uname -r
4.19.48-48.lts2018

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ ls /dev/ni/
'nistreamk:0\nistreamk\0'

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo netstat
-anp| grep 5444
tcp        0      0 0.0.0.0:5444            0.0.0.0:*               LISTEN
     1845/niusrpriorpc

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uhd_usrp_probe
--args "type=x300,resource=RIO0"
[INFO] [UHD] linux; GNU C++ version 9.1.1 20190605 gcc-9-branch@271943;
Boost_106800; UHD_3.14.0.HEAD-0-g6875d061
[ERROR] [UHD] Device discovery error: input stream error
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    type: x300
    resource: RIO0

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 uhd]$ git status
HEAD detached at v3.14.0.0

Digging through uhd code
lib/usrp/x300/x300_impl.cpp (x300_find_pcie ) ->
lib/usrp/x300/x300_impl.cpp (niusrprio_session::enumerate(rpc_port_name,
dev_info_vtr)) ->
lib/transport/nirio/niusrprio_session.cpp
(nirio_status_chain(temp_rpc_client.niusrprio_enumerate(device_info_vtr),
status)) ->
lib/transport/nirio/rpc/usrprio_rpc_client.cpp
 (usrprio_rpc_client::niusrprio_enumerate(NIUSRPRIO_ENUMERATE_ARGS))

out_args >> status; -> This returns status as -52012

Thanks
Kailash

--00000000000063e0fc058b06cbc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am unable to detect X3=
10 over pcie. I have installed uhd(v3.14.0.0) and compiled and installed RI=
O drivers as well. Below is my configuration:</div><div><br>UHD RIO Install=
er version:<br>niusrprio-installer-18.0.0</div><div><br></div><div>[pretlis=
t@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo niusrprio_pcie star=
t<br>Making sure drivers are up to date...<br>Module nikal is up-to-date<br=
>Module nibds is up-to-date<br>Module nistreamk is up-to-date<br>Module NiR=
ioSrv is up-to-date<br>Module niusrpriok is up-to-date<br>Loading: NiRioSrv=
 niusrpriok <br>Starting: niusrpriorpc<br><br>[pretlist@clr-85a7812169e346e=
6b143a228fe1b9641 Downloads]$ lsmod | grep -i ni<br>niusrpriok =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0417792 =C2=A00<br>NiRioSrv =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0942080 =C2=A00<br>nistreamk =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 131072 =C2=A02 niusrpriok,NiRioSrv<br>nibds =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A057344 =C2=A02 ni=
usrpriok,NiRioSrv<br>nikal =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A098304 =C2=A04 niusrpriok,NiRioSrv,nistreamk,nibds<br><br>[pre=
tlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uname -r<br>4.19.48-=
48.lts2018<br><br>[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]=
$ ls /dev/ni/<br>&#39;nistreamk:0\nistreamk\0&#39;<br><br>[pretlist@clr-85a=
7812169e346e6b143a228fe1b9641 Downloads]$ sudo netstat -anp| grep 5444<br>t=
cp =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A00 <a href=3D"http://0.0=
.0.0:5444">0.0.0.0:5444</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.0.0.=
0:* =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LISTEN =C2=A0 =C2=A0 =
=C2=A01845/niusrpriorpc =C2=A0 <br><br>[pretlist@clr-85a7812169e346e6b143a2=
28fe1b9641 Downloads]$ uhd_usrp_probe --args &quot;type=3Dx300,resource=3DR=
IO0&quot;<br>[INFO] [UHD] linux; GNU C++ version 9.1.1 20190605 gcc-9-branc=
h@271943; Boost_106800; UHD_3.14.0.HEAD-0-g6875d061<br>[ERROR] [UHD] Device=
 discovery error: input stream error<br>Error: LookupError: KeyError: No de=
vices found for -----&gt;<br>Device Address:<br>=C2=A0 =C2=A0 type: x300<br=
>=C2=A0 =C2=A0 resource: RIO0<br><br>[pretlist@clr-85a7812169e346e6b143a228=
fe1b9641 uhd]$ git status<br>HEAD detached at v3.14.0.0<br><br>Digging thro=
ugh uhd code<br>lib/usrp/x300/x300_impl.cpp (x300_find_pcie ) -&gt; =C2=A0<=
br>lib/usrp/x300/x300_impl.cpp (niusrprio_session::enumerate(rpc_port_name,=
 dev_info_vtr)) -&gt; <br>lib/transport/nirio/niusrprio_session.cpp (nirio_=
status_chain(temp_rpc_client.niusrprio_enumerate(device_info_vtr), status))=
 -&gt; =C2=A0<br>lib/transport/nirio/rpc/usrprio_rpc_client.cpp =C2=A0(usrp=
rio_rpc_client::niusrprio_enumerate(NIUSRPRIO_ENUMERATE_ARGS))<br><br>out_a=
rgs &gt;&gt; status; -&gt; This returns status as -52012</div><div><br></di=
v><div>Thanks</div><div>Kailash<br></div></div>

--00000000000063e0fc058b06cbc4--


--===============0605802194597018850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0605802194597018850==--

