Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 688A6210220
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 04:39:03 +0200 (CEST)
Received: from [::1] (port=39720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqSeJ-0006Nc-Af; Tue, 30 Jun 2020 22:38:59 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:38504)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jqSeF-0006E0-0T
 for USRP-users@lists.ettus.com; Tue, 30 Jun 2020 22:38:55 -0400
Received: by mail-qk1-f171.google.com with SMTP id e13so20831249qkg.5
 for <USRP-users@lists.ettus.com>; Tue, 30 Jun 2020 19:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=LBUMmfZmf94ExFR77HGXZUDwZ5xry7Z+Ij3GH8+pae8=;
 b=TsuKpflTahdBJ/8Wo2qxyG8KCOFWZozmr05962auknwWN9DQvzmPdFliPP5acAdIz+
 Y5JODy8zYsLTw37SCNAEMU8oibqKSx6DRerryqP9PS75iZYhFSI3Tbdqffg/IXRZ3Fqo
 lw81o4NXOKaNG0BPHeLnxJukWEX+7oI25oRyB6HlXbx625w0JDNnT6sl7nUCk9XeeWKf
 YnOIewUeqSZgQoBR2rJLHTgxbS9hPbJX3uUL/CvE+gsu9V7RrM7Ip6VNOiUBmIkVkayv
 xPh+AaFVT4kD0gmQhbpKS4bcgjjwRdLN08boB+trrMHGO16ByeJNCM4RG5Sxz99atpVl
 uslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=LBUMmfZmf94ExFR77HGXZUDwZ5xry7Z+Ij3GH8+pae8=;
 b=pKNkYmj1NnMyvDA1ZWDEZQ2GAeaFW7qlCPdlLtc+UimM5hHjIk1F+R28hWPhpxUvR8
 89+KkVDPC0iCHcbNP6MmkvYZZbCcZSjOYtlaWoQKfonE4fsnNEQn9YfFnMX25qb6FYyH
 Q8bT9CxJ3jbjMC39f6/1Lixoi80RQRDLlNHJZU9l9rP+UjU0FwTp6aYM+/11u5tD7Z80
 BlJgHVzxMaHXjV7uoTeRDolibcwfInkWyhCHjxx8ewCe4fldoythgjo1OVODvxBJogiI
 F4p08azZFKaRx02Us1fMtP77bv94i2McEXDMR3+qyNBPP5ob3Ljj+rKcMk1i8mqzg7p1
 wGMw==
X-Gm-Message-State: AOAM532Da1LXntSO54UsCGUXyDpsepVU0y8ZGkzEAMstjiMn0q6Aegzt
 rxDMsfmY+w0X9oyR8MqiJPEeKlqE
X-Google-Smtp-Source: ABdhPJz5iCLp7lDm0iRf6ypLhur1gS7s3GrajbvxheM5cfHEQMIypMMHEOVrpUykWFlBqMdVUmoOdg==
X-Received: by 2002:a37:7c9:: with SMTP id 192mr22700527qkh.255.1593571094396; 
 Tue, 30 Jun 2020 19:38:14 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id i10sm5992134qkn.126.2020.06.30.19.38.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Jun 2020 19:38:13 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 30 Jun 2020 22:38:13 -0400
Message-Id: <FBD35268-FBD8-4E28-ADB4-6376E3310F8B@gmail.com>
References: <CAJU_EcVqLsgWuRCPfQAjcpmrRFUMepJXMfn7Y3ZPpe0wOVgBnA@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAJU_EcVqLsgWuRCPfQAjcpmrRFUMepJXMfn7Y3ZPpe0wOVgBnA@mail.gmail.com>
To: Nate Young <nate.young@wde-llc.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] Exception in uhd_usrp_make (b205mini)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6035485697723596816=="
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


--===============6035485697723596816==
Content-Type: multipart/alternative; boundary=Apple-Mail-24B301D5-3B53-4BC9-B4EE-9B7EE9D07F89
Content-Transfer-Encoding: 7bit


--Apple-Mail-24B301D5-3B53-4BC9-B4EE-9B7EE9D07F89
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Load the standard image and see if that makes a difference.=20



Sent from my iPhone

> On Jun 30, 2020, at 10:24 PM, Nate Young via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi All.
>=20
> I have an Ettus b205 that is being used in a customized HDL design that ha=
s been working reliably for many months through the development and addition=
 of many features.
>=20
> Recently, the design stopped working and is now providing the following er=
ror during uhd_usrp_make() call from the host:
>=20
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.0-124-=
geb448043
> [INFO] [B200] Detected Device: B205mini
> [INFO] [B200] Operating over USB 3.
> [ERROR] [UHD] Exception caught in safe-call.
>   in virtual radio_ctrl_core_3000_impl::~radio_ctrl_core_3000_impl()
>   at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:63
> this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout < _=
timeout
>   in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)
>   at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:220
>=20
> To my knowledge, nothing has changed (Linux drivers, application C code or=
 FPGA/HDL).     Previous code revisions (that have been working for months) n=
