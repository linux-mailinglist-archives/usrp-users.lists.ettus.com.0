Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05205277CCA
	for <lists+usrp-users@lfdr.de>; Fri, 25 Sep 2020 02:22:41 +0200 (CEST)
Received: from [::1] (port=53102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLbVT-0002AO-LB; Thu, 24 Sep 2020 20:22:35 -0400
Received: from mail-oln040092253040.outbound.protection.outlook.com
 ([40.92.253.40]:23958 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dave_merit@hotmail.com>)
 id 1kLbVP-00026P-Da
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 20:22:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gB5uFeyvfmLvd/Gpi0A9JaOHWRCYzy4iNRRd9NOi6f45PgOqptfhZuzGRYuMy9wMXwRac8XMEL9Hs3goYmdjuHSoHz4AjvX/HNnV59e3RuK4uzYSPjxG4HTfSxCPi1nvW1OCbkEooGwq73CGDdYJdP40brmmadAz2RvuKgo5BeFirxBj18YHExEaz2v0294CeZEqWq49DrjqEd/B4lkI0AdN+eckC8T4wi7LBQRvpM6d59zDBTjkC57+x69kOMVg0E6xjpyY1J7TwlFc6xzcVZZ1SPVUG+BY6bsOQrOznRA2LwGnz65nlCLCuaG8X29KB6T6KAKpeajJTcf77qbDYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FsPZ18C9ouGo0o6EpTViDa4AXpV7x/fgAm6rTKb/BHA=;
 b=ZPv0hz3wrAIhyED3P4Q3sAIFWZljS1Hs3H1zifeyaKe2qxIctZwrI8vsEoQBHpX8iwjpDngovqNESQ5wVg1Cbfe9+2wvtjwIfS77yKDsq3rjUAOSgjkfGoANeglSaNVDo7hFCE1kFTtKBdjWX/OuUmiviAQxzlw5rY8kTWapGM9pgYBnUmaKqffvPU2jcQ6tMgfATizRdOLac9/9jtLrkGly00jbJ/qPItiKWHdc/jq4AKNNDLFHPFIUeQL6++ZnYufFC2oYzpKQvHpnAJtvgCkBMreriGs+a7wEevzo1S3Fn93g8/3AzZjOlAzDKD0xiNkPyxFhfnjhNpPxCG8RjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FsPZ18C9ouGo0o6EpTViDa4AXpV7x/fgAm6rTKb/BHA=;
 b=KNVw+VnxaI+s0m+9vI3ycZEE2kmPcbGqk/ItmNFYcNMvPkOLmhuamSqQEVxgXHHeTPKSwZoqTe0FCcO16T/aZ+fJAtodXY/SaD9qLab+pSLx4JWoHFF4TsSPiCKhdyyVIQsvineKazKTI157XAjmzm6lMN1hvqGNExILVdsUojSvOjZurELsMc97ClkQZH81DrcS6jmbNBeGJIfrpeVdul+Lpb75HWEcJY2hshTrsbC6Cq6YQyGqjWiWE/MREwvQh/Q2DwtPbUPwxd9Bs1RfEpA4T69glA3UMC7rPiipJ/n8TglBg4Vj4DUeQAghpA+6kWNjlSftckZ+vpxsvXBgGQ==
Received: from HK2APC01FT043.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4a) by
 HK2APC01HT029.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::226)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.21; Fri, 25 Sep
 2020 00:21:47 +0000
