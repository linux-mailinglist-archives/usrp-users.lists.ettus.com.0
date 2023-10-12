Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E80E7C6B02
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 12:24:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C910C38507D
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 06:24:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697106289; bh=0FbGOuy/fBx0ExW/5Er3whoqL1IVr7XIHw3Q3/rDZkc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qTNnrZ+GO3i2zbi1MfKc3J3Q1j8zfExoR9YnYsuR3NtUHWzID6QhFjeDrRX1J5IA/
	 zg/ZS0nmjZo2hSIC0YauoDVOZtv2eOY6YGpKT7rXvTYBpUdHKtBXiAIbqcjL2f9xEv
	 zOG7s2HR6P0iOtF1ir4UYyo7pY/k6cM1qqR/GfFgkXGM+cf4QLoq+7NumjEsTFoB0i
	 +XBMFc86E7y04XyarOktskT5UCtG9LBmpFAt4cI0Qx6P1hAB+6+0lyVe/zqzvOqw0y
	 Mo2fojPJO11UrhVxRp3gXG6BRJVu/qZ6BrD7TCXsLIlQ8ksFBKyEGU3aqUFYpdnpqT
	 t5GsMOxWLFZtA==
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2135.outbound.protection.outlook.com [40.107.102.135])
	by mm2.emwd.com (Postfix) with ESMTPS id E997D38502A
	for <usrp-users@lists.ettus.com>; Thu, 12 Oct 2023 06:24:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="KbTzAFKc";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ItsJwVyHtIQ2vkrnfgTCboS3oGYSun023hfT3tRSGDgmwMHnsFFTL3lrBoVWgBhNdAIDWlY1hYaSstCIBuEyGA5mWj1WGE2Fhj8pakU3a160qpGeQrIZGhucfICskAt0SWvwBHgCxVZ5bgunbEiobWQQmmjDfc2rmnPfYSI6d1aJo/K4Dn2wAWP9vhqlO/EIf9j3lofE7Y7pF2Zjkx6XmJulGeWZghLRhkL7uQ4etle41Vy3J+aPfjlv3Qz0mhx01vyTVd7b7sz+urOljzsixSzZjrY/bmTe6QSQkrmQtyl4wb3Vh4ZAo7a93iqRNealfbBHT4GGnltvLKQ2yYoR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXl1UfwnEpyLiCEw8/UxJX08y9qCDOc/TktTeb+OVG4=;
 b=TVLPZBB4F4M7eMXBHJV+nNYZyYoeo1hop3RvAq56dKAmPziS2jLXk28eWl25Izv0jRElm0egGF68KDGH4/RB51ICYNiqvYBmfQ6Mzr+P2xEi9/g2tlleAfrlAtilxyQCKczTSYqbnptNFkOYWcrw7zETceBJE22OMxq0mXmY3xwb/a53f4RS7sMIR4FYCQ7T5q2S+dUXt8zCgX8EFQXgvxRqMkVQ0AsTGpC9ebePFFq+or5c2LRRgmSsTPGFLrKpv+ASDCX4G+WkYRWcLHK79ilwF2LN/lN+cErxec5eApM+ygBwmSHHkwSqnp1cLUoZBGtPgc6K3giNSw5kDV2pow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXl1UfwnEpyLiCEw8/UxJX08y9qCDOc/TktTeb+OVG4=;
 b=KbTzAFKcny7C6EHigrvaaeNgSWBy76izi04dS61/529GCSQHTDfUFcESqQeO37OjU+S/5CPPgqbR3TrqNapZWAmeWx59uNnoq/avQKfTL6J6JPq7Rs/7nM8QfMTAJPobHEROBkoPEXFxOA09S9aAmDJCub57b8vdB97giS70vi8=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by CH2PR04MB7013.namprd04.prod.outlook.com (2603:10b6:610:96::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Thu, 12 Oct
 2023 10:24:05 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887%6]) with mapi id 15.20.6863.040; Thu, 12 Oct 2023
 10:24:04 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Hijacking MPM and calling function from MPM