o longer work.
> I have debugged and am starting to wonder if my b205 is broken.
>=20
> My system setup is an ODROID XU4 running the UHD firmware, connected over U=
SB3 to the b205.  I have replaced the ODROID XU4, as well as the cable, but s=
till get the same error.
>=20
> Linux lsusb sees the b205 with what I believe are the correct vendor and p=
roduct ID.
> >> Bus 004 Device 004: ID 2500:0022
>=20
> The ODROID appears to be able to talk to the b205, as uhd_find_devices fin=
ds the b205.
>=20
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.0-124-=
geb448043
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 319B8D5
>     name: B205i
>     product: B205mini
>     type: b200
>=20
> In addition, the FPGA .bin file is being loaded.  I can generate custom FP=
GA builds that toggle various LEDs.. proving that the FPGA and at least one o=
f its clocks are working.
>=20
> So, in summary, I get a timeout from radio_ctrl_core_3000's read of peek32=
(0).
> The host computer (ODROID XU4) sees the b205 via lsusb.
> The host computer can find the b205 using uhd_find_devices.
> The FPGA bitstream is being downloaded. =20
> Replacing the ODROID and the cable did not help.
>=20
> That is a strange combination.  It seems to indicate the b205 is broken, b=
ut still working enough to download the fpga?  Seems odd to me.
>=20
> I am working to get a new b205 to use as a comparison, but that will take a=
 week or so.
>=20
> In the meantime, does anyone have suggestions on other ideas to try, or HD=
L changes (using Chipscope) that I might try to monitor to see if something i=
s broken?
>=20
> Thank you very much.
> Nate
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-24B301D5-3B53-4BC9-B4EE-9B7EE9D07F89
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Load the standard image and see if that mak=
es a difference.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from=
 my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 30, 20=
20, at 10:24 PM, Nate Young via USRP-users &lt;usrp-users@lists.ettus.com&gt=
; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<div dir=3D"ltr"><span id=3D"gmail-docs-internal-guid-72b458cd-7f=
ff-772b-d071-5f31b0a6b4a4"><p dir=3D"ltr" style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;co=
lor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font=
-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Hi A=
ll.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant-=
east-asian:normal;vertical-align:baseline;white-space:pre-wrap">I have an Et=
tus b205 that is being used in a customized HDL design that has been working=
 reliably for many months through the development and addition of many featu=
res.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,=
0);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;vertical-align:baseline;white-space:pre-wrap"><br></span><spa=
n style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;ver=
tical-align:baseline;white-space:pre-wrap">Recently, the design stopped work=
ing and is now providing the following error during uhd_usrp_make() call fro=
m the host:</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:transparent;font-style:italic;font-variant-nu=
meric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-sp=
ace:pre-wrap">[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3=
.15.0.0-124-geb448043</span></p><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ari=
al;color:rgb(0,0,0);background-color:transparent;font-style:italic;font-vari=
ant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">[INFO] [B200] Detected Device: B205mini</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span s=
tyle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:t=
ransparent;font-style:italic;font-variant-numeric:normal;font-variant-east-a=
sian:normal;vertical-align:baseline;white-space:pre-wrap">[INFO] [B200] Oper=
ating over USB 3.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;c=
olor:rgb(0,0,0);background-color:transparent;font-style:italic;font-variant-=
numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-=
space:pre-wrap"><b>[ERROR] [UHD] Exception caught in safe-call.</b></span></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background=
-color:transparent;font-style:italic;font-variant-numeric:normal;font-varian=
t-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"><b>&nbsp;&=
nbsp;in virtual radio_ctrl_core_3000_impl::~radio_ctrl_core_3000_impl()</b><=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);ba=
ckground-color:transparent;font-style:italic;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">&n=
bsp;&nbsp;at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:63</=
span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);bac=
kground-color:transparent;font-style:italic;font-variant-numeric:normal;font=
-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"><b>=
this-&gt;peek32(0); _async_task.reset(); -&gt; AssertionError: accum_timeout=
 &lt; _timeout</b></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;=
color:rgb(0,0,0);background-color:transparent;font-style:italic;font-variant=
-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;white=
-space:pre-wrap">&nbsp;&nbsp;in uint64_t radio_ctrl_core_3000_impl::wait_for=
_ack(bool)</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-style:italic;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:p=
re-wrap">&nbsp;&nbsp;at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_30=
00.cpp:220</span></p><div><br></div><div>To my knowledge, nothing has change=
d (Linux drivers, application C code or FPGA/HDL).&nbsp;&nbsp;

&nbsp; Previous code revisions (that have been working for months) no longer=
 work.</div><div>I have debugged and am starting to wonder if my b205 is bro=
