Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D00EDA676CB
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 15:49:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A666C3860BC
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 10:49:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742309385; bh=lW3giD49NFQHJM19hiXTvNr6rRcOxf1swtzkKb2s/Xc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j6mdNbSmjQgfKvx/pDVyPpDX6DTq/0vasE08gjDNY0wr+xr/3TWBI0/XFDMvxUlt9
	 WBG2zBhxlufntspaZViy3l6muCiGmhQ3n6R+o9xOR1/mJbegG1wxu/hTH10eqV5/Rq
	 bPbg6I9K/nzMlIAnyQKUINOEP0dxfoeEQmaa0E1y+5uNMwgeVKiKG+ZHACZeTQmqTB
	 56FlP+kq5R2Vd5gDvZGKI5L3LLhhfryjMO/4wQCGyI2gerlWv8u1xKZxySuFBbc8Nq
	 YrxwueDnVxWtGmYvkTXn//QVDFjnari8BkxAWhJOahUVryUfFjomEKBZ5yKTXfHcsM
	 evOxbCB8G2OtQ==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 39E6B38607C
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 10:48:34 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.llan.ll.mit.edu [172.25.4.99])
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52IEjmJV195875
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 10:45:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=UVLd1RdyFkGjYEXdtvBbWTBi3hSy52mxdgClz3GeoBkR/Dw2oKPGs+z2Y04VTZp3u7Et1EuGX6Sc3lDbcMAkfd+IUpJ/BU+Q4L4aJK0vhGXHcS8DWPe6UEDwS/DVlFyCvql611NHQFPv5OLekwLYn4a14s4oJ+tnEOJdJDSteyqsiA2U1YCQX+Ww0UTqF+YcfayWrrOmG0vBpWx1ubzwlZjg2mepcSBhqEJnGSTqjd1M8PcdnbCrE0ARBnsl65h1Mo8NrSe1BbOvQBKCKK83+Oj9hyuPY1CmXvUhaK3U3hzyii3YO+cSJQwBqsbReIfT7SEoCc7uu6eV8bNx7ahqgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBNVJu00cc0F4Q/rPt0oC9TIi1LuNLgUcPj0GH2e7Ew=;
 b=qe8y7pTMDaFnXYakDrvvdD46wUjExF0aSXXXU1gIC3/z1BYFDDeT2EfoUAEvXaMVZElf1cfYaJ8RCCrDhUGKoxGjla9vDOv5Km1p05Tme/jIZZnDoOnKKomY/G6JuFvQulbmpU5AShumwz/2Fso5ShHm/ZYoxq4oRmqp3gpK8eQtD8qgl3mmsVXC1+2XMlYhII3WB9nuaeuHNDbwQkxp2TDwIag/xzOvDtmON2L3pOXJ5DDTCZuw+EjOc7Kz7lyv+Z2I72ISSNVBbLsofMsW0W1oyOpWhnrsj5Cw2+p/0Un4Xl60UdtJFRWkHABIXrXcpqmXnrrWjCaBvgasoElm7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to record all 4 channels from an X410
