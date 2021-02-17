Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED82831DCB9
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 16:53:22 +0100 (CET)
Received: from [::1] (port=34642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCP8j-0008OB-74; Wed, 17 Feb 2021 10:53:21 -0500
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:48412)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1lCP8e-0008HT-PX
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 10:53:16 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 0DDA0CE003
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 15:52:36 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.117])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 845B3800C0; Wed, 17 Feb 2021 15:52:25 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.88])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A15DCE004D; 
 Wed, 17 Feb 2021 15:52:24 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 38CA624007F;
 Wed, 17 Feb 2021 15:52:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jc7hgOuwcyoeK/ac35genKUZ/BEeV3wOIyK2PF+CDS2aebIDsDh7Ob5da4gcDMfwpR0hzlC5noh87XRN/5trd0FWwVL4uWFIWGh+GBeIjr9IpFg2z9DfQ1QI7LapnJAsPO/YdlRhhl4pxaCqXkniRtWQLcSIeg3VgCbDvkvdgXh3C1uQJyDB8fQk7k/zKB9p3s685SCPzihOzLFic0d4eCpL3zlDGj49fe/qfzgqrIcOTye1LJpHBSrAtj+5+bXKtjT5IR9Zg6v3Xh2Jmc1q87HezO1f+tny4PSfhQudxQ9tArU/x1rBMcAMmH4axzGLcbUet3eDP78x2ovs5Q8Faw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g6cZSVdQOAn3UqhlBrN6aiiPZlSEzCCpo9W3KsrWI+k=;
 b=krLuMGueUUGcqiCmM6PdJ/ybVOgulNWYuaF3ime7lQXblMIbCtxM1GFbslBoZbwzzqG3dNYVSANu06YqjSs1gY53r393ifUG3rKvqXs8J1Tb3+F+qwjEkkvsCuJ5GiwEfWyTu5rA8IeFQSPJJMB9z9RcJKhIFGgGO3bNmUY1c0BYd6WKWIghUXkfxdDttSJ8JRAqj4oRWQLb4nvBAQvg6VtoBuasZp48hFOsmIJ2AsMnjZEaxgJ5uTFmFeY1BV+RG5WBWHGXNhm3hXHO5eOXTKEISRTWEul3D7RbdTbtXaHTdmHKdv3jBFsUrxMnp2bWGVPACzPrlB6KZpCpxf+jwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g6cZSVdQOAn3UqhlBrN6aiiPZlSEzCCpo9W3KsrWI+k=;
 b=hOBi9nT/rHtDcl/266sgM5Os/fFzHRD5r4qVM6FODAuaz9kos2EB2Psn0cz/3m9JJy2ORps3HpIlU6PsVLaN8A76QpYXq36f8NV+cxiuEuYVyYZCkCt/ools9Xcj6Ubjj7hhpgaiwtAujB+lkjynb/HVf76Tt73N4NaA8Nm4y4k=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3055.namprd12.prod.outlook.com (2603:10b6:208:d2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Wed, 17 Feb
 2021 15:52:22 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f%5]) with mapi id 15.20.3846.027; Wed, 17 Feb 2021
 15:52:22 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>, Mark D
 <md964@hmgcc.gov.uk>
Thread-Topic: OTT Gain Block stopping samples flowing from RFNoC Digital Down
 Converter