Received: from ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM (10.152.248.52) by
 HK2APC01FT043.mail.protection.outlook.com (10.152.249.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3412.21 via Frontend Transport; Fri, 25 Sep 2020 00:21:47 +0000
Received: from ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM
 ([fe80::492d:bd52:a8c:c6b5]) by ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM
 ([fe80::492d:bd52:a8c:c6b5%6]) with mapi id 15.20.3391.027; Fri, 25 Sep 2020
 00:21:47 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Ettus Research
 Support <support@ettus.com>
Thread-Topic: B210 PPS SYNC Issue when Both RX Chans
Thread-Index: AQHWktB44iYvuDSstE2OsYY/AGHufg==
Date: Fri, 25 Sep 2020 00:21:47 +0000
Message-ID: <ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1AE0419E712ABF1F1682ED190E5AA7019F2B276C160A505A0C2DD95D534F4556;
 UpperCasedChecksum:9B21B0AD5FF410D524561808B1CC6C9DE5FF91EFF92160B582E6F639C6FF40B5;
 SizeAsReceived:6692; Count:41
x-tmn: [kTKTK3LIJgcZPQoRxI+9JgcocL+huOGQ]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 063916eb-ad90-4f54-7c21-08d860e8fd65
x-ms-traffictypediagnostic: HK2APC01HT029:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J2FbpLOe86J6CeiGsBH38y/3+6/O54/MIowl5o+fBagbj0EM+Li5SQpM/JSm02OFz7iIKRLbfavTc1ToVmPW1z3g4S/b+HsWqm1LhQnN3+638J7m8XBw67uBU4AlLJ5iR4TfKcM17FiA7x7E8YNWrSuN2Bz0odTxQIgrt5wj4QNN+0TjSTlvFWo/fys3CjUsrmOVJAOIlS1fmBLSQBZVVw==
x-ms-exchange-antispam-messagedata: oGzTs6I2B7nhqXpWpMxqUGY3KlwIkzKSnReiLWCdAZxmsP7t9P5y80veyovDspEUV6zyy6XxYi+OvminZJRlSsaMx1i7T020vSN6d92bkjX7xXMSa3yNq2NJ8JEhx7NivWBUmEVRxrXSS8Ef2d6ajg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT043.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 063916eb-ad90-4f54-7c21-08d860e8fd65
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2020 00:21:47.1831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT029
Subject: [USRP-users] B210 PPS SYNC Issue when Both RX Chans
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
From: David Merit via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Merit <dave_merit@hotmail.com>
Content-Type: multipart/mixed; boundary="===============0003535926814224709=="
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

--===============0003535926814224709==
Content-Language: en-AU
Content-Type: multipart/alternative;
	boundary="_000_ME2P282MB05935F7A5FEE3072C5EE0877E1360ME2P282MB0593AUSP_"

--_000_ME2P282MB05935F7A5FEE3072C5EE0877E1360ME2P282MB0593AUSP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, This seems to be a bug in Capturing timed samples.. Can anyone suggest =
ways around this?
Im thinking of adding another 'set-time' before subsequent stream_cmds , or=
 maybe theres something else I can put in a stream cmd? can the meta-data s=
tructure sent to recv() do anything useful to resolve?
Ive already tried different buffer sizes, rates. its really unusual.
Read below for the details.. THanks for any thoughts!. Dave M.

Since my project code is similar, To explain the BUG, Ive modified ETTUS ex=
ample code "rx_timed_samples", to
- SYnc with an external 1PPS
- retrieve and display the USRP time at start and during capture, from both=
 time-now and time_last_pps functions

Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716
, PPS via extern SMA port.( NOTE this is NOT the  GPSDO, which is not popul=
ated )

Outcome:
- GOOD: With only one B210 channel capturing, the USRP stays aligned with 1=
PPS
- BAD:  With both B210 channels capturing, the USRP always time-shifts from=
 1PPS after first buffer-fill
________________________________

The essential additions to example code outputs are
     t_now=3Dusrp->get_time_now();
     t_tmp=3Dusrp->get_time_last_pps();
     printf("Actual time:now %8.5f :AtPPS:%8.5f\n",t_now.get_real_secs(),t_=
tmp.get_real_secs());

Here's my code output..capture at 5MSPS, 10 secs into future.

WORKS WITH ONE CHANNEL (9.99999 is same at 10.0)
./rx_timed_samples --channels "0" --nsamps 20000 --rate 5000000 --secs 10 -=
-sync pps
Begin streaming 20000 samples, 10.000000 seconds in the future...
Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.
Actual time:now 10.00083 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.000008 frac secs
Actual time:now 10.00130 :AtPPS: 9.99999

FAILS WITH TWO CHANNELS
./rx_timed_samples --channels "0,1" --nsamps 20000 --rate 5000000 --secs 10=
 --sync pps
Begin streaming 20000 samples, 10.000000 seconds in the future...
Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.
Actual time:now 10.00092 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.000010 frac secs
Actual time:now 10.00166 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.000418 frac secs
Actual time:now 10.00202 :AtPPS: 9.27090

Heres the full output...

someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples --channels =
"0" --nsamps 20000 --rate 5000000 --secs 10 --sync pps
Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-804-gb=
2527716

<...snip initialization stuff...>
Setting RX Rate: 5.000000 Msps...
[INFO] [B200] Asking for clock rate 40.000000 MHz...
[INFO] [B200] Actually got clock rate 40.000000 MHz.
Actual RX Rate: 5.000000 Msps...

Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)

Begin streaming 20000 samples, 10.000000 seconds in the future...
Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.
Actual time:now 10.00083 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.000008 frac secs
Actual time:now 10.00130 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.000416 frac secs
Actual time:now 10.00164 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.000824 frac secs
Actual time:now 10.00198 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.001232 frac secs
Actual time:now 10.00231 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.001640 frac secs
Actual time:now 10.00269 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.002048 frac secs
Actual time:now 10.00308 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.002456 frac secs
Actual time:now 10.00349 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.002864 frac secs
Actual time:now 10.00391 :AtPPS: 9.99999
Received packet: 2040 samples, 10 full secs, 0.003272 frac secs
Actual time:now 10.00425 :AtPPS: 9.99999
Received packet: 1640 samples, 10 full secs, 0.003680 frac secs