Thread-Index: AduYE/jjtef+6QeiRP+ZPYQGEvGJ9w==
Date: Tue, 18 Mar 2025 14:48:32 +0000
Message-ID: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN0P110MB1916:EE_
x-ms-office365-filtering-correlation-id: a636d2a5-ce4b-49d9-59b4-08dd662bf448
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Z140LxYzrj5oZqhxlk+III++Ly/QpTqql62siScBhZtd9/fCZ6EsVq4M+dLk?=
 =?us-ascii?Q?nv3hql1SF/xsEVpITRinZFnx/DePkhGdKEskzVP1v+w+84BWMYhocPOWzQOn?=
 =?us-ascii?Q?pbqr1CEliI3ZOHPQ6DRvufVO12oTRMH+VtcK2Ph0npG5zaBBTB7XZupQtr23?=
 =?us-ascii?Q?FYeCXoAmf7CF6hmpsE7zgPl8ieZ0aM5zhCnOM7Hppw3/mL31UC02JualAPMS?=
 =?us-ascii?Q?afi2ZTg/H4CQtJZuvvZQzYtz/zIWshsk/Hvt5zjvFeZlpOAyulWtA7/Fh3hL?=
 =?us-ascii?Q?C7BqjirD71qnGFCRZRSp7oJF33lRUvxOegbyuxXv7JZ/Q4umQMMt66NZiCKV?=
 =?us-ascii?Q?N3mqkDqmmXSWQe32Vq5Wg1OPEVAKylMVUiO3fj7/aZkdG3+EQmX1ptlmNXpO?=
 =?us-ascii?Q?jVAV5RxIOxpMHbhsMK/oq/99q15K69+GtU5IIJA9gkyl7TTgJeIb3KlEDg13?=
 =?us-ascii?Q?9/8SW90IDLFfCFu06BEWZ67VeVNnWhSyaaJzEwHs+UIpIAb0olXHvxfCFcsc?=
 =?us-ascii?Q?BYI64Htt78kKxr++kDkOPW7I7CKdnAmUxr+p3VvS/zE/8nieIL+KL1ndtfUU?=
 =?us-ascii?Q?vQ9tiGNfzzou0m4TTmnycEkqK7d3T7gP/lJEDA0A4ynLT/LooFOv9RQoFDGz?=
 =?us-ascii?Q?dPYjN1tu/j+5pufGu/BEaH492K2YU7n2poI8MiODMg04pJ/At/JOFB4FVAK4?=
 =?us-ascii?Q?u8GaOeSuef62o4lDxGLJoCz5aKUqzhrkxF44ucQjuZWE24V4+lkZ637GiZ6V?=
 =?us-ascii?Q?r5MoVant7ibb7Iniyp9gMuy1oFEpO0wasY9hgd+gUS1gcg4zdvZQWJNc8NAD?=
 =?us-ascii?Q?QI7A6xDXf4goylo7KStFiRir5z7MlEkxcc7GRNUALzv0xSbLhQkxdB1UWXSh?=
 =?us-ascii?Q?0EI6KuzPtclvWgd3JL66jPt7e81d9letcsVbiykp54tNp4j7VgOwQ9J6WYyJ?=
 =?us-ascii?Q?iL9mSBkJS+zqR02eKIX5qnIiNX12BfSB6A0m8r/mgXZ6/F2DdLWZrn7dTr6w?=
 =?us-ascii?Q?5wRlOUaSBZIcy7jV6Fbnt7utHnEIIHjqjyvqk1oytc6pig9r+RZkVn+R8wwJ?=
 =?us-ascii?Q?o6z85KvA3ClDbWG+rCOMFUtZKelm9w2JzfGRV7k9+0XImh85d1fdT2BcnH+X?=
 =?us-ascii?Q?yJGPWa+98bfQXoWL2B81QWSbcNxhiCZJ36zPUP5acq/7UpmZRIyaPgr3tReY?=
 =?us-ascii?Q?LLJT1uP3xuj1VZL0MqQhkWe+8bLqjQlSTndI2E5TkDzHV01TMiuWRVmcb5e6?=
 =?us-ascii?Q?65C1wEJ3ONNPw3XXudWZV6DLV68sF7hW2nf/0PI1iITENbdKemOCbOkxCfH/?=
 =?us-ascii?Q?Pfp58JQaxuWak6jyDoz8bpl3wm5tPPh3Dn76pR9nvKcc9qwNguCsb68FIep/?=
 =?us-ascii?Q?W6KuOz2v+gF17Aou8GWxvu/PYwnWLX4gQk47EuoB38oozt72kSruqIaW1P9l?=
 =?us-ascii?Q?UytXkB6bYqIpU1qi34sXXCnJKg0LmfWr?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f3Utg6SeOrvSPfWNSnE0tpUH8VbvzSTwa4AZTWeqp6YzK2FhPn24/etKmp5q?=
 =?us-ascii?Q?J9jdTRS61EYYCEW+Ds3WknmCB8wLkVRfcXSq/6qofAen4oflm+AUL4cT9RG7?=
 =?us-ascii?Q?itHb/bm0iQFx4GAce1h3na90L2z4JhiFM5/i6QSMCuOhqaBsDLxtfxDbhLZR?=
 =?us-ascii?Q?ddwyBaFHk415410FyjlHCz2kD9SET66MlAp6RU7+m5Lyfh2gq9Q1DExDAlk9?=
 =?us-ascii?Q?BMSZ42uzhJ8dMA5UyoSxy/TxODcnMzbVVHcSXeDpuczHd6hkKnAxoKpG3ZGK?=
 =?us-ascii?Q?74wG0GIX+yfyeW4JtQJ7nt3SASZajxspMk2Z67p64u9svPPq5zUd+eKRyOZU?=
 =?us-ascii?Q?HtCL7tvmJel2E5OFyXw4Mg2ajMHehOOeFrMTq3TmZNf3hQg+WcJquz9K7nyS?=
 =?us-ascii?Q?ZHu60ILLPHDAuUP10RWmEkaaXYQQHhRgHTpZW42WG/ks5olwGX8oOwA48hQf?=
 =?us-ascii?Q?fUnOaBVKvalOITDbmbFojb3pH3PUGY/Sv8a3pHBRQGeC4FmK56lbVycU22ZR?=
 =?us-ascii?Q?AvRV7XHkpctFkqZNH1vOTntK5GNp4lky217ji1i/6JP7EC30IzyYR8b6qK4I?=
 =?us-ascii?Q?bf8LhOGY8oLuHznAkWBZTK/t8GzeCzgSrIJVkeGXbTwByGxviRAywugL7obT?=
 =?us-ascii?Q?lhhdtnUIW986xBsF8J4aGcOTRPAcARD9zCbp/oAGLLrUzgIlzvEPRbjLLWra?=
 =?us-ascii?Q?VrpCDxtF/1K7dxdLF5J6PedDnlLNr9lq1KJ5AEZGiWEOnT2JQv/I6S4jhmmq?=
 =?us-ascii?Q?0Yu65xVH+bfCGwPfDc24rUQGD+MYrCF6XBhdmycJxijVcwmDXM3pVki/0SeB?=
 =?us-ascii?Q?6rDspymhw1qaxY2RRKL/FZ+1rtohWfhqcDRj0KdwfVM8Z3a7VabgbxizVlV2?=
 =?us-ascii?Q?RjLb2gxSiwvDV7NFqio+J2Eyq5IaHqf7jY86YLVi89a9pow4t3RuCtZ2QQDt?=
 =?us-ascii?Q?3lE5oj2UPNG3tD81mE4BEUGQSD235MCxN4GLftfFPqVz95z2v0fiwXjF1/KQ?=
 =?us-ascii?Q?02Dt6GXufESDIuxiIRD3YeFp+eB6Q7x/5lHNU1Og8t6y+S8ZPRQKktFh8hYV?=
 =?us-ascii?Q?OAd+AmRn4TCVZGvkI00Euf6z0NkPEvw+EeZ0/QXpdSnWkOf3ZokNq4DTEHWD?=
 =?us-ascii?Q?gubZzgBa4e8aYo7k12fiPdB6jeibWlwb80z8DTKD0bH2sAG3mq+pfqcLgOlS?=
 =?us-ascii?Q?cZFqBUekPIjF2bjf21EPDNaf4Y0XCP2E+4KioUPdqitzc4VBtJ+wfyg+eFmA?=
 =?us-ascii?Q?YVOMC9gLm8tZn7q8/vG+xUydRyhXCEt3sWNscKgd8xZUIcD20C9fUl0ij406?=
 =?us-ascii?Q?/Z1/8QjqImiG6w19hISIM5t1AgS16NOqrRplHODHtpStyFQ3MqwRA4G8h06e?=
 =?us-ascii?Q?RBn7/pmDR3EUeJ5wC+K84+TSUHLVI7VS9g1YbrQXSXq5PvQzlHsnSgUEVxs0?=
 =?us-ascii?Q?wZzr9/ln9S22lSeH4sxnOVBwiGIuZQYkW9/5g8+clyfwsiMJ/QV9uxnPLdEz?=
 =?us-ascii?Q?7xvCGZtvI6H6lqQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a636d2a5-ce4b-49d9-59b4-08dd662bf448
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 14:48:32.4282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1916
X-Proofpoint-GUID: d9KECxRLk9pvNzRyypY_4XURaooUmHgz
X-Proofpoint-ORIG-GUID: d9KECxRLk9pvNzRyypY_4XURaooUmHgz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 mlxlogscore=614 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503180105
Message-ID-Hash: UKEF5JUPHDJZDTP2SVDEKRKISOFH6N5E
X-Message-ID-Hash: UKEF5JUPHDJZDTP2SVDEKRKISOFH6N5E
X-MailFrom: prvs=7172611654=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UKEF5JUPHDJZDTP2SVDEKRKISOFH6N5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4457885160880149816=="