Thread-Index: AdcFQlWECmXf12heRQuWe0v7YuOKiwAASohL
Date: Wed, 17 Feb 2021 15:52:22 +0000
Message-ID: <MN2PR12MB33129C28A79231554AC0FD21B8869@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 929a2514-99e4-4b34-8996-08d8d35c03c7
x-ms-traffictypediagnostic: MN2PR12MB3055:
x-microsoft-antispam-prvs: <MN2PR12MB30551E1C631A4202CAA67B27B8869@MN2PR12MB3055.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5XMQFKnH0LnwelQ8PH68NLlAw7o5fpzC/Rxv5Nxn2E+9gQ3fnXwudcZnDFsz28lW0O6RzJQYvKaX4Ee4x/dzMuS1faya92vBuPM7wSJBGMBzxIHkqqHY8xsSy2E1GM7LApNuODLUMBA8D/aonENftABkOqysa8nyKmJU0DIqLM2Jb1IvbstXm/vPM0k3+rdFtv6GmKbLPhduuOuZvYS00ZmqXY7GJ201cokwUkqu20JkAkhM7JVsTUmbXVx2Il28UfdlKf7g+WF7VE2G591aCeE2+lVbFMDseTT/vroanFUosbAEatGA4tAgAbC5mqmuNwb48+Pc/GbOB6MROBwn4nqZAFbp71ft41Xc7xodsnLLFpMvyAt325H/TT43ocZrnnz4y9WFOwJ2g+QQ89k4I1wjngRGlmvfygzKCIqf9z8+Wkclb85y+n5K9Kqbee0RvdB5+V9biIIAg+7sJq3bYJB4jFauQaIj19ez238zJVYuB8AK1tSUwqkFtoYK0fNUHplghNBHlzbSG9ogBO/DvXwi3MxqnVeYV12KQyrCwCrUpNaxiPDjs3tQseT/yIgQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(396003)(346002)(39830400003)(33656002)(9686003)(316002)(8676002)(83380400001)(55016002)(110136005)(5660300002)(186003)(26005)(7696005)(8936002)(6506007)(66446008)(19627235002)(53546011)(478600001)(86362001)(19627405001)(66476007)(66556008)(71200400001)(52536014)(76116006)(2906002)(64756008)(66946007)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?YJ6EWnabXs6vrxxNaumyFoyAfG79oR8X96zK9xOoTNP3XBXc4BWoXyMI?=
 =?Windows-1252?Q?rVlpVlfQa7pOuSX6xP5Lry/np/3u0d9uqgqEN58z3R6ysB77uGSiB7d0?=
 =?Windows-1252?Q?tvlIBdVBA6eInJ9mPefUt6EtVGduPGC3TSrwmN40wMyyu4MI3XKrCFEf?=
 =?Windows-1252?Q?hlDqvyiCeGO+O1gcl/OhVn3oQJEPNr8VlpsGsjUQAWEpZj9bkNcGtDbh?=
 =?Windows-1252?Q?Dc78AFFU6FFm9wSBRVEF5Fb8loWh3fAcl+ae361n049kkvtDWvRSrE0b?=
 =?Windows-1252?Q?aO3iIWFrCH0lMHZRc41D63VX7HA6iVchwfqlRZMAgE06dHI9n5Knn+60?=
 =?Windows-1252?Q?rKo8OvhTV/AzHtySzay6nSPyuPff+0EWUOdpy2f4DFZvXE5QZQOpYVii?=
 =?Windows-1252?Q?XSv8GbUPLHZ+q98Tkw9ZgXBQcUB8nzhDN04jbjVacmSUshcIN2aWqtKq?=
 =?Windows-1252?Q?YspnpElMT6ZlTcRczQZfGWMiSFqCgvzgbXaSbm304PegV6HxojO6OetH?=
 =?Windows-1252?Q?lKjFP5qNKEXEnbu618NKJMmTKmr8x5jnR8zUeapFrrbHiO1bu43zKZm6?=
 =?Windows-1252?Q?r8wH31SxhZLQHj2m7bzQxl54iPFTgTQmetxSZa8xucbNqPSMNIqVaqrI?=
 =?Windows-1252?Q?pT/ImKuAxzi1GJ5Pidt/GhDpzSfm01R+1vC8hy6ZX9vdgIYUU3AV+6cO?=
 =?Windows-1252?Q?lWKmP/fePwqqJYja70QP8rZ6iNh6TRI7RuyR5hLy1PriVhKhYqqKkO32?=
 =?Windows-1252?Q?j1248idenF9f1CGOpEFVcbk3ONibXjqxbM8qenQaQKy92SJWtX9aZQI/?=
 =?Windows-1252?Q?rd3SpheGogXvswqHKzfQzq2aoGCQIwuoN2+FHLlyFIbot1oozNURCNc7?=
 =?Windows-1252?Q?72uIiw0muNrbeFAlCAJURuA5uVis/Y9ktbq/UaeXRYUPaGUQ9ppj07OH?=
 =?Windows-1252?Q?HU+fskS6HLnCHYd4gTBpbR9V88wFz4ozBU4gbRj5VnE5x7pmBqgCwAWA?=
 =?Windows-1252?Q?xp4tCaOyXA3fcfem8Y4xoXU0YmwSQil2+1t6kxZndlsR81OUpSoaqYkI?=
 =?Windows-1252?Q?n3k8icrrlVuvjZWOxUcRS7gQuE9Gig5bl92yT8oUFPAnb1HIZ7YrCboK?=
 =?Windows-1252?Q?nC+YV+GmYGNMNJLzEknldInZxcdx2yaUVJ1T5MUxU32xKBbY/MOzvCt8?=
 =?Windows-1252?Q?DVicUAfnS4tborFhEGgCtVn8GNJu1MDl3OZd3VGVbByUI3r1+yT1tDO+?=
 =?Windows-1252?Q?voa9cQBMoJztTUR2Qp2DpA8kvLqUDuhWTtdwCO90SXVNL6P8rju39c4X?=
 =?Windows-1252?Q?gadPCiJ9nRoyjdTaHXDZ62f2XGw40aUAIEw+zkw2L8OrAzGDi6mm+nBs?=
 =?Windows-1252?Q?ERWLoHpzoyxjgYcCNEqEg0x9E2RJGVXNSms=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 929a2514-99e4-4b34-8996-08d8d35c03c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 15:52:22.5296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LKGKv69w4USwcEK/cWXzn6whzNBbfPd9b0ZT6EOWJTGPHprQENnQAXZRIDeQ3O/x8ZRVDLszQKcq/yv2z7p9JuJQoxRIFJcSLa9l00Z4vx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3055
