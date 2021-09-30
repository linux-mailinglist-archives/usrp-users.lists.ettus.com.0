Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2659F41E2C3
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 22:41:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E36923849A7
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 16:41:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=OroliaDS.onmicrosoft.com header.i=@OroliaDS.onmicrosoft.com header.b="mU1OvIVK";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0080.outbound.protection.office365.us [23.103.208.80])
	by mm2.emwd.com (Postfix) with ESMTPS id D03F8384885
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 16:40:36 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=B8AEGk7jjF6FkJ2FN9VUgqLaoO6mB7HbCuI2R+0q3SxrhDo+OslLhfluiOp9HmRWzANFEwUPkXvLoE03z8CwE5ApZ5j7wYvxiTQPRiNhKHa6RVNgUamt/fzgJpgpclzg24FjnDqfBHsbjifbk+CZTKM9iKNp6zFuSgNsHJ+xbQYG8thHgrzhmqxWzDtva7je9W8W1iiQshgTowbure5f5o+JJYHR66NOXpGgLol0EXf90tRFc0UT8PsRWKJgvaoCV+YxAB2/9jledxcdOyxXj7g0qVYYEgW1RGOQdcAXJvlHeM9fg0X1JR+0Jg+TmihLEGVy/C5eaj4JDTAtj3x3lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3qsy4MZ7fEh4mROyiaIrpWPCXaXYRgivAmPSFlaNI/U=;
 b=DIIADgmatMg9JzVFpHwgu76cotUOV4JT1lHxpI6x3NQ7JHMubFTI8BhPSMiwAzPmpTalIGhQftWQHvAjzRhrrKutXy7e1jHAQoOYPaevnCklhyV38bRgv5lyBRUQP+pS3sNs3Bff7+QNHzd/1eBh8MAYg8uNb84beKQhhoQSTMXX1fxjmh48oq0xgn1RwS6S8jEStsMAuPqE7gCf8gp58lyL/cgp0jhlID+I8UYQ0e5+XvFKw0ZfEueGIxlVj0GmhYyk45RJDCq91IxWQmYRmki6dahTuNCWRMNAjKTM6cQ0YA+MybYcxbSPVN5N9OHAH5NPpA1xeO/OUJC6sDUm4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oroliads.com; dmarc=pass action=none header.from=oroliads.com;
 dkim=pass header.d=oroliads.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=OroliaDS.onmicrosoft.com; s=selector1-OroliaDS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3qsy4MZ7fEh4mROyiaIrpWPCXaXYRgivAmPSFlaNI/U=;
 b=mU1OvIVKzrk2FzbQ9td48OFPxpAhFRFSqXeCwy0e9JpdhRLn3HQWnBkD9I6gvLIGKbSEzN6naYUCYIy1SZ1lnUhEjpwKXGuQVueWArQ3GyNEloa1Oyzxj/T2Q/Pwh74EXUlHXUw0/q4AoeOqRPSFFzUO39q2wLjHIQNWgxlNgMY=
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:14b::16)
 by CY1P110MB0744.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:14c::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 30 Sep
 2021 20:40:32 +0000
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd]) by CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd%7]) with mapi id 15.20.4544.023; Thu, 30 Sep 2021
 20:40:32 +0000
From: "Adam Bader (Proxy)" <adam.bader@oroliads.com>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: Amount of Radio Buffer in 4.1
Thread-Index: AQHXtg7h3DMaWANdGEidMTxdHbEtGKu8yA0AgAAZUZiAAATrgIAAHya2
Date: Thu, 30 Sep 2021 20:40:32 +0000
Message-ID: 
 <CY1P110MB08213E904D0CAB514E1CDF08E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
References: 
 <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com>
 <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTSQL_ozNwJLnvyj+gpY+Nqo9xmj-=4Q1Njb98Nq-v2i5w@mail.gmail.com>
