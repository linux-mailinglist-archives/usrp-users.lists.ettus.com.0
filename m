Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C30ED8AA49C
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 23:08:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6822386303
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 17:08:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713474514; bh=ebaqZbtjZS/hdjaCIIGap68TMXOReTjx7g3SdPg4AKY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MWL9vyFWnSjFwrhIK8wT5/iH6KL+HachGXhgIXRAmQDZVJFItoU93AwYNekXEp8DB
	 lkdPQXUjzE44qmv6Hcesg7GZ2yGk1Jw/ZDPw9mqqB8MrYbbGznp8HTXKejX8bgWPVB
	 nedxm+QL8p0yNY3EvsXAfIb3QwnvBpvsTIc66KrW2H1JokhgbODGNUkgBcB6HiLVSI
	 nBxZldo2ZKIfdeKRt9QtrKWJsIqCV8Q4Pysh8F7miM9YKHDgXVze9VS8ojQV+uwXLz
	 Sbol0vTDHi3ZOW5qdpLne6m3cj+WuPGBqwOsztiySOz4Pe8j6dlZnzyGIvVz3lEe1l
	 iSc1XXS1kw9CA==
Received: from MX3.LL.MIT.EDU (mx3.ll.mit.edu [129.55.12.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CB7D386172
	for <usrp-users@lists.ettus.com>; Thu, 18 Apr 2024 17:08:22 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.llan.ll.mit.edu [172.25.4.99])
	by MX3.LL.MIT.EDU (8.17.1.19/8.17.1.19) with ESMTPS id 43IL7FfF118520
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Thu, 18 Apr 2024 17:07:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=OI62PicKzM4AlGHcz5FryOQvEHLwGa9IE5anwDHNG9a4unCIJ4QdHsBrAsvufvZCBSCU/DrMSXYDK4x5FT/42sTq2M0Q5XR8V6x23L8XicgMKOnMFwRYdEvzaxZ04U9UwJ2eeS3tZiTR5+cJeZiJqLROpIBvcVQO2nSnjvKx5NT7ulmKl4WkJuezPqIAuacJG8f0p4Fv6sF11Dw28PgzrcQAzXGqb3WquHlywUL+iY7eqcLA2tOndHs6WG/Z86OkOSLv7lo4iJh4h3qWKN+ZhuzkeJ2+dh487MN4Ag6MkSJjlBSUh7K4GmBVtl7xQ5+euvl4iaTaM+EKxWqQJ9vcaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XcUoBDloTnFlLMMLrgT3vxsOZq9GfPWbdqdAthfTHGE=;
 b=Gxm7lWtIOyleGamZ5cAixch7y+taCmBXHkoMQV2+e1/UWrZdco4KoRq8/+3QVSoDtW++ZgoOOiwiLCUpvcEWksStg8PchcsrZJtx1zQ7m4gzCwByi516EuXprBvXTYG6fOWac/caj9ofydXYqtLsXpgL131OkYsxN+/YLSnzvALhscVbEWXS5sgeMQWryTpeZ83l8zUE5l9lIbHcJpavmXLBC9twMjOIwjX7APuC7JfZMwEuPWcfvsakiHWAeZXKzrO1Dg6pNOTGLX87fMBnvnQ9q8ssz4lW9pfkhQqI1QpQfDysk5aB/AuVr4FXspISYPVwGy6D8T2DtNgzjcXYiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Chapman, Christian - 0664 - MITLL" <Christian.Chapman@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Transmitting on both X300 channels without streaming samples
Thread-Index: AdqR0XUuU7CBF8e5QPe+8RY7OngB/w==
Date: Thu, 18 Apr 2024 21:08:20 +0000
Message-ID: <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1236:EE_|PH1P110MB1742:EE_
x-ms-office365-filtering-correlation-id: 8f9109be-c88f-45e6-0b23-08dc5febad49
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u92HGFIO9sATAYyR5L9UcNS9hKTLA6VEqudwh3Ts20r0aELdU60uWspIPPDMRSu5arP1ibQbvE10IBr1ZjGtXW7XvclsLckcukt9VvL42mc82vjWlg0IL3pY79F3zmsV+xs+oQy76L613DPlXLlG05Vhif2rXOKnJtu65hA650TbBApAF9AVIn6GzvXeTSuD1IumgD161VIazPxZhwQKLbENxXiVAGcz6HNYuKcJtaaRYl8x5d/6t0O8shFYu+KvTEfjGchjuHt9oZTc2IX9agO+xz/rdHZ8GPgmSyj5l2iVoaUrwgC28SuN9leQmWkIwKr6etbmoo4mTvi6qu6JFsQY8dJcgo8IqDF+o/JaMpIKL6qC89vn2Mxs0n/6DV4m5stsoKdNQFN4J+4aqFcdEJCc8zVFJKo6yLIGRLgx9B40DC7/B/IE3S4oyUeAC0Ucx+DnI3B5njmcXGH9GelfOFCkwrPEtE0P5/i7X2kJHL7jgg4zNUUqfbzEgw/GdCgZ2+B6ebbP3GQO3vusPk3QqNpqXTzU5ed6wF74NqmNZ0CFzw+p1SjxqeFVYC8oS5ITv9/exbSG3J23LyvC94oTk9HQw5c4Co9qrcthUy8MxqIwiG5fZn7Q8bWD8jpRnOmufasFjSzA1pjrOphvdhYsZ/CZzwGuecaTuEFBumLSYkdF5UPiNTFL4r0zidPOIO3OTjDxdFzKn5lbBF3LGM4kv4BX3JRLXkqXyDA4zSaHjzg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NyhvXdNPJYAomimPB5j31JHjh8FC1ltIKw+pz+ZBvv2Zanck8DN+EZ7vOBAG?=
 =?us-ascii?Q?mPhrL7xkmg1OuUIVDGP4haeMIWFsz2V/DZZ8KKVridBo508dMl/qWIkH+ZRa?=
 =?us-ascii?Q?gm0EHF7pPzJFyMopCSode8pHNTNtURltKzLRiQokKnoxfkESJSRGfZatvuB3?=
 =?us-ascii?Q?/fuQkq6owD++taWHmtR0+zln4rrXWKNq067CezELceCfUEzNgsg9LDihr6wI?=
 =?us-ascii?Q?iK+dboe/URdPDkrb4+loh4WioVmi68PetwXnMb86t6O4z8sCLcyraz+yNJ0n?=
 =?us-ascii?Q?OzEW8Q7M8meyEq0QduWJItH8DFz/SqL4WvqIsndE4mGwJJAzfX3h7sLqv2Xs?=
 =?us-ascii?Q?UefyJezFvupvorVTXWCwrIZEUyzTWZCEctM97JrHjgOWzWGqjQ0KzFXVQjOe?=
 =?us-ascii?Q?uyNzxoOOfovRISKCbv6G/e9o59BvW50H+kmOTxZaGXVAd93hUNelA7eXN6LX?=
 =?us-ascii?Q?G0S75XwwztuSfEAj0bwLZVtxIEnw1oMKBSD2y9ADxQAT7lN4b4N+NINRHTls?=
 =?us-ascii?Q?S52g8Oofxb3/xRn0l4JDNb74FdnUNcrzFdpXWY62uAioQNmZak0pHJHaxvPO?=
 =?us-ascii?Q?ivk6v8RfivfcIH0C+rKAkUUJpdehEquxJuHiu2DxWeivBlU9cUcTTHOkCea6?=
 =?us-ascii?Q?5Adt5mdlbGgGVKR+S26lkoK9Tb+eQN+Avx0UHfy/dH9xMLv6BtvWdGaFoTDb?=
 =?us-ascii?Q?IWiwuvgx7uSfyyioz3nLyC0IHaEYX4HCGdLoxRPa8XJaeLxMC2Ht94+d8JrG?=
 =?us-ascii?Q?Ip8n8xOveUln3AkS811655gHwgTyUpkgk5G76/croYpVUpFvLEbte+nSIOZX?=
 =?us-ascii?Q?wQraiY2m2nTQmlEOPPROsXpF4839CrxFxnOMrzWi3LxEEP+HpkgEu/rR6Jd1?=
 =?us-ascii?Q?s15wOhFphbYD30mDBJLuMJNZpReCgUF5XqLjnulp+19TIy2QbIeFzYf8LpRh?=
 =?us-ascii?Q?2gWuZw/4xvVZs5SIBt01ayvYmW5Skd2GPMk7xd/We1RBO7Pr7RmCZi49Fbd9?=
 =?us-ascii?Q?vKH7axDvcydeYASfzld9u1+vSqMxlhzSgkrd35TWsSYovlWlqDVS7WAGANoC?=
 =?us-ascii?Q?BfTyFR22dSknCYf9/yX9efT0L6KGwNEHQxMgCRj/Xa8aZdivMtIHGSI2b/ek?=
 =?us-ascii?Q?YCr7EkK23JkTMYJFwmGCT1a4gmYc44b1NbJvYwzFQC5oAtmuPFcfwpsq6DDW?=
 =?us-ascii?Q?wUj589GZNt9kmTJhh+6QPuPirDXtCXKQq+PizEt/py+7Kx0dcSrXbuI4jud5?=
 =?us-ascii?Q?+ZHGV2qM8EsDwWr6/J3dg1pO8dTh+JR3g6WSM6s7d+GCAJLLUrx9yDE3FqIx?=
 =?us-ascii?Q?jdqxraRq/ENoaFU7B3+TDo8V5SjJS7c7lJIANCmCSluqqVkv4YkHWrmaO1v6?=
 =?us-ascii?Q?5JEgRm/RuteRsw1g2l6v2OyIUXHyzrLcAWs8LWL5PSTfYqE7Pk3VmBq0zs4l?=
 =?us-ascii?Q?ql3FH1RiyE6KJSOLGHEueAYwdq0bOqp0mWeod3Za5arsHydV02EX0UpMDfN3?=
 =?us-ascii?Q?7Sg4wH65Yd/KAWzRvuSZqXa/tq2yaGPKCyp5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f9109be-c88f-45e6-0b23-08dc5febad49
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2024 21:08:20.8858
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1742
X-Proofpoint-GUID: SnXjbobgz7lHbOQSSCSqWNt_F8KWT-so
X-Proofpoint-ORIG-GUID: SnXjbobgz7lHbOQSSCSqWNt_F8KWT-so
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-18_19,2024-04-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=766 adultscore=0
 malwarescore=0 spamscore=0 mlxscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404180153
Message-ID-Hash: VX3BE3G2NIDM3AFQ43NMHUOGOUZAKMTZ
X-Message-ID-Hash: VX3BE3G2NIDM3AFQ43NMHUOGOUZAKMTZ
X-MailFrom: prvs=68385859cc=christian.chapman@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transmitting on both X300 channels without streaming samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VX3BE3G2NIDM3AFQ43NMHUOGOUZAKMTZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8158935506159134988=="

--===============8158935506159134988==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_030C_01DA91B3.02C9BD00"

------=_NextPart_000_030C_01DA91B3.02C9BD00
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_030D_01DA91B3.02C9BD00"


------=_NextPart_001_030D_01DA91B3.02C9BD00
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, I'm interested in using an X300 to repeat several 100 ms of >100 MHz
samples, a different signal on both channels, and my host computer can't
stream samples into the X300 continuously.

It would seem the RFNoC replay block could serve this need, but according to
a thread from Thomas Harder on a very similar question[1] some firmware
change is required. 

Thomas seems to have settled on the approach I can't use: his samples are
streamed continuously via 10G Ethernet.

If I understand properly, Rob Kossler's txarb block can serve this need, but
I can't find it published it anywhere. Do I have to recreate something
similar to do what I need?

More broadly, has anyone done this and/or have simpler solutions appeared in
the last few years?

 

[1]: transmitting on two channels with replay block, msg09472

 

Thank you,

Christian


------=_NextPart_001_030D_01DA91B3.02C9BD00
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi, I&#8217;m interested in =
using an X300 to repeat several 100 ms of &gt;100 MHz samples, a =
different signal on both channels, and my host computer can&#8217;t =
stream samples into the X300 continuously.<o:p></o:p></p><p =
class=3DMsoNormal>It would seem the RFNoC replay block could serve this =
need, but according to a thread from Thomas Harder on a very similar =
question[1] some firmware change is required. <o:p></o:p></p><p =
class=3DMsoNormal>Thomas seems to have settled on the approach I =
can&#8217;t use: his samples are streamed continuously via 10G =
Ethernet.<o:p></o:p></p><p class=3DMsoNormal>If I understand properly, =
Rob Kossler&#8217;s txarb block can serve this need, but I can&#8217;t =
find it published it anywhere. Do I have to recreate something similar =
to do what I need?<o:p></o:p></p><p class=3DMsoNormal>More broadly, has =
anyone done this and/or have simpler solutions appeared in the last few =
years?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[1]: transmitting on two channels with replay block, =
msg09472<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thank you,<o:p></o:p></p><p =
class=3DMsoNormal>Christian<o:p></o:p></p></div></body></html>
------=_NextPart_001_030D_01DA91B3.02C9BD00--

------=_NextPart_000_030C_01DA91B3.02C9BD00
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISaTCCA4ow
ggJyoAMCAQICAQEwDQYJKoZIhvcNAQELBQAwVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBM
aW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9vdCBDQS0y
MB4XDTE2MDQyMDEyMDAwMFoXDTM1MDQxOTIzNTk1OVowVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoT
Fk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9v
dCBDQS0yMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv3WoBEGOOJtm4ucvaf6vKIFP
s8watCd6Smwq/XeRNo7P3jPIxNPwF398RGDUmPJIXA7idzD6j0opFIW+kLqYye9e788PV0dqaJlX
8818fNDbSE+8B6hieqKTR7VfOI74UVQEUKVRFuRFw6uVYuvgew2Tj/C2dEee37eruQl5nHkbV2Os
WnZ7O+yt+etd6HRcaXLlP9q8WKgA3B7vkOVIMCKoAuaWj+BFq7K+WNkiyi/KdOH9JmOpbyRK4jcA
7xbLnF8JFUSNg5c4Y1BJrFaZtkCeG6Nm9p524GllkRFzPgpj8VicV+AK+9rY07dTx02kYotTnKuy
0YxBAwsUXxAQEwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBT/ycllTFOA8akM
PCGugirH7vgy+zAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwDQYJKoZIhvcNAQELBQADggEBAHqYfEf/3J5aMKhlYQ0PnUAbMB8jZSr9/HvjfOF00crFUCfS
rqG8JQwo+S/iq66gcp62FEgJ0fQkDgVg6m+C2ETo1LoWiSxhYCfcSIQECljlXwR8wFSayF822S69
IqvHhdq4d58jU6gYi6ssjU4vwsvsVLRJKk/m/Cg/w8gW6YHM5ahBD6/5Ccel2fI7oSmskO991+ot
rC11YfDwCFvz7Am0r+K9iVhSWta4hmIuV0YBia07eZKSO02LPgQ8YOz3ku0Yt+mh8VWRKux2CcYj
Mpk+WDV0BMp75tqb6pqBFkcKvEBXqxg+8+G/umjii4H0c5kvJhaQyykbmOKmxO9IcJIwggTAMIID
qKADAgECAgEGMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGlu
Y29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3QgQ0EtMjAe
Fw0xNzAzMDIxMjAwMDBaFw0yNjAzMDIyMzU5NTlaMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnmoMOvTkfw7nq19mrWazGaa+Q83Uv0+AT
XT3q6kr+WExIMIZ87C74WCcRXpvO7uvx7HvMsYWAFHW93wQwhjytxHIOZgKNJ4VnGVDUl+KI7g0n
9+Zjt3hB3HhHbcvbe9+Y4jz+XzCiLl2OaYvICKbxvbBSCLtPEeZQ6x6Tb6EK0ym0gvYeHO3kuuY+
SJHJMltbrLnIVLxjZrNVS77zXKvu6Q3hSdkRIB7kJgEXfL+p/z/2p94bEEZ2TnQz0TkOjG+Jq7Ul
XlFRtvsYcDPEQD3UNkZsWcXgC1hXG8TGknUcAhlGxVhlKlFLmNd7342seGy2s9YxNDnSE+eXTtb0
I5LLAgMBAAGjggGcMIIBmDASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBQv77vGDR276Wr+
rGfzBzsIdvZLWTAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwZwYIKwYBBQUHAQEEWzBZMC4GCCsGAQUFBzAChiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0
dG8vTExSQ0EyMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwNAYDVR0f
BC0wKzApoCegJYYjaHR0cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9MTFJDQTIwgZIGA1UdIASB
ijCBhzANBgsqhkiG9xICAQMBBjANBgsqhkiG9xICAQMBCDANBgsqhkiG9xICAQMBBzANBgsqhkiG
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
AlVTMR8wHQYDVQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQ8wDQYDVQQLEwZQZW9wbGUxJTAj
BgNVBAMTHENoYXBtYW4uQ2hyaXN0aWFuLkQuNTAwMTc0NzcwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQCTxVDyhTnOxUcS1NdfdlPf03tJ6NyQBeIFwTkRC+O7JQ1xkCbwoA0hP/4uiWOA
eBQ4EmE/Sz9WlbZh+l2zN1J1SJGi1/12ZWwPJSuOA6/94CNhheT66qpRV5cWlRdlzzudYMIahfTo
htN1ggjBG612a5CfBiDrSNsbLJ/cGwDhJ8IhgZ++BSuZfjbgfv52sG+H3JHtL8ZQeFs8GYSLQtWd
Ov+XG3uxCByCvO5zFy+so/+96piYr6jzr9L/IT0WRW2UiquafghtNVZ6XsDsLq/c/V1Z/Z/IAte4
pajBytC2fxczyblPxqbNWn9kiwgKNxXxqWJk2SuLjQoH0VpS8vUFAgMBAAGjggHDMIIBvzAdBgNV
HQ4EFgQU9M7JxcI0vqsY39b1hBemxRmhWlgwDgYDVR0PAQH/BAQDAgUgMB8GA1UdIwQYMBaAFC/v
u8YNHbvpav6sZ/MHOwh29ktZMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVk
dS9nZXRjcmwvbGxjYTUwZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxs
Lm1pdC5lZHUvZ2V0dG8vbGxjYTUwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUv
b2NzcDA9BgkrBgEEAYI3FQcEMDAuBiYrBgEEAYI3FQiDg+Udh+ynZoathxWD6vBFhbahHx2F69Bw
g+vtIAIBZAIBCzAlBgNVHSUEHjAcBgRVHSUABggrBgEFBQcDBAYKKwYBBAGCNwoDBDAnBgNVHREE
IDAegRxDaHJpc3RpYW4uQ2hhcG1hbkBsbC5taXQuZWR1MBgGA1UdIAQRMA8wDQYLKoZIhvcSAgED
AQgwJwYJKwYBBAGCNxQCBBoeGABMAEwAVQBzAGUAcgBFAG4AYwAtAFMAVzANBgkqhkiG9w0BAQsF
AAOCAQEAg/EyoaTwRjjj92AUCOfi/1niJW++Zm99t+taPk1cSnjEDmr5y5jElWnLUZyvpLZH/Hxb
vfybRhzKMXOK6jy7sshypRoB0bNmPYxcfG7HsAF5LkGKyD5a5AnWESMBTuhyITgcSIuUvK1omysY
9ev1sPV81I1OK6B0TTiGYpUeX20WgFE/YRLdWrxrOaRCHjTrAHLSHXqV50G4x/5F8gIP67mddMua
SeIEInmp39qT9VF0lwE1H4dylMrBCEiLKeMOK3cX6y2JTwHJaW1JCOpkoZdqkWxB3Qa21+Rtn0GA
MwwjwwCjF13lTetNiaUw2/Kp9VGCOsmhHalA1wnt5//tQDGCA3owggN2AgEBMGgwUTELMAkGA1UE
BhMCVVMxHzAdBgNVBAoMFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsMA1BLSTETMBEG
A1UEAwwKTUlUTEwgQ0EtNQITWQAEpQN3jvZB8gCcFAAAAASlAzAJBgUrDgMCGgUAoIIB5zAYBgkq
hkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNDA0MTgyMTA4MTlaMCMGCSqG
SIb3DQEJBDEWBBRgp3fe//7VCD15Tt89oGWDegom6jB3BgkrBgEEAYI3EAQxajBoMFExCzAJBgNV
BAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzAR
BgNVBAMMCk1JVExMIENBLTUCE1kABNSG03aoAknspFMAAAAE1IYweQYLKoZIhvcNAQkQAgsxaqBo
MFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQL
DANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kABNSG03aoAknspFMAAAAE1IYwgZMGCSqGSIb3
DQEJDzGBhTCBgjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFl
AwQBAjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAhowCwYJYIZIAWUDBAID
MAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAjOXN5OA9BNP16NTs
pRDCKmuNt08YDcNXfy73Rrx4XLjOzUNezC4bwol3Mtq4E8+iRSQ+4iTMv7DOrlGuWM0Nig2w/pVV
NguyarbbTFb38ZmpUpJ8goUUvq8gpvmvSkKCPsHoNcwray3rVeUanLiwA1dGeo9ITPhBPLwvGiL9
YIuDmLpCsmapRgjrK4RUl0VK8rPfu71gbeVTD3d7NRqFUYb/2POVSanTYNg5BTfj3GCUcMZmKQiP
wRnkiBEKvWap6SuW32AsgV9SVEs+08vZai/WKPsxI0NMh98EOBHLwnqCajeruhIW01BUVBJaCK24
qRCXbBCLuFsb9LUxoQ1zqAAAAAAAAA==

------=_NextPart_000_030C_01DA91B3.02C9BD00--

--===============8158935506159134988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8158935506159134988==--
