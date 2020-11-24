Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADF02C1B65
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 03:23:58 +0100 (CET)
Received: from [::1] (port=53036 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khNzn-0007IC-LU; Mon, 23 Nov 2020 21:23:55 -0500
Received: from mail-io1-f43.google.com ([209.85.166.43]:37630)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1khNzk-0007Bb-Bd
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 21:23:52 -0500
Received: by mail-io1-f43.google.com with SMTP id d17so20349696ion.4
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 18:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:mime-version:subject:from:in-reply-to
 :date:cc:message-id:references:to;
 bh=pglmiVTvQ3gL9fBAyq17MRksGzDkNFrv03X6vAryKFo=;
 b=AQwL7ixhfr8pBa3btuRM/Sg+/Rs67StjeN+HgTjCt5SCEviv9Ijs/Ygr9eCVxrG5tg
 boOMoGFsoX9JaORLugV9ZojKRdgjM2PgypU67K/5GONpADsYrOh4j1lZamOMbrKcQ8p2
 jVrkHJQKHvNx62j23Mh+WlwJlltKloH5b6vcPvPA6UdupAZHZ7idcx6N/4HB9vq4Tzmy
 dRrpzgFxPLYUS8bdyzzTZYltv+CasqUjlVZN/putz12QDmtpCjxLNhtycBe49H0INIkD
 /Dqb7qGD6mBB3U/L9+25lEE1S78mdiCYhwxlOnrKuyWv4XXkLvq3cDQU2a/D9uobXl/y
 +Hdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:mime-version:subject
 :from:in-reply-to:date:cc:message-id:references:to;
 bh=pglmiVTvQ3gL9fBAyq17MRksGzDkNFrv03X6vAryKFo=;
 b=HPslvDU7haPpy2/K2w2apJ/GbW5H1pmY/OhQLdsxViPGUUZcJveUZLObBpQWKu8+In
 BQ/7P4YUJvvq8qjhSHH58N1Iiw0yqZEQaHz2C/UvsyFhHGRtxaJoN4r8Ka7urJWIt+pV
 /hyBmaBRFvVyMVEeQPF0PQ9tiOjtnyEFJ5Fw9xk9AIJyZYWLXLVHKwJQwOBEJJP/GxMK
 5i8ruswESfbr3x3jQ5mirlHrW6U0v+qRdDOKmDBNSo0pC2A3O+ng7ud3kzq33TIupwjD
 JtktxNsQ1XYAGGqBlxaMQAJyM8LUJyx3dtZbu4l1OqO81MP+6EUHd52phcRH4w+rqq/4
 coSA==
X-Gm-Message-State: AOAM5320jkgf8CCcsEFDhwHPj7s6kJo3OfFcI7dc0RvhbdPHUchX8TX/
 ix3MeErQcFk2SeUyuigYDGx/odeN
X-Google-Smtp-Source: ABdhPJwQ3PDTMV86yGqmAsOzLBxUatbeglB8jNV82MZKl0wlo3seE6qJkDFS2bR6PssbJxaUJFE1aQ==
X-Received: by 2002:a5e:c608:: with SMTP id f8mr2284738iok.45.1606184591382;
 Mon, 23 Nov 2020 18:23:11 -0800 (PST)
Received: from [192.168.10.159] (c-73-247-35-187.hsd1.in.comcast.net.
 [73.247.35.187])
 by smtp.gmail.com with ESMTPSA id j17sm8890567ile.3.2020.11.23.18.23.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Nov 2020 18:23:10 -0800 (PST)
Mime-Version: 1.0 (1.0)
In-Reply-To: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
Date: Mon, 23 Nov 2020 21:23:09 -0500
Cc: usrp-users@lists.ettus.com
Message-Id: <84B751A1-3137-41AA-91FF-AAAEB03C7927@ettus.com>
References: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
To: Patrick Kane <prkane92@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] N321 QSFP+ XQ image network connection
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============5373978069603804428=="
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


--===============5373978069603804428==
Content-Type: multipart/alternative; boundary=Apple-Mail-F2897745-8839-4D0A-B67E-4087663CE7D8
Content-Transfer-Encoding: 7bit


--Apple-Mail-F2897745-8839-4D0A-B67E-4087663CE7D8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Pat - I recently verified that the N321 QAFP+ interface works with UHD 4.=
0 release. I am also using an Intel XL710 (QDA2, but that probably doesn=E2=80=
=99t matter too much). The trick for me was using the Intel QSFP+ NIC config=
uration tool to set the NIC to 2x(2x10 Gb) mode. This is the setting that th=
e N321 requires, and one that the NIC provides. Once that was set then you n=
eed to configures the host and USRP network interfaces as you normally would=
. After all of that, the link worked very nicely! I hope this is useful! - M=
LD=20

> On Nov 23, 2020, at 4:44 PM, Patrick Kane via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> I have an N321 connected to serial console and QSFP+ through a XL710 Intel=
 NIC. With the default HG image, I can connect through 1G and serial as expe=