Done!

______________________________________
BAD:
someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples --channels =
"0,1" --nsamps 20000 --rate 5000000 --secs 10 --sync pps
<...snip initialization stuff...>
Setting RX Rate: 5.000000 Msps...
[INFO] [B200] Asking for clock rate 40.000000 MHz...
[INFO] [B200] Actually got clock rate 40.000000 MHz.
Actual RX Rate: 5.000000 Msps...

Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[INFO] [B200] Asking for clock rate 20.000000 MHz...
[INFO] [B200] Actually got clock rate 20.000000 MHz.

Begin streaming 20000 samples, 10.000000 seconds in the future...
Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.
Actual time:now 10.00092 :AtPPS: 9.27090 <<<<<<<<<<<<< THIS SHOULD BE 10.0 =
!!!!
Received packet: 2040 samples, 10 full secs, 0.000010 frac secs
Actual time:now 10.00166 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.000418 frac secs
Actual time:now 10.00202 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.000826 frac secs
Actual time:now 10.00236 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.001234 frac secs
Actual time:now 10.00269 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.001642 frac secs
Actual time:now 10.00301 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.002050 frac secs
Actual time:now 10.00331 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.002458 frac secs
Actual time:now 10.00365 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.002866 frac secs
Actual time:now 10.00398 :AtPPS: 9.27090
Received packet: 2040 samples, 10 full secs, 0.003274 frac secs
Actual time:now 10.00430 :AtPPS: 9.27090
Received packet: 1640 samples, 10 full secs, 0.003682 frac secs

Done!



--_000_ME2P282MB05935F7A5FEE3072C5EE0877E1360ME2P282MB0593AUSP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>Hi, This seems to be a bug in Capturing timed samples.. Can anyone sug=
gest ways around this?</div>
<div>Im thinking of adding another 'set-time' before subsequent stream_cmds=
 , or maybe theres something else I can put in a stream cmd? can the meta-d=
ata structure sent to recv() do anything useful to resolve?</div>
<div>Ive already tried different buffer sizes, rates. its really unusual.</=
div>
<div>Read below for the details.. THanks for any thoughts!. Dave M.</div>
<div><br>
</div>
<div>Since my project code is similar, To explain the BUG, Ive modified ETT=
US example code &quot;rx_timed_samples&quot;, to
</div>
<div>- SYnc with an external 1PPS </div>
<div>- retrieve and display the USRP time at start and during capture, from=
 both time-now and time_last_pps functions</div>
<div><br>
</div>
<div>Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716</div>
<div>, PPS via extern SMA port.( NOTE this is NOT the &nbsp;GPSDO, which is=
 not populated )</div>