In-Reply-To: 
 <CAB__hTSQL_ozNwJLnvyj+gpY+Nqo9xmj-=4Q1Njb98Nq-v2i5w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: ba2d3044-8f71-eb44-f79e-465164976101
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=oroliads.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f33e375-4029-425a-5724-08d984528c2d
x-ms-traffictypediagnostic: CY1P110MB0744:
x-microsoft-antispam-prvs: 
 <CY1P110MB0744C08A01E1722400B8388DE3AA9@CY1P110MB0744.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hVGzwKzedP15xsGVqa1mJwPuMX/AMzK3yyXXnLe3kgcmycGqfrQVuML9vxreDZcfMWmUuAiU/+z7PUIg3bAQN+kDnfqX71bl6DvlFA1KrYhxA2yQhfju6WkPHNwpQfkogOWp/QzKmSVqsdw7SvOknyZwTNHChddp4TrXy34A6CpgOD4v9iFcNZR+2wqt9k3kLRcIWDdHOw1RTItmyTz29yFSbiJZXUGqlHdgR0a5zOiHWg49CWxqRxwd5Olq8gCRuwHEr/MDOW0TRRyena3TdgMOX119zcaW2A+oSURAzknifvLYl83HxX/FFHg2rOHHf+uqRK8KkvlYmtKP4E/w2Tf0WyFQmJRGAavtdbqIImi/0kvoyJE+YXr0uBIm/+3MAlFRVnAceBw6IbcRhhVY0geLC8vMb88JhsSCv/AgXcTrLABhaY3xjZdG4FVdvly25ymdk6fRw3V4YWYlIdTnvipFfGDHziPFkXVJB+QJF+6X3prb1CEWX5Nz+VdxNh1ZgCWg/EoMhiynNMmaUQsiU+dlJ5UXdPXURO1DrLI1jPWAZJ6UPnZzU1rNs6RpT5bQoMiZ6iqmH2+RKJN8+m2g/pYrHj04t+5C5xxG2j7k3P345+r+LLzx756/uxMkTG1f
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(76116006)(7696005)(86362001)(508600001)(54906003)(38100700002)(122000001)(4326008)(66556008)(66476007)(66946007)(64756008)(83380400001)(66446008)(52536014)(71200400001)(8676002)(9686003)(38070700005)(55016002)(6916009)(33656002)(26005)(8936002)(6506007)(186003)(5660300002)(19627405001)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 FmIxglJyizLbFxz5/QUInAgqHTQOzJxD0/RiXGKsZ47DIhDovO5pX4dz8ky+pMpoo5GM+XuLg2pY1dr8oy+wTIWU95So30uurYM33vboYq/MBc13w4OjSB7LB7qoDh4w38F2NHcgh9nKxmvbRRVqWA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oroliads.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f33e375-4029-425a-5724-08d984528c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 20:40:32.1733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2b24436f-9785-4281-92f6-d7ee04c9cf8f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P110MB0744
Message-ID-Hash: LO2NDGXSVX3IBHBHGLUX3PNXWUY37KV7
X-Message-ID-Hash: LO2NDGXSVX3IBHBHGLUX3PNXWUY37KV7
X-MailFrom: adam.bader@oroliads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYVFZ74N37WTBCRO5K5SPKF6RYODQEWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7941798647820187694=="

--===============7941798647820187694==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB08213E904D0CAB514E1CDF08E3AA9CY1P110MB0821NAMP_"

--_000_CY1P110MB08213E904D0CAB514E1CDF08E3AA9CY1P110MB0821NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My testing has been focused on a single RF channel @62.5Msps since that is =
failing, but we normally run all 4 channels at that sampling rate with 3.13=
 successfully.

The benchmark_rate example as well as the sample application I wrote do not=
 show these failures consistently, there are occasional runs where underrun=
s and late commands will show up. Our application hits underruns almost imm=
ediately after the initial time_spec passes and RF transmission begins.

I've been trying to investigate why we see consistent failures in our appli=
cation when nothing changes other than the version of UHD, which led me to =
finding what seems like a significant change in the amount of buffer the ra=
dio allocates.
_____________________________________
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure, distribution, or copying of this =
e-mail or its attachments is strictly prohibited. If you have received this=
 e-mail in error, please notify the sender immediately by return e-mail and=
 permanently delete the e-mail and any attachments.

--_000_CY1P110MB08213E904D0CAB514E1CDF08E3AA9CY1P110MB0821NAMP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
My testing has been focused on a single RF channel @62.5Msps since that is =
failing, but we normally run all 4 channels at that sampling rate with 3.13=
 successfully.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
The benchmark_rate example as well as the sample application I wrote do not=
 show these failures consistently, there are occasional runs where underrun=
s and late commands will show up. Our application hits underruns almost imm=
ediately after the initial time_spec
 passes and RF transmission begins.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I've been trying to investigate why we see consistent failures in our appli=
cation when nothing changes other than the version of UHD, which led me to =
finding what seems like a significant change in the amount of buffer the ra=
dio allocates.&nbsp;</div>
<div style=3D"" font-size:9pt;=3D"" font-family:=3D"" ?Calibri?,sans-serif;=
??=3D"">_____________________________________<br>
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure,
 distribution, or copying of this e-mail or its attachments is strictly pro=
hibited. If you have received this e-mail in error, please notify the sende=
r immediately by return e-mail and permanently delete the e-mail and any at=
tachments.
</div>
</body>
</html>

--_000_CY1P110MB08213E904D0CAB514E1CDF08E3AA9CY1P110MB0821NAMP_--

--===============7941798647820187694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7941798647820187694==--