Thread-Index: AQHZ/Gqj5ts+e/Jq5kyzhTGJAxJUILBF7IZQ
Date: Thu, 12 Oct 2023 10:24:04 +0000
Message-ID: 
 <PH0PR04MB8311B296E2A76765F275F64FF3D3A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: <vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ@lists.ettus.com>
In-Reply-To: <vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=5b333003-6e8b-4963-84d5-35a797236265;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2023-10-12T09:58:41Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|CH2PR04MB7013:EE_
x-ms-office365-filtering-correlation-id: 3129ae16-6701-405f-4987-08dbcb0d5c48
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9P1gcqNzuxd/yhTDuyyeAk7ivGGwEd+jEsXdoEuBzIsQivlJ1g2SofZXBq20a4Ew8ubQHtiGW15z5TLXFxoSUN9l4AUeYSrHsIz4zjb+ulIlJkSnJeFazAtBFCk+kH7s9pJJBINda4A6KpsP5R+k1pmlZ6FjdLyu4JV6wms6SnRHnhkXbwy2yqnZvrVP1RG8wk97uhGD9wEsNWsBWDaWcIo8fyIZB6jKETv0XxECLFrNHM3Vhvg1atvHCLF9wDRSAnhzbPddva8/iYKIbx8+shNb5J+rN41uViMW4ahhjqPBbnjGZ9KqQny1mIYHU9X7U+7UPwqsYwWp8rMjmqlKrthnjUM/z0XfN4XJrCjGQcr7qxI/o/NOtHRtccZiXvif2do/rgKmt31uE+37lxgu9ZDUuyVFLLg6sHg0HNeztUlgTMTDWknm8WlxKkRT3y0PvOqYcA+mdPOdOcJ6XUZ2CsasuCrDg89e0QEggN5Ov9OaO+8Haz2oPdlqKmSp5bszJMRLHazGtw6D0dpTrjWyogS1osNPOqhRadEXHfVZNwOGDDcS+vWaMX27DAuQzrQRGkG5dk3S6DPkfuqhLobALjre3aysegiLlDegH3qUkwcnZCOV/bSSF1UuOZJ/t0V54GMaroElqVvR+uOUGCmXbw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(396003)(376002)(136003)(366004)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7696005)(9686003)(26005)(71200400001)(53546011)(52536014)(55016003)(38100700002)(86362001)(122000001)(33656002)(38070700005)(166002)(66476007)(64756008)(2906002)(5660300002)(83380400001)(8936002)(8676002)(478600001)(6506007)(76116006)(66574015)(316002)(966005)(66946007)(66556008)(41300700001)(6916009)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?mfsZ+tEaC8k9syzOC6DIpjV93YJ2zRIK4/OKR6xlx2b3Jl+oJVOuQroOJlxf?=
 =?us-ascii?Q?w6Ef6rUjkNFp5wIxf8L4AOnKz96sPw7ZodDFowXld/eys7K4Ja8nLved5wtQ?=
 =?us-ascii?Q?qKJomx/Dp1NbFJkPKMkru/N+mBdRMdTVMfqWvmkZbbsE5JbDzrGI4IC5lA2+?=
 =?us-ascii?Q?XnockEWdF2SerQymvPVatscrOKxB8ScM7FHEZrpc1fnNFIyufrPSrPXdNPio?=
 =?us-ascii?Q?9TqoHvYMkXyaAS97rAB8CK8vNISOAeRAZX5ZSLu+bjHsBtTJ1LQrhDYDLygn?=
 =?us-ascii?Q?4QsYK1h5M0OBlQ5JXXCKWsQN+W26lEdS1AccgNZx4BgHWOWEAcsH1gtS+8iE?=
 =?us-ascii?Q?X15nSm/N3qbkNbGfoTuuclX3jpdJzQGosb+xk9KaLkC8TtAneXcUNm8H9hks?=
 =?us-ascii?Q?P51Kzi1oiaGcxkuehqActfZ1FmE4RQZWoM4NoAdx9ja1/mAk7UGpIDGoKcW8?=
 =?us-ascii?Q?pC6QZiD1SYApXM435j+1d05nt4rTG8TcGWmHmIViAbWttO7AqmWkx/AJ4raW?=
 =?us-ascii?Q?7JGoO6QkBf2uhSVNwA49jaxmx3FmbTIRQy4EIixM+/1u7MguciyHGoDZH2in?=
 =?us-ascii?Q?W5uWFdHcrcuZ5S7hzdXsQiYmJEDIt7wf9LVzsjOjtgVcxvU/Rmz0JVBKQzZ5?=
 =?us-ascii?Q?0CvcWEETyBWdoBAVPYBQTnh2txYes1LBHz/IHXbxaCWYeX1YKPGpleAi4JVk?=
 =?us-ascii?Q?Zf2zj4Gfxsin7LIwaSPf+oJkuM3lY1/fdPV8km2OGVEDb9PS+hXrNBYzgmJ5?=
 =?us-ascii?Q?SGA/97+87/RcnXCr6J/l1Az/zwdfRjYfC8F3rItlO85qQpcOLSxmze4kHRIA?=
 =?us-ascii?Q?0wkkZr2gcwCzlA61VWyELTjaNjM9z8CmmgCfUk9gMAvi1ioGMKGaqMRxGIgW?=
 =?us-ascii?Q?ztK9t5271IpudHAz4HYf7MLySjz7SctFohDtTDQ3WmZ5AxBUJrRoR8EoIOF7?=
 =?us-ascii?Q?tzpE3Y5ARFbpoRmZ3Q7R8t4fk8Hnfx0DAktDDDn6xyW6dBfI1l0626kXjYGC?=
 =?us-ascii?Q?6SzqQikiRURyedKr9Fh+Zx8DXCyWU9+2rt8HtBd/BOVuXp14Uqr3061yycTV?=
 =?us-ascii?Q?Bz6Wbs8qLVWvtA1/OGUWstuB2+LAqmddYVLPEyp8+LiHq3W9WzGCMy2iqJYA?=
 =?us-ascii?Q?laOh4NWoS9bZxC29oLUFHtcwtyaN0GGTIXtMRZ+Y36BHcxe1c3B3yz+Nlc0t?=
 =?us-ascii?Q?SkxWpHLxjrLBpdPKQmj9PYEaddxyekoPWFzg38vI0e+yDmjAKsTT5ogifd8m?=
 =?us-ascii?Q?KhswCEOupLvS9LZuQ/s3/B9NqyVSFoJGrYHQPjYdldpoZM+GzLtVm0N1HyAi?=
 =?us-ascii?Q?MQL5kwmtDnEmJRH7wMNowBdpBZhQBQKl7NUZUKLE8lRjA/1Jyqg8fgtAMgni?=
 =?us-ascii?Q?fd/xUTFOGppFce3pHS4CzBDDtc7ZpOh6rODKSjOttaVDug/+9Mkcz1OFx3Jn?=
 =?us-ascii?Q?lNqYjAjYPCFIu4n5NFrNZF2cWNIv2QYxKHLzWd1+Gp6yDil/NPVRFGiauy4r?=
 =?us-ascii?Q?oKa7m5JLkGkEJawi9ACMUJZsrhkRmKwl9RGigP+UW4NYdeaiqpuD5dFEn6Ks?=
 =?us-ascii?Q?eqyMaNgyFevbhKwIyq9OetK4hnj97CFrHMD/fqGs?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3129ae16-6701-405f-4987-08dbcb0d5c48
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 10:24:04.5884
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i+63Mkesrz5nfx3ttdF5An3LY3x014dBrzdvf6kSlhVnc2qS29nmosuMAnFRRuVeb4jJWG5HZKjojK8z7MD1Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR04MB7013
Message-ID-Hash: J7HVUVO3ESHNQ7WEJVAT7JXKEBDGZ7WI
X-Message-ID-Hash: J7HVUVO3ESHNQ7WEJVAT7JXKEBDGZ7WI
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Hijacking MPM and calling function from MPM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D6COFFWUKFLPVV3JW3HXTXQYL2EBX2HQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6993514976189428684=="