X-MDID: 1613577145-uEij4MggggHe
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============4666296995435590902=="
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

--===============4666296995435590902==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33129C28A79231554AC0FD21B8869MN2PR12MB3312namp_"

--_000_MN2PR12MB33129C28A79231554AC0FD21B8869MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

I'm not sure if this is your problem, but I had a similar issue. After some=
 debugging, I found that for some reason, with the OOT RFNoC Block inserted=
, the total size of the CHDR packet plus the Ethernet header that gets adde=
d on in the FPGA would slightly exceed the MTU size (mine was set to mtu=3D=
8000 for the E320). I never figured out why this happens, since this isn't =
the case if the OOT block is not inserted (just like the flowgraph you desc=
ribed). Maybe just increasing the MTU size would help?

Anyhow, my solution was just to set the "spp" argument in the RFNoC_RX_Radi=
o. I found that setting spp to a maximum of 1987 keeps the total packet siz=
e (after the Ethernet header is appended) to be less than the MTU of 8000. =
FYI, for spp means 1987 samples per packet. So, for 32-bit samples, 1987*4=
=3D7948. This leaves enough room for the Ethernet header.

It seems like there should be a better "fix", but you can try setting spp m=
anually to see if that helps.

Jim

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark D v=
ia USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, February 17, 2021 10:35 AM
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC Di=
gital Down Converter


I=92m working with an E320 using UHD 4.0.



I=92ve been working through the video =94RFNoC 4 Workshop - GRCon 2020=94 t=
o install my own custom signal processing block into the RFNoC on the FPGA.



I=92ve also been following the guide AN-121 =93Debugging FPGA images=94 and=
 have added Chip Scope probes to the payload and context stream signals.



I have got to the point where I have the block instantiated in the FPGA. Ru=
nning the example GNU radio code that streams samples from the host compute=
r through the gain block and pack to the PC works as expected. I am also ab=
le to capture the payload and context stream signals in Chip Scope.



