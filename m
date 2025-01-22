Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4803A1931E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 14:59:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 809AE385BCE
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 08:59:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737554348; bh=axI3hBV+NP35D+3yEOCqi2ue8s6f7PqPS+XwFC02lOQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wflkyHYy24W1dhY/Z2UHb8Ca2wG0l67FKLshL7p9/dJQwEZsTWEDThWjOaO3idzp6
	 XfnF4xKN0uTMhBk7N5rfxgkVj9PgCbQz/j7XeSpcgOcOP0TiM2NQ+IWNBQLtJsP6pg
	 owj3Kd2xxEkaRzxk0KMNICc2LDfaFYcnUvTon2hpqhpgn6bDtR9w4hI/a/6b1nEYlG
	 sXYFXrT8Rh7P77/7Pey6uj/438p9zLH8lygaOl84fUtGtDDMYrd0BOY+C2HhoyrKTP
	 eCO6yR1rbiPNWQZVZImhaOjmISzH+8bz4d586GDs+CKM2ZshX97jSCoR5kU3KH7e94
	 CnLBuJAHPUVWg==
Received: from ironboyv.h-da.de (ironboyv.h-da.de [141.100.10.230])
	by mm2.emwd.com (Postfix) with ESMTPS id 41BA2385A9A
	for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 08:58:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=h-da.de header.i=@h-da.de header.b="XX84Rjgo";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=h-da.de; i=@h-da.de; l=512; q=dns/txt; s=s1;
  t=1737554308; x=1769090308;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=eBELfwieHm9kWne20FwS4KnbA326DsROqRZZBcy7EaQ=;
  b=XX84Rjgo+6vqQklh1qpG1hnhw2jjw33C+RTKpBjSeMyO0QET8adrx4pq
   0TfzUOJxdUKYgnC7eW1ypyraD/ualNuZbQe+Qy2zB4csNxtHthZZTrLVd
   HXom34iyL0aca05fEKVJwXwchHr+YKFIbGPDFmj8slle+A5o2xp3J3q3x
   Y=;
X-CSE-ConnectionGUID: J31QUYK7RByZaulcY0eWuA==
X-CSE-MsgGUID: mAggEM8rRPep0OWXQaNueg==
X-IPAS-Result: =?us-ascii?q?A2F0AwAj+ZBncsMBZI1agQmBU4FBAYF/gWQdiAiOIAOLY?=
 =?us-ascii?q?4tfhlYUgWEJDwEBDwEuAQoLBAEBAwEDhQACinUnNAkOAQIEAQEBAQMCAwEBA?=
 =?us-ascii?q?QEBAQEBAQEBCwEBBgEBAQEBAQYHAhABgQyFNUYNgxaCFixBKgEeAQEBAQMBT?=
 =?us-ascii?q?SAbAgEIEQQBASgHIAcJARQJCAIEAQcLCBUEgmGCHA0HAzEUBrRJeIE0gQGDH?=
 =?us-ascii?q?FFA2Q0NglMGCQGBPogwHgEqgTKED4R3gQKBCkOBFYF8gS4+gh9CBAGBKAESA?=
 =?us-ascii?q?VeGDgSCAwISGxw9CmIuAYEKAgICAgICAgICAgICAgKCGYIAggcCDAOBZlWBB?=
 =?us-ascii?q?4FEgQqCHi+GSoIbgUqBW4ZuLCZ1SzMsAQ9GExcLBwWBKRA4Ay02MSOBJgU1C?=
 =?us-ascii?q?jc5AYIMaUk6Ag0CNYIeJFiCK4IfgjuERYRRgkZUgkSCFHprAwMWEYMnex9PH?=
 =?us-ascii?q?UADCwdmPTcGDhsGAgGBNZp/ChBaATyDAy03YSgJCykCIIISCBAtkm4Kjy5Ho?=
 =?us-ascii?q?jJxAwQDgjWBZowYjTiBf4V/LheXUpMBC5hxIo1ihAWWegIEAgQFAheBZ3wqc?=
 =?us-ascii?q?HFPggEmQFIXAg+OWYNCv1h4AjoCBwsBAQMJkEQBgRwBAQ?=
