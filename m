Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FD9B1E963
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 15:43:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D951C3863AB
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 09:43:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754660634; bh=9mK2iVOZBMEfINZbJjyl1WcF5y9nC1q/P4AIASoQoYw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e9pjdq8aFsW0CeSx9TA56W4xYPJspXQ8E4/7cSVsuq1W1HirqbaoBCLDZwOYPqx0+
	 m7U7kF9KkJa+Lx8U1Yd/z42pfG7TDOnP8jv6HbpBDcdhAn6MjOGw1IulaO9wGagCrh
	 YwCiQvClO9JHu4Nk25I+TBR0RnRn1l2yUCHgX7rqnCiIu2wXazEXPNeYTbY4eDf72z
	 +cT3nzom8VsTYjOlWEAw188V/NhHQqIKt4MmW3TwYD1+jFmFBMi73WQq8Apa5V9KH7
	 pxt+X/t3+nV3iNyTWLApJffdF4q4r1wuGwVR0JREIWbIVnO3M3GEbh7D10FOKV2NvP
	 CiG0LCsMyHvmQ==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 68BC338635E
	for <usrp-users@lists.ettus.com>; Fri,  8 Aug 2025 09:43:25 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.llan.ll.mit.edu [172.25.4.99])
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 578DdnjS057285
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Fri, 8 Aug 2025 09:39:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=QxLkADHL0cpty8/JsdzcCvrq0kWbmRbMt74J7U7cx4yRbK23Dj440l5HJsr8bZZkmOXs8v7XmiRdmNsg0W76XFLH5T4yuHBFFayz+pZ1aIqttMSP5KO2dCTA2jYvCKFIcWIUH6uDhgJPOuA7EuKNjo6n3rWdCAxXoXwaFUtTBUIt9p+ex9Jni96afnOvo7nUgpIUo0xESDeveMG+paEptTaasw0Ip7PCABATXbSvv5YzfZQx4ceZD1q4A1M0yPaO1TdXan0LNH4Fyphj4KvctmNcwi13YEU+WHzxIAfBkgc9+bINEgHv7qu7csfCO3BRZGd8ew67U6p0A/i2b9s1vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jFkadqCfMpio/ttlX2K9RPu0rEMUcLZZL7rkG1OoPhA=;
 b=yX4gBX1Aekxg3W53l6H/Wyzbd838ioqT3MZJI6fovgCKVbuqZil5Pk3cNfzXPC171Slji6TXM9Q+dgzmLLVWy4O3XC/+G9Zsy8rTY6v3YlGEzeK4QfGYuTVn71QKY7MHYMHcrN9SYK5R5NuNlErqSijDvHeQIaqmUm6/i4mJg0mIy6uQKe4BlA3XaRHqjAGp3BR/UzSi16H+4RUJglZ61A3mEq9QCLb0TVlHw9Igc8f8FYv64zY/h6sQzTfWwR8mzoPZhE3k7kJXhSKb0g7S3JdHIOy29Pitg7O6dBQRW2wc6hKcXosqGBlS6pDB3CmM/fr8wWSYyzCtBHfrIR4PPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Connecting an X410 to a 10 Gb SFP+ port
