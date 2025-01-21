Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 895DEA17F5F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 15:03:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70118385CA7
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 09:03:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737468238; bh=0Uv5qIWmYQj/qmQKLFkRyWdgm/7iaBdB4HyqIjaa9cM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EMu3R14wwyTAPOtiglSOPWWiWVNvVOySTQJdJQ5yAn8dKH1NBzHibVpDkfQ4chga6
	 PE2WUSGoRYxpY/eyT431nmL6DYFLIOXgHsQKzlR+avT1vQeRAcKWT8kUHHQJ2HoelE
	 Mx5m5XnpqdiIA0tl1Kd6pZ2nJBZm4f7YrDVO+BJ7chnxWbF0+fnC+fhAZUWntwA2/+
	 fEXZdmUcHS65OoCWa5mwpXMLJUFhrljy+RInGryDHFdOXL1SJVUgsN65mDIfftDuxp
	 LuGvW9UyoFlXl3bTVTAzxMzGYhOyREyW7GbKY277EZhc8KNY0+TzSaubsmEBnOgI+Q
	 tuA/cdXJGk5oQ==
Received: from ironmanv.h-da.de (ironmanv.h-da.de [141.100.10.250])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B1783858A5
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 09:03:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=h-da.de header.i=@h-da.de header.b="Ba+MoF0b";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=h-da.de; i=@h-da.de; l=512; q=dns/txt; s=s1;
  t=1737468181; x=1769004181;
  h=from:to:subject:date:message-id:mime-version;
  bh=pLa+b3BHOREgBrn5IH172Bs/wk4kc4psMd6uy4QV4v0=;
  b=Ba+MoF0bOdkw9Bz/DKdXDA8/XdSClhD52Hvn98shgthfqGa65YlKgyjl
   wrzx7Hf5tpCLQhgWPPWhT8BHn5oomTM2plPzLiREgHRBPGRulvzghnGXv
   UWewSaGtp/0R5wsEApuEEDwKlqQYAjYu6CPGK53RLbPnQZ4EPSi2pOs9L
   M=;
X-CSE-ConnectionGUID: ne1/vu2FQySBA/rsD2/ItA==
X-CSE-MsgGUID: Rq1XRC3QT76YtGkKY730yA==
X-IPAS-Result: =?us-ascii?q?A2E9AwBGqI9n/4EBZI1agQmBU4FBggCCAYgIjiCBFpEEh?=
 =?us-ascii?q?SuGVhSBag8BAQ8BOQsEAQEDAQOPdyc0CQ4BAgQBAQEBAwIDAQEBAQEBAQEBA?=
 =?us-ascii?q?QELAQEGAQEBAQEBBgcCgR2FNQwHMwEMgxaCFixBKoEUHQEMcycEG4J6ghwNO?=
 =?us-ascii?q?xSyFho3eIE0gQGDHFFATtsfBoFIiE4BKoEyhEeEP4ECgQpDgRWBfHYHMYMfA?=
 =?us-ascii?q?QSBFRMBAREBhkMiBIN3g26GVJBQiCssgRtLMywBDxE1ExcLBwWBcQMtNhUcM?=
 =?us-ascii?q?4EXezmCDWlLOgINAjWCHiRYgiuEXIRFhFGFW4IUhEeCOh1AAwsHZj03FBsGA?=
 =?us-ascii?q?gGBNZpoChBaPYMdgVMJCyuBRYEFolOBe6FvAwQDgjWBZowYlTYuF4QEjQaGS?=
 =?us-ascii?q?JMBmHwijWKafwIEAgQFAheBZ4EmcHFPgmhRFwIPiTaIZb1kgTQCBwsBAQMJj?=
 =?us-ascii?q?1YQUQGBHAEB?=