IronPort-Data: A9a23:+B4Gjqg5jM2/f7xBBDKp9Jm/X161fBAKZh0ujC45NGQN5FlHY01je
 htvDDjQbK3famf9KNolPY+z/RkB6MWHmtRnSVdr/Ho2Hn9jpJueD7x1DKtQ0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC+U/1WlTGhSAljvvTLlbEILeafHg3HUk8FX9JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpNg06+gEoHUMra6G5wUmMWPZinjHeG/1EJAZQWI72GLneQauF8Au6gS
 u/f+6qy92Xf8g1FIovNfmHTKxBirhb6ZGBiu1IOM0SQqkEqSh8ais7XAMEhhXJ/0F1lqTzRJ
 OJl7vRcQS9xVkHFdX90vxNwS0mSNoUekFPLzOTWXWV+ACQqflO1q8iCAn3aMqU6ob9OPFBtq
 sYyOQIEcxSItrq7/6+SH7wEasQLdKEHPasas29t1zDSDrAmBJzKBaHN7tZctNsyrpkSRLCHP
 5JfMHw2PUmojx5nYz/7DLoym+KpgHj8NT1VqVSHjapy72GVwAEZPL3FbYuKI4bVGK25mG6dj
 23J0kGpGCsiOcTH7gW1y3uKm+LAyHaTtIU6TuTjraEx2DV/3Fc7EBQKXlulpv+zkEejXfpQL
 kUV/mwlqq1a3FGwVMG4Qga1umWsuh8HR8EWHvEm9RrLwa3Rizt1HUABRyBMct0tt4k3WTAjk
 F/Mk9qvCTEHXKCppWy11OzNlA6DGncvB34wbDIARjpd7ub+idRm5v7QdepLHKmwh9zzPDj/x
 TGWsSQz74n/a+ZXjc1XGnib21qRSoj1c+Ij2unAdk6Ihj6ViaagbpKl81nQ7rBBMIqQCFnEs
 HFCl8X2AAEy4XOlyXHlrAYlRe/BCxO53Nv02gAH834JrWTFxpJbVdoMiAyS3W8wWir+RRfnY
 VXIpSRa74JJMX2hYMdfOt3qVJh0lvS9RIW+DJg4i+aihLAtLmdrGwkyOSatM5zFwCDAbIlhZ
 MrAL65A815BUcyLMwZat89HiORwmXtmrY8ibZD8xBS82rqDYHPdRb4fNUCSZ+wlhJ5oUy2Im
 +uzw/CilU4FOMWgOXa/zGLmBQlWRZTNLcmq85QPHgNCSyI6cFwc5wj5net8JdE0z/UMx48lP
 BiVAydl9bY2vlWfQS3iV5ypQOqHsUpXxZ7jARERAA==
IronPort-HdrOrdr: A9a23:05jo1Ky7kLVLUxmY7wdBKrPwA71zdoMgy1knxilNoERuA6ulfr
 OV7ZImPH7P+UwssR4b6LO90cW7LU80sKQFhbX5Xo3SITUO2lHYTr2KhLGKq1aLdhEWtNQtsJ
 uIG5IOdOEYZmIVsS+O2mmF+qEboeVvnprGuQ6U9QYVcegjUdAZ0+5WMHfhLnFL
X-Talos-CUID: 9a23:xrTl0mEkvLZam3otqmJFrxctJ/EGLUf33UXZPkuzOD5kd6C8HAo=
X-Talos-MUID: =?us-ascii?q?9a23=3APT/SFQw/in36OCOrTQ/lWoKZn1maqKGHB08gtMU?=
 =?us-ascii?q?cgfGJLXRXBAekhRKqT4Byfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from maverick.itda.h-da.de (HELO maverick.h-da.local) ([141.100.1.195])
  by ironboyv.h-da.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jan 2025 14:58:01 +0100
Received: from Pluto.h-da.local (141.100.1.165) by maverick.h-da.local
 (141.100.1.195) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Wed, 22 Jan
 2025 14:58:01 +0100
Received: from maverick.h-da.local (141.100.1.195) by pluto.h-da.local
 (141.100.1.165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 22 Jan
 2025 14:58:01 +0100
Received: from maverick.h-da.local ([fe80::1726:ede5:c5da:108c]) by
 maverick.h-da.local ([fe80::1726:ede5:c5da:108c%7]) with mapi id
 15.02.1544.011; Wed, 22 Jan 2025 14:58:01 +0100
From: "Heinz, Dominik" <dominik.heinz@h-da.de>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERN] [USRP-users] Re: X310 RIO Session Initialization
 Failure (Error code -63150)
Thread-Index: AQHbbBCEAF0IMgO6i0mpMHRRQEidPLMhjZGAgAFFQvo=
Date: Wed, 22 Jan 2025 13:58:01 +0000
Message-ID: <a82baa39532e4545a88e3eb828100f8e@h-da.de>
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>,<39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
In-Reply-To: <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [5.146.51.81]
MIME-Version: 1.0
Message-ID-Hash: ZBDE5E5HJRFCTAQNIXEFMWHX26OKI3V5
X-Message-ID-Hash: ZBDE5E5HJRFCTAQNIXEFMWHX26OKI3V5
X-MailFrom: dominik.heinz@h-da.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBDE5E5HJRFCTAQNIXEFMWHX26OKI3V5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5368411601329609340=="

--===============5368411601329609340==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a82baa39532e4545a88e3eb828100f8ehdade_"

--_000_a82baa39532e4545a88e3eb828100f8ehdade_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I followed the steps in the guide you linked, - however, I still have the i=
ssue.

The uhd drivers are installed, and the niuspriorpc service is running. Howe=
ver, I still the the RIO session initialization failure.