However if I reconfigure the GNU radio to =93RFNoC RX Radio=94->=94RFNoC Di=
gital Down Converter=94->=94RFNoC Gain=94->=94RFNoC Rx Streamer=94->=94QT G=
UI Time Sink=94 the system no longer works.



The Time Sink appears but the GNU Radio console is saying rfnoc_rx_streamer=
0 =96 UHD.recv() call timed out. Removing the gain block from the GNU radio=
 design restores operation, so it appears that the gain block is in some wa=
y blocking the streaming data.



I=92ve also rebuilt the FPGA with the gain block connected between the DDC =
and Stream Endpoint but the results are the same. I=92ve tried reverting th=
e gain block code back to that generated rfnocmodtool, which just loops the=
 context and payload data straight through.



Does anybody have any idea why this block would be stopping data internally=
 generated within the USRP from streaming out, whereas it works Ok when dat=
a is flowing from and back to the host?



Any help would be greatly appreciated,



Mark

________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_MN2PR12MB33129C28A79231554AC0FD21B8869MN2PR12MB3312namp_
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
Hi Mark,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm not sure if this is your problem, but I had a similar issue. After some=
 debugging, I found that for some reason, with the OOT RFNoC Block inserted=
, the total size of the CHDR packet plus the Ethernet header that gets adde=
d on in the FPGA would slightly
 exceed the MTU size (mine was set to mtu=3D8000 for the E320). I never fig=
ured out why this happens, since this isn't the case if the OOT block is no=
t inserted (just like the flowgraph you described). Maybe just increasing t=
he MTU size would help?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Anyhow, my solution was just to set the &quot;spp&quot; argument in the RFN=
oC_RX_Radio. I found that setting spp to a maximum of 1987 keeps the total =
packet size (after the Ethernet header is appended) to be less than the MTU=
 of 8000. FYI, for spp means 1987 samples
 per packet. So, for 32-bit samples, 1987*4=3D7948. This leaves enough room=
 for the Ethernet header.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It seems like there should be a better &quot;fix&quot;, but you can try set=
ting spp manually to see if that helps.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Mark D via USRP-users &lt;usr=
p-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 10:35 AM<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> [USRP-users] OTT Gain Block stopping samples flowing from R=
FNoC Digital Down Converter</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:b=
reak-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">I=92m working with an E320 using UHD 4.0.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I=92ve been working through the video =94RFNoC 4 W=
orkshop - GRCon 2020=94 to install my own custom signal processing block in=
to the RFNoC on the FPGA.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I=92ve also been following the guide AN-121 =93Deb=
ugging FPGA images=94 and have added Chip Scope probes to the payload and c=
ontext stream signals.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I have got to the point where I have the block ins=
tantiated in the FPGA. Running the example GNU radio code that streams samp=
les from the host computer through the gain block and pack to the PC works =
as expected. I am also able to capture
 the payload and context stream signals in Chip Scope.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">However if I reconfigure the GNU radio to =93RFNoC=
 RX Radio=94-&gt;=94RFNoC Digital Down Converter=94-&gt;=94RFNoC Gain=94-&g=
t;=94RFNoC Rx Streamer=94-&gt;=94QT GUI Time Sink=94 the system no longer w=
orks.
</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">The Time Sink appears but the GNU Radio console is=
 saying rfnoc_rx_streamer0 =96 UHD.recv() call timed out. Removing the gain=
 block from the GNU radio design restores operation, so it appears that the=
 gain block is in some way blocking
 the streaming data.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I=92ve also rebuilt the FPGA with the gain block c=
onnected between the DDC and Stream Endpoint but the results are the same. =
I=92ve tried reverting the gain block code back to that generated rfnocmodt=
ool, which just loops the context and
 payload data straight through. </p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Does anybody have any idea why this block would be=
 stopping data internally generated within the USRP from streaming out, whe=
reas it works Ok when data is flowing from and back to the host?</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Any help would be greatly appreciated,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Mark</p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>
</body>
</html>

--_000_MN2PR12MB33129C28A79231554AC0FD21B8869MN2PR12MB3312namp_--


--===============4666296995435590902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4666296995435590902==--

