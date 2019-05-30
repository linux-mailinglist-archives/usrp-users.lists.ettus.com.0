Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 220082FCC5
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 15:59:00 +0200 (CEST)
Received: from [::1] (port=40114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWLa6-0007Tb-Q3; Thu, 30 May 2019 09:58:58 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:39227)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ferondylan@gmail.com>)
 id 1hWLa3-0007MY-2h
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 09:58:55 -0400
Received: by mail-lj1-f170.google.com with SMTP id a10so2928864ljf.6
 for <usrp-users@lists.ettus.com>; Thu, 30 May 2019 06:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Si03RoMXdzfJDzgK0BeESoXtM5MeMXO+A5AxJ+gx5xA=;
 b=lvgvEbdyy37UmBo+EM3I2q0KU6w9PZ86IE0qw8ISny73pzVRj0EKzTon14gijcA511
 vQSoPm9ZYxds4NziUx8nc5ED3xdU6gQ7k9ghgaAHERv5mHGd6MZ7mX0kyue1VfFJWYcm
 n/tLtI3wH9sdQbwUGNiPShOTr4ojb4+sSVyzCSlVD3YPgmOCLvNgAsADekkgAgQrDtbV
 Zs5uhWS+jC5SeDjiBa2aTAKyGxOb04o+ZV/NJGnllXTC8bLgc7/MjTDhM6P85XRSRPFD
 mQaQ4r3cdrIOQu13D9roO4n58NFqDjUR0TyvAnUS8o361wI511p8QfGxRC97qIqaCO/Q
 PFgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Si03RoMXdzfJDzgK0BeESoXtM5MeMXO+A5AxJ+gx5xA=;
 b=IrSyUhwJNlxEL9q1y2Y3mrIGEs6X1R7BDjRTYB85Pm/DvHIl9XDENBKQQeH+uG+Fjc
 U4bZ5eNoEoWdHtcdm9wdQGqYmIYGxnqD/U0EK0AOX70W7j1thY3erytdk+FhjyBF6Lo7
 uXYx5o3KzkB8jPpsVNI5ZtTzkUGhJN7y3qyTX04MwpGaUxP6W9z0dfvfwMsRU+lkYm4+
 buowoeHyCG4qwtT38Q3LP0jAsyQD3+z1lFKhL4Pv9cZ7lbO3bQ+UXNCoE8TzIn9wOMpp
 HTCzC2E4AP4b/KuP9XEJumfLmGbjVQrWrQM7sZZJTE36iF+qisZfxT6qn25SGOmYEMuP
 j+6A==
X-Gm-Message-State: APjAAAVPiegk1tjSkO1vWbDy0jtI8QYGXTkowca5S8scVuP1j1eNM2kd
 eqf65g0ZGRGkqvtwQTewDYKgJ7NbwTQD+hs5gsY30VtY
X-Google-Smtp-Source: APXvYqx9Fwkhtuk7QP7UZWiaomS9YYYMVSBZeBxuQqUMhifcLZqjyMLHem8Ufxk7DivNsOuPWiouhIoFTfOtRG9PrM8=
X-Received: by 2002:a2e:960e:: with SMTP id v14mr2270955ljh.31.1559224693370; 
 Thu, 30 May 2019 06:58:13 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 30 May 2019 15:58:00 +0200
Message-ID: <CAOV5X-V_zQoxTruu5z8t4mbxKF6obDOShp9V4bCNkuWwi8tmfg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Error message when trying to send signals with HackRF
 One on GRC
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
From: Dylan Feron via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dylan Feron <ferondylan@gmail.com>
Content-Type: multipart/mixed; boundary="===============1365545587904654538=="
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

--===============1365545587904654538==
Content-Type: multipart/alternative; boundary="000000000000f933f2058a1b4977"

--000000000000f933f2058a1b4977
Content-Type: text/plain; charset="UTF-8"

Hello,

