Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4007948E0E1
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 00:29:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 334F838504C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 18:29:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="cJFRkjjz";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01olkn2102.outbound.protection.outlook.com [40.92.53.102])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E5E4384A01
	for <USRP-users@lists.ettus.com>; Thu, 13 Jan 2022 18:28:53 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SR8BC6xmfyMsIwgJvIMedXOLP9askS2YPuDdzOYqE65J/LX/RJe3p6YQGyiwknN6gMnlOtsjz6GgJzhUX6PwLnXay+Gop4wJwBJ7wMZa4druSezhxFa5obU3Mls5g91yKAGBDYQMzlSRBWGrnuQCBUU64a6YgLbjr6IMkoAiWCRy+1e+z/kxh4fJQVEssuD/341Ez+fatLryzbekOjzIk26h+qAlGR8xoUnbcBb2tfQ4ctHn3JL9QSA2Z9x0dNBCKvx5CEXgIUdNJ8Zd6KADZBfesfhnTI9N1Xlw4wupBZy5Ide2kw0qLtc4bSuyeTPcs6eJm2Tve/OMsulzkSLnxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uF7L0NWBmijj5ooRPfmnoW3UUKqX/qmGGNCeb+gTHRE=;
 b=LnXIATeIRPWRRzy2hOvB11vSf7yVMtbCb8JAk8OrGAPQJlxI1btNn+GKb6HgcEBMMsbpFP5RGWQXDtf1CzuG6/B7i/tk0P2/O148Y+fGCCkFyiDoj0DO9JV1NTqz6uTXeC2iBFI0Gg1tUtlmUAjHmRpd6aGuHnkodtqDNgFAphHTJ+aJCGC7YOLBmv/UYlTx1+qwxU5nOpJSJb7JaM2W8ObkUHDageOqbWLf4ElcvL3jvnIo9HzenmBo28qrleFri8MzY3aAv7u6uTC4qQojZKQ4zlQ3vmvJ+GZ/5TfiFrWO/LbhLgrvWJDLBRO6MOjtd8tIjzQNh5jLlQl6wUmrZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uF7L0NWBmijj5ooRPfmnoW3UUKqX/qmGGNCeb+gTHRE=;
 b=cJFRkjjzXOwqmImbbPc8M13lOFwZc18PbcVqpuCquMUJBUFUxKsUuf73JcoaIgHDgKTAyhyh2uoHnXnQQsdLD7c0AmEWv/PoO2Ghi6zpMBpcvuW3rcF3zmWRiKlmtSEP+QN5B/FxdiG7xrORH8ntSCmGPlLOMgycyRIaH5NavugfVEpknaL6zwBl6PcBRmsgirDDwmaGTRUAYAcw8hMbXI684jjuv9wzUgqytPL10TFDC/MwgDTJaC1KKEQbCv2u9AqzU0I/XaOioSU3Mkh8YczBRF/mwUPQlz0uJfy59jcON6DdOXX6IuuZxCv0qI2Hu/7S8Kr/oPhpScuVWMa2nA==
