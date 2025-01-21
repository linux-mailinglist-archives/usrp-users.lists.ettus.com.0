Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFCCA17FBD
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 15:27:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E2B2385D4C
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 09:27:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737469648; bh=nndHuN7FJB1tflLsFQbTVmj7qGoquamx8V28RDeD26I=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yTY4CWvTutTwpoyuErYfikEBBFxO757cf0sYemgYj6VlAeNhTqnl4Zd2fr4ip+cjs
	 qvWycDw/hCyYv9laa5yaEMTlK8UcinPHpXzVbQJcZi5WM0UIQtCJG2XrN9bIdLN8mP
	 YvawtXNdmlNoQf5hAmeksKIXQ/dBF8D/XaOWxXKH3s/Dj45Smc/tg6mdO6yvoaTavT
	 E2fK4UC0TB3wPFALgfqjPowB2sUrVchtgbcBmm525ABKmxBuLH11mho/z/J+32DRDl
	 x/I4mzymP/t4iF2RVsmy+eCecYiYM8CdA+uXrSyuBIv1rvXbBiiUcTz8v3R6O9xwSs
	 DpjsD2godQOWw==
Received: from ironmanv.h-da.de (ironmanv.h-da.de [141.100.10.250])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DC7D385C85
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 09:27:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=h-da.de header.i=@h-da.de header.b="NWCNUkzN";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=h-da.de; i=@h-da.de; l=512; q=dns/txt; s=s1;
  t=1737469620; x=1769005620;
  h=from:to:subject:date:message-id:mime-version;
  bh=6aaUzLfhb8UqeHIVFvmKnBgMuBcoo2Y4qYPuGPqyukw=;
  b=NWCNUkzNkVxJ0ac8kGVTtEEzHdD7+t4amZcY754I0Z+xW8HXMr7Qhnb1
   jiCHghxKMQjiI3SWF/YsDjFsoDfyedPK27SnJd9/gG5et6jyW6KViT/RZ
   IhDOBKA09pP6oMRaRHSMrAO+xnXGJIXYeyQmp/Uwnfzggxa0ApngxgWeN
   E=;
X-CSE-ConnectionGUID: 5D5RvCXQSaux8K6YTqllhQ==
X-CSE-MsgGUID: Pm7TYrdyRBmz0bX22INZSw==
X-IPAS-Result: =?us-ascii?q?A2ErAwABro9ncsMBZI1agQmBU4FBhAGWKJdFhlaBfg8BA?=
 =?us-ascii?q?Q8BRAQBAY9+JzQJDgECBAEBAQEDAgMBAQEBAQEBAQEBAQsBAQYBAQEBAQEGB?=
 =?us-ascii?q?wIQAYEMhTVHDId0AX8nBBuFFg07s3mBNIEBhHvbJQkBgT6ITgEqgTKEDziFQ?=
 =?us-ascii?q?YEKQ4EVgXyMcwSCMoFFg26GVI8HiXQsgRtLMywBD0YTFwsHBYFxAy02FRyBS?=
 =?us-ascii?q?kQ3OYINaUs6Ag0CNYIeJFiCK4RchEWEUYVbghSHAR1AAwsHZj03FBsGAgGBN?=
 =?us-ascii?q?ZpoChCEGi03YSgJVoIakyuPOEeBNKFvAwQDgjWBZqFOLheXUpMBC5hxIqhhA?=
 =?us-ascii?q?gQCBAUCF4FnghZxgnZBURcCD89sgTQCBwsBAQMJkDcBgRwBAQ?=
