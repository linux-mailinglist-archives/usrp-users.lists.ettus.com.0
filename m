Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B47EAC98FF
	for <lists+usrp-users@lfdr.de>; Sat, 31 May 2025 05:14:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D5E9385510
	for <lists+usrp-users@lfdr.de>; Fri, 30 May 2025 23:14:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748661263; bh=vfuKqHWaB7+Vthz/XA9c++s2vHa/SPEvMmTY73z+tGs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=U9l8BLlfMMva8BXmg2V0J34rEUaKF2lZWWsYa2cBv06BAHuPAsSa/YYEun5U65B5H
	 4l6zVvQ9c4R/91/KH4dAUKT90/3JxizQ9DpNRDw8z44nmV8L/MgCFo5Z9cuHNSTyiS
	 G7eFVsSNlwQ5/OrodFcmaQOX6wZC1OITd6jrv/sDA+og3ZupRhxRV8uM11kw+cJ9JA
	 5E0zNtkYnHf694O1dbLzlE75jUTaTPVkkBMpQXm2VWXkyv5j5yNCww3jgY97j6wGn0
	 7yKrAtDxLUW0gBBzbFHRIaDqnJRbQ852JdW9z5TiWccPgBHgwkxVf2omUoXs+C5OYM
	 D9sLXzxqoXMvQ==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0043.outbound.protection.office365.us [23.103.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BD26A383748
	for <usrp-users@lists.ettus.com>; Fri, 30 May 2025 23:14:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=W5USA.onmicrosoft.com header.i=@W5USA.onmicrosoft.com header.b="AetEdsoT";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=glM8vVLjVdgzzLJf6pSiQWLH8H6VP5ors5BKYTxfetQI1U80UvltlgLZUhZXuxk0mbftknIie/6om+C/IVI3mRJvrTKVGCgWkv+GhpFWXnK0413/7shehzbR2KpNyKUNvdsz9nbJAQrU4BKSiKcv/hpXMSic9lfQJMjy/ZMRMNm+RLJ+DrqKLK9ajBEdv5vgr9WguM9t+t+3t9aw9W8sTlHJqXnzfHPuNUbJ9TvIL96G/xHPcgGXA6PK+KIaPK6xk8UYXwF0M8P1zK17sQjs/3YhYd7OLEgPaZtRI+r6puancK8tLQPjgX5138kXVPe9vBmHCudserRZJpO6+MpvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qKHkl8p72INmmwQYEoutvGnXh8xhdfijdSl4395AI1g=;
 b=hGxryvA9Gmghfiri9SvZHnzT1NL4h1ovXtTTqqHnPz3NjsYClWwMFq/T6CN9DzYLhmNRDxga2sFt/Yyi53EJjtQwtPPDaRCwNget1q6AEUceAa9eSJXAc+eOcO3QEhBjtnFui2tt9DuzhSCZaLBGdhg4RGnVJnj0mNLy9L9m3MFAZo8surLT921lHRkswNEnQHfMc7uCyHXo7xEjIoztkZT8u9ugpcQFd5YU4yz3h+6B9rFWghCwm+YBVsQtA/naX4tikymzUOYtreMlkNAvY+Mg3MCJRUdULx4sCmiH8D7w34Wvww7pdSLoQ5RY/4ImBXNP04V1vnoLpW75fQiqMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=w5tech.com; dmarc=pass action=none header.from=w5tech.com;
 dkim=pass header.d=w5tech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=W5USA.onmicrosoft.com;
 s=selector1-W5USA-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qKHkl8p72INmmwQYEoutvGnXh8xhdfijdSl4395AI1g=;
 b=AetEdsoTdqfDsBvbiW1/cGDzYUpoJ7VNGqJC/i03nsxzOb+Fpj1Fo0HHh83Fvv6p7zPwURWDkdgAWrGuGixFSWbJI0IiOtYqC7biXeaCpewdc8josIu19uLFf2FRxAXVW80UVmcm8flbf3Sy/LJowV2Fp5Er/iZ7ctXtPfe39a8NhO6KOyTFgCS/ShfzToA8fbxSh9O5BTZkdy4+8neRXc88+re9OFsf3bVPuF1tWi+2HLDMm2wG643qmM+oWmNB4proY3fNsZLJscHu7gzxECoz5XyH6ZpXC7zOvObzBEciGepUmOkYYBIQbC313PBX/xGeiatMRFw2jkgUhQ5IIg==
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a8::8)
 by BN2P110MB1205.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:179::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Sat, 31 May
 2025 03:14:13 +0000
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b]) by BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b%7]) with mapi id 15.20.8769.029; Sat, 31 May 2025
 03:14:13 +0000
From: Tommy Tsui <tommytsui@w5tech.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no
 longer works