--===============4457885160880149816==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0031_01DB97F3.495313B0"

------=_NextPart_000_0031_01DB97F3.495313B0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0032_01DB97F3.495313B0"


------=_NextPart_001_0032_01DB97F3.495313B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am trying to create a simple gnuradio-companion flowgraph that uses a
Multi-USRP block to record all 4 channels from an X410 into data files on my
hard drive.   I am struggling with the subdev specifications, and keep
getting syntax errors, and sometime receiver channel number errors.  I'm
clearly not understanding how the X410 differs from the X310, which I have
used a lot in the past without any problems.

 

Does anybody have an example grc file that records all 4 channels from an
X410?  Or could someone just tell me what the subdev specs should be in my
Multi-USRP block?  It's my understanding that the X410 has 2 ZBX daughter
boards, and each ZBX daughter board has 2 channels.  I thought it would be
easy to do this, but I can't seem to get it working.


------=_NextPart_001_0032_01DB97F3.495313B0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>I am trying to create a simple =
gnuradio-companion flowgraph that uses a Multi-USRP block to record all =
4 channels from an X410 into data files on my hard drive. &nbsp;&nbsp;I =
am struggling with the subdev specifications, and keep getting syntax =
errors, and sometime receiver channel number errors.&nbsp; I&#8217;m =
clearly not understanding how the X410 differs from the X310, which I =
have used a lot in the past without any problems.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Does anybody =
have an example grc file that records all 4 channels from an X410?&nbsp; =
Or could someone just tell me what the subdev specs should be in my =
Multi-USRP block?&nbsp; It&#8217;s my understanding that the X410 has 2 =
ZBX daughter boards, and each ZBX daughter board has 2 channels.&nbsp; I =
thought it would be easy to do this, but I can&#8217;t seem to get it =
working&#8230;<o:p></o:p></p></div></body></html>
------=_NextPart_001_0032_01DB97F3.495313B0--