Anything else I could try? I still don't understand what is the cause for t=
his.

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, January 21, 2025 8:32:39 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERN] [USRP-users] Re: X310 RIO Session Initialization Failure =
(Error code -63150)

On 21/01/2025 09:26, Heinz, Dominik wrote:

I'm experiencing an initialization issue with my Ettus X310 USRP device.

My setup consists of an Ettus X310 connected through a PCIe Card using a Mo=
lex cable to my Linux machine.

I'm running Ubuntu with kernel version 6.8.0-51-generic and have installed =
all the necessary UHD packages on the system.


The X310 is properly detected when running uhd_find_devices, but attempting=
 to probe the device with uhd_usrp_probe results in a RIO session initializ=
ation error.
I attached the error output below.
What is causing this RIO session initialization failure and how can it be r=
esolved?

gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial:
    fpga: HG
    name:
    product: X310
    resource: RIO0
    type: x300

gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/share/uhd/images/usrp_x310_fpga_HG.=
lvbitx
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown e=
rror. (Error code -63150)





_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


The procedures for making this work are here:

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie



--_000_a82baa39532e4545a88e3eb828100f8ehdade_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I followed the steps in the guide you linked, - however, I still have th=
e issue.</p>
<p>The uhd drivers are installed, and the niuspriorpc service is running. H=
owever, I still the the RIO session initialization failure.</p>
<p><br>
</p>
<p>Anything else I could try? I still don't understand what is the cause fo=
r this.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, January 21, 2025 8:32:39 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERN] [USRP-users] Re: X310 RIO Session Initialization F=
ailure (Error code -63150)</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 21/01/2025 09:26, Heinz, Dominik wrote:<b=
r>
</div>
<blockquote type=3D"cite" cite=3D"mid:a2248846c3ab40e9b6f0c270dd50563e@h-da=
.de"><style type=3D"text/css" style=3D"display:none;">P {margin-top:0;margi=
n-bottom:0;}</style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><span>I'm experiencing an initialization issue with my Ettus X310 USRP d=
evice.</span></p>
<p><span><span>My setup consists of an Ettus X310 connected through a PCIe =
Card using a Molex cable to my Linux machine.
<br>
</span></span></p>
<p><span><span>I'm running Ubuntu with kernel version 6.8.0-51-generic and =
have installed all the necessary UHD packages on the system.</span></span><=
/p>
<p><span><span><br>
</span></span></p>
<p><span><span></span></span></p>
<div>The X310 is properly detected when running <code class=3D"bg-text-200/=
5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap r=
ounded-[0.3rem] px-1 py-px text-[0.9rem]">
uhd_find_devices</code>, but attempting to probe the device with <code clas=
s=3D"bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whit=
espace-pre-wrap rounded-[0.3rem] px-1 py-px text-[0.9rem]">
uhd_usrp_probe</code> results in a RIO session initialization error.</div>
<div>I attached the error output below.</div>
<div>What is causing this RIO session initialization failure and how can it=
 be resolved?</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family: Consolas, Courier, monospace;">gnb@xgoss-h=
ost:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_devices
</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">[INFO] [UHD] lin=
ux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubuntu1~jamm=
y1</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">----------------=
----------------------------------</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">-- UHD Device 0<=
/span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">----------------=
----------------------------------</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">Device Address:<=
/span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; serial: </span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; fpga: HG</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; name: </span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; product: X310</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; resource: RIO0</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">&nbsp;&nbsp;&nbs=
p; type: x300</span></div>
<div><br>
<span style=3D"font-family: Consolas, Courier, monospace;">gnb@xgoss-host:~=
/srsRAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">[INFO] [UHD] lin=
ux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubuntu1~jamm=
y1</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">[INFO] [X300] X3=
00 initialization sequence...</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">[INFO] [X300] Co=
nnecting to niusrpriorpc at localhost:5444...</span><br>
<span style=3D"font-family: Consolas, Courier, monospace;">[INFO] [X300] Us=
ing LVBITX bitfile /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx</span><br=
>
<span style=3D"font-family: Consolas, Courier, monospace;">Error: RuntimeEr=
ror: x300_impl: Could not initialize RIO session. Unknown error. (Error cod=
e -63150)</span></div>
<br>
</div>
<br>
</div>
<br>
<fieldset class=3D"moz-mime-attachment-header"></fieldset>
<pre class=3D"moz-quote-pre" wrap=3D"">____________________________________=
___________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.c=
om</a>
</pre>
</blockquote>
The procedures for making this work are here:<br>
<br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual/p=
age_usrp_x3x0.html#x3x0_hw_pcie">https://files.ettus.com/manual/page_usrp_x=
3x0.html#x3x0_hw_pcie</a><br>
<br>
<br>
</div>
</body>
</html>

--_000_a82baa39532e4545a88e3eb828100f8ehdade_--

--===============5368411601329609340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5368411601329609340==--