IronPort-Data: A9a23:8g73b6skzIcgcDblsI38/bxaS+fnVDJeMUV32f8akzHdYApBsoF/q
 tZmKT2AOPyDZzH3f9p1a4/joUkAsMKEn9dmSQFvqSFgFC8bgMeUXt7xwmUcn8+xwmwvaGo9s
 q3yv/GZdJhcoln0+Ej1atANilEljPrSHNIQMMadZGYpA1ciEHp54f5as7ZRqpZyhtSkCB+6t
 9r3osnOUHeowDcc3lg8sspvlTs21BjMkGNF1rABTagjUG/2zxE9EJ8ZLKetGHr0KqE8NvK6X
 evK0Iai9Wrf+Ro3Yvv9+losWhRXKlJ6FVHmZkt+A8BOsDAbzsAB+v5T2M4nVKtio27hc+ada
 Dl6ncfYpQ8BZsUgkQmGOvVSO3kW0aZuoNcrLZUj2CA6IoKvn3bEmp1T4E8K0YIw/OsuRn9Tr
 9IhOQsnR1eZnM7sh5OnY7w57igjBJGD0II3tnB6wjyfDbMqSNbHRK7D4be03h9p2pkIRK6GI
 ZNfMGA+BPjDS0Qn1lM/BJU7neGphT//fjxeunqV4KY+pWTepOB0+OWzb4aLIIbSLSlTtnyB/
 1L81D/APk5EBcCwyhm0rSn0l8aayEsXX6pITebjqaUy6LGJ/UQOEwcOEEagrOOiokq/QM5Eb
 UEI5jc166M18SSWosLVUxyir3PCvwIQUpxQVuEzrg2AokbJ3+qHLm4JF3lfdYYIjd4NbxVtz
 ESlxZTIGRU65dV5Vkmh3ruTqDqzPw0cImkDeTIIQGM5Dz/L+95bYvXnEo4LLUKlsuAZDw0c1
 BimgUADa1g7gc8R2Kj9/EzLinSs45TACAI4juk2Yo5Hxl0kDGJGT9X2gbQ+0RqmBNzJJrVml
 CJa8/VyFMhUUfmweNWlGY3g3NiBvp5pygH0j191BIUG/D+w4XOldo04yGghfxgya59ZJWewP
 xG7VeZtCHl7ZyTCgUhfP9nZNijW5feI+SnNCK2JNYQmjmZZKFPvEN5Sib64hTm2yxd3ycnTy
 L+bds2sFn0aFKBqhDa/XeIGzbYn2kgDKZD7GPjGItXO+eT2WUN5vp9caAHQNbFgsfveyOgXm
 v4GX/a3J9xkeLWWSkHqHUQ7dDjm8VBT6UjKlvFq
IronPort-HdrOrdr: A9a23:YN7cLKMVSBVVUsBcTvqjsMiBIKoaSvp037By7TESdfUnSL38qy
 nOpoVj6faaslYssR0b9OxoW5PwOU80l6QFgrX5VI3KNGKNhILCFu5fBP7ZogEIbBeRygcy78
 tdmuNFebnN5BBB/KHHCSeDYrAd/OU=
X-Talos-CUID: =?us-ascii?q?9a23=3APy2m9GguuplE9fJaR1THcmyBSDJudHCEi2nNeWG?=
 =?us-ascii?q?BGF1DYfqPUnPKv4J4up87?=
X-Talos-MUID: 9a23:sE6EDwWVVU/lv4zq/AX13QFYH5xR3/vwOVwikrY35JLcJAUlbg==
X-IronPort-Anti-Spam-Filtered: true
Received: from dirge.itda.h-da.de (HELO dirge.h-da.local) ([141.100.1.129])
  by ironmanv.h-da.de with ESMTP/TLS/AES256-GCM-SHA384; 21 Jan 2025 15:02:59 +0100
Received: from maverick.h-da.local (141.100.1.195) by dirge.h-da.local
 (141.100.1.129) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 21 Jan
 2025 15:02:59 +0100
Received: from maverick.h-da.local ([fe80::1726:ede5:c5da:108c]) by
 maverick.h-da.local ([fe80::1726:ede5:c5da:108c%7]) with mapi id
 15.02.1544.011; Tue, 21 Jan 2025 15:02:59 +0100
From: "Heinz, Dominik" <dominik.heinz@h-da.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: SSL Handshake Failure When Downloading USRP Firmware Images
Thread-Index: AQHbbAzqQGwipdECmEyV44g3L1cDIg==
Date: Tue, 21 Jan 2025 14:02:59 +0000
Message-ID: <fa011fa259474bd088c828de1e4da1a7@h-da.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.100.104.19]
MIME-Version: 1.0
Message-ID-Hash: UKNCNLIZFYI4DDIPCOHWKXHZLZNTPXD4
X-Message-ID-Hash: UKNCNLIZFYI4DDIPCOHWKXHZLZNTPXD4
X-MailFrom: dominik.heinz@h-da.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SSL Handshake Failure When Downloading USRP Firmware Images
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UKNCNLIZFYI4DDIPCOHWKXHZLZNTPXD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8079234514170533519=="

--===============8079234514170533519==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fa011fa259474bd088c828de1e4da1a7hdade_"