Thread-Index: AdwIakIY2Uus3YiLRySGKK/dIYOsxQ==
Date: Fri, 8 Aug 2025 13:43:22 +0000
Message-ID: <PH1P110MB12848D088BBBDBE9711FF960982FA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN0P110MB1843:EE_
x-ms-office365-filtering-correlation-id: 71489a6d-2296-46a4-b110-08ddd6818af1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7DhLVd0eEjhdS4WV43ucnIC2XghmmrNyQI9gPmN/+80QM0G4p+td4KevW2N5?=
 =?us-ascii?Q?NA6JpaIovmODIi+pYQbuo5Yprtxg+ofwfb/LeSIRGS7r522xKR5iSns0yqZa?=
 =?us-ascii?Q?fvhTo7PEJV7107OG08MR7dnDyMLdK2uMitfee9zuG046KiJwnxvkBajgXI9y?=
 =?us-ascii?Q?1/gbvtp5Vu/1Svv8kURVkpN3Rv/c4I8/iMo8T9f5vA+4OOYXXdkDO2oAa6+L?=
 =?us-ascii?Q?hkmOmK40JtFDJCQ/Km7WouqV2ZZILMD2OWjLYO8YGfMQ4dcPiw4x7I3cglPc?=
 =?us-ascii?Q?cwq0GZfADJ6NUYG7qDbfVmhCOx1AB5+ENHp0KFw3naZKTNwv+0EGQj71cLSq?=
 =?us-ascii?Q?GAE3BHtri89D7O5PNNNTxKqJh6bILaPXT8xPDXs35NLoTsZbkkt5tjLLvZfn?=
 =?us-ascii?Q?k1h8zq2fDXINucCIwkA8kyDIITOUGnyB7Go6eU8plgf/cxxgGN3GRgM82oiy?=
 =?us-ascii?Q?rcJ8oUBJW4yEKs8Q3WeY3pBmJ6kiSPl6ltmfsJi5zdhvdn7QmaPwQOL9R5bA?=
 =?us-ascii?Q?YjoPGL1wr/ItWS561XWSiIrv0Y91sntj8ENeswJDVhHbrxmFEkvO2N+sJjV+?=
 =?us-ascii?Q?W9DtI/qDEVVNaQP3gizmmrFau7TEZDM4yep25tZsBJieKaejIGyr7+pu/Pzx?=
 =?us-ascii?Q?Y1HPUkTYnfy+K9j104rPaNsoyii0tUHyoDIfVB0bUiCazwoVYj87rW9x2+xO?=
 =?us-ascii?Q?JJVeVvkSMd7/3Dc/eTCx6Kc9xerIaA78WcyOyn/iAc1f7f7m4vP/BHGLXPFt?=
 =?us-ascii?Q?688XfQ/bhw+RQrGoJCzzvEniOabveuLFjihOHSfgGzpicBX8yEEPhl/JgDsd?=
 =?us-ascii?Q?aM6sM7t1PU6tYGObaZHHuc7uw38oVXee3voAZrX1erpKB5vE9+c2gr0kyH/B?=
 =?us-ascii?Q?wQMv3nQxuKKm17n5Ite8ALug8zPp+paAplHx3/77TT5ulJ+5zM7M/hp8GasZ?=
 =?us-ascii?Q?ddGbRTvHFJRBO2xBJI7BuhvN/3vVZjPPV6uLAWbhSIH5OFag0SaE9Afk240U?=
 =?us-ascii?Q?p1NqXkKoW9238Cdiik+O39nLhzHx50zBk9U/GzmSioeEg6vK0xG+UQnifLQm?=
 =?us-ascii?Q?8zEh6J8ZXtX94E32RXDKFHRaaCMo87Fu3MBHJeUA8W7gghgjd98wVO7InD0p?=
 =?us-ascii?Q?pJiP6vzSMmZURz+1YwyQBZfqSoQhKpZnj7o0DxHLi+mkbM9AxRLtpIibjyJU?=
 =?us-ascii?Q?H+wmv9z30+Fga3XLzT9lfPKAEFiXg8srLulmr+J3p1XdSk9uqwIaSozcV8Kv?=
 =?us-ascii?Q?QDNzL2uXoAyihO5IP26OhB/vttWzkticyeKclG5QwIL8P1VcBuclyc5QEY36?=
 =?us-ascii?Q?lBBnIczrvUBpx7E3aJnruf4Ao6GkddlaSIuZZejuaCDdynqalB916IVJiW4N?=
 =?us-ascii?Q?isWW5P+6TYxoqfHDLXbBGDZgW8AEfPjdHX1+kCsoibgiQzcDURTOALdLH4e0?=
 =?us-ascii?Q?iAxrrpuGbtt/NR6xMiUdNHGcs9png/lDK7/7Qoqs1PBmyfRtRZTEkwyIPT6o?=
 =?us-ascii?Q?7psQYi0GJinY+o8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jhX66s6gy9QzETTeGfr7GPmC3MYDmagRa28nkF/eIdtTP/q9QvaCuUe0cJAI?=
 =?us-ascii?Q?2bCSBIWxFaIdR7c7vmEoEJ72Ak/lZXniSbUxdsRQ+6Gr/aIgtOm7Rg2cZpnt?=
 =?us-ascii?Q?RP3u/ZLywSAu5/ak9d/VkAMvP/mjrZ0+sKYYK37b0L+iXHSgJIlqsaLbuQos?=
 =?us-ascii?Q?sP1zN7nprQvyd7fuHoCafWSqXFXU6huuds4hBixoDvD9ZC1FwlSmXrMEmj7o?=
 =?us-ascii?Q?Yx2Zwj9ofaorall+TQ8nu1Fy/6QcXy+fsSDeTQjAoyRWcuIpRq6M8d8FolxV?=
 =?us-ascii?Q?JteLCnBMGX/+YEhN6CYNwdW69uZc6zqWXCRagXrLPX/oyfAaP19vJoTbYMur?=
 =?us-ascii?Q?kgnAWjhr6j9BqmPa1uSYePHMNV1hG5r/R+1lqq6lx+QfwJAVDI2IzRkn+MWp?=
 =?us-ascii?Q?+fMZD4yGN4go7Gy3RZSdcs4nOcl3EhrjxOuogo9epb9hr7F14w0TKLSsQjtB?=
 =?us-ascii?Q?wasBb9kIzrZdlk7YER6p+REe6hinSYMv3DV7snt9mxjG8EfOU7GbXdDW/NsM?=
 =?us-ascii?Q?7rOoEOUcLrRfEk+BOzTM02+qDwUqQsJ4NhdGjk7lGsD1Jq65jm7OYgmKb9E+?=
 =?us-ascii?Q?g54EZZ5RxFEtg49Mr0C1OTmoX8rVcyGtqS5gOLDkfUu4FtJglLf0ZNBxRfh2?=
 =?us-ascii?Q?Xtw7XmCBUi7jvMlANtUgQdUerFy6J9z9XzRlp8faJdH9CJsy34HDLSt3ltRb?=
 =?us-ascii?Q?ufrN7xuHqMl2m+3CwpnO4rtf+3UIMQtxme3fSaDplLd60afe2ItsXLscBau1?=
 =?us-ascii?Q?Q31Fqc4cSZziZLuIzfjckSjf3Q9EHB1yqlBaMD0+T/TOKFxxvEqmDO+j2Hx3?=
 =?us-ascii?Q?z0q58JWXt4FNShcuWcmtNAZ/9jO0v8gjZ6vP/EimM4L9GkpLZ9cRZX8LoCIk?=
 =?us-ascii?Q?kh1vHeaVCGKZ2oNsYugCC250ETGjcM/l2EFoX7YTWw28P7ESYj7nYB0i/iSN?=
 =?us-ascii?Q?VHmyBRyFX+2hE0p5omY66QKb6LMyF1OvyD4IVNSk4j6DKgvoYVg+3z2TEEpX?=
 =?us-ascii?Q?IbsIj1DGNXzGWjdOGVEM98v4a/XaOWjSlzy8MW3o3fRK8gJVYnpuPxaqZiy9?=
 =?us-ascii?Q?WM/dqvfGgQWsQ5fGg+cDICOg7ZDBfYNCn5I9OYryDXPfUAefxhlKx49Utyql?=
 =?us-ascii?Q?Zowb0T0SPDCDzUSJZyRWm8Zkohkrtho+Wx1e9onYgqcGmzdTj4A8SPFJITSi?=
 =?us-ascii?Q?5Kz7jrPmwJ/CYwo0w3zS3fXEetmOinODHIvZZDhe0W04wr7e50e/v+r2eC1w?=
 =?us-ascii?Q?fMRfJnBwY3pG4le9j6Fo/WwShw09RW7//yzzzpdAqRFhz8NlPF9GwGvXPqYE?=
 =?us-ascii?Q?prXAwybPoiR/GTXYILGia5k+JN6cdGoi7k+93Jm9TR8nsbPh/6/XIayP+qS+?=
 =?us-ascii?Q?sttRAh/8nLBOZIwi5qvv67ky9TCsRbKZxFT9t3U1FwW1gT9qSIv5R0COMhMG?=
 =?us-ascii?Q?2Rwo4XJzMD/xVSDK7hmwQMzjpYA70mvBlPQPlapSX1RsQtl3YY/E0M9hLyDl?=
 =?us-ascii?Q?zkyLgofRsJS9jgM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 71489a6d-2296-46a4-b110-08ddd6818af1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 13:43:22.6412
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1843
X-Proofpoint-GUID: uBHrzQxiTVQUjunERcEGlSBoVapuv8DV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA4MDExMCBTYWx0ZWRfX343vSFP1cKiC
 GwDDo8lug+mz1T20FRNsylMgWwA19jsEyWpWELVf8Eust8fqZJjsZP7HsB1Epe5NGfj93q7vlcS
 0CxsOHk1nYS4stNnLpy8ezIqLL8b1LHXQg2ktGblJj0mzZGw5sG8wxtuUhoJxmh2F0LecTvOSIO
 HjXej0FJKB0JY8TMzY8h2hUUuKKIWqQkp387zwBqla4VAzdGhTkPlFJ7dTY7hGkWdJWSnjEvsl+
 htb+NNj2GgUVF8fqdkQJZB6MjW8RSrgge6ajIeLZRJKX/G+SoIMg==