I am using a HackRF One to transmit signals to an USRP NI 2921 which
receives the signal. Whatever the signal I am sending (sine, cosine,
triangle,...) and whatever the frequency of the signal sent, I always
obtain the same peak located at the same frequency (around the frequency
carrier shifted of 50 kHz) in the FFT received on the NI 2921.
I am using GNURadio Companion as the software processing the signals. Here
is the message I obtain in the console of the transmitting signal on GRC :

*Warning: failed to XInitThreads() linux; GNU C++ version 7.3.0;
Boost_106501; UHD_003.010.003.000-0-unknown gr-osmosdr 0.1.4 (0.1.4)
gnuradio 3.7.11 built-in sink types: uhd hackrf bladerf soapy redpitaya
freesrp file Cannot connect to server socket err = No such file or
directory Cannot connect to server request channel jack server is not
running or cannot be started JackShmReadWritePtr::~JackShmReadWritePtr -
Init not done for -1, skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping
unlock Using HackRF One with firmware 2018.01.1*

Can somebody enlighten me?

Thank you in advance,
Dylan

--000000000000f933f2058a1b4977
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font color=3D"#242729" face=3D"Arial, Helvetica Neue=
, Helvetica, sans-serif"><span style=3D"font-size:15px">Hello,</span></font=
></div><div><font color=3D"#242729" face=3D"Arial, Helvetica Neue, Helvetic=
a, sans-serif"><span style=3D"font-size:15px"><br></span></font></div><div>=
<font color=3D"#242729" face=3D"Arial, Helvetica Neue, Helvetica, sans-seri=
f"><span style=3D"font-size:15px">I am using a HackRF One to transmit signa=
ls to an USRP NI 2921 which receives the signal. Whatever the signal I am s=
ending (sine, cosine, triangle,...) and whatever the frequency of the signa=
l sent, I always obtain the same peak located at the same frequency (around=
 the frequency carrier shifted of 50 kHz) in the FFT received on the NI 292=
1.=C2=A0</span></font></div><span style=3D"margin:0px;padding:0px;border:0p=
x;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch=
:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,H=
elvetica,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inher=
it;color:rgb(36,39,41)"><div style=3D""><span style=3D"margin:0px;padding:0=
px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;=
font-stretch:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica =
Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:baseline;box-=
sizing:inherit;color:rgb(36,39,41)">I am using GNURadio Companion as the so=
ftware processing the signals. Here is the message I obtain in the console =
of the transmitting signal on GRC :=C2=A0</span></div><div style=3D""><br><=
/div><i>Warning: failed to XInitThreads() linux; GNU C++ version 7.3.0; Boo=
st_106501; UHD_003.010.003.000-0-unknown gr-osmosdr 0.1.4 (0.1.4) gnuradio =
3.7.11 built-in sink types: uhd hackrf bladerf soapy redpitaya freesrp file=
 Cannot connect to server socket err =3D No such file or directory Cannot c=
onnect to server request channel jack server is not running or cannot be st=
arted JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, ski=
pping unlock JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for =
-1, skipping unlock Using HackRF One with firmware 2018.01.1</i></span><br>=
<div><span style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:=
inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:in=
herit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;fon=
t-size:15px;vertical-align:baseline;box-sizing:inherit;color:rgb(36,39,41)"=
><i><br></i></span></div><div><span style=3D"margin:0px;padding:0px;border:=
0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stret=
ch:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;=
,Helvetica,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inh=
erit;color:rgb(36,39,41)">Can somebody enlighten me?=C2=A0</span></div><div=
><span style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inhe=
rit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-si=
ze:15px;vertical-align:baseline;box-sizing:inherit;color:rgb(36,39,41)"><br=
></span></div><div><span style=3D"margin:0px;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;=
line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,=
sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;color:=
rgb(36,39,41)">Thank you in advance,</span></div><div><span style=3D"margin=
:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&q=
uot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align=
:baseline;box-sizing:inherit;color:rgb(36,39,41)">Dylan</span></div></div>

--000000000000f933f2058a1b4977--


--===============1365545587904654538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1365545587904654538==--