cted. I updated the filesystem to UHD 4.0.0.0 using mender, and the build ar=
tifact reflects that this was successful. Then, after loading the XQ image (=
using 2x 10Gb lanes through QSFP+ port), I lose all ethernet connectivity th=
rough the 1G port SFP0 (expected), but I get the following output in the con=
sole window:
>=20
> [  451.560674] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - fl=
ow control off
> [  453.800673] nixge 40000000.ethernet sfp0: Link is Down
> [  454.920676] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - fl=
ow control off
> [  458.280672] nixge 40000000.ethernet sfp0: Link is Down
> [  459.400677] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - fl=
ow control off
> [  462.760705] nixge 40000000.ethernet sfp0: Link is Down
> [  463.880678] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full - fl=
ow control off
> [  466.120673] nixge 40000000.ethernet sfp0: Link is Down
>=20
> uhd_usrp_probe:
>   _____________________________________________________
>  /
> |       Device: N300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-n3xx-31E00AC
> |   |   dboard_0_pid: 338
> |   |   dboard_0_serial: 31DB406
> |   |   dboard_1_pid: 338
> |   |   dboard_1_serial: 31DB407
> |   |   eeprom_version: 3
> |   |   fs_version: 20200914000806
> |   |   mender_artifact: v4.0.0.0_n3xx
> |   |   mpm_sw_version: 4.0.0.0-g90ce6062
> |   |   pid: 16962
> |   |   product: n320
> |   |   rev: 7
> |   |   rpc_connection: local
> |   |   serial: 31E00AC
> |   |   type: n3xx
> |   |   MPM Version: 3.0
> |   |   FPGA Version: 8.0
> |   |   FPGA git hash: be53058.clean
> |   |
> |   |   Time sources:  internal, external, gpsdo, sfp0
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gp=
s_time, gps_tpv
>=20
> Are there any configuration items needed to connect to the N321 through th=
e QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/networ=
k/interfaces.
>=20
> Thanks,
> Pat
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F2897745-8839-4D0A-B67E-4087663CE7D8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr">Hi Pat - I recently verifi=
ed that the N321 QAFP+ interface works with UHD 4.0 release. I am also using=
 an Intel XL710 (QDA2, but that probably doesn=E2=80=99t matter too much). T=
he trick for me was using the Intel QSFP+ NIC configuration tool to set the N=
IC to 2x(2x10 Gb) mode. This is the setting that the N321 requires, and one t=
hat the NIC provides. Once that was set then you need to configures the host=
<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">&nbsp;and US=
RP</span>&nbsp;network interfaces as you normally would. After all of that, t=
he link worked very nicely! I hope this is useful! - MLD&nbsp;</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Nov 23, 2020, at 4:44 PM, Patrick K=
ane via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"l=
tr"><div class=3D"gmail-WordSection1" style=3D"page: WordSection1;">

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">I have an N321 connected to s=
erial console and QSFP+ through a XL710 Intel NIC. With the default HG image=
, I can connect through 1G and serial as expected. I updated the filesystem t=
o UHD 4.0.0.0 using mender, and the build artifact reflects that this was su=
ccessful. Then, after loading the XQ image (using 2x 10Gb lanes through QSFP=
+ port), I lose all ethernet connectivity through the 1G port SFP0 (expected=
), but I get the following output in the console window:</span></p><p class=3D=
"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-f=
amily:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNormal" s=
tyle=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:Calibri=
,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,=
sans-serif;color:black">[&nbsp; 451.560674] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span></=
p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 453.800673] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 454.920676] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span></=
p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 458.280672] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 459.400677] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span></=
p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 462.760705] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 463.880678] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span></=
p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">[&nbsp; 466.120673] nixge
40000000.ethernet sfp0: Link is Down</span><span style=3D"font-size:10pt;fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:black"> </span></p><p class=3D=
"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-f=
amily:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNormal" s=
tyle=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:Calibri=
,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe UI&quot;,=
sans-serif;color:black">uhd_usrp_probe:</span></p><div class=3D"gmail-WordSe=
ction1" style=3D"page: WordSection1;">

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">&nbsp; _____________________=
________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">&nbsp;/</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; Device:
N300-Series Device</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp;&nbsp;&nbsp;
_____________________________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp;&nbsp; /</span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Mboard:
ni-n3xx-31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; d=
board_0_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; d=
board_0_serial:
31DB406</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; d=
board_1_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; d=
board_1_serial:
31DB407</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; e=
eprom_version: 3</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; f=
s_version:
20200914000806</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; m=
ender_artifact:
v4.0.0.0_n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; m=
pm_sw_version:
4.0.0.0-g90ce6062</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; p=
id: 16962</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; p=
roduct: n320</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; r=
ev: 7</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; r=
pc_connection:
local</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
erial: 31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; t=
ype: n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; M=
PM Version: 3.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; =
FPGA Version: 8.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; =
FPGA git hash:
be53058.clean</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; T=
ime sources:&nbsp;
internal, external, gpsdo, sfp0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; C=
lock sources:
external, internal, gpsdo</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black">|&nbsp;&nbsp; |&nbsp;&nbsp; S=
ensors:
ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</sp=
an></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p cla=
ss=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"=
#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">A=
re there any configuration items needed to connect to the N321 through the Q=
SFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/network/i=
nterfaces.</span></font></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;l=
ine-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-serif"><sp=
an style=3D"font-size:13.3333px"><br></span></font></p><p class=3D"MsoNormal=
" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"#000000" face=3D=
"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">Thanks,</span></f=
ont></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><=
font color=3D"#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-siz=
e:13.3333px">Pat</span></font></p>

</div><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p>

</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-F2897745-8839-4D0A-B67E-4087663CE7D8--


--===============5373978069603804428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5373978069603804428==--