X-Proofpoint-ORIG-GUID: uBHrzQxiTVQUjunERcEGlSBoVapuv8DV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 mlxlogscore=849 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2507300000 definitions=main-2508080110
Message-ID-Hash: 7LD3OLHKLLZ7RZ224DPNLM63X54FKOCF
X-Message-ID-Hash: 7LD3OLHKLLZ7RZ224DPNLM63X54FKOCF
X-MailFrom: prvs=2315ea4e51=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Connecting an X410 to a 10 Gb SFP+ port
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7LD3OLHKLLZ7RZ224DPNLM63X54FKOCF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7424796995402956954=="

--===============7424796995402956954==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_02DE_01DC0848.E09F3530"

------=_NextPart_000_02DE_01DC0848.E09F3530
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_02DF_01DC0848.E09F3530"


------=_NextPart_001_02DF_01DC0848.E09F3530
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

So far, we have only used our X410s on servers with 100 Gbit QSFP28 ports.
We now have an application that requires a connection to a server that only
has 10 Gb (SFP+) ports.

 

It is my understanding that the X4_200 FPGA image supports using the Port 0
QSFP28 interface as 4x10GbE connections.

 

My question is which cable assembly I need to purchase to accomplish this.

 

There appear to be adapters that go from QSFP+ to 4xSFP+, and there appear
to be ones that go from QSFP28 to 4xSFP28.

 