--_000_fa011fa259474bd088c828de1e4da1a7hdade_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm encountering an SSL handshake failure while trying to download firmware=
 images for my SDR using the uhd_images_downloader tool.

The error occurs both when using the tool and when accessing https://files.=
ettus.com/binaries/images/ directly in a browser (any browser, - firefox, c=
hrome etc)
Specifically, the SSL error that is shown in the browser is: SSL_ERROR_NO_C=
YPHER_OVERLAP

And the following is the error outputput of the uhd_images_downloader tool.

gnb@xgoss-host:~$ sudo uhd_images_downloader
[INFO] Using base URL: https://files.ettus.com/binaries/cache/
[INFO] Images destination: /usr/share/uhd/images
[INFO] Target b2xx_common_fw_default is up to date.
[INFO] Target usrp2_usrp2_fw_default is up to date.
[INFO] Target usrp2_usrp2_fpga_default is up to date.
[INFO] Target usrp2_n200_fpga_default is up to date.
[INFO] Target usrp2_n200_fw_default is up to date.
[INFO] Target usrp2_n210_fpga_default is up to date.
[INFO] Target usrp2_n210_fw_default is up to date.
[INFO] Target usrp1_usrp1_fpga_default is up to date.
[INFO] Target usrp1_b100_fpga_default is up to date.
[INFO] Target usrp1_b100_fw_default is up to date.
[INFO] Target octoclock_octoclock_fw_default is up to date.
[INFO] Target usb_common_windrv_default is up to date.
[ERROR] Downloader raised an unhandled exception: HTTPSConnectionPool(host=
=3D'files.ettus.com', port=3D443): Max retries exceeded with url: /binaries=
/cache/x4xx/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip (Caused by SSLE=
rror(SSLError(1, '[SSL: SSLV3_ALERT_HANDSHAKE_FAILURE] sslv3 alert handshak=
e failure (_ssl.c:1007)')))
You can run this again with the '--verbose' flag to see more information.
If the problem persists, please email the output to the usrp-users mailing =
list.




--_000_fa011fa259474bd088c828de1e4da1a7hdade_
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
<p></p>
<div>
<div>I'm encountering an SSL handshake failure while trying to download fir=
mware images for my SDR using the uhd_images_downloader tool.</div>
<div><br>
</div>
<div>The error occurs both when using the tool and when accessing <a href=
=3D"https://files.ettus.com/binaries/images/">
https://files.ettus.com/binaries/images/</a> directly in a browser (any bro=
wser, - firefox, chrome etc)<br>
</div>
</div>
<div>Specifically, the SSL error that is shown in the browser is: <span>SSL=
_ERROR_NO_CYPHER_OVERLAP</span><br>
</div>
<div><br>
</div>
<div>And the following is the error outputput of the uhd_images_downloader =
tool.<br>
</div>
<div><br>
gnb@xgoss-host:~$ sudo uhd_images_downloader <br>
[INFO] Using base URL: https://files.ettus.com/binaries/cache/<br>
[INFO] Images destination: /usr/share/uhd/images<br>
[INFO] Target b2xx_common_fw_default is up to date.<br>
[INFO] Target usrp2_usrp2_fw_default is up to date.<br>
[INFO] Target usrp2_usrp2_fpga_default is up to date.<br>
[INFO] Target usrp2_n200_fpga_default is up to date.<br>
[INFO] Target usrp2_n200_fw_default is up to date.<br>
[INFO] Target usrp2_n210_fpga_default is up to date.<br>
[INFO] Target usrp2_n210_fw_default is up to date.<br>
[INFO] Target usrp1_usrp1_fpga_default is up to date.<br>
[INFO] Target usrp1_b100_fpga_default is up to date.<br>
[INFO] Target usrp1_b100_fw_default is up to date.<br>
[INFO] Target octoclock_octoclock_fw_default is up to date.<br>
[INFO] Target usb_common_windrv_default is up to date.<br>
[ERROR] Downloader raised an unhandled exception: HTTPSConnectionPool(host=
=3D'files.ettus.com', port=3D443): Max retries exceeded with url: /binaries=
/cache/x4xx/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip (Caused by SSLE=
rror(SSLError(1, '[SSL: SSLV3_ALERT_HANDSHAKE_FAILURE]
 sslv3 alert handshake failure (_ssl.c:1007)')))<br>
You can run this again with the '--verbose' flag to see more information.<b=
r>
If the problem persists, please email the output to the usrp-users mailing =
list.<br>
<br>
<br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_fa011fa259474bd088c828de1e4da1a7hdade_--

--===============8079234514170533519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8079234514170533519==--