Thread-Index: AdvR1qwmkmu3YEPFQ46KeG9Raz1UpQ==
Date: Sat, 31 May 2025 03:14:13 +0000
Message-ID: 
 <BNAP110MB18852576F534C5C65C5BCDE09460A@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=w5tech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BNAP110MB1885:EE_|BN2P110MB1205:EE_
x-ms-office365-filtering-correlation-id: 3e37df1e-e216-430d-6373-08dd9ff137ec
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?miVCh/d3aY5COo3K8GR7SqddzFvZQ47Y0M5qX9eEBKzJ+dLyJHl7rzx30x+A?=
 =?us-ascii?Q?E/RQzlmtOZMWhWXMJEc3l3U2RXJrqcRgAu1xnWipW+cY1sUt6Dl8fv3htXBE?=
 =?us-ascii?Q?UN4MCdSZ5d5CcBtaQvpO/Wxn+lTZqGn+VjskkFvj8NLfFKN2ARCKw95N/SAD?=
 =?us-ascii?Q?NC+pthb+PwQdFJBp+vYW6f3KrWjrStFuwAj7gxq4SMRZNW9Xfr/IW12Oh6gq?=
 =?us-ascii?Q?SvWLeH3mVCa6KYB8eEi42ZSvvhvkRAIRbfZzKKwS345893S9jkn9kCXqM/bb?=
 =?us-ascii?Q?ED6nZuwPLDSf1Z/ZYMMacwe3Xa8PZf2yDhjk4GfMiuE1aKmlafd5YejCwv4Z?=
 =?us-ascii?Q?iON+RXeGeUPkl4BBJ8/ggShH+EER7aCZUZzP10ebbTJtmtmhbBccVCPh34C+?=
 =?us-ascii?Q?Fy3cdspX7BOl3AP5imzIq3P6WCdkHR0RI03AQAWTldElTa/WWzkpwzaLdbBE?=
 =?us-ascii?Q?Aifw2kX7vsTreHQ2mCPEYoUk5IHix+usazCGas+4TvRvAm+RfbDPzg7TfwIL?=
 =?us-ascii?Q?FhTrL9f00xOOykIYHXUChjvyUm6NseqUy5/9hMdtrCxkaVGb/7wzkdV2MdE7?=
 =?us-ascii?Q?H3QOIL3islyh07eXGcCLYM4u03RYU6qP9p60N+oG4XZBKITMdKJFQSQ11rnN?=
 =?us-ascii?Q?5PzXYevcTwZ9mjn3vlc3ubU4ZIl+pGyrgB0OEY1khXGAOwTs9Z/WinB2xAkm?=
 =?us-ascii?Q?RKICjkc1C/rfVczKvUFGHfr3qBBl0jU1JO0r7MIMe1og/XrRn73yXlGL6kCO?=
 =?us-ascii?Q?hsbIOCGP2s8j9zGP8MT14fJqTecXLZS8uSOKewV2t9itlJQLTRO4TZwHc0Ml?=
 =?us-ascii?Q?9mvacEN4aBTMclWbtE9HjDQLmEvr1L/abEn4pcI1TRWu/+a/n7X5kbhZT6QG?=
 =?us-ascii?Q?prF5loF7nAXujd5Qi5r531woGyvs7xknNRIGrs51ebjVFAhp/366+k1pE674?=
 =?us-ascii?Q?OaALJi98Gh+ire+pUYjbDuaKwrFz6zy+LCwVGVhV9aPNRramTIiMu1kHq3gg?=
 =?us-ascii?Q?9sEOQQled0t/0GKNtZs3GQxLy0daDU3pFfTIW0XO5PgccLBS9CbbELlriNkr?=
 =?us-ascii?Q?U1HPR/j+SZIJ1khZ4WgjRAvJaTkHDpdXaGVMvfGDPwB/5Hv3wbM5X1efx0B4?=
 =?us-ascii?Q?1oWEC+ytaPGmTSiL5OfRH9US9p0t76QpFTz/ZxY/Pxqj8kUWbqo1iZYosSnO?=
 =?us-ascii?Q?WznWJH033Firi49/KrPZueT0nPvLrpZ1enYOk//ClR5OvUONpr68PBLcyWns?=
 =?us-ascii?Q?MfX41oJDPMbW6Mre0vmDOyl+A8tqa8ZM5BHX0vtFFIZmqP72Cxe1KLDXgWN/?=
 =?us-ascii?Q?YdZi1by0nwY+huxMkSRG3qNxIro23jD3QpDTA+X+Zu8E3ct1rp3GuWy8TDQh?=
 =?us-ascii?Q?W4v1qGWjXeG+Efbl5FIX4AMrtZ894GPJRHU4NYiBqlRCC2/mnrJ6DXxnbefc?=
 =?us-ascii?Q?IZuWPvbCSiK1a0Ag7n8+oWv5mAKq0zCEFIpWB+DZIOwY6hupbUXe3Q=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?FCNo0dbIToHcijRcTomY7XE/YhXcgDfjV3VG895Ld23UKtHRWvIl0I6XLEzo?=
 =?us-ascii?Q?o0gUo6q++tmTKQxdUJhzPS7Esns0O/16i9LWH2zSSJrgxj7KyF8VXswITHvx?=
 =?us-ascii?Q?5kUF3iJaEU9zqASdUUnd8a+Fk+v3r1+/YJ6lcv5Nl6UTzddGrmj08m27nIqf?=
 =?us-ascii?Q?fbdIZENVyG7tTmqBiThn1aD7p43kiHCS6+KUv6H77Ty7o8bbp/l+Ub9BoYfA?=
 =?us-ascii?Q?ahRvh1rNJTDiHYITAINF2NWFsGvU0HE0YBBXvY/Ow1uXl4jprGVFcGcCNHqF?=
 =?us-ascii?Q?VCSlZPZ43yNwVs9ijnIoVQ2VBJ3ZAjpPF0Rz8epiUm/TPSd6tv3TqfjZhgHE?=
 =?us-ascii?Q?r2PHZasZS1U+5zOWgV3EfA1nbmU1c2bZEP9zIRtIXnKMvVpvMVRdYpm3xQTv?=
 =?us-ascii?Q?BZkN00iVbPNQPzTIkUK954iRJ6l8X1MnJVlwsrzyKhlfqKgTcocUP8NJKrwI?=
 =?us-ascii?Q?rKAq3Ftx2ASx/JAMwYgqzgFFAOnyXp5J983wgGXJVjPponvNAfU8gIbkVDcT?=
 =?us-ascii?Q?vQneaaIhteup4YyBBHCIid3AydzAh+BMlqq/SAoYkUh4/pQosQGAboupe721?=
 =?us-ascii?Q?63GJOS2NdGYnzTFqAshbeM6Hb7K/OMJScW/gGoviBI0/0FW/0qGzXQCGVXlj?=
 =?us-ascii?Q?li1Kw7ja45dhr/qpigtHSQvRi78TcMYbuV71YoGg8C3PMn01SOSq748Z9Ogw?=
 =?us-ascii?Q?PkxOoYgSKzgn/U9uwfLfm5JKZDuiTxzea5GJtTvds5ePAX4sHxRdxT3l60ou?=
 =?us-ascii?Q?7L+U64nCzUnn8OPwzbzEzrMKF7YxRaJNxuEfcRMsd8EmZCZEL+THtrGcLzSD?=
 =?us-ascii?Q?Nx4/lqYC5HF2m0Us2vIJvLIg1VFFZGnsDOh1CH6vDhlaXzGuwadT0/oQXQMA?=
 =?us-ascii?Q?wOTsWuTlt+ztawwDRrtl7F8r3kQDQLo0iiin93xFuINlmIKDvQmg8Y1KYrGS?=
 =?us-ascii?Q?VXsA1/GeiVsIQV4lSRzHEPcjs0AZsYB9Qk93xevsZZhbdjAulv1C+/B7zatE?=
 =?us-ascii?Q?NxiRW4nExOisBOy3xkXJcb0kWxqzqcLqHiTpPMqqVZxWt34eAk6LoEsuopEo?=
 =?us-ascii?Q?cMD7wujiU6vPXvqgmRvWy7BNpK5/iMAC4S9SMZhsgDfwVC+ipuBxVnv0Jtse?=
 =?us-ascii?Q?gNCQntft4p7xh9uFdSklgJGb/3Eg1vSp+jLqpFyMlvdrQnyg0q4rKoZ5g+AP?=
 =?us-ascii?Q?dwgdJpHe4C+KktHVbGJvnr8ce14o0jyNMiUiNdxoVxmPvzzdVXeiuxrrS3uJ?=
 =?us-ascii?Q?c8zxx+pEYzZe5jxDSNlFW181Ye8CzUArLPmDT2a+hVGE6vDO8lxXdZXF9JxE?=
 =?us-ascii?Q?uLwRTbxwADU+HDx3aF/tmXxVS5+xKN7hhiryqPkuMOBWQIOlhdscjdnjscGl?=
 =?us-ascii?Q?khPz3mO5xpGycQF+qwZryW3g2lAht016vjCo2scE8jGvXoPhJ4cnEpfYHIIi?=
 =?us-ascii?Q?zeazUQHDvMCpzkHHN4XTrx9mWPlAtM7T0LDm7rINXUjtaqMvZmRcktAhEAy5?=
 =?us-ascii?Q?HNviJFJv2462TGc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: w5tech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e37df1e-e216-430d-6373-08dd9ff137ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2025 03:14:13.0190
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7e629b05-df8b-47da-97f7-2ae859536370
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1205
Message-ID-Hash: ALDPPJYVVN2ALLRTIEG7AWX3V2YEVX3G
X-Message-ID-Hash: ALDPPJYVVN2ALLRTIEG7AWX3V2YEVX3G
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no longer works
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RSRNOEZZRGLBSDFX7ZUC44AHLO4KYBTA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4052472951187957206=="