I am a bit confused about which to buy.  If someone has done this already,
and can recommend a particular product that they know works, that would be
great!

 

Thanks ,

 

John Mann

MIT Lincoln Laboratory


------=_NextPart_001_02DF_01DC0848.E09F3530
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
class=3DWordSection1><p class=3DMsoNormal>So far, we have only used our =
X410s on servers with 100 Gbit QSFP28 ports.&nbsp; We now have an =
application that requires a connection to a server that only has 10 Gb =
(SFP+) ports.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>It is my understanding that the X4_200 FPGA image =
supports using the Port 0 QSFP28 interface as 4x10GbE =
connections.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>My question is which cable assembly I need to purchase =
to accomplish this&#8230;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>There appear =
to be adapters that go from QSFP+ to 4xSFP+, and there appear to be ones =
that go from QSFP28 to 4xSFP28.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am a bit =
confused about which to buy.&nbsp; If someone has done this already, and =
can recommend a particular product that they know works, that would be =
great!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks ,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>John =
Mann<o:p></o:p></p><p class=3DMsoNormal>MIT Lincoln =
Laboratory<o:p></o:p></p></div></body></html>
------=_NextPart_001_02DF_01DC0848.E09F3530--

------=_NextPart_000_02DE_01DC0848.E09F3530
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEt0w
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
wDCCA6igAwIBAgIBGjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMjEwNDE0MTEwMDAwWhcNMzIwNDE0MTEwMDAwWjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS04MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAttKiUZi+ezd6XR3/UBsFtO/XphH8
qPCL1l7Qjq9d3pew3w9mRG5+16+VG4OkSdbg1/C/9G7Qf4E+b1UBcpRT7dMWQ4+czMj5hzJMX8RL
7tMvwgKyNGvIg6WcLm11NY0r10sesBaYVwerNQrkE66PBfTdFq4x62r7CO1GHrnpkzhIpn9GghsA
xeY5V2Z+NrkglNXTaSfUrsr1Did6A6FaOHqUfX02zXd5Rip5vvLK6y8eJlYcZpRZYDsP6wwPuSgv
8lDa/c/28y5egk1EEG3wIBXedgv+mnZ8ZIoAIkhreCZvWrAp8PLotMBY2YoyWVKmpoebfXuaUBB1
0bVHp491wwIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUB6lj96pk
z9L6G8h9ATWJ3kgVtGswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
KoZIhvcSAgEDAQkwDQYLKoZIhvcSAgEDAQowDQYLKoZIhvcSAgEDAQswDQYLKoZIhvcSAgEDAQ4w
DQYLKoZIhvcSAgEDAQ8wDQYLKoZIhvcSAgEDARAwDQYJKoZIhvcNAQELBQADggEBAJOSfJ2oJKi5
AR/DhGv15Y4etfy0fcTVlciAhmBemrvOA7UVTyn/hSTFR+C1aZLM5A9Y8173YIT/JE06cb+dszxW
OLu3eg1TIU/bhkkE6Z1WvDK1fh/T1qcv80BXTG53bGoGVy3n+Djp2w/UJRS5/ror02xW9pcwySwV
4YcgmlTtVyEmfCwfxi+BBOnELZGUWE3O01a44zd81XGS/dMgL504c1lLV1Vs25YmLvZhAe4pFjF+
FSBBdwz8zhIdaqa4BMuE3JJaUFtRdNs8nLR8phUlxhstUac70Shv6FE8PrIFxwkokA5zyxVW0LD3
dpWFLtx18GWfpXatqRreMspTGe4wggVAMIIEKKADAgECAhMmAAB0FHJQAiNxhwPuAAAAAHQUMA0G
CSqGSIb3DQEBCwUAMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0
b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTgwHhcNMjQwODI4MTcxNzUwWhcN
MjkwODI3MTcxNzUwWjBeMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEPMA0GA1UECxMGUGVvcGxlMR0wGwYDVQQDExRNYW5uLkpvaG4uUC41MDAwNTczOTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALrC1gG2GRgmq3F4jYI2jDiDa3ovinQzeFVrIjG6
Sx3dm4nD6Kug5esO0aen+GgXj2gxFmfERh7FiTulHxnU1OvUU10KRRljWVeux137+hvRel8DzsUd
0+/tAT9VSWXM9u04LhuqIZvdP9s1K3gJJWXljVSWMWPtbOnJf3N9dfPP+j9BS5DPJa9yxVQy3aXw
nbVuMXMvKJU6KRMb2xZfL0PVR450g7FZTGky3vCYhVTQwit5DjUtdiRDJwkcVPCFD3vjDuOvvEfA
wPxhPMpALil0ZPpx7opMDXw/Oi1N4HjwGyjpNPm6iYfbme89SvP6lyyY7LcOAq0dj05h9BomtUUC
AwEAAaOCAgIwggH+MB0GA1UdDgQWBBQ92yslVCtoz/v7KCCv9U1uOiFQ+TAOBgNVHQ8BAf8EBAMC
BsAwHwYDVR0jBBgwFoAUB6lj96pkz9L6G8h9ATWJ3kgVtGswMwYDVR0fBCwwKjAooCagJIYiaHR0
cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9sbGNhODBmBggrBgEFBQcBAQRaMFgwLQYIKwYBBQUH
MAKGIWh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXR0by9sbGNhODAnBggrBgEFBQcwAYYbaHR0cDov
L29jc3AubGwubWl0LmVkdS9vY3NwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIOD5R2H7Kdm
hq2HFYPq8EWFtqEfHYXL3jKH/4pzAgFkAgEKMCIGA1UdJQEB/wQYMBYGCCsGAQUFBwMEBgorBgEE
AYI3CgMMMBsGA1UdEQQUMBKBEG1hbm5qQGxsLm1pdC5lZHUwTAYJKwYBBAGCNxkCBD8wPaA7Bgor
BgEEAYI3GQIBoC0EK1MtMS01LTIxLTc5MzUwNTg3LTg5NjQxNDU1OS0yNjYyMDIwODY3LTU3ODcw
GAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMA
aQBnAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQCIrJL/8d+l5D4LQY4U+4mDK+unMLeR1LWmXe4I
5uzcO3SPnQAD09noV67LAidJX/ctA+1dJ9JtZJr2gm1J59IGXVj2GgsvXHuPQnkwQ3mkA2abZeIM
xkCbtpobkXwLqYNblFnK2LXqKWJtFZB0XhsqEe82LUOZD3BIwMw9O/erwrmg5LQCdIVm12wK9M56
mVcCpr2M89FD5e3tQbN6eVQs5NOUjVVMp81Nktw0Qiv6royWJEGjgjUnS2mtDAeoo7lM4D7WmYBh
7yc3lv03mM3DpfbKTJN88pDEM8vzSkrx55qHq5a6MmW1lZe+WRKVyRr9j1SQOisYiO23+uEWUvVx
MIIFQzCCBCugAwIBAgITJgAAECJOdYPN2Sc27QAAAAAQIjANBgkqhkiG9w0BAQsFADBRMQswCQYD
VQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMw
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

------=_NextPart_000_02DE_01DC0848.E09F3530--

--===============7424796995402956954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7424796995402956954==--