IronPort-Data: A9a23:oGTAU6r7sJwpyjgKdi3k+ZnNlZdeBmIcZRIvgKrLsJaIsI4StFCzt
 garIBmGaf6JYmb3Ltkjbozgp0oAup/Wyoc2SwE6rHs8QykRo+PIVI+TRqvS04N+DSFioGZPt
 Zh2hgzodZhsJpP6jknyauCJQV5UjPjTHOCU5NbsY343HUk8Dn980XqPosZh6qZwm9+1HgiRj
 t37pszbKTeN1iV9Wo4uw/vrRC5H5ZwehhtI4zTSWtgT1LPuvyF9JI4SI6i3M0z5TuF8dsamR
 /zOxa2O5WjQ+REgELuNyt4XpWVTH9Y+lSDX4pZnc/DKbipq/0Te4Y5jXBYoUnq7vh3S9zxHJ
 HWhgrTrIeshFvWkdO3wyHC0GQkmVUFN0OevzXRSLaV/ZqAJGpfh66wGMa04AWEX0rtbXFtQ3
 swhEzkQfkCg2dOK2ba/StA506zPLOGzVG8eknRp0zzDDP0lB5CGT6yM4dhT1TNYasJmRKqHI
 ZNBMXw2Kk2RPnWjOX9OYH46tOuvg3j5cj4eqF+Uo7gf4y3fxUp93dABNfKIJIPWG5sFxS50o
 Er++jvFMwsWJea1zCjd+EL23M7prxjkDdd6+LqQrKcx2wLIngT/EiY+SEChubykkUOkQPpbK
 lcI4WwjsbQv7wqgSdyVYvGjiHuNoBMGWtFTVewm5AjLyu/Y6kCVCwDoUwKtdvR7mJIMWxca7
 2SAgsO5JmJejKSRTXKko+L8QSyJBQAZKmoLZCkhRAQD4sX+rIxbsv4pZo08eEJSpoGtcQwc0
 wy3QD4Ca6I7oeNj6klW1VXOnT+2p5PKCA8p6gyRXiep50V1aeZJhrBEC3CGtp6sz67AEDFtW
 UTofeDEvYji6rnXxUSwrB0lRu3B2hp8GGS0baRTN5cg7S+x3HWoYJpd5jpzTG8wbZ1bImawP
 ROL4FwPjHO2AJdMRfQoC25WI5hxpZUM6fy6PhwpRoQTP8MvHON51H0yDaJv44wduBJ1yvpgY
 s/znTeEDXERCb9szCeySq8R2KUu3Tw3yX+7eHwI50nP7FZqX1bLEu1tGAXVMYgEAFas+Vm9H
 yB3bpfSk003vSyXSnW/zLP/2nhTdSJlXsGv9pQNHgNBSyI/cFwc5zbq6etJU+RYc259z48kI
 lnVtpdk9WfC
IronPort-HdrOrdr: A9a23:v4HcWKm11jeV+Wcg4Lcw8wuYH/zpDfIg3DAbv31ZSRFFG/Fw9v
 re+MjzuiWftN98YhwdcJW7VpVoIkm2yXcW2/hzAV5zZniChILAFugL0WKh+Vzd8kbFmdK1u5
 0NT0EzMr3N5QgTt7eZ3DWF
X-Talos-CUID: 9a23:XS9Qbm6L1a86nD6yl9ssqWJJIN4OQkTmxWrAc2zmOFpwTLmVcArF
X-Talos-MUID: =?us-ascii?q?9a23=3Awitq0AzN1vYGQcf93W39THjGuyWaqJyrV3w8i5k?=
 =?us-ascii?q?XgeOBJ3R6C23HrRKFeZByfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from maverick.itda.h-da.de (HELO maverick.h-da.local) ([141.100.1.195])
  by ironmanv.h-da.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2025 15:26:59 +0100
Received: from rooster.h-da.local (141.100.1.194) by maverick.h-da.local
 (141.100.1.195) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 21 Jan
 2025 15:26:59 +0100
Received: from maverick.h-da.local (141.100.1.195) by rooster.h-da.local
 (141.100.1.194) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.13; Tue, 21 Jan
 2025 15:26:58 +0100
Received: from maverick.h-da.local ([fe80::1726:ede5:c5da:108c]) by
 maverick.h-da.local ([fe80::1726:ede5:c5da:108c%7]) with mapi id
 15.02.1544.011; Tue, 21 Jan 2025 15:26:58 +0100
From: "Heinz, Dominik" <dominik.heinz@h-da.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 RIO Session Initialization Failure (Error code -63150)
Thread-Index: AQHbbBCEAF0IMgO6i0mpMHRRQEidPA==
Date: Tue, 21 Jan 2025 14:26:58 +0000
Message-ID: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.100.104.19]
MIME-Version: 1.0
Message-ID-Hash: 5KCPWM3HP4FKNVBAAXOOB4F7M4GYWDCJ
X-Message-ID-Hash: 5KCPWM3HP4FKNVBAAXOOB4F7M4GYWDCJ
X-MailFrom: dominik.heinz@h-da.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5KCPWM3HP4FKNVBAAXOOB4F7M4GYWDCJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2474366602097591175=="

--===============2474366602097591175==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a2248846c3ab40e9b6f0c270dd50563ehdade_"

--_000_a2248846c3ab40e9b6f0c270dd50563ehdade_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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



--_000_a2248846c3ab40e9b6f0c270dd50563ehdade_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
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
<p><span><span></p>
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
</span></span>
<p></p>
</div>
</body>
</html>

--_000_a2248846c3ab40e9b6f0c270dd50563ehdade_--

--===============2474366602097591175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2474366602097591175==--
