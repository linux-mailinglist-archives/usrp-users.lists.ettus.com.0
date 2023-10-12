Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF17C6E3E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 14:36:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41A88385DC0
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 08:36:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697114182; bh=QHPMbz+Lm+PyFM81POQuuLniX69tHjit5yNNvcutfyc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pEGvwSrWE4UGK6DMj5WU+9qgS5S0b/d2CYfU2Z/QxWJbvRWQbYmXPirplGSnt6GNf
	 qo6qG6FqTAFOK8BlcbIkeTTsyFg/Nl66IdhXTTMAItRN+gWO4p7GlbiIGVMqJQSvT9
	 wdfB6XQnEdMnWBW3A1RalRcjAmcaKiQc3HLaffKwd0cv8B7NMRCCQ1yr6YP3qRdwWt
	 e3Th49njx7+gHLIygFffJBy/5eMwp38vxVBNjUt6+tKi37aQ+RDN0oibLsqkPQK7RL
	 Oi+UbqqNNGeCUbtnoWPCZYRN/4tYHdSebAS2UU9nvnZMiTXkqEHT4KLk4nzj3L8CIj
	 GrzDRGPlV1D4A==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2116.outbound.protection.outlook.com [40.107.223.116])
	by mm2.emwd.com (Postfix) with ESMTPS id AC142385CA7
	for <usrp-users@lists.ettus.com>; Thu, 12 Oct 2023 08:35:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="MQJ9EfnE";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQZ9Mpd57zh6o9PgDs0da6uxXsTr9if3f4rqDPwotIxfdaeB+EZ7IMSl0mNoqfO6wMeQ0Kt01Ufj0sLesoNKH5yVuiKYsO+FCxf+YxDOohUR8vnZO3CMCrWtk+7iJj5KxfPrRJnxTvtt7zccSnPDkUQjwdHJVJ/9DLpYrl+4etu+zGNM06+tct2gDm3a42KKiDwhuCwk4Ht4aRY26O2Wk9L9Mq1vagkn0hiRS00xA3tCMtTPOzr3FXs1C4nBPvKfWWz4AxFsPt/7kbAOerjZf7qnfX9sO9ZHaWP5hsKy6MCmvDOD2WYKBOpHJBo7TVAltPxPI9aTH6tLFOsHel03Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34KPj0W84KDeD8wJ+4PlJsNpS1+86qLbzUkkdJ5+M28=;
 b=bOAfNtKXEN33pIYX0BypNgFHihUqzkcmdv007Fi7A+GczkQkxCMzoOJ/QVm9RrXAEfAWbxD+/f+m6EBIb6nngDqSUZguPm0T+29ObIK4b8TTDtLxkvsUXKSrgSuSXXJ33+ecC7l0N5AkH5acY1I7vR3Wq7PXg5hjEYaWVFIIi0Cu5LPh3BpxLWNcFgIacwKRmQzQlhE3QUdF1gaOyuQK++eJU1RIVkkAJwY1ojdZgdxFzFVVM4kHkSXCTMd8Qcya/4KigGF5R4/oLwL+UX7U+UW1Yz5cD4h4zIEop/dUj87vaKZgHo8bSqzrECaeJZUi+AyehgpxVsaW1y1kkAhGMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34KPj0W84KDeD8wJ+4PlJsNpS1+86qLbzUkkdJ5+M28=;
 b=MQJ9EfnEvEOAhzieDcQm0y7vPWQrP5f6W5SCpD8lRcyvYEWdPZQDU0zDWjgqezpBsRMNm9XqAidAToAkDcWSpDnXoIlBvtnHU4ry/vpS9UHPWwUuz9UgvmQLUjEPi8DZcoZcvH2ZCicDg06DYpPrq/19kJKa4/JWLYqUZAEQ/1M=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by PH0PR04MB7400.namprd04.prod.outlook.com (2603:10b6:510:13::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Thu, 12 Oct
 2023 12:35:38 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887%6]) with mapi id 15.20.6863.040; Thu, 12 Oct 2023
 12:35:37 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Not all UHD logs showing after adjusting log
 level
Thread-Index: AQHZ/QV7eaxmASOxlU+LR58YDCRNsbBGFjKQ
Date: Thu, 12 Oct 2023 12:35:37 +0000
Message-ID: 
 <PH0PR04MB8311754FD474E8848B6F10F2F3D3A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: 112c6dc9-7f28-412d-ae39-91fbc7d02a7d@gmail.com
 <2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks@lists.ettus.com>