------=_NextPart_000_0031_01DB97F3.495313B0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCF1Mw
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBBjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMTcwMzAyMTIwMDAwWhcNMjYwMzAyMjM1OTU5WjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS01MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp5qDDr05H8O56tfZq1msxmmvkPN1
L9PgE1096upK/lhMSDCGfOwu+FgnEV6bzu7r8ex7zLGFgBR1vd8EMIY8rcRyDmYCjSeFZxlQ1Jfi
iO4NJ/fmY7d4Qdx4R23L23vfmOI8/l8woi5djmmLyAim8b2wUgi7TxHmUOsek2+hCtMptIL2Hhzt
5LrmPkiRyTJbW6y5yFS8Y2azVUu+81yr7ukN4UnZESAe5CYBF3y/qf8/9qfeGxBGdk50M9E5Doxv
iau1JV5RUbb7GHAzxEA91DZGbFnF4AtYVxvExpJ1HAIZRsVYZSpRS5jXe9+NrHhstrPWMTQ50hPn
l07W9COSywIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUL++7xg0d
u+lq/qxn8wc7CHb2S1kwHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
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
bm4uSm9obi5QLjUwMDA1NzM5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu01QdmYO
E/aSHsvOF7SyimrzNCT7A68s4j3XcWc3l3/aEWPcpn0P3h7siPovL5ufxIVNjBj6tWFomPAV7vKz
VCfe3hZHkxXXFeWWEFc1YVVuLsrUpe6/tXPU3vYfma7cUMNjE8XKbjGfL67FpoZmlkXago5eJiYN
WfMvNxU2pjskSLe4v6c0CyKAFumaoeXt50xqWt3yY72v2y+mc8n3GZncFDB6czxJLOTfbJA6pm5f
yph3cvWt3QU6nF6wil8F8zQ/+nRUXtocWRksaiVwtnEMl62AQR5B6bA2tojjW8aJhL52Qmrkv1Ig
KrJxUxX9QM/PaN/KczCyebFppw8TmQIDAQABo4IBtDCCAbAwHQYDVR0OBBYEFFqsiJ8TBvFduS1P
mnwrA/uXtbiMMA4GA1UdDwEB/wQEAwIGwDAfBgNVHSMEGDAWgBQv77vGDR276Wr+rGfzBzsIdvZL
WTAzBgNVHR8ELDAqMCigJqAkhiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0Y3JsL2xsY2E1MGYG
CCsGAQUFBwEBBFowWDAtBggrBgEFBQcwAoYhaHR0cDovL2NybC5sbC5taXQuZWR1L2dldHRvL2xs
Y2E1MCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwPQYJKwYBBAGCNxUH
BDAwLgYmKwYBBAGCNxUIg4PlHYfsp2aGrYcVg+rwRYW2oR8dhcveMof/inMCAWQCAQowIgYDVR0l
AQH/BBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwGwYDVR0RBBQwEoEQbWFubmpAbGwubWl0LmVk
dTAYBgNVHSAEETAPMA0GCyqGSIb3EgIBAwEIMCcGCSsGAQQBgjcUAgQaHhgATABMAFUAcwBlAHIA
UwBpAGcALQBTAFcwDQYJKoZIhvcNAQELBQADggEBAD/hw45ENU9YSG+PBEoS+90A3qylbqp3SQ+9
bpd9ymCMZH7rTXLBqaKegndNfpm7BlBLGADI1aq0kT22CxbtjjICfeUHSjfveRt4TrEa9k7adjAa
Vtv2xjeFvbhTjYLHjGNkIvKzTUOtT8fO2cgd6SmZXJe487F7qyHVNPvql7R1lfB2m2Xzz1J9tuyw
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

------=_NextPart_000_0031_01DB97F3.495313B0--

--===============4457885160880149816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4457885160880149816==--