Received: from SG2PR04MB3628.apcprd04.prod.outlook.com (2603:1096:4:99::17) by
 SI2PR04MB5412.apcprd04.prod.outlook.com (2603:1096:4:180::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.10; Thu, 13 Jan 2022 23:28:29 +0000
Received: from SG2PR04MB3628.apcprd04.prod.outlook.com
 ([fe80::e0a7:9556:1c2c:a585]) by SG2PR04MB3628.apcprd04.prod.outlook.com
 ([fe80::e0a7:9556:1c2c:a585%4]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 23:28:29 +0000
From: jason pro <jason_proj@outlook.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: X310 based programs cannot run stably for a
 long time
Thread-Index: AQHYBlkj/+HV3gFDbkONcPzQEEMP0axcqOQAgATyB5s=
Date: Thu, 13 Jan 2022 23:28:29 +0000
Message-ID: 
 <SG2PR04MB3628572183773857FEAEA033FD539@SG2PR04MB3628.apcprd04.prod.outlook.com>
References: 
 <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
 <abd33fbf-cdc0-c73d-090f-4d05a9733635@gmail.com>
In-Reply-To: <abd33fbf-cdc0-c73d-090f-4d05a9733635@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 5606fb74-b929-f729-ff98-1e69ac5e0de3
x-tmn: [5Z9t75+5lQt4CefD7E8QeqBpjBMDv8vK]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3735cfc9-0fd5-41bc-5184-08d9d6ec682e
x-ms-traffictypediagnostic: SI2PR04MB5412:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 totKpFwtNC6VdEl3jaZy2wubn38DFeoUfXy+Sgi5QiTfnFkjKVsEF5Og5mn5D1fKiTVQRTZ3gSmcwyLIiUK9B8DZuBYKbtFcWzuyxT9h3SZjXW0L/GUMCqvJwgtszS5ggqfJFCnyuWAuLEJFRMxQBioxyqxpvEIX9L+You55FzF521kpIwOA57gDMOYxUzwuK4wN/UJ4XqD8AwL1MrFZBTSkWlWOcp+HXMGmqguRyO8rBlgjyZDlCRbdaE1L2T0LO4lHYd4L16cyEt5W4JwYSDQLkVsGfWxErbiiv20ym/QMF59PevZUbXmHaVlePVWy4IowOcYPuR5qhJJlTviEGTips4nvi/fwpTiJ1y8kGTj1zSd/sZ5MUIIgqbxt1K/jeWAX//+lZV5k3K/4DtBiJP3IZ8hhPoQmj2qNsvwEk4rJl7mXwlS8vvnJa07B27mlfIHsjJZv49wzfextQ/AawTpUcCv3KSKXKVhNp1t7UgZnW31tB2kZz0yvCtUXDh4NZJTD/DY6rp1oStQbdpgLLiagk6XLpaiwWq9MaNqP86C8CQUxKQmMSjVOYht2pnatNoh+Y0211aqI1MVYRLLUVg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 EyF7u919O8GrCVGnz34LBvqD5CrX1X7M0uHiURL27hDLPe2kx61fFvVrS5TTBg0D0tIXf8jNVtWriRac1LuCsWxxr361z+yG2LqGFy0K0wFPUaOdNy/lbvz5vZgvR2UfDQQxhuSK6GwmjdbvjVSNC4lQ3G43LrHb+78RtnfNDng4OoymHYPyU+kI+QJsueJTNR2GNBXjmnbfOGVbJA7tBtZK3DktIGKH5Un2wZPC/w/q+pHw7bWBUKcsm/hQqxUnf9ngPiy6knY9gh6k09qQDc69WfiLua+ObZEYd8w/EpQaKqdPb/xO0qBq9oD9UoEh+q7NobjJkmMRuk8EQ2TpXre9ABy/b6ZhEjXtdkTrwJ87unl0pvftOXzaQzug8I8caE0sQh5fRU/ImbligHwI7UkB6aKYLiJ1xkDsuUTZIhGhlGYBSfhIk0vcYn2nSBd8K7D8MB8YLnGH7TR1ybWlJi5At+LuQ9s17mkXqd0M114j8KGrAZ9fa+1kOSu7mGZi0mXDmLet9e4lQGqLon/FKPPGJ8gYXQ0ehdnRNggLlVt/Gf6QyakOHdkQOqJQstrw0XWWvGYLC7DGU1w7zFlh8TNi+545haCrydEfD6tb9E4y7vhneXgWQejPE56lY3BtYrKLhn3nVamV0qX3g8k3lrjN8tqNfq406KgOyMsvR+BqiUpHe1fkdog6gjTeMggxyR7jfbYwF4Qb0A71fsyoneWFbuKq6jXwoxTJnafFZcQ4m46fSBjyj/0+osxnZ/OKYrorpyd9/N6g0JvBEYmpolIGpbCeJxAm/vjz1p3jYsUtpWCQjeXXgsNlqcg7ECoQFAMay5dvpUDu7F/ebXvKpxoPNC/PepyVOsKDunBlpKgR9lcvc3GWstDKISE3vwQEYsxEZXcrYUO4HzggzQrrgHM3raUbFvSvINpIAxZEn3SbSJ+hnJX87ALCUWRUYnSI
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR04MB3628.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3735cfc9-0fd5-41bc-5184-08d9d6ec682e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2022 23:28:29.7346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR04MB5412
Message-ID-Hash: QBK5BSCOK365EVT5E4XLDUS2S73VT2CZ
X-Message-ID-Hash: QBK5BSCOK365EVT5E4XLDUS2S73VT2CZ
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 based programs cannot run stably for a long time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2HS5LQFC2CWXO2CT4I4M4LBAPQUI6LS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7047247834429330126=="

--===============7047247834429330126==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB3628572183773857FEAEA033FD539SG2PR04MB3628apcp_"

--_000_SG2PR04MB3628572183773857FEAEA033FD539SG2PR04MB3628apcp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Sorry for the delay.
The sample rate is 15.36Msps.
This is a system similar to 5g NR. It is a full duplex communication system=
. It transmits signal in burst mode; Reception has been ongoing.
This program can run stably for several hours to more than 30 hours. Then I=
 encountered the error mentioned in the last email.

Best regards,
Damon

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, January 11, 2022 3:46 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: X310 based programs cannot run stably for a long =
time

On 2022-01-10 14:37, jason pro wrote:
Hi dear Engineers of Ettus Research,

Our application written based on UHD and USRP X310 cannot run for a long ti=
me(The longest time did not exceed 48 hours).
The x310 is connected to the computer through a 10GbE network card (X520).
We have tried to use versions 3.15 and 4.1.0.5. UHD throws different errors=
:

1. UHD 4.1.0.5
X300 fw communication failure #1
EnvironmentError: IO Error:x300 fw peek32 -reply timed out
Terminate called after throwing an instance of 'uhd::assertion_error'
What():AssertionError:reply.sequence =3D=3D request.sequence
in virtual uint32_t x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_addr_ty=
pe)
at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165

2. UHD 3.15
terminate called after throwing an instance of =91uhd:: io_error=92
what() : EnvironmentError : IOError : Block ctrl(CE_01_Port_40) no response=
 packet =96 AssertionError : bool(buff)
in uint64_t ctrl_iface_impl<_endianness> :: wait_for_ack(bool,double)[with =
uhd :: endianness_t_endianness =3D uhd::ENDIANNESS_BIG;uint64_t =3D long un=
signed int] at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface.cpp:151

Is there a solution?

Best regards,
Jason



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


We're going to need a lot more information about your application.  What sa=
mple rates?   Is it TX/RX or TX-only? RX-only?

Can you run one of the examples for extended periods, like rx_samples_to_fi=
le, and then have it write to "/dev/null"??

What OS are you on?



--_000_SG2PR04MB3628572183773857FEAEA033FD539SG2PR04MB3628apcp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Sorry for the delay.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The sample rate is 15.36Msps.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This is a system similar to 5g NR. It is a full duplex communication system=
. It transmits signal in burst mode; Reception has been ongoing.<br>
<span></span>This program can run stably for several hours to more than 30 =
hours. Then I encountered the error mentioned in the last email.<br>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Damon</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, January 11, 2022 3:46 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: X310 based programs cannot run stably for =
a long time</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-01-10 14:37, jason pro wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi dear Engineers of Ettus Research,
<div><br>
</div>
<div>Our application written based on UHD and USRP X310 cannot run for a lo=
ng time(The longest time did not exceed 48 hours).
</div>
<div>The x310 is connected to the computer through a 10GbE network card (X5=
20).<br>
<span></span>We have tried to use versions 3.15 and 4.1.0.5. UHD throws dif=
ferent errors:</div>
<div><br>
</div>
<div>1. UHD 4.1.0.5</div>
<div>X300 fw communication failure #1</div>
<div>EnvironmentError: IO Error:x300 fw peek32 -reply timed out</div>
<div>Terminate called after throwing an instance of 'uhd::assertion_error'<=
/div>
<div>What():AssertionError:reply.sequence =3D=3D request.sequence</div>
<div>in virtual uint32_t x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_ad=
dr_type)</div>
<div>at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165</div>
<div><br>
</div>
<div>2. <span style=3D"background-color:rgb(255,255,255); display:inline!im=
portant">
UHD</span> 3.15</div>
<div>terminate called after throwing an instance of =91uhd:: io_error=92</d=
iv>
<div>what() : EnvironmentError : IOError : Block ctrl(CE_01_Port_40) no res=
ponse packet =96 AssertionError : bool(buff)</div>
<div>in uint64_t ctrl_iface_impl&lt;_endianness&gt; :: wait_for_ack(bool,do=
uble)[with uhd :: endianness_t_endianness =3D uhd::ENDIANNESS_BIG;uint64_t =
=3D long unsigned int] at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:151</div>
<div><br>
</div>
<div>Is there a solution?<br>
<span></span><br>
</div>
<div>Best regards,</div>
Jason<br>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___=0A=
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=0A=
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>=0A=
</pre>
</blockquote>
We're going to need a lot more information about your application.&nbsp; Wh=
at sample rates?&nbsp;&nbsp; Is it TX/RX or TX-only? RX-only?<br>
<br>
Can you run one of the examples for extended periods, like rx_samples_to_fi=
le, and then have it write to &quot;/dev/null&quot;??<br>
<br>
What OS are you on?<br>
<br>
<br>
</div>
</body>
</html>

--_000_SG2PR04MB3628572183773857FEAEA033FD539SG2PR04MB3628apcp_--

--===============7047247834429330126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7047247834429330126==--