--===============4052472951187957206==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BNAP110MB18852576F534C5C65C5BCDE09460ABNAP110MB1885NAMP_"

--_000_BNAP110MB18852576F534C5C65C5BCDE09460ABNAP110MB1885NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hi,

Recently I upgraded UHD driver from 4.7 to 4.8. After the update, I discove=
red my RFNOC application has a new issue. Method set_tx_bandwidth() and set=
_rx_bandwidth no longer works properly. A call to get_tx_bandwidth() and ge=
t_rx_bandwidth() returned 40MHz regardless of the bandwidth parameter speci=
fied in the set function call. I installed UHD 4.8 FPGA image to my X310 pr=
operly.  I built UHD 4.8 driver source and installed it on my development h=
ost without any issue. When running the same app compiled with UHD 4.7, get=
_tx_bandwidth() and get_rx_bandwidth() returned the same value as the param=
eter specified in the set method call.

I compiled the UHD RFNOC example application rfnoc_radio_loopback with UHD =
4.8 library. It produced a similar issue.

Has anyone experienced the same issue on UHD 4.8?

In some old posts, some people thought set_tx_bandwidth() and set_rx_bandwi=
dth() doesn't do anything if the radio daughter card has a fixed analog ban=
dpass filter. Is it still the case for UHD 4.8?

