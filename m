Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCDDA5E48A
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 20:36:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDE1738628D
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 15:36:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741808175; bh=nQM5HcZRTaDMV764/hFpKRY9JN1N2YGztg3c4hP9gqw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nIZ7D50TUNs+OqpLxij+GnamzZY6Ke12u7IWKjiD5hH8/gs4xLfklJIfQn4CAwbYV
	 gaLsT69hLwYvdXfI5aOyyO188U6wsT+a9ba1vuRKosTMDLY342wpXTyev/1IOK9f4Y
	 3CXJC3ddAinkjurSNXHdICol+9Kb2AyV/0YadMFH70KtEqQ/qGsrmwlI/3fbKF7nQg
	 6ubGVULsY09MntZZ0n0WrlS+n591CvwhUiSuXb4g9M6a7lA0gWMS6UrNd4xsqusmji
	 j3XykbfebYJZOF4jXYCEZ/yGigvvMa6lMgToBT+KZWjpUx4lHRFuBT+yu4wKZHODP4
	 Hh2es+V32fSdQ==
Received: from MX3.LL.MIT.EDU (mx3.ll.mit.edu [129.55.12.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 43F0F386095
	for <usrp-users@lists.ettus.com>; Wed, 12 Mar 2025 15:36:07 -0400 (EDT)
Received: from LLEX2019-01.mitll.ad.local (llex2019-01.mitll.ad.local [172.25.4.97] (may be forged))
	by MX3.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52CJY2ua037151
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Wed, 12 Mar 2025 15:34:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=K9g0HhPQQLj9dipdjtRT2bnXtYouck6UNhC8X+Fd7Ey+mJZsCDViEZdcL3hL3FJOk0bqunSaPnJnLOx8mtO71rjOe6bJDCl/BCcJ2TdhT5M3ek9YlOp0M0LMCpqx6jgOnPo0poO5y+8XmHDe6hakhOkVS/gmqooR3asaGaZfIBaTdqScTFyUohSUctWIihcqZ4MtfPx+QjF26CD01nBWFAgfUpwwfw0mBByv6M1Jh2bwEsI5lSBdsh2ifBR2TreGVnzrYuStxS6XaijXu/bZPoCahxe7itQjLeDd/k29lTIh5UDaMDPDZeSSzcJvNpnFqNeedsfImJb5Y+vkEoVlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChoxpgysA9QB9Ef5vFLihIv8WRmj8AWARC86RYdVizQ=;
 b=VLgdLgnlAjHLbIie9fIifup93vl0PcTw0uhiaSTC5B95P9K+KYu7Rw/T3CYRA0yfjtLhBhlZ7NzHV9M1S4wmb1Yrh7hv1Vmt2UpGPJJuIc6ptPksaDEsVyU2mIBJX1z+U3H0rn8qhk2A9GMSQczHqgRrEkBBM8nVuqwQT4ByY+pbROH0mKgta3xzILG/BXy2lam+PtO9kUIvlf6zWDVr8BgSJED64xCGB7TJr6Nul63v6WUs+7CVd5ll+locEHxSbVlvsTxcb2/Om3VO1aAGn66NvWokZ4yIsqza/9M+7ky8zDMheOvENRJ0TlIcB1QLorN4G4M4DzOj5n66M7Rmxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Trouble updating file system on X410
Thread-Index: AduTgic8S0xiQRNmTS+Hi9UFvNif2Q==
Date: Wed, 12 Mar 2025 19:36:00 +0000
Message-ID: <PH1P110MB12849CFF97D7E5BAF1F2DA4A98D0A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|PH1P110MB1299:EE_
x-ms-office365-filtering-correlation-id: ac67e6a8-8558-4070-d482-08dd619d1e3d
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|8096899003|4053099003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?mCVIv0M5LCDUrZFhHGtnlD5mXLeQ+lXeMSHTlqXkhu6byCcg/HdpcxwBMd5N?=
 =?us-ascii?Q?U/2UNE3GAVsYLmsRjx5k+HTqAuhS6BKHb82a8jweYB7u+GwbabK+8woXKVZM?=
 =?us-ascii?Q?CtDU513OCq3RRaafZD/IEqjOYnLpDTyzlRIJC2Qms01tJ3IMADeJw6hz0cx/?=
 =?us-ascii?Q?9nmrSA77h0O395dLC0q+6LY7f1Ad5eEeuRT9dofbiz195zec73nJoYuSMEC+?=
 =?us-ascii?Q?2eEuSyZHcOckNI8/gr9S2L06e4UNxzxLhBk3+7iJ5xs5G+OTXlSkVPFYAAsT?=
 =?us-ascii?Q?Mj6I+XRwRhwQ9x2OEdl/CaPdeu7IJqNAtr6cP5q9fXm3XUuq4RAvr+clLtvq?=
 =?us-ascii?Q?LWqWYck26hn9nzFXlembgVZwwC/if8Vl5GLRwN/0xxIQofbYpLL55aMU1Gnv?=
 =?us-ascii?Q?yljlQ7Qyu9NglV0kQIsCSDx1k/eORTtj1fRDU4HYj/ZEkr68gpAsjhq87n00?=
 =?us-ascii?Q?FLHVo7wOUOEhtrXaYN39zwwt38uwm7EBgdRNgnemREl3LCiUoOJyoxPmblJk?=
 =?us-ascii?Q?5962snhpWozDluyx/6ijECPCEJk024qaUDHTeLuQsY6zQMJc3riNInvs5zHd?=
 =?us-ascii?Q?eCFa52fF59nWukyd8HHYPp3UShOM95O451qGCON9Oe/fqYTVHJezNDbgvI5v?=
 =?us-ascii?Q?EMcWoRBdzr/xYbv7iotWKqbq4hZ+5D77gTyw7yCSN8o0TmHx9rh/kMcTj/nk?=
 =?us-ascii?Q?hmAi77HwyPnPHWc3CPyY6RVFz4whPNTWzPMAqH/vPQHHkXsnvgj+SVUmrN3X?=
 =?us-ascii?Q?+83qBeS1znWxOcaRrf8QWDOzFY9mbzlteDNd6/Mrj4TC7i+tLYHAFSveyvlc?=
 =?us-ascii?Q?WlnqqFLZRifwtqdUHr283SlxipUdVfDj6qADIYExZ65D2l1n+0Ukz6pR7OXt?=
 =?us-ascii?Q?64vuJqDqHBiPCOWsrCEcSyJFq0V7NCZSmuWTV8ErZtbKoTV5Bbb9OX7EeiYf?=
 =?us-ascii?Q?jakc4FyreqRS5CjsBcZAKmOYK4sipbYFZuZRM4AYNGZphnZoEzAQBx/69VCA?=
 =?us-ascii?Q?PA7v6YTihupcIdjzavKadbcWrUbMGZgWb0Ol8EHxENaBak3IEqtttg9jIsRY?=
 =?us-ascii?Q?/kx5IFsBI+vSEYADMHidkHXdPAHpVMGyEb6zEeqwop1s6Eksh5JP9dQ2ZKtr?=
 =?us-ascii?Q?oqAtrcb9nBTgeclRVl1S9rqUm7XF8tYRt/0mNQ9FJ3liJjcLuQf8DZ8QnLfn?=
 =?us-ascii?Q?/zbQRt++UF3kjsfiao8xa9jG332xf6kRtmiRmbc8qiNZgi+T9rqCycMXuVRf?=
 =?us-ascii?Q?7iooUUWZJ+Bul5IV0Bl8Owf3FBFA8ChqDO0XoTDSyfEhLnWq7H0g1/ffrqUG?=
 =?us-ascii?Q?esbxk1n5ItkD+hW5jtep3u/1CnYAQjWKW+/Gdcq5hx3Znii7oIKzcm+8h8sr?=
 =?us-ascii?Q?IzwsXSqaJGHitZvQmEUEk6Xp3fRTiLrxgZxGtlRYG4m55ch7KzdTfRc+cnyb?=
 =?us-ascii?Q?N8ZyXIU/5u2kEdi81QYlhSgSj5AQWmZJ?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(4053099003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?frvuLHxKTjmgRp822bbwdOF2xZEfxx2ExQHtRX4K+aRrTr+2aCzsDeTtvcPc?=
 =?us-ascii?Q?WoBowoZRmUfHI5yxJk3ih9jYOc1EnpJs9TuBEs18fKvoAYCDm2+i5QsuU792?=
 =?us-ascii?Q?OfRqqyilK7po3tmFXJn1DMwmcrIF9hQapVikPyYFYopjfQ/7xQu/fANbknoK?=
 =?us-ascii?Q?Af9Nd9CcMCg/G8SwRQjDBdWonJ2Tc/utRiZ2QZ3VTB78+q9CQKHPAKszaADx?=
 =?us-ascii?Q?oyQQgwYi+ej+SQLTixS6SM6JO1/gphLzwGZ5Ts+UxZfrGlw99dJJlfZ1++mf?=
 =?us-ascii?Q?f8Pj5ntTNcn66jsqYGtfZM5mrQUY5/F2DBrHQx/ex8mcvEsXBQ0w0AOG7s4m?=
 =?us-ascii?Q?kIgIGq7a0yoRIt29JTeQD4bDFhkzuDFOuW7Jjqtjj5+p0+FDCpqV9+owKWh/?=
 =?us-ascii?Q?LpFFBTQ1i9sxU7RuwJeoQqx2VB2cSzcjRvwggFtn5kfv6dpY2oPEDiqJ4Fwb?=
 =?us-ascii?Q?K8AxMMTqViWdefejxnx2Dlty1eWRRQKEdtragJ4NU6+Siwfkj9Xq4TcTpZuG?=
 =?us-ascii?Q?Jw6UL6GykQ5UIoJnbb0icbR+69wUcACdHDtOpfTPFaLI+OcnCBFMUqkguDDY?=
 =?us-ascii?Q?7MwAQIOPSwANNLohQ3OzDne1AtyCxErLqvzwn2cim3vry2x5DCeFKok1Efr/?=
 =?us-ascii?Q?gJzTOZ2BM2uNkz2c8NP6QB48BAera7LOlOpLcQBpddYuw8fhcNu1bkaNptV2?=
 =?us-ascii?Q?lCqRPPQdeuT7Y/GUvwvKpAcoMmz+O9xr4SpSebL6M14TyDakiVSQuu73zSgq?=
 =?us-ascii?Q?KDpL60zUlhOgdLNPyhf0NhyXe1aCguIwArDfrYqSxMUhc8CbJ1J8+w8iw8de?=
 =?us-ascii?Q?la6M/fdcKGXprkF5+G1nXx3+Ik8Ngwo4ORGGKJxI4PtQXC0od664lPAoVUmm?=
 =?us-ascii?Q?jy3NVIL67eQwaG/ED++uqBY8eraFIDerVFEHIpTd1ue2n0CvWiigNg/vER/l?=
 =?us-ascii?Q?8YHpgNFVSxX0gGAh8CHn+CypQAJgU+6sFQ/i9jLdK/ta7wkIudje6rwinTgX?=
 =?us-ascii?Q?OzQJxPK6yK3JLY2R0Cjpr61KXrtuBIkgUJbCMlEWMNppYcwJsnrCb3gguq+s?=
 =?us-ascii?Q?LXOo14HKS6gLh6tVWBTo8WoeVuvFs7ylS+R9yRKf3k3fR4NBJTtEkPa2NTwC?=
 =?us-ascii?Q?182msxYLgM+JJGfIJHj+eVuZLhd3p+Ol6xqH9AITeU3U987N98jKZ+FWi3GC?=
 =?us-ascii?Q?xVFoYoOPaaPuvTEx5JieHHVPolEeR0tIC+QtX1TnmbZ+FFqNYei+0htK7G0/?=
 =?us-ascii?Q?8QnGNJ1kV2hd44dGuXDEuyuYvDIRLke53brFSFsk+NdPvqm+CKesBf2asYV6?=
 =?us-ascii?Q?5ACkHpnkIdCKjnD0tF+xaC5H/nIpkrcZWbFVij8jkxgN6au2nWtiAIWGhMze?=
 =?us-ascii?Q?/VYLQOXtxz/nYNeReVmPTD656+RC9I9cCQfavgxaCyovk2gMur7pcVhmuCQ/?=
 =?us-ascii?Q?MFhAf41GVGAgJlunijjMe7HX64K3BqsPv3RrJWETaZfjLVUFu1I0xS2S2vKV?=
 =?us-ascii?Q?nX5Vkvh5U/m+z1U=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ac67e6a8-8558-4070-d482-08dd619d1e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 19:36:00.0977
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1299
X-Proofpoint-ORIG-GUID: iAQBTf_BkAGOg7rrUh9g2YhAn1cI7bBg
X-Proofpoint-GUID: iAQBTf_BkAGOg7rrUh9g2YhAn1cI7bBg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-12_06,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503120136
Message-ID-Hash: ZZ4WER73AOCUFWRN7LZ5SPY2BGUKZGG5
X-Message-ID-Hash: ZZ4WER73AOCUFWRN7LZ5SPY2BGUKZGG5
X-MailFrom: prvs=716657b092=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble updating file system on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZ4WER73AOCUFWRN7LZ5SPY2BGUKZGG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6241051549616455996=="

--===============6241051549616455996==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_00C8_01DB9364.73ED0F10"

------=_NextPart_000_00C8_01DB9364.73ED0F10
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_00C9_01DB9364.73ED0F10"


------=_NextPart_001_00C9_01DB9364.73ED0F10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I upgraded my host computer to UHD 4.8, so I needed to update the file
system on an X410.

 

The X410 is not directly connected to the internet, only to the host
computer (running Ubuntu) through the QSFP port.

 

So I figured the best way to do the update was with mender.  I scp'd the
latest mender file from the Ubuntu machine to the X410, and used the
following command on the X410 from an ssh terminal:

 

mender install /home/root/usrp_x4xx_fs.mender

 

It seemed to work fine, and completed:

 

INFO[0126] All bytes were successfully written to the new partition

INFO[0126] The optimized block-device writer wrote a total of 3769 frames,
where 1869 frames did need to be rewritten (i.e., skipped)

INFO[0128] Wrote 3951034368/3951034368 bytes to the inactive partition

         100% 454379 KiB

INFO[0128] Enabling partition with new image installed to be a boot
candidate: 3

 

Use -commit to update, or -rollback to roll back the update.

At least one payload requested a reboot of the device it updated.

 

At that point I typed reboot, and expected the X410 to come back in a few
minutes with 4.8 on it.

 

Unfortunately, it never came back, so eventually I manually cycled the
power.  It then came back up, but it still had version 4.5 on it.

 

I tried to do the same install process again, but now it always fails with
this error:

 

ERRO[0000] Reading headers failed: installer: failed to read Artifact:
readHeaderV3: handleHeaderReads: Artifact Payload type 'rootfs-image' is not
supported by this Mender Client.  Ensure that the Mender Client is fully
integrated and that the RootfsPartA/B configuration variables are set
correctly in 'mender.conf'

ERRO[0000] installer: failed to read Artifact: readHeaderV3:
handleHeaderReads: Artifact Payload type 'rootfs-image' is not supported by
this Mender Client.  Ensure that the Mender Client is fully integrated and
that the RootfsPartA/B configuration variables are set correctly in
'mender.conf'

 

Any ideas on how I can update the file system?  It seems unusable in its
current state, and I would prefer not to downgrade my computer back to UHD
4.5.

 


------=_NextPart_001_00C9_01DB9364.73ED0F10
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
class=3DWordSection1><p class=3DMsoNormal>I upgraded my host computer to =
UHD 4.8, so I needed to update the file system on an =
X410.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The X410 is not directly connected to the internet, =
only to the host computer (running Ubuntu) through the QSFP =
port.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>So I figured the best way to do the update was with =
mender.&nbsp; I scp&#8217;d the latest mender file from the Ubuntu =
machine to the X410, and used the following command on the X410 from an =
ssh terminal:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier New"'>mender =
install /home/root/usrp_x4xx_fs.mender<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>It seemed to =
work fine, and completed:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New";color:#00B0F0'>INFO</span><span =
style=3D'font-family:"Courier New"'>[0126] All bytes were successfully =
written to the new partition<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier =
New";color:#00B0F0'>INFO</span><span style=3D'font-family:"Courier =
New"'>[0126] The optimized block-device writer wrote a total of 3769 =
frames, where 1869 frames did need to be rewritten (i.e., =
skipped)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New";color:#00B0F0'>INFO</span><span =
style=3D'font-family:"Courier New"'>[0128] Wrote 3951034368/3951034368 =
bytes to the inactive partition<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100% 454379 =
KiB<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New";color:#00B0F0'>INFO</span><span =
style=3D'font-family:"Courier New"'>[0128] Enabling partition with new =
image installed to be a boot candidate: 3<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New"'>Use -commit to update, or -rollback =
to roll back the update.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Courier New"'>At least one payload requested a =
reboot of the device it updated.<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>At that =
point I typed reboot, and expected the X410 to come back in a few =
minutes with 4.8 on it.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Unfortunately, it never came back, so eventually I =
manually cycled the power.&nbsp; It then came back up, but it still had =
version 4.5 on it.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I tried to =
do the same install process again, but now it always fails with this =
error:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier =
New";color:red'>ERRO</span><span style=3D'font-family:"Courier =
New"'>[0000] Reading headers failed: installer: failed to read Artifact: =
readHeaderV3: handleHeaderReads: Artifact Payload type =
&#8216;rootfs-image&#8217; is not supported by this Mender Client.&nbsp; =
Ensure that the Mender Client is fully integrated and that the =
RootfsPartA/B configuration variables are set correctly in =
&#8216;mender.conf&#8217;<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Courier =
New";color:red'>ERRO</span><span style=3D'font-family:"Courier =
New"'>[0000] installer: failed to read Artifact: readHeaderV3: =
handleHeaderReads: Artifact Payload type &#8216;rootfs-image&#8217; is =
not supported by this Mender Client.&nbsp; Ensure that the Mender Client =
is fully integrated and that the RootfsPartA/B configuration variables =
are set correctly in &#8216;mender.conf&#8217;<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Any ideas on =
how I can update the file system?&nbsp; It seems unusable in its current =
state, and I would prefer not to downgrade my computer back to UHD =
4.5.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_00C9_01DB9364.73ED0F10--

------=_NextPart_000_00C8_01DB9364.73ED0F10
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

------=_NextPart_000_00C8_01DB9364.73ED0F10--

--===============6241051549616455996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6241051549616455996==--