--===============6993514976189428684==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB8311B296E2A76765F275F64FF3D3APH0PR04MB8311namp_"

--_000_PH0PR04MB8311B296E2A76765F275F64FF3D3APH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

The easiest way to hijack the MPM session is to use a static token, e.g. "f=
oo". To use this token, you need to adapt the length of the token in `TOKEN=
_LEN` to what fits your static token here: https://github.com/EttusResearch=
/uhd/blob/master/mpm/python/usrp_mpm/rpc_server.py#L35

Then some lines later in the same file the token is generated: https://gith=
ub.com/EttusResearch/uhd/blob/master/mpm/python/usrp_mpm/rpc_server.py#L305=
-L307
Comment this out/remove it and replace it with
self._state.claim_token.value =3D bytes('foo', 'ascii')

Now after restarting MPM, you can use the static token to hijack the sessio=
n.

On the other hand, if it's just about printing the cal coefficients, you co=
uld of course just log them with the MPM log when they are created.

Hope that helps,
Martin



INTERNAL - NI CONFIDENTIAL
From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Wednesday, October 11, 2023 7:45 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Hijacking MPM and calling function from MPM


Hello,

I am currently working on trying to print the calibration coefficients of t=
he RFDC after calibration of the x410. Similar to calling get_cal_coefs fro=
m the mpm_shell.



My plan is to hijack the MPM shell within my current acquisition script, th=
en execute the get_cal_coefs function. However, I am unable to locate where=
 the token is. How do I retrieve the token after initializing the x410.

Thanks,

Joe

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Director): Jer=
ome Meyer; Sitz (Registered Office): Dresden; HRB (Commercial Register No.)=
: 22081; Registergericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB8311B296E2A76765F275F64FF3D3APH0PR04MB8311namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Joe,<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">The easiest way to hijack the MPM session is to use a static token, e=
.g. &#8220;foo&#8221;. To use this token, you need to adapt the length of t=
he token in `TOKEN_LEN` to what fits your static token
 here: <a href=3D"https://github.com/EttusResearch/uhd/blob/master/mpm/pyth=
on/usrp_mpm/rpc_server.py#L35">
https://github.com/EttusResearch/uhd/blob/master/mpm/python/usrp_mpm/rpc_se=
rver.py#L35</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Then some lines later in the same file the token is generated:
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/mpm/python/usrp=
_mpm/rpc_server.py#L305-L307">
https://github.com/EttusResearch/uhd/blob/master/mpm/python/usrp_mpm/rpc_se=
rver.py#L305-L307</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Comment this out/remove it and replace it with
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">self._state.claim_token.value =3D bytes(&#8216;foo&#8217;, &#8216;asc=
ii&#8217;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Now after restarting MPM, you can use the static token to hijack the =
session.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">On the other hand, if it&#8217;s just about printing the cal coeffici=
ents, you could of course just log them with the MPM log when they are crea=
ted.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Hope that helps,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Right">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;
<br>
<b>Sent:</b> Wednesday, October 11, 2023 7:45 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Hijacking MPM and calling function from MPM<o:=
p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Hello,<o:p></o:p></p>
<p>I am currently working on trying to print the calibration coefficients o=
f the RFDC after calibration of the x410. Similar to calling get_cal_coefs =
from the mpm_shell.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>My plan is to hijack the MPM shell within my current acquisition script,=
 then execute the get_cal_coefs function. However, I am unable to locate wh=
ere the token is. How do I retrieve the token after initializing the x410.<=
o:p></o:p></p>
<p>Thanks,<o:p></o:p></p>
<p>Joe<o:p></o:p></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctor): Jerome Meyer; Sitz (Registered Office): Dresden; HRB (Commercial Reg=
ister No.): 22081; Registergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB8311B296E2A76765F275F64FF3D3APH0PR04MB8311namp_--

--===============6993514976189428684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6993514976189428684==--