In-Reply-To: <2U4be32s0NcX94vHr6oC5oiQGvkDJdqPWW8IqrG3Hks@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=d52400bd-8fd1-4de0-b3d4-f6f61d646cbf;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-10-12T12:32:16Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|PH0PR04MB7400:EE_
x-ms-office365-filtering-correlation-id: 0894eecc-4306-4855-b03f-08dbcb1fbd0d
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LtcqX5TLLHSthDpZpW9rB3eiChScNLbesciOc0FREYv6Ouhgv+nLc46hGSTmhH4LAfEv53B3HLhELnZl9DQartTcqacQNQDarSSEyC2qJjhzSFL0NSvYP5/2YDnsXq1yadRbX5KNDh59LrrPCcC6LnTRXIdasGgWjG8GoDnCDVAG1sMlAGOtpazSSpSSC0rswSYuYZcT/KC7AeiQ8W8Kh9JIRxzwFKbSKV4X+Y0p1pTMMnACdxJFz+Nt6DqWBz8fqdtuO82qO+cG15oh1QwX5TL6SuoyWefCZRkAErDzS2GSTg5aVwhjFzp36RLkXZ716buFHVxVo/aBVPpF9OMz+2kQTj10tXODjIxS6KlnqaKWqfKP35yH6FYGYFhqh9PCNpj5jIyy00VzzMd1OF6IOtYP7jPqQwaiHVtSBca2itCfDLGTUPIj+dnZVMfDFuXpKGuAA8m9YdjOPgH97bQPke3RlsWHS+aP3LxSSklW2rsrh0ozsIp8yuMjyOxF6KBeWH+lxX53Pfh6s/srZuquVGAA1rQzSOkHXm3Vp8i6gOaz2pcX/dtPEIpFbTK13l6BWZLqdzewa3KNn2DUXUs+rLPOeSXN19A7/DNPrsCJaRw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(346002)(396003)(136003)(39860400002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(6916009)(9686003)(966005)(55016003)(8936002)(6506007)(2906002)(316002)(166002)(83380400001)(64756008)(66574015)(66946007)(66556008)(66476007)(76116006)(26005)(66446008)(8676002)(5660300002)(53546011)(52536014)(21615005)(71200400001)(7696005)(41300700001)(478600001)(33656002)(122000001)(38070700005)(38100700002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Bqlc17xXCG7KM8QO3DY5rNYY0EICQAc7/y3/jrsmei34BFvne4UsTV0hUlbF?=
 =?us-ascii?Q?IFhg5+5GnWZrYJKPKvTISifL5tyGW9tYTerbJEcnehTwW5+dLdotXhPvxAay?=
 =?us-ascii?Q?ZzRlxAjf1HhNi/mlthQ48fjWQ8Oa8g9qyxbqe2AWOAKwLCw6ysa+c4gYlsC9?=
 =?us-ascii?Q?4SQSv61jKPr9lUr9w4iaklwVJ+LJEfsLv+jyAAYr1i0lNaJabvIcWCqKQJtI?=
 =?us-ascii?Q?0hRDxQjFySe/l9tH0S/iRcE9pl9Y+uEimrPzxUGIpYk1q862nCaf3v5mkkjm?=
 =?us-ascii?Q?kYi0DZGYYjHi0p9nI9FQbGK+5pjOd4/63UdcOx9ACGdWRXGaeigOGW82FEBI?=
 =?us-ascii?Q?De7jhqy5hBlWjmuMt9+8m+8061DVo2ezjR+DBfGg6euKwPoU1UT+rBfECo0e?=
 =?us-ascii?Q?8Dm4+dq0FDOmuLUJpI4kB9PV0X1OSkPvbAiy6HEVMJ2YvZvH8a57pNzvyxZB?=
 =?us-ascii?Q?9wRIajBGCxntjXKBqzRCkPm372oGNeLrfmEY4HmZB3oezjmwJn+9hRPGQHn+?=
 =?us-ascii?Q?wHTYx3Tthxc1poE+7PCPaUNnsz47S3fZdQN8cSWm6J4JQQliH/N+dM9pP8wC?=
 =?us-ascii?Q?WDjeEKfz7s3UyNgetWVTWZo1UYp5omGjhESvOdRAr7Nva6tjU+VG0E5zUFY3?=
 =?us-ascii?Q?SYcks1f4hG4ALXxuxyM2YNVdY4VFLDIcCai8SbMBbc542fh486dEeBWwvmBc?=
 =?us-ascii?Q?EloZm9982Gc5NAVxOLVyAc6F8KpYmBDKVPEjiQRy/GJlEPZFckVaBsmzvcZk?=
 =?us-ascii?Q?6KfeS0+pvkoq+44egHl1ylMlCvOdTw3itfo0X9VIuoi7xoxAiJ1z0DJVfjoQ?=
 =?us-ascii?Q?I9X8BIVARNYWew9cs4Ow26C4SJmo2iQcsviES19eogYRhjb3ceKt/sNzLDJ4?=
 =?us-ascii?Q?Hd4udFsPUDrrK9rMEYuEWj8MrRyAYbSF28MMqCVkXIk5I/li0oItG9md7v3Z?=
 =?us-ascii?Q?X2dmuaJcwUOB/nZaQjk168LhsRcuEJMQp3FvB9fGqkSNtSzq5nAxqZ5WW0cM?=
 =?us-ascii?Q?/s1IotijP3xT39hwqr8feOs9lpqC2GmMsVOW+QsvA6biS/aWjIWcdyY2PgGH?=
 =?us-ascii?Q?fw2nj+7Sj4sR2d/5VDii+1moDbBihw0LaB4Jvnk16Oof9KX/k+aSIUcm/qBW?=
 =?us-ascii?Q?WR/aX94YCy6uP9lOVWGTo0M/vpajcA+iQ7ywCDuNK2Oe/rVZFantMqDmU6xh?=
 =?us-ascii?Q?OJ8LfX2qQ/Npg/sm09bIYW8XfPK5lqvBmB7TMrOrHWZvjqoh8zKx8JwDcQwR?=
 =?us-ascii?Q?82MWWJ78i2JJbiMYFmnjaeaLQluZFoB8v9NtCre4iCGAmVOa3az1Q092YOxg?=
 =?us-ascii?Q?FWkEyQyLhrFJrrzoiHmmvaX5k36Q0y5I8XN+CMvuVk1NLkzV0pDW8BkdgwWt?=
 =?us-ascii?Q?61JfU1BYoyTxTHQ04HhO58g3KYgvJZHjFOtxf0lm/65zLmIigVhdmu0HBIC/?=
 =?us-ascii?Q?FCvERlhD3aOb792CgWKVv51U/2DY4RbUv76w5LM5DYtYmCM2ZSTeP84iEQGz?=
 =?us-ascii?Q?gwK8MszW2XiJQBOamkdw41hI3wJWa9RvZ3I6qL003Tc1+MALkGJqpQDsaKrS?=
 =?us-ascii?Q?Re480JUVGMiJWQChESBXox9jgyHYNaUxHofe8VhK?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0894eecc-4306-4855-b03f-08dbcb1fbd0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 12:35:37.8973
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QUKPv+TL9QuCtm+diBUEaRaIylQ7SwVk8r5AkXPkuNkU5u3vhXP4ZCz4F9+SsZKv/qOI7BTAfOydHq30+CfBVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7400
Message-ID-Hash: WYE7PBJLAKERNJOXILP3VTLYTLLSISM5
X-Message-ID-Hash: WYE7PBJLAKERNJOXILP3VTLYTLLSISM5
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZVP52AF53OJNOCB775OULP5UXFRKWYI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0079370898020247808=="

--===============0079370898020247808==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB8311754FD474E8848B6F10F2F3D3APH0PR04MB8311namp_"

--_000_PH0PR04MB8311754FD474E8848B6F10F2F3D3APH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The host-side log level is not propagated to the device, MPM has its own lo=
gging level setting, see here:
https://files.ettus.com/manual/page_configfiles.html

To make the change temporarily only you can start MPM manually on the conso=
le by first shutting down the service with
systemctl stop usrp-hwd

and then starting it with
usrp_hwd.py -vv

as a foreground process to get the maximum log level (or with -v only for h=
iding the trace level). But check the link, this explains how to do this fo=
r the service, too.

BR,
Martin

From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Thursday, October 12, 2023 2:13 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log leve=
l


I am changing the variable host side(i.e through adding the variable in bas=
hrc). I am assuming this would propagate the variable to the MPM as well.

If the MPM logs use a separate variable, what should I do to adjust its log=
s(adding similar environment variables to the x410 did not work)?



Thanks

Joe

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Director): Jer=
ome Meyer; Sitz (Registered Office): Dresden; HRB (Commercial Register No.)=
: 22081; Registergericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB8311754FD474E8848B6F10F2F3D3APH0PR04MB8311namp_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">The host-side log level is not propagated to the device, MPM has its =
own logging level setting, see here:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><a href=3D"https://files.ettus.com/manual/page_configfiles.html">http=
s://files.ettus.com/manual/page_configfiles.html</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">To make the change temporarily only you can start MPM manually on the=
 console by first shutting down the service with<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">systemctl stop usrp-hwd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">and then starting it with<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">usrp_hwd.py -vv<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">as a foreground process to get the maximum log level (or with -v only=
 for hiding the trace level). But check the link, this explains how to do t=
his for the service, too.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">BR,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;
<br>
<b>Sent:</b> Thursday, October 12, 2023 2:13 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: Not all UHD logs showing after adjusting l=
og level<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>I am changing the variable host side(i.e through adding the variable in =
bashrc). I am assuming this would propagate the variable to the MPM as well=
.<o:p></o:p></p>
<p>If the MPM logs use a separate variable, what should I do to adjust its =
logs(adding similar environment variables to the x410 did not work)?<o:p></=
o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Thanks<o:p></o:p></p>
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

--_000_PH0PR04MB8311754FD474E8848B6F10F2F3D3APH0PR04MB8311namp_--

--===============0079370898020247808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0079370898020247808==--
