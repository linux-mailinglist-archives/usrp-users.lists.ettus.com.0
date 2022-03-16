Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDEB4DA69F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 01:04:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88626380F9D
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 20:04:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="AeqlCXKa";
	dkim-atps=neutral
Received: from mx0a-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 18999384455
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 20:03:44 -0400 (EDT)
Received: from pps.filterd (m0239462.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22FK6D5T018291
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 19:03:44 -0500
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3et646upk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 19:03:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldsS6phfYFcb8nUIfT5lcrhGWVInAmHVHE6Vc5u00VbtwjVvvofIPLVi1eSK8qXB49YYHJFTZGnD9707Uh9HmE04/t3a/6c+5F++aga9kvUxyO9j4JFOwtu7+ZXmabo0b4VDKGXcdUvfB/8fq9zn9fpfRjMDG0a+tC9fT73ykMHekIOUa1Air2pdb87EGWYXGnMcjW2qMU30OO0cKxkUXWHwPgd8zzLwKrDhy0quA2eni6HmUJfB+sEoqtPsheUQjY+9JIxGup0aCg+cKF3727dzGvz4vyn/S0dQKwB208A5tVxNVbRR9TwCEBHfhZFzus7QgAbhQTyWEly061jvzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmioHDGc4eBcb7GaihCuti+cgaithcnEQGbhVUypNeQ=;
 b=gyDwrOylDq45qiqAKUEuAGLOtiQU2WJqLeeJGSRiJ4/moyBUKXc4PWSh6u5XFWUprMC/RK6v7wO89NK49vdoUnyTev2guuro87naF1GvMwsUGNnrMDnLQfKCADuCs67V7LZ8RghDQFPchYhbqGIMRMmU+bTQzEcOKltVbgJCdtqj60FlJL0p0t4p/eWWi2ojS9+kSLfdgrGPP7ObrxHUjRYZuqWh7NyesWUTQSjzfsvEE6O4Sk3es51irFtyK0JyO7/Pg7nKlI0reQBDNJ1lFAKaqfW12VGFcTl7FlKbUJzg14+AE+u3JUS1vOk/uKi6y9I+txnVWGEksHI1ZXgx9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digilent.com; dmarc=pass action=none header.from=digilent.com;
 dkim=pass header.d=digilent.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EmioHDGc4eBcb7GaihCuti+cgaithcnEQGbhVUypNeQ=;
 b=AeqlCXKaamZ5GBIrgR3ugBgrzapwk8+YfK0gz7vTRr/sTmDYJ3hGHrZ2f4JKQbnpVFgMqms1fZaID+57BQUz0nyoxeAn+1wVfMcqclNKe1VKtNqigQNIHqONXKYNpohVJJhdchb03axBrXSXE55OaTeewmxgZ+O4OQpZCuUQJOY=
Received: from MN2PR04MB6736.namprd04.prod.outlook.com (2603:10b6:208:1f0::17)
 by BY5PR04MB6627.namprd04.prod.outlook.com (2603:10b6:a03:22d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Wed, 16 Mar
 2022 00:03:41 +0000
Received: from MN2PR04MB6736.namprd04.prod.outlook.com
 ([fe80::1da1:67bf:3753:7f2]) by MN2PR04MB6736.namprd04.prod.outlook.com
 ([fe80::1da1:67bf:3753:7f2%7]) with mapi id 15.20.5061.028; Wed, 16 Mar 2022
 00:03:41 +0000
From: David Horn <david.horn@digilent.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus Projects? 
Thread-Index: Adg35IRVr3EDdvFkT5eg+92OJYY8zQ==
Date: Wed, 16 Mar 2022 00:03:41 +0000
Message-ID: 
 <MN2PR04MB67367AD3612E478590EAC8B6EE119@MN2PR04MB6736.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ca6fbbf-6a64-49ad-fd0e-08da06e06e22
x-ms-traffictypediagnostic: BY5PR04MB6627:EE_
x-microsoft-antispam-prvs: 
 <BY5PR04MB6627B9808012DE9AA7527CBBEE119@BY5PR04MB6627.namprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rpFyRHW+i5sL3yJrAYcreMLQ1a/Q69sB4g60JCrBAOedMaRBfhd3r5zH7n6N/abqtXpD892BArirHKsq6JAalB39Og3JoO7riO/POCwvjSvCBiCCJu+VfazKJxy5MZYdXXgddktcimrtgBljjgNSZuyO8d6w4mwLaVWb8lelboBZ3e32M822INbOoH9HgDFl0b3tLED7Bzvu6L9os5blvUwIqepYnIhm1O1gBQh/3NUe55i+21YUj4vPD7XlTSUF721Jz2olp5nJftZHOkgubmuMm2HxXzqqpRGPVZ0cI7mYkK6NiyAhG/OrtP/otZNzEvNX870mb6zxnrGFYdEgZ7fcimd8cEiNFc8qpSthV9/Id4K58DYE9IDoswTLrY/AtRgj3jlF2O7Wam86aP3G2iA2F+IzlQU3ek9P5VECTWuEVKC0Kgp2E4nazqkuRi07QrSRczMa+ud0PqXvghnoiegeZFB6jBlmTxegCNwbqSdnm7PDsemrqHhVrFZzbVPjjrtGYGIl9sgMrY7Z1FuGckloN9ihxoZiGosbkEY4thwR/lyc9pH8Yx6yRELttDgSSq+LYs31uX/BIWhl6CJK7OXCvVs8PlWHAQs+hT4hHMeBJAory0FOmq9GA7ajzOTBGfS5NJf66W8BxmcduENs5fxdYIv3KAIK6Zh28WEWilWPLWTiZAXfBTg3JKy1SSv8cbCTlc6162LVVe0qweDwFb2VhSyUGrqB+JtHjQAsosKw2XRZBvkeMkCYP3p9+LLI3HKaAX7TGMiyVq32O4u78cqjr1R3wqGjXNXY75duEHGYo8pLzqoBQQEtf1Wv56wKgqyr/dvfOymZgYHFtUqGBQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR04MB6736.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(122000001)(6916009)(55016003)(86362001)(4744005)(8936002)(66946007)(52536014)(186003)(66476007)(66556008)(64756008)(76116006)(44832011)(66446008)(8676002)(2906002)(3480700007)(5660300002)(71200400001)(166002)(33656002)(99936003)(508600001)(9686003)(40140700001)(38070700005)(4743002)(7116003)(316002)(7696005)(6506007)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?EL+bbNEBHd61EaQb5PJs8FlHPkAOm+GXceQm06EsAezdDFMt6qW3wEF/Gtyn?=
 =?us-ascii?Q?/8qIHKgLIWfhQ6yJ9DFgG2IhTbUdeBgSsd/3CfnlpceMoldHAw/QI12yJyYW?=
 =?us-ascii?Q?Y0HY6y9TCdVVWza2nTJoN7GlrKHziweSqZJw/5sb2ozO3x5tF6x52SE+oA5Y?=
 =?us-ascii?Q?U4kz6sKAMhXivOYqTsX8uktpzLYROQSN0Oq5vNKjz2pwQx9i2lXOjbGjZg2v?=
 =?us-ascii?Q?zQrzDCzJVPMowOOKVAHJ/2qRcVDIf2UXYj0YONqZ3CZgZ0srEShlvYbUtpsc?=
 =?us-ascii?Q?xOrjeTxoupjnaJBZtM/OFFC41YJEdAkHG7Ab5TvkK66PveLXKDjbzL8BdKwZ?=
 =?us-ascii?Q?3X5BHZk7Y161j6Jf3ytQZQlP9hN3brpti1h8uUZWOJM5n+IUzN9PfikFTHFr?=
 =?us-ascii?Q?rBaDGz7S6nm84DgW4AV5IWxr8FJzjhxMRWCpwmWcy/ayuPGgvmcUeosRyG8S?=
 =?us-ascii?Q?ysvXwo2u0h/gxe5Iwhm7cuytFoWdid/kvuuSgjfDk6ihYoDkhmXyNsgPFLzK?=
 =?us-ascii?Q?pup3tyxYEw1dftxibcpJecrWDKPH8ybde2bkbfGcGi33yEyL2a645sjbeNcm?=
 =?us-ascii?Q?z0cDSbD1/j6CNnejwRCvATeIf74TclcnbajpDZYzclk68CJuCaxsqgzctb5B?=
 =?us-ascii?Q?Uof75saR6MK5StIBvDsJs/OEq0PbInrHfRP5bv/qBgmpczePF77xYUXgY0my?=
 =?us-ascii?Q?6a2fUIW7IiBUzynpXnczTxTWEN2dOA9lx3iNcXKWD0OC6p5N9F3kXpa5cAV3?=
 =?us-ascii?Q?nhwCgqbdc0HlCe3OK0q3sAAdbB/pNXzc7A5jJFLdeBXQ8n6XQJkmQ24MRdql?=
 =?us-ascii?Q?uWo/93cgcvVnueeSo+3v+vAdL6O+x7JFedL652QR/777fm8U5NUGa6gpJalf?=
 =?us-ascii?Q?UO8f2Jov2WeRO6yZ+FRDFbSkK3OEUM4+/DHIElY3hc6/2nIfMEHYH+42cE8v?=
 =?us-ascii?Q?2XaGdWbNQYzC5/oIdr3Qqul581419OaFunUesLT1N7cnHCic9VCYQo2SktbL?=
 =?us-ascii?Q?Q/UBI2NH49C4ucQQjjrWa9aMR4KWDRWPkuIA9UAoPgvVlEhFcDX7v9aX0ics?=
 =?us-ascii?Q?0cX7miXcU15SldRZO3E/H5HR4C3oP8aMhDDnyUUk8wy/PQgcCuxIMS3EJk53?=
 =?us-ascii?Q?39njuwl3LhpjkM/iQzOqWIzSKYFEZPMJC07yBlzOgWUsNXIytZHr+c6kTTNn?=
 =?us-ascii?Q?aQYkUNCDstrbCtpLWanYe5ZOcoNJghavJCXN5DoMji0XXaRbWxgXEzagn/Dg?=
 =?us-ascii?Q?mopr6vvRyvEp+xmU2l3fuh2cjcdjwlfMAzoZsIfOaxsBtDN0PKKwyCOSKkEq?=
 =?us-ascii?Q?ru8MpbEkYjVfxHnYncJsiHN8s6qQgkh1FrFmqIJwyDrBEKE4flFzgQKpTWS7?=
 =?us-ascii?Q?j7P/DJtJ8DTHkdwoUeXRig8Tzib85GgQlGoQtZVKNtQZPaaDxCVm6+zZxnVQ?=
 =?us-ascii?Q?R4XeBIpCJ9553tUHcbu6K6UhVhDH1fGiL4D5zlkDOX+Am8WubKNcHNJA7H/7?=
 =?us-ascii?Q?Pm44UMHXuWCG/zjuK0HZC9EkKpAKuiYkswIM?=
MIME-Version: 1.0
X-OriginatorOrg: digilent.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR04MB6736.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ca6fbbf-6a64-49ad-fd0e-08da06e06e22
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2022 00:03:41.5948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: psgSOrliDJ+R5eiANmFZEoxTZtPNHGaBQGDA0UoQ3YLxA9+a4QtPqDfxpyefVfglwC0DUROxepE9sm/aoMOHjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6627
X-Proofpoint-ORIG-GUID: keh6rhL5Od4bJA5_l_wrIdtZSm7fvdJK
X-Proofpoint-GUID: keh6rhL5Od4bJA5_l_wrIdtZSm7fvdJK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-15_11,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=0 impostorscore=0
 clxscore=1011 priorityscore=1501 mlxscore=0 mlxlogscore=854 bulkscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203150143
Message-ID-Hash: T3NMCQ3Z5CIDJ7VD24FG5IWRUVTUQD6S
X-Message-ID-Hash: T3NMCQ3Z5CIDJ7VD24FG5IWRUVTUQD6S
X-MailFrom: prvs=007494915e=david.horn@digilent.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus Projects? 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XCQGJLW6GNWLXJ54GRTGDJUBRXO2ACZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7965720836426389079=="

--===============7965720836426389079==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_";
	type="multipart/alternative"

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_"

--_000_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All!

My name's David, and I am the MarCom Manager at Digilent. We sell Ettus pro=
jects on our site (we're also part of NI), but we don't have a ton of exper=
ience with SDR on our Applications team. I am wondering if you all wouldn't=
 mind sending me your favorite Ettus projects/applications/writeups/blogs s=
o I can feature them on our own channels.

While I am on the topic, I'd be looking to start conversations with anyone =
that would like to contribute content for the Digilent blog featuring Ettus=
 products (theoretically teaming up with Digilent products). Let me know! C=
heers!

David Horn
MarCom Manager
david.horn@digilent.com<mailto:david.horn@digilent.com>
M: (214) 552-5559
[cid:image001.jpg@01D837A9.D7FCF6B0]
[Facebook]<http://www.facebook.com/Digilent>  [Linkedin] <http://www.linked=
in.com/company/digilent-inc.>   [Twitter] <http://twitter.com/DigilentInc> =
  [Youtube] <http://www.youtube.com/user/DigilentInc>   [Blog] <http://blog=
.digilentinc.com/>


--_000_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My name&#8217;s David, and I am the MarCom Manager a=
t Digilent. We sell Ettus projects on our site (we&#8217;re also part of NI=
), but we don&#8217;t have a ton of experience with SDR on our Applications=
 team. I am wondering if you all wouldn&#8217;t mind sending
 me your favorite Ettus projects/applications/writeups/blogs so I can featu=
re them on our own channels.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">While I am on the topic, I&#8217;d be looking to sta=
rt conversations with anyone that would like to contribute content for the =
Digilent blog featuring Ettus products (theoretically teaming up with Digil=
ent products). Let me know! Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#=
00703C">David Horn</span></b><span style=3D"font-size:12.0pt;font-family:&q=
uot;Arial&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">MarCom Ma=
nager<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><a href=3D"mailto:david.horn@digilent.com"><span style=3D"font-fam=
ily:&quot;Arial&quot;,sans-serif;color:#0563C1">david.horn@digilent.com</sp=
an></a><u><span style=3D"color:#0563C1"><o:p></o:p></span></u></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Arial&quot;,sans-serif">M: (214) =
552-5559</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><img border=3D"0" width=3D"180" height=3D"42" style=3D"width:1.875=
in;height:.4375in" id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01D837A9.=
D7FCF6B0"><span style=3D"color:#1F497D"><br>
</span><a href=3D"http://www.facebook.com/Digilent"><span style=3D"color:bl=
ue;text-decoration:none"><img border=3D"0" width=3D"20" height=3D"20" style=
=3D"width:.2083in;height:.2083in" id=3D"Picture_x0020_18" src=3D"cid:image0=
02.png@01D837A9.D7FCF6B0" alt=3D"Facebook"></span></a><span style=3D"color:=
#1F497D">&nbsp;&nbsp;</span><a href=3D"http://www.linkedin.com/company/digi=
lent-inc."><span style=3D"color:blue;text-decoration:none"><img border=3D"0=
" width=3D"20" height=3D"20" style=3D"width:.2083in;height:.2083in" id=3D"P=
icture_x0020_17" src=3D"cid:image003.png@01D837A9.D7FCF6B0" alt=3D"Linkedin=
"></span></a><span style=3D"color:#1F497D">&nbsp;&nbsp;</span><a href=3D"ht=
tp://twitter.com/DigilentInc"><span style=3D"color:blue;text-decoration:non=
e"><img border=3D"0" width=3D"20" height=3D"20" style=3D"width:.2083in;heig=
ht:.2083in" id=3D"Picture_x0020_16" src=3D"cid:image004.png@01D837A9.D7FCF6=
B0" alt=3D"Twitter"></span></a><span style=3D"color:#1F497D">&nbsp;&nbsp;</=
span><a href=3D"http://www.youtube.com/user/DigilentInc"><span style=3D"col=
or:blue;text-decoration:none"><img border=3D"0" width=3D"20" height=3D"20" =
style=3D"width:.2083in;height:.2083in" id=3D"Picture_x0020_15" src=3D"cid:i=
mage005.png@01D837A9.D7FCF6B0" alt=3D"Youtube"></span></a><span style=3D"co=
lor:#1F497D">&nbsp;&nbsp;</span><a href=3D"http://blog.digilentinc.com/"><s=
pan style=3D"color:blue;text-decoration:none"><img border=3D"0" width=3D"68=
" height=3D"20" style=3D"width:.7083in;height:.2083in" id=3D"Picture_x0020_=
14" src=3D"cid:image006.png@01D837A9.D7FCF6B0" alt=3D"Blog"></span></a><spa=
n style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_--

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=7815;
	creation-date="Wed, 16 Mar 2022 00:03:39 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:40 GMT"
Content-ID: <image001.jpg@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QN/aHR0cDov
L25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENl
aGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4
OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAyMSA3OS4xNTQ5MTEsIDIwMTMvMTAvMjktMTE6
NDc6MTYgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5
OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHht
bG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0i
aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1w
PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9
InhtcC5kaWQ6NmIxNWQxOTUtM2MwYS0zMDQxLWI1MWQtNmQ1YzVhODNiOTYyIiB4bXBNTTpEb2N1
bWVudElEPSJ4bXAuZGlkOkRGMkJBMDRBNDkzOTExRTY5RTlFQzE1REFBMTNDOUNEIiB4bXBNTTpJ
bnN0YW5jZUlEPSJ4bXAuaWlkOkRGMkJBMDQ5NDkzOTExRTY5RTlFQzE1REFBMTNDOUNEIiB4bXA6
Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE0IChXaW5kb3dzKSI+IDx4bXBNTTpE
ZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjZiMTVkMTk1LTNjMGEtMzA0MS1i
NTFkLTZkNWM1YTgzYjk2MiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo2YjE1ZDE5NS0zYzBh
LTMwNDEtYjUxZC02ZDVjNWE4M2I5NjIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4g
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
0AdAf//Z

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=1312;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:40 GMT"
Content-ID: <image002.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOkIzNkJDM0FBRDYyRjExRTM4ODE0QjNBRTRFNkUyODU3IiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOkIzNkJDM0FCRDYyRjExRTM4ODE0QjNBRTRFNkUyODU3Ij4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QjM2QkMzQThENjJGMTFFMzg4MTRC
M0FFNEU2RTI4NTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QjM2QkMzQTlENjJGMTFFMzg4
MTRCM0FFNEU2RTI4NTciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz5mnCE4AAAA4VBMVEUgQ4UhRIb///8cQIMaPoL09/kXO4Ak
R4chRIU6WZSIm74SN30TOH4fQ4U0VJCZqccyUo8fQoQjRYf9/v0zU5C3wtgxUY4gRIZZcqP+/v/s
7/MfQoUcP4MbP4Pw8/U9W5X19vlnf6z09vmFmLz4+ft9krcYPIHv8fW+ydxWcKKXpsSXpsU7WpX5
+vyxvdM0VJHEzd7R2OXq7fMLMXmOoMBrgq37/PwnSYkrTIr19vg5V5IlRocTN34eQoUeQoQVOn/7
+/wUOH4dQIN/k7hXcaSJm771+Po0U5Dv8vYwUI3i5u4ile41AAAAqUlEQVR42oTRxw7CMAyA4cSE
NEAKtOy99957b97/gYjgUFc54OOnSL8cE4NqYxBBtBGE6kjdyKSUJ8uNfF1rd6bLHUbeSgNAJOhB
uM+MlEExijH7yqt3z3cY43bTAAjVbVw/Jy8rgH5ptjAd5EP4zhGHePOHZRzisV4KYF4d45AVv95V
6FGwE6h+GHgBKhNm4jWZT6E/4P6Qfyh0FMQ5R66r8CbVOT4CDAAzQQzeNTxU9wAAAABJRU5ErkJg
gg==

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=1421;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:40 GMT"
Content-ID: <image003.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjMyNkZGQURBRDYzMTExRTNBRTBFRUE4Q0I3QzMzNzVFIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjMyNkZGQURCRDYzMTExRTNBRTBFRUE4Q0I3QzMzNzVFIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MzI2RkZBRDhENjMxMTFFM0FFMEVF
QThDQjdDMzM3NUUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MzI2RkZBRDlENjMxMTFFM0FF
MEVFQThDQjdDMzM3NUUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz7epYdMAAABKVBMVEUCZpr///8AZJkAY5gIapsAX5UnfKc0
ha3b6vAAYJYAYpgAYZcAXZQBZZoAYpft9Piwz98Yc6EXcqEBZprJ3ukAZZmvz90AXpXv9PcZc6IA
X5Y3h64pfagBZZkJaJry9/kFaJn5+/0BZJiOutHu9fgAYJdOlLkQbp/W5u1QlbjT5OslfKbT5O2g
xNcBY5iwz+AAWZERb556rsjB2eYleqYXc6EObJ0bdaL7/Pzo8vX4+/sJaps1hKxxqMbm8fQWcJ9w
qMVjoMASb6D7/fxamrvl7/Mle6cbdaPM4Onk7vGBssv0+PmKuM34+/z6/PsYdKLp8vZfn70adKMS
cJ+kyNju9PY/irHJ3eb///4HaJtkocBmosCjx9qXwNMwgKoAZZjI3ukNbZ5RlbmAOE+4AAAAzklE
QVR42mJgwAV4sYhJ8bHGo4vxRRkry8miijG7OzMyaoqjCjKZaTD62nCjazdU0+Zm4uGRYuYR5+GC
Wq3g4hgdLOhgm2RvpOtlwgnRbm3JyCgjzcjoqcXIyBgQBzaIiYWDkZGNHSjgF27FyCjGKYws6B1m
EBjB6JrIhCzowa3qL8+oYsqMLJjAxCUYysgvhCIowsQlKYFf0A7iJB0mriALRkVBkCBvZKyAmLmb
gL6PrJ5TiECMuhLY+ZysrKKirKxAvwgDmbwMJACAAAMAe4IWT+fpWKkAAAAASUVORK5CYII=

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=1402;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:40 GMT"
Content-ID: <image004.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjVBNkZEOTFBRDYzMTExRTM5NjM3RjU5M0MyMEQ3NjQwIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjVBNkZEOTFCRDYzMTExRTM5NjM3RjU5M0MyMEQ3NjQwIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NUE2RkQ5MThENjMxMTFFMzk2MzdG
NTkzQzIwRDc2NDAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NUE2RkQ5MTlENjMxMTFFMzk2
MzdGNTkzQzIwRDc2NDAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz5vE2eaAAABF1BMVEUqqeD///8pqeAfpd8epN8nqOAkp+Am
qOAlp+D///4ipt8rqeAgpd8oqeAhpt8epd/4/P0oqOByxuno9vs/suIkpuCx3/HZ8Pjb8PolqOA0
reF1yOnP6/WW1e4mp+AnqN8qqeGIz+z0+/3o9vlkweeq3fL5/f5pwuei2e8fpd7E5/b2+/37/v21
4fO+5fSN0e3V7vdCs+RuxOjy+vvx+f0vq+Ajpt9vxeij2vA3ruE3r+Iao95pw+eb1u79/v5+yupD
s+NUuuXL6vXQ7Pjt+Pub1vDY7/lsxOd6yeru+PsrquEgpd7L6/ii2fDJ6Pbc8fqv3/Jnwujl9fqL
0Oxpw+kjp99YveXw+fyCzOx5yOtDs+Q4r+JXu+ZHtO+1AAAAzUlEQVR42mJgoBgwQWkuFmZmJjl2
bgiPDUzyOVoESHOIOLCCOKEagda8QDEVAUZGRhmnMHaQZlZ/gUgzFjZ5A0YQUHYH6/MWY2T0M4+2
dAELyjKDrZBU9wRyTCTUwIIh/GC7OfS0GREghgtsK48QJ0JMWIoV6r7gcLigLwvU0Tz2cKXGUWxQ
QUEv1yA7iKAHC9Q/DKIsCrY6ICFOfWaol1mtFLWUwMrEbWBiDAy8hhG6zm4+qkamzEihxM6vyc7A
wcLMih56gkyEAhggwACBwBILQ39WmAAAAABJRU5ErkJggg==

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/png; name="image005.png"
Content-Description: image005.png
Content-Disposition: inline; filename="image005.png"; size=1582;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:40 GMT"
Content-ID: <image005.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjdGNUJDMDlBRDYzMTExRTM5Q0Y4OEM1RjdERjkxNTE1IiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjdGNUJDMDlCRDYzMTExRTM5Q0Y4OEM1RjdERjkxNTE1Ij4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6N0Y1QkMwOThENjMxMTFFMzlDRjg4
QzVGN0RGOTE1MTUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6N0Y1QkMwOTlENjMxMTFFMzlD
Rjg4QzVGN0RGOTE1MTUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz44dQDpAAABgFBMVEXuX2PvYGTsRknqGyD2q63yfoH1rq/r
HyT2uLrtTVL6ysvtQUXwY2bxdXnqHSL1nZ79/f3wW17zjZD0kpXxeXruWl775eX74eLqHiPyen70
mJn1tLXzg4X2sbL1l5nrISb31NXrIyjsOD33xcbqHCH2u732q6z1qKnuSEzqFxzvV1vqGR7sPkTr
JCn////+///vUlb9///88fDsNzz5zc7wXmPwb3LzlZjrJivsLDH2qKrqFBn8/PzyhIf63+D76On1
pKXtVFn5vb/wXWLyi43vV1zvZWnrJSrtVlvrKi/oDRLvaW7609b7/Pz5yszxfID1mZv++/r1qKv1
yMj2qKn65+f409Pzh4r52Nn53t/78O/ykJLzlZbvU1j0pKbsNTr3wcLxcHLxcHTxdnf2tLX3trf1
o6bxeHzweX7wW2DsMzj86OjqEhj68fH8+Pj89PLrJCj2r7H0p6f89vbuWFv41NX41db61db4zMz5
u7zxaGzxbG/wXWDwZmrxbHH77e23kxZVAAABGElEQVR42mLQBQF5CUU+XQRgAIvF6+gyWSiiCvI5
BjMqa/NJSLBLuMMFFRUTwkRElT0kq0VU4IK6muG+WSlBLIVyapoIQRWtCvbK9FQ1IQcUQT9mVSFZ
2Th1hKCENZO6V0YpQ7SCbY4iVJBZJ9OZMVO0zpWx1lRDQhEsyGyWpwcHgeZ8BUBBecsoK1MecT09
Jy6QqKEGH1CQXanYh9MlMlssQNJOgMNeX5AZJGhspCdZzibsz8+UWFTijxDkNWERZpUKkRHhqUIW
VAtglWORSY5RNYQIKuXrJflJM7nxc5qlifLq14AE5T3F9CKicqUVQjnKbNTEIbbrMnvX68OAno0Q
H9RHSgYwEMutogj1OzszHEiA+AABBgDk3UbbFe31OgAAAABJRU5ErkJggg==

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_
Content-Type: image/png; name="image006.png"
Content-Description: image006.png
Content-Disposition: inline; filename="image006.png"; size=2168;
	creation-date="Wed, 16 Mar 2022 00:03:40 GMT";
	modification-date="Wed, 16 Mar 2022 00:03:41 GMT"
Content-ID: <image006.png@01D837A9.D7FCF6B0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEQAAAAUCAMAAAADQ2t3AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz
NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlE
PSJ4bXAuaWlkOjREOUFCREUwRDZENTExRTM5M0RCQTRFQ0Y5M0RFRERBIiB4bXBNTTpEb2N1bWVu
dElEPSJ4bXAuZGlkOjREOUFCREUxRDZENTExRTM5M0RCQTRFQ0Y5M0RFRERBIj4gPHhtcE1NOkRl
cml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NEQ5QUJEREVENkQ1MTFFMzkzREJB
NEVDRjkzREVEREEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NEQ5QUJEREZENkQ1MTFFMzkz
REJBNEVDRjkzREVEREEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1l
dGE+IDw/eHBhY2tldCBlbmQ9InIiPz6C5KT1AAABgFBMVEXDwcUAaDI1jWSJvKQAbjkAZCtom4Va
o4Ho8u7d6+USekqSwqyVrqXN49mLqp2pz718tZpLmXVrq4wLdUMug1t+pJVAlG0jg1aYxbAAcDwb
fE4AbDYAajO9v8Gy1MRbmX2cyLOyubnNxcxSnnqqt7M9kWnt9fG82cx0oI2esqukzblDi2pwnooQ
dkR0sZR5opFSk3XF3tLI4dWDp5hclnz0+fdlqYn2+viis67Rx8/x9/QWeksgfk90r5KOq6Di7+m5
vb6uuLZ/pZYtiV74+/lgpYW2vLymtbGCuZ/6/PvGwsdWoH2zuroFbzqOwKkAXSLOxs0fgVMKcj8G
cT0vimDA3M/KxMrIw8jT5t5Nm3fOxc3MxMsafk8Sd0YAYCf///8AZy8AbzsDcj/+/v7Pxs4CcT79
/v52oY+318j9/v3+//9vrpD8/f0ngFeLp5xWk3hgmH83hmCHqJr7/fxPjXAohlq418ms0L9np4hr
qIgCcT2fyraXxa8WeEkXe0xElm+bK5OfAAADYklEQVR42pyUa0MaRxSGd3A3ygIbkFt0BovcBLka
FI1a8AKIqEQUSzTC2UUSI8RE09q0MdG/3rM7S5P2W/t+WM4ss8+c2xzBn5a5Op7cdUf+H0r7BXmK
iy566/ZjzbA1XSNraiSRUvH7Sl9S0bDkEYSuB1by/RzT7Te9Xm9KJGh/6fXemN8wKrcs5yIxMZS4
7yx3bkL/AdlqC9nN/W/IZs7Sq1eOheAjJS6rtcH4sa53sQtYXagc6J9NkbtgaRd+LdmmyXcIvRU2
ApHsYQq3kGfA5ZTGAZ7qEPHo3nwHcw/6lsqyuZzw0RFEO7aHUqnX+YRwTQ3ITOZ+GcrNMIdo4meA
i5NabWYXwNERCcLB2hg6T5ByLpoQlgsl8srKRrytiJoO+fOlNAYQdnEIGQKUx5mqEt8EwFd1HZ/3
blVVWWZiT9M4ROzMCvHAp+RrpRhKMgPS7ToBfKcGRExbAYaSnlIJsUsPGYDnRm60gw4b5YSl+sVi
28OK9VRg50hFSMMynIDn4p4BYT6AUtoop0YXYFCZAfhDxbMZIypj3BN6HajG25eUeoRE/vBG+mqk
rGw7MhNLCpgkxquoYpQ2B0AUHTx/9KGibh2iiUrIu1LF6tJ46HJzI20D2F1+e2XNqNwTMgnweQSp
AQQRYsHXFeOwpWYHITTZ3sn2P+Iu8dt+5DKUwj+dcusdQIHnhOCPw2xW8hQgM4c5JyNI7AEh2tFK
O15NGB3PPva3EvXbE5iUVM9b+J17Qpur6L9qlHE9BtBqAMyrGoYTPV0CxxcMhy327covt5T3SyKQ
bX94RIhkATjRc9IlpIupdqxJlKrHmNMFFkUHKhJj0kss1hiRhc50NZCqZwk1RDw7T5Sz5LzN78LA
G3oclUKh4MIaWydb2+P4shxlNAjwPhj1bztXIeanCMn284n9G6XIpdiLkfqOJaZHW3oIm839s7+E
z4srPY97BG8BOgSD8vvBYDBOsE+S9chl/Ym9um9qdnYzUv3NCcul+6ZeYn6LutPzZd24mtsm+lU7
cBrHgPXUuICpF9mI4PV6t37Qpxt3q4nXXJMtXOcaZf7CWGPYopTPGSKHa41a2E2MUeBRimf1w7PQ
j3qxyPjAwZ40JBoTRCUq/XsqifqSiHwo+ddyP/1bubX/Nh7/EmAAfVz+JISuvG4AAAAASUVORK5C
YII=

--_009_MN2PR04MB67367AD3612E478590EAC8B6EE119MN2PR04MB6736namp_--

--===============7965720836426389079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7965720836426389079==--