ken.</div><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;vertical-align:baseline;white-space:pre-wrap">My system setup i=
s an ODROID XU4 running the UHD firmware, connected over USB3 to the b205.&n=
bsp; I have replaced the ODROID XU4, as well as the cable, but still get the=
 same error.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;co=
lor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font=
-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Lin=
ux lsusb sees the b205 with what I believe are the correct vendor and produc=
t ID.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0=
,0);background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;vertical-align:baseline;white-space:pre-wrap">&gt;&gt; Bus 0=
04 Device 004: ID 2500:0022</span></p><br><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-=
family:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-spac=
e:pre-wrap">The ODROID appears to be able to talk to the b205, as uhd_find_d=
evices finds the b205.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-famil=
y:Arial;color:rgb(0,0,0);background-color:transparent;font-style:italic;font=
-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseli=
ne;white-space:pre-wrap">[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_10=
6501; UHD_3.15.0.0-124-geb448043</span></p><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font=
-family:Arial;color:rgb(0,0,0);background-color:transparent;font-style:itali=
c;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:=
baseline;white-space:pre-wrap">---------------------------------------------=
-----</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0=
,0);background-color:transparent;font-style:italic;font-variant-numeric:norm=
al;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">-- UHD Device 0</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial=
;color:rgb(0,0,0);background-color:transparent;font-style:italic;font-varian=
t-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;whit=
e-space:pre-wrap">--------------------------------------------------</span><=
/p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgroun=
d-color:transparent;font-style:italic;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Device Ad=
dress:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,=
0,0);background-color:transparent;font-style:italic;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-w=
rap">&nbsp;&nbsp;&nbsp;&nbsp;serial: 319B8D5</span></p><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-s=
tyle:italic;font-variant-numeric:normal;font-variant-east-asian:normal;verti=
cal-align:baseline;white-space:pre-wrap">&nbsp;&nbsp;&nbsp;&nbsp;name: B205i=
</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);b=
ackground-color:transparent;font-style:italic;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">&=
nbsp;&nbsp;&nbsp;&nbsp;product: B205mini</span></p><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:1=
1pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-sty=
le:italic;font-variant-numeric:normal;font-variant-east-asian:normal;vertica=
l-align:baseline;white-space:pre-wrap">&nbsp;&nbsp;&nbsp;&nbsp;type: b200</s=
pan></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);=
background-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;vertical-align:baseline;white-space:pre-wrap">In addition, the FP=
GA .bin file is being loaded.&nbsp; I can generate custom FPGA builds that t=
oggle various LEDs.. proving that the FPGA and at least one of its clocks ar=
e working.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"><br></spa=
n></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span s=
tyle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertic=
al-align:baseline;white-space:pre-wrap">So, in summary, I get a timeout from=
 radio_ctrl_core_3000's read of peek32(0).</span></p><p style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-f=
amily:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numer=
ic:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space=
:pre-wrap">The host computer (ODROID XU4) sees the b205 via lsusb.</span></p=
><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font color=3D=
"#000000" face=3D"Arial"><span style=3D"font-size:14.6667px;white-space:pre-=
wrap">The host computer can find the b205 using uhd_find_devices.</span></fo=
nt></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">The FP=
GA bitstream is being downloaded.&nbsp;&nbsp;<font color=3D"#000000" face=3D=
"Arial"><span style=3D"font-size:14.6667px;white-space:pre-wrap"><br></span>=
</font></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><f=
ont color=3D"#000000" face=3D"Arial"><span style=3D"font-size:14.6667px;whit=
e-space:pre-wrap">Replacing the ODROID and the cable did not help.</span></f=
ont></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font=
 color=3D"#000000" face=3D"Arial"><span style=3D"font-size:14.6667px;white-s=
pace:pre-wrap"></span></font></p><p style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><font color=3D"#000000" face=3D"Arial"><span style=3D"fo=
nt-size:14.6667px;white-space:pre-wrap"><br></span></font></p><p style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt"><font color=3D"#000000" fac=
e=3D"Arial"><span style=3D"font-size:14.6667px;white-space:pre-wrap">That is=
 a strange combination.  It seems to indicate the b205 is broken, but still w=
orking enough to download the fpga?  Seems odd to me.</span></font></p><div>=
<span><br></span></div>I am working to get a new b205 to use as a comparison=
, but that will take a week or so.</span><div><span><br></span></div><div><s=
pan>In the meantime, does anyone have suggestions on other ideas to try, or H=
DL changes (using Chipscope) that I might try to monitor to see if something=
 is broken?</span></div><div><span><br></span></div><div>Thank you very much=
.</div><div><span><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant-=
east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Nate</span><=
/p><br></span></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-24B301D5-3B53-4BC9-B4EE-9B7EE9D07F89--


--===============6035485697723596816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6035485697723596816==--

