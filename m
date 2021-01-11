Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9DB2F1DAF
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 19:12:53 +0100 (CET)
Received: from [::1] (port=56778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz1gP-0007ce-HZ; Mon, 11 Jan 2021 13:12:49 -0500
Received: from mx0a-00010702.pphosted.com ([148.163.156.75]:39480
 helo=mx0b-00010702.pphosted.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=66456f0e24=yechiel.peled@ni.com>)
 id 1kz1gL-0007W1-P5
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 13:12:45 -0500
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
 by mx0a-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 10BI8KTa024472
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 12:12:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=PPS11062020;
 bh=VojZhF+kO12VyxVyxbot6wmZS2BLXD4gyEY4bcf9o2k=;
 b=Gz/xnD4VF+BWgMk6AzEKT4OVdVM+sxMH0vGaFMyXuv7oW0fwJNBetjg8BX0COHHPyy1X
 CplsUz7aeo7WKy044wJwrNk0omHyap3II0MFf/qkqSPHP8RtdAAvbjORYnMmqkMzkGc9
 1NOwuLfrXWt6ZcBfmh36+L7UKixC80aqW5z6XzjdT5yG2/2y3z38WBZ2aiuGKu3+gRR7
 u+708GrJFQhBArSeJBlGvfeNufktXvN/ErJxT2F42JAgBFUr63FFD8AOCP2IGElVC8UV
 HmxyQBnwezlSsfVSg0IJX1CFLVdybEVK4M0VBb7BKMCTWCIbFnvhUuk2N3whK5bOPe3h 8A== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by mx0a-00010702.pphosted.com with ESMTP id 35y9d42w6v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 12:12:03 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnhGVwgMFSw7umVXdVU5KcP1jLbbIyFnVV639ynL4xJwR2OeC8cnxCRrUJza3H5UZlaumkR469c2UZyZ7befNFTeL3uUgjksDlKcQawsYyrLaW+OOPVPJBZ/yCf4KT643EddIEnvGlMcRfCcycgaAeyScysxL9JdyYq3gw5flWbh8h98T4RkBGUEmu2m1w0UC8cUPTCBd9Xfy0AGsZmIi32cQpT1V7kxMknYnN4gqqkFz7/BbdqkuNz7bKLpt6q4LkHdfHc02WyNCwZBqX12b4AkKXtK8IWzXmym9xw2P8MIkagn0uqc0LKleyMTc0Ey/9qhIXQ+zkBATm6dUgJPMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VojZhF+kO12VyxVyxbot6wmZS2BLXD4gyEY4bcf9o2k=;
 b=M6xw8puzOGAefUOTSePtWvh7txgtwOiFlwUQrE/u7IMPlnEw21LHohLq8psqFwnstApCEco5S7ycNSduE+EQndVei+ifY9OTLzQo6vF/dQgGTOykcWCPxbZXQBuqP63As3dthIWoRpCeL6HeZRwx3qZ0LZ8ICnyDs/72csZGMuJB3G90fsxgkSlZuWFLFogz1MFS9FuSa4048GAIu3HvRhp/BrhBbWZKjW/exkkn4y1xnXgsc82Ca/Yrln5v5JEO8TsN1oe2496eJRQJ23KUjQZuts/IJ5XDYTHDkjJF8CYGiljkq/Q9SIf3US0fBz5ppqRNsfC49x8jPGQj1T+pDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VojZhF+kO12VyxVyxbot6wmZS2BLXD4gyEY4bcf9o2k=;
 b=j+0KZtTryLA2hUtcQSxsBNCzP5RBEiezwU4Ie2r4g4v8wbEUp3cFHzO8/6/1Jxy2znRjVweP4DyqX9gIjTanSdxn8j9TKdsB3PWgvk5iQvszwmbXQ17FDJU2eaOA13f5BZKegAdQdcTcYtF8TnMCpZKLAnt0zGUnH0ILl9D3w2Q=
Received: from MWHPR04MB0958.namprd04.prod.outlook.com (2603:10b6:301:44::25)
 by CO6PR04MB7570.namprd04.prod.outlook.com (2603:10b6:303:a4::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.8; Mon, 11 Jan
 2021 18:12:01 +0000
Received: from MWHPR04MB0958.namprd04.prod.outlook.com
 ([fe80::9830:c9dd:611d:e8b4]) by MWHPR04MB0958.namprd04.prod.outlook.com
 ([fe80::9830:c9dd:611d:e8b4%2]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 18:12:01 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 and Fiber Optics Network and F.O cabling
Thread-Index: AdboRT15l1OdRqmHTD+jxUPkR7vG6w==
Date: Mon, 11 Jan 2021 18:12:01 +0000
Message-ID: <MWHPR04MB09584442BD5C6AA7CF56BC7193AB0@MWHPR04MB0958.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ni.com;
x-originating-ip: [109.64.173.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4a8718a-98c6-46bf-c15f-08d8b65c64e4
x-ms-traffictypediagnostic: CO6PR04MB7570:
x-microsoft-antispam-prvs: <CO6PR04MB7570A332144169A265D36B1B93AB0@CO6PR04MB7570.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3VMvepUHsTq/0gzMbPnBIfynSDPX3W2H0dhBGC03O54FmjsNZlszyU/c3jZLRxjV0k959O/kaSoETMM4I+usJ/c6QQsj1tE6kxhRmIvq1CKpWAt1td9c3Ti0tkQ78glnpqGfswpDiF7M67nTRp1ROQ5xor0QRS19YsQhfEWIJtBaUb0bBJclQlfKCyNJDe2wBTWnwlxUQ0ACgH1U//DBIJYrYR5V6ajXYiGnSegD9EXm3CvFMf2C6k+3O4N8MR1kA+wWbfcTWw0wvaBJEB5afW+jBnm0U998SsYF4kOHaJjTCmMop64XiaroWJaJ6UPsUaBT5MksLEa5vFKdKdq6LkY6rGigKf31cJ3JdsmJEabc4suwwCGaR0mduor/IHIlelBUOTW4fAcQnQGYo4imsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR04MB0958.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(396003)(346002)(376002)(66946007)(5660300002)(86362001)(316002)(76116006)(66556008)(64756008)(66446008)(52536014)(71200400001)(66476007)(55016002)(7696005)(9686003)(478600001)(2906002)(6506007)(186003)(8936002)(9326002)(83380400001)(8676002)(6916009)(33656002)(26005)(558084003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?BBzo2GrPjrmwTrmRM4YvDewiloGFmoESwvumkJ69VLBDa6bbBvGAnC9vCXOa?=
 =?us-ascii?Q?dcQYSAgkZt8p1uGxMPPBJQBXZrqDvUUitJxyHb8yX1d+43cK+jaNwctIprwb?=
 =?us-ascii?Q?rrO3C582kgjZdvfnM9W3tR1sdosJ1/c9WIYMLWqEpsC+s7MLv/mhjKkjbxEa?=
 =?us-ascii?Q?aPH5oiYxLpM5iU53xkaivBmmsVunGTd5EiW/x/iTy7nSO0Bzd8VlAgOZXSHQ?=
 =?us-ascii?Q?gSsOpvSVxtE7V9p4oL2vMWFoNal0+pQ+X+zadzfoswGjFEoOLaeYyU23mTu5?=
 =?us-ascii?Q?XeJbSMn+Pq2XEDb4uNSKjaI39rXYPxj1Dx9uFVjr83xLdDK/r7r9e/hhGWDn?=
 =?us-ascii?Q?YTVTQWoX/tEUO2NpvUlyTk++4ANmgu8tkQY6wS/skamU05DQGkb5UMkGEapO?=
 =?us-ascii?Q?ZIhBPSFMdepgzZlXayjpsaPn/FXjRCxxamCBomwCOc7SsI7MvmB7xUQAFnjN?=
 =?us-ascii?Q?E7NES/3sUyQL6qSfRKc1K0H4HM1V8RrtKz0GuSm8L1j6+0ZBnSs7y6WMVEHh?=
 =?us-ascii?Q?gTSqiIg+QdpaYmZp0VwhYb9EUsAqQU0snw+TI4zWO8WVuZKkxKKRbawDLYen?=
 =?us-ascii?Q?CW+gzw4uUmMsaGz8V3nS0iajPdcOPwPpyUBozFQIV3hfGYIExjMgy4GsZ1Fy?=
 =?us-ascii?Q?uZWDqnGD8SLirxAfhX5+akNFFqeYJGnKiTKAbAbfKWmLZzim70YBVBnMT9ZB?=
 =?us-ascii?Q?mgV2GC/+xwXIesFPfBanJSysgyR+fZt4+pV9JOUb3R/SfI7VtOTBdLPIxOIC?=
 =?us-ascii?Q?7CLTG/j9s/Hq+0w6NQleC0LmT0HfPm5RbpL5r3tESzldNZ9Q3EV6g7tVdqlc?=
 =?us-ascii?Q?1jY6rC6Cbr4wjdoIVVYSuFRFHXvpVJxboHldFcGY06VydHRxXY34pig4F+XM?=
 =?us-ascii?Q?zI9ydrjp8kCyfchS+US7mE4hjlLmd2Rlb9bKKaGb3kl4JAEnejapxAW9fXrG?=
 =?us-ascii?Q?M8EygHfNF/GL22BMR0fEu+/OB0Hba7gHJoqDMmu+uAw=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR04MB0958.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a8718a-98c6-46bf-c15f-08d8b65c64e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 18:12:01.8355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0MfzLEUARVdgLFNPdfcgz3vGdep/MdZHpL2lN9ZMt+WsJtk7e+rWRO/j0AU8KeqbnXRAjGd68DfVj1SPpeqFUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7570
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-11_29:2021-01-11,
 2021-01-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=30
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0 mlxlogscore=535
 clxscore=1011 spamscore=0 mlxscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2101110102
Subject: [USRP-users] X310 and Fiber Optics Network and F.O cabling
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
From: Yechiel PELED via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Yechiel PELED <yechiel.peled@ni.com>
Content-Type: multipart/mixed; boundary="===============7704126012787053102=="
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

--===============7704126012787053102==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR04MB09584442BD5C6AA7CF56BC7193AB0MWHPR04MB0958namp_"

--_000_MWHPR04MB09584442BD5C6AA7CF56BC7193AB0MWHPR04MB0958namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

Do you have experience with using the X310 , connected to a Fiber Optic net=
work module through a Fiber Optic cable ?
Does the X310 able to accept/Work with Optic GBIC and it works OK ?
If OK, what is the suitable GBIC to for working with X310 ?
Pls recommend with model/types.

Yechiel

--_000_MWHPR04MB09584442BD5C6AA7CF56BC7193AB0MWHPR04MB0958namp_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do you have experience with using the X310 , connect=
ed to a Fiber Optic network module through a Fiber Optic cable ?<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Does the X310 able to accept/Work with Optic GBIC an=
d it works OK ?<o:p></o:p></p>
<p class=3D"MsoNormal">If OK, what is the suitable GBIC to for working with=
 X310 ?<o:p></o:p></p>
<p class=3D"MsoNormal">Pls recommend with model/types.<span style=3D"font-f=
amily:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yechiel<o:p></o:p></p>
</div>
</body>
</html>

--_000_MWHPR04MB09584442BD5C6AA7CF56BC7193AB0MWHPR04MB0958namp_--


--===============7704126012787053102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7704126012787053102==--