<div><br>
</div>
<div>Outcome:</div>
<div>- GOOD: With only one B210 channel capturing, the USRP stays aligned w=
ith 1PPS
</div>
<div>- BAD: &nbsp;With both B210 channels capturing, the USRP always time-s=
hifts from 1PPS after first buffer-fill</div>
<div>________________________________</div>
<div><br>
</div>
<div>The essential additions to example code outputs are</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; t_now=3Dusrp-&gt;get_time_now();
<div>&nbsp;&nbsp;&nbsp;&nbsp; t_tmp=3Dusrp-&gt;get_time_last_pps();</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;Actual time:now %8.5f :AtPPS:%8.=
5f\n&quot;,t_now.get_real_secs(),t_tmp.get_real_secs());<br>
</div>
</div>
<div><br>
</div>
<div>Here's my code output..capture at 5MSPS, 10 secs into future.</div>
<div><br>
</div>
<div>WORKS WITH ONE CHANNEL (9.99999 is same at 10.0)</div>
<div>./rx_timed_samples --channels &quot;0&quot; --nsamps 20000 --rate 5000=
000 --secs 10 --sync pps</div>
<div>Begin streaming 20000 samples, 10.000000 seconds in the future...</div=
>
<div>Actual time:now &nbsp;1.00254 :AtPPS: 1.00000. Commence wait.</div>
<div>Actual time:now 10.00083 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000008 frac secs</div>
<div>Actual time:now 10.00130 :AtPPS: 9.99999</div>
<div><br>
</div>
<div>FAILS WITH TWO CHANNELS</div>
<div>./rx_timed_samples --channels &quot;0,1&quot; --nsamps 20000 --rate 50=
00000 --secs 10 --sync pps</div>
<div>Begin streaming 20000 samples, 10.000000 seconds in the future...</div=
>
<div>Actual time:now &nbsp;2.74539 :AtPPS: 2.00000. Commence wait.</div>
<div>Actual time:now 10.00092 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000010 frac secs</div>
<div>Actual time:now 10.00166 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000418 frac secs</div>
<div>Actual time:now 10.00202 :AtPPS: 9.27090</div>
<div><br>
</div>
<div>Heres the full output...<br>
</div>
<div><br>
</div>
<div>someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples --chan=
nels &quot;0&quot; --nsamps 20000 --rate 5000000 --secs 10 --sync pps</div>
<div>Creating the usrp device with: ...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-8=
04-gb2527716</div>
<div><br>
</div>
<div>&lt;...snip initialization stuff...&gt;</div>
<div>Setting RX Rate: 5.000000 Msps...</div>
<div>[INFO] [B200] Asking for clock rate 40.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 40.000000 MHz.</div>
<div>Actual RX Rate: 5.000000 Msps...</div>
<div><br>
</div>
<div>Setting device timestamp to 0...</div>
<div>[INFO] [MULTI_USRP] &nbsp; &nbsp; 1) catch time transition at pps edge=
</div>
<div>[INFO] [MULTI_USRP] &nbsp; &nbsp; 2) set times next pps (synchronously=
)</div>
<div><br>
</div>
<div>Begin streaming 20000 samples, 10.000000 seconds in the future...</div=
>
<div>Actual time:now &nbsp;1.00254 :AtPPS: 1.00000. Commence wait.</div>
<div>Actual time:now 10.00083 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000008 frac secs</div>
<div>Actual time:now 10.00130 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000416 frac secs</div>
<div>Actual time:now 10.00164 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000824 frac secs</div>
<div>Actual time:now 10.00198 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.001232 frac secs</div>
<div>Actual time:now 10.00231 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.001640 frac secs</div>
<div>Actual time:now 10.00269 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002048 frac secs</div>
<div>Actual time:now 10.00308 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002456 frac secs</div>
<div>Actual time:now 10.00349 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002864 frac secs</div>
<div>Actual time:now 10.00391 :AtPPS: 9.99999</div>
<div>Received packet: 2040 samples, 10 full secs, 0.003272 frac secs</div>
<div>Actual time:now 10.00425 :AtPPS: 9.99999</div>
<div>Received packet: 1640 samples, 10 full secs, 0.003680 frac secs</div>
<div><br>
</div>
<div>Done!</div>
<div><br>
</div>
<div>______________________________________</div>
<div>BAD:<br>
</div>
<div>someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples --chan=
nels &quot;0,1&quot; --nsamps 20000 --rate 5000000 --secs 10 --sync pps</di=
v>
<div>&lt;...snip initialization stuff...&gt;</div>
<div>Setting RX Rate: 5.000000 Msps...</div>
<div>[INFO] [B200] Asking for clock rate 40.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 40.000000 MHz.</div>
<div>Actual RX Rate: 5.000000 Msps...</div>
<div><br>
</div>
<div>Setting device timestamp to 0...</div>
<div>[INFO] [MULTI_USRP] &nbsp; &nbsp; 1) catch time transition at pps edge=
</div>
<div>[INFO] [MULTI_USRP] &nbsp; &nbsp; 2) set times next pps (synchronously=
)</div>
<div>[INFO] [B200] Asking for clock rate 20.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 20.000000 MHz.</div>
<div><br>
</div>
<div>Begin streaming 20000 samples, 10.000000 seconds in the future...</div=
>
<div>Actual time:now &nbsp;2.74539 :AtPPS: 2.00000. Commence wait.</div>
<div>Actual time:now 10.00092 :AtPPS: 9.27090 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&=
lt;&lt;&lt;&lt;&lt;&lt; THIS SHOULD BE 10.0 !!!!<br>
</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000010 frac secs</div>
<div>Actual time:now 10.00166 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000418 frac secs</div>
<div>Actual time:now 10.00202 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.000826 frac secs</div>
<div>Actual time:now 10.00236 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.001234 frac secs</div>
<div>Actual time:now 10.00269 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.001642 frac secs</div>
<div>Actual time:now 10.00301 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002050 frac secs</div>
<div>Actual time:now 10.00331 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002458 frac secs</div>
<div>Actual time:now 10.00365 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.002866 frac secs</div>
<div>Actual time:now 10.00398 :AtPPS: 9.27090</div>
<div>Received packet: 2040 samples, 10 full secs, 0.003274 frac secs</div>
<div>Actual time:now 10.00430 :AtPPS: 9.27090</div>
<div>Received packet: 1640 samples, 10 full secs, 0.003682 frac secs</div>
<div><br>
</div>
<div>Done!</div>
<br>
<br>
</div>
</body>
</html>

--_000_ME2P282MB05935F7A5FEE3072C5EE0877E1360ME2P282MB0593AUSP_--


--===============0003535926814224709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0003535926814224709==--