The radio daughter card WBX-120 has a fixed bandwidth of 40MHz, but I would=
 assume set_tx_bandwidth() and set_rx_bandwidth() adjust the digital filter=
 bandwidth rather than the analog RF bandpass filter.

Hardware & Software driver used:
X310, radio daughter card WBX-120.
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.

Host OS: Ubuntu 24.04 LTS

Tom









________________________________
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient, any disclosure, distribution, or c=
opying of this e-mail or its attachments is strictly prohibited. If you hav=
e received this e-mail in error, please notify the sender immediately by re=
turn e-mail and permanently delete the e-mail and any attachments.

--_000_BNAP110MB18852576F534C5C65C5BCDE09460ABNAP110MB1885NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Hi,<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Recently I upgraded UHD driver from 4.7 to 4.8. After the u=
pdate, I discovered my RFNOC application has a new issue. Method set_tx_ban=
dwidth() and set_rx_bandwidth no longer works
 properly. A call to get_tx_bandwidth() and get_rx_bandwidth() returned 40M=
Hz regardless of the bandwidth parameter specified in the set function call=
. I installed UHD 4.8 FPGA image to my X310 properly. &nbsp;I built UHD 4.8=
 driver source and installed it on my
 development host without any issue. When running the same app compiled wit=
h UHD 4.7, get_tx_bandwidth() and get_rx_bandwidth() returned the same valu=
e as the parameter specified in the set method call.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">I compiled the UHD RFNOC example application rfnoc_radio_lo=
opback with UHD 4.8 library. It produced a similar issue.
<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Has anyone experienced the same issue on UHD 4.8?<o:p></o:p=
></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">In some old posts, some people thought set_tx_bandwidth() a=
nd set_rx_bandwidth() doesn&#8217;t do anything if the radio daughter card =
has a fixed analog bandpass filter. Is it still the
 case for UHD 4.8?<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">The radio daughter card WBX-120 has a fixed bandwidth of 40=
MHz, but I would assume set_tx_bandwidth() and set_rx_bandwidth() adjust th=
e digital filter bandwidth rather than the analog
 RF bandpass filter. <o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Hardware &amp; Software driver used:<br>
X310, radio daughter card WBX-120.<br>
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Host OS: Ubuntu 24.04 LTS<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328">Tom<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#1F2328"><o:p>&nbsp;</o:p></span></p>
</div>
<div style=3D"font-size:8pt; font-family: 'Calibri',sans-serif;">
<hr>
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient,
 any disclosure, distribution, or copying of this e-mail or its attachments=
 is strictly prohibited. If you have received this e-mail in error, please =
notify the sender immediately by return e-mail and permanently delete the e=
-mail and any attachments.</div>
</body>
</html>

--_000_BNAP110MB18852576F534C5C65C5BCDE09460ABNAP110MB1885NAMP_--

--===============4052472951187957206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4052472951187957206==--
