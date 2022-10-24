Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ED960B31C
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 18:56:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FDCE383BB4
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 12:56:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666630572; bh=7aG8v94sppujYUJ2amD6So0VMtGBxR0HOYE3PBUT4fU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=de4tpHAV4iDKylDyfHXRd+NBFlJocKAONIUCBlh9VftKUr1jYIcR9AJ9V/XTnw7tt
	 EMddBNkn0x4VeR/bkKkCN64/0Y+iQiQSpUdsec09qt6oHvKT2kkL/D2TthgmqVuYtv
	 DYj7AyGNDY4p3Ix0YjowJhXfZfCTrBF5A04PJ0osNqufjWoQ7yY/kqXwV6Vw56S6aU
	 nrcxf+Ri0m90iX1rLZ0+uVLOJFIsW7gWbEajx8E7X4C6AUIohL++rxq5wcjsyhRA+l
	 QloNRBdv2vkYr/hrjuXgxHyonEF87sphgBJCH+ShFloNu8gb8uXKejKZ8Pv63ztneE
	 47ftLCiupYUsg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0096.outbound.protection.office365.us [23.103.209.96])
	by mm2.emwd.com (Postfix) with ESMTPS id 42611383964
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 12:55:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="dowkYAew";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=XEWT3aSj6tlj96NUzgo4bozC9pGuPU93uxmbVe6/RLlqBMzKGMmCT+SqhS7LwN9XJsT3GzJsI7bG5QBCJgY6lAKncguYJzv4//a8HX6/E9WsS9ywRZkiS5wYOEnAmf2YPSubfRNAwCzQ6T81QkvcCsOnr4DwPkFrb1Ieb50E/IuxsZtBtG6im/eKKdJPbaok6Mb7bOvdKalegnpRg38rlvTTmDzDkUbyRAdKmmuWL/h/+Zb4TPgA5fBii+oCUL6uklq7EouH06M2Z345pPLT566XlAi1o+Oo9BiH7l4vkRYYNlqGgOJvwKSAZccpwqAu8uE2DkIpj8Iab3N8r0iDvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h5oD+vASTXI4K6jgspLSkVuq2AoumoSDt8enbczh6i8=;
 b=X4ugtnY6/mpeBlQwSP0RsZSU1ecyzHqwSdTsKrArH98MDWtDxn/TRNHh+RVCOVMbb7/Pdj+Tz19gHnRdYK6zLrMQOG1Pincugrq1X+VJTpqUXbo539OHRP9rWYD5D2pUnKJWwO9Uydns6fSr8qVa/7cNjzh2jth2EY08x8amPiFzwF6BFCD2Qa5stO6TyiA+AXMyRYqYK/WlhzHcYep/jDW8D9LQNAQUidE5J9nMz8XmdLVirphZpbHsIXMSJD84FMa2wo3eAJjV68ycOMFib+bWymuCAMuvt3YvsJ6QESZauiATyjW7MaTfmLMAMy/THq2m/dcsX4tyra0bQH120g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5oD+vASTXI4K6jgspLSkVuq2AoumoSDt8enbczh6i8=;
 b=dowkYAewIRxH7lfYmTFAd8nAXqEbTD5FKvg96Ao+WzuZVv596EQYs97zIjYpk1Ibi8QkA3T9/5XzBv/uhjrIMVfbR3096peGdg3khedz1bI+ucDm0qdjHJG7+kxGNA+VGkDax7t68Lo+iLyJ9QLC6YHbC8X55XHa6XiY1xZo+2Hqa5pXMUqvVj3FMF7BSRxqvYpiOD4KyxzdYmuiErCYiuIm9eK/XzAzewCq7CMBl3/Um9SPo2AKfnGPn2HF/jpr1kcXFkqJF1YKqCcnCLARg3o/SRRLUrd5wCzNton3f0iZt1yVvVruMgWtJUJN79aYTzZOrqB0uH5fWMUlNrAA6Q==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1164.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:183::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Mon, 24 Oct
 2022 16:55:12 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::318e:447d:1515:9ced]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::318e:447d:1515:9ced%3]) with mapi id 15.20.5746.023; Mon, 24 Oct 2022
 16:55:12 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: MPM compat number mismatch error with E312
Thread-Index: Adjnx4WRNg87iq56Qzy9qXszXdc6Sg==
Date: Mon, 24 Oct 2022 16:55:12 +0000
Message-ID: 
 <BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1015:EE_|BN0P110MB1164:EE_
x-ms-office365-filtering-correlation-id: 13736918-4916-4c6e-096a-08dab5e0847e
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MoVq7Mmzc+u4zOIas2+1XpEeoLly42jJgnSo/XqEw8nwup0wKDtpl8HgdidHTKFAz51WlI0yUbuOWKXwgLjRhwu4n7O6gQkIX6539xeL/UyNEMzMyIl925g+veJiU6FSCNY0BhPgGY8mykxmrO5K4DzjVdzS7L8WQBVGbgDuxUK+2gOQjRZ0k8+OqlNssxCe2Fm7OojYBfc0KrxSdLvUkzQCwDaPpYV5JK6/7tbGo28K2xIBaRRdWAq0PbBf3RFPMT7dL3tTgJTTpGPOJgiCB0cBvGPbt+FGSwI8sPjMu0DAV4JbCRrUrycveaMS1YUCX2EECMk6DPZz1T7PvRLEPslCWVm6u9tqDmedO3tB/srKnUBw+nQT0xP6WEf9nLhaIv3tTD9tU89oRsEs7Gk9WdPWThhdUPDHzUMVGKD3x5JIBUjhMENWF6uaWhvf97LtRAdrVsCZtZbbPb/03VQNlo9Yp7/eD0r9h5Jgz8YxyA3BxINyC3vuHYmf+Syr6W+jSbokFFNMGVzpn8NKzz0e/oqvBHw+1xaaNA2CPb4hL9stdh22kjwhW87SgNYc9GD+V2Z0PFNuktqG/zvTd0izYqs1Puixbnrkg4cbqn0aPPHVozzX1FkswfwdvcLelklbp2HeZcVYFbOhVHF6nZlLTmft0/7KWRZZcU2jQN/Z8vCekbtFfyjDIfY8KaZWoTZvt6gZWNzCVs8oczABXUq0LnzEfGoGwuEJTDuM7FMBjKc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(366004)(451199015)(8676002)(38070700005)(52536014)(71200400001)(55016003)(8936002)(99936003)(66946007)(76116006)(82960400001)(66476007)(66556008)(64756008)(66446008)(5660300002)(2906002)(83380400001)(186003)(122000001)(166002)(966005)(40140700001)(33656002)(498600001)(38100700002)(86362001)(6506007)(6916009)(26005)(9686003)(7696005)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 jRHAv5zAnTH9ZPC29X1KIOt9ibM9dEtpPQSwm7EevMZGORyZRHqM3c4yPmbEblmTB/X+HHUCMr9D+2xyaOSuItw/K3ZC5n9N95E3dTh+Zn+jFYpGUhaMChGuxnnTRhslQKGsuID42551pMx5bDQDxnWTpv67xKiiZfAoVpx75LH6qi//WgokAJqosJGMwvgUW3VxP3hLBttC1oib6nuu5azX1zr1JtIbeVUSpCrLWkVCnUeWLuJgMH0KbzwwyLFXfdVTCy0pBywFqpzTHF4u44MNrbHr+WgY5FzZDLcJZRZoWPw2BUgxAXvUbEZYPxNVzc+Z5GWDxWnZ0v8ChDTE8CtlG/AhuKT4+i1z2GppwY61iWs6X9vGaA/OVen9FDsF2cUbnHPNuzEU4t7BWnvADgeurl+P+dWBdQpM+/ENf5M=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 13736918-4916-4c6e-096a-08dab5e0847e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 16:55:12.6188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1164
Message-ID-Hash: IB4CSM3IV26LUJOLBDK7GA7P5S5GHCUJ
X-Message-ID-Hash: IB4CSM3IV26LUJOLBDK7GA7P5S5GHCUJ
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MPM compat number mismatch error with E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XWQ44R4PWXVXEER2A72D6CVPR4PEYGG6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6260602179221521167=="

--===============6260602179221521167==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_0056_01D8E7A7.D901D400"

------=_NextPart_000_0056_01D8E7A7.D901D400
Content-Type: multipart/related;
	boundary="----=_NextPart_001_0057_01D8E7A7.D901D400"


------=_NextPart_001_0057_01D8E7A7.D901D400
Content-Type: multipart/alternative;
	boundary="----=_NextPart_002_0058_01D8E7A7.D901D400"


------=_NextPart_002_0058_01D8E7A7.D901D400
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

My company recently purchased an E312, which I have been attempting to set
up and test. I have UHD 4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and
flashed the most recent sdimg from
https://files.ettus.com/binaries/cache/e3xx/ onto the E312, which is UHD
4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe on the E312 itself over an SSH
connection works as expected, but when I try to run uhd_usrp_probe from the
host PC, I get the following error:

jjwhite@5cd01378zc:~$ uhd_usrp_probe

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
UHD_4.3.0.0-6-g5aa6bc44

[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e3
1x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174

[INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345

[INFO] [MPM.main] Spawning RPC process...

[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!

[INFO] [MPM.PeriphManager] Device serial number: 3248EB5

[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards.
Ignoring some of them.

[INFO] [MPM.RPCServer] RPC server ready!

[INFO] [MPM.RPCServer] Spawning watchdog task...

[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2.
Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 Actual:
4.2. Please update the version of MPM on your USRP device.

 

Thinking it might be related to the FPGA image, I attempted to update it
using uhd_image_loader, which produced a similar error:

jjwhite@5cd01378zc:~$ uhd_image_loader --args type=e3xx,addr=192.168.1.174

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
UHD_4.3.0.0-6-g5aa6bc44

[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e3
1x-3248EB5,fpga=n/a,claimed=False,skip_init=1

[INFO] [MPMD] Claimed device without full initialization.

[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.

[INFO] [MPM.PeriphManager] Installing component `fpga'

[INFO] [MPM.PeriphManager] Installing component `dts'

[INFO] [MPMD IMAGE LOADER] Update component function succeeded.

[INFO] [MPM.RPCServer] Resetting peripheral manager.

[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!

[INFO] [MPM.PeriphManager] Device serial number: 3248EB5

[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards.
Ignoring some of them.

[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e3
1x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174,find_all=1

[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully
initialized!

[ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2.
Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 Actual:
4.2. Please update the version of MPM on your USRP device.

 

Is there a reason that my host PC thinks the E312 has MPM v.4.2 installed
instead of 4.3? Does the UHD 4.3 image for the E312 come with MPM 4.2? If
so, is there a way to update it? Is there some other reason for the error,
and if so, is there a way to correct it? Thank you in advance for your time
and assistance.

 

Very respectfully,

 




2640 Hibiscus Way
Beavercreek, OH 45431


 <https://www.facebook.com/RiversideResearch/>
<https://twitter.com/RiversideRsch>
<https://www.linkedin.com/company/riverside-research> 

 <http://riversideresearch.org/> riversideresearch.org

Joshua White
Precision Timing Systems Engineer
Engineering & Support Solutions Directorate 

phone: 937.986.3153
fax:      937.431.3811

 

This e-mail message, including any attachments, is for the sole use of the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any unauthorized
review, use, disclosure or distribution is prohibited. If you are not the
intended recipient, please notify the sender and destroy all copies and the
original message.

 


------=_NextPart_002_0058_01D8E7A7.D901D400
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
(filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
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
class=3DWordSection1><p class=3DMsoNormal>All,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>My company =
recently purchased an E312, which I have been attempting to set up and =
test. I have UHD 4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and =
flashed the most recent sdimg from <a =
href=3D"https://files.ettus.com/binaries/cache/e3xx/">https://files.ettus=
.com/binaries/cache/e3xx/</a> onto the E312, which is UHD =
4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe on the E312 itself over an =
SSH connection works as expected, but when I try to run uhd_usrp_probe =
from the host PC, I get the following =
error:<br><br>jjwhite@5cd01378zc:~$ uhd_usrp_probe<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [UHD] linux; GNU C++ version 11.2.0; =
Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174<o=
:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.main] Launching USRP/MPM, =
version: 4.3.0.0-g1f8fd345<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.main] Spawning RPC process...<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Skipping HW/SW =
compatibility check!<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.PeriphManager] Device serial number: 3248EB5<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Found more EEPROM paths =
than daughterboards. Ignoring some of them.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPM.RPCServer] RPC server =
ready!<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.RPCServer] =
Spawning watchdog task...<o:p></o:p></p><p class=3DMsoNormal>[ERROR] =
[MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 4.2. =
Please update the version of MPM on your USRP device.<o:p></o:p></p><p =
class=3DMsoNormal>Error: RuntimeError: MPM minor compat number mismatch. =
Expected: 4.3 Actual: 4.2. Please update the version of MPM on your USRP =
device.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thinking it might be related to the FPGA image, I =
attempted to update it using uhd_image_loader, which produced a similar =
error:<br><br>jjwhite@5cd01378zc:~$ uhd_image_loader --args =
type=3De3xx,addr=3D192.168.1.174<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [UHD] linux; GNU C++ version 11.2.0; =
Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1<o:p></o:=
p></p><p class=3DMsoNormal>[INFO] [MPMD] Claimed device without full =
initialization.<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPMD IMAGE =
LOADER] Starting update. This may take a while.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPM.PeriphManager] Installing component =
`fpga'<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.PeriphManager] =
Installing component `dts'<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPMD IMAGE LOADER] Update component function =
succeeded.<o:p></o:p></p><p class=3DMsoNormal>[INFO] [MPM.RPCServer] =
Resetting peripheral manager.<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Skipping HW/SW =
compatibility check!<o:p></o:p></p><p class=3DMsoNormal>[INFO] =
[MPM.PeriphManager] Device serial number: 3248EB5<o:p></o:p></p><p =
class=3DMsoNormal>[WARNING] [MPM.PeriphManager] Found more EEPROM paths =
than daughterboards. Ignoring some of them.<o:p></o:p></p><p =
class=3DMsoNormal>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: =
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174,f=
ind_all=3D1<o:p></o:p></p><p class=3DMsoNormal>[WARNING] =
[MPM.PeriphManager] Cannot run deinit(), device was never fully =
initialized!<o:p></o:p></p><p class=3DMsoNormal>[ERROR] [MPMD] MPM minor =
compat number mismatch. Expected: 4.3 Actual: 4.2. Please update the =
version of MPM on your USRP device.<o:p></o:p></p><p =
class=3DMsoNormal>Error: RuntimeError: MPM minor compat number mismatch. =
Expected: 4.3 Actual: 4.2. Please update the version of MPM on your USRP =
device.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Is there a reason that my host PC thinks the E312 has =
MPM v.4.2 installed instead of 4.3? Does the UHD 4.3 image for the E312 =
come with MPM 4.2? If so, is there a way to update it? Is there some =
other reason for the error, and if so, is there a way to correct it? =
Thank you in advance for your time and assistance.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Very =
respectfully,<o:p></o:p></p><p =
class=3DMsoNormal><b><o:p>&nbsp;</o:p></b></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
style=3D'margin-left:-4.5pt;border-collapse:collapse'><tr =
style=3D'height:4.0pt'><td width=3D182 valign=3Dtop =
style=3D'width:136.4pt;border:none;border-right:solid #971B11 =
1.5pt;padding:0in 10.1pt 0in 0in;height:4.0pt'><p class=3DMsoNormal =
align=3Dright =
style=3D'margin-bottom:4.0pt;text-align:right;line-height:105%'><span =
style=3D'font-size:12.0pt;line-height:105%;font-family:"Times New =
Roman",serif'><img border=3D0 width=3D144 height=3D35 =
style=3D'width:1.5in;height:.3645in' id=3D"Picture_x0020_33" =
src=3D"cid:image001.png@01D8E7A7.D8F502C0" =
alt=3D"Logo&#10;&#10;Description automatically =
generated"><o:p></o:p></span></p><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;line-height:105%'><span =
style=3D'font-size:8.0pt;line-height:105%;font-family:"Verdana",sans-seri=
f;color:#404040'>2640 Hibiscus Way<br>Beavercreek, OH =
45431<o:p></o:p></span></p><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;line-height:105%'><span =
style=3D'font-size:4.0pt;line-height:105%;font-family:"Verdana",sans-seri=
f;color:#444444'><br></span><a =
href=3D"https://www.facebook.com/RiversideResearch/" =
target=3D"_blank"><span =
style=3D'font-size:12.0pt;line-height:105%;font-family:"Times New =
Roman",serif;color:#337AB7;text-decoration:none'><img border=3D0 =
width=3D19 height=3D19 style=3D'width:.1979in;height:.1979in' =
id=3D"Picture_x0020_32" src=3D"cid:image002.png@01D8E7A7.D8F502C0" =
alt=3D"facebook icon"></span></a><a =
href=3D"https://twitter.com/RiversideRsch"><span =
style=3D'color:#0563C1;text-decoration:none'><img border=3D0 width=3D19 =
height=3D19 style=3D'width:.1979in;height:.1979in' =
id=3D"Picture_x0020_3" =
src=3D"cid:image003.png@01D8E7A7.D8F502C0"></span></a><a =
href=3D"https://www.linkedin.com/company/riverside-research" =
target=3D"_blank"><span =
style=3D'font-size:12.0pt;line-height:105%;font-family:"Times New =
Roman",serif;color:#337AB7;text-decoration:none'><img border=3D0 =
width=3D19 height=3D19 style=3D'width:.1979in;height:.1979in' =
id=3D"Picture_x0020_30" src=3D"cid:image004.png@01D8E7A7.D8F502C0" =
alt=3D"linkedin icon"></span></a><span =
style=3D'font-size:7.0pt;line-height:105%;font-family:"Verdana",sans-seri=
f;color:#444444'><o:p></o:p></span></p><p class=3DMsoNormal =
align=3Dright style=3D'margin-bottom:12.0pt;text-align:right'><a =
href=3D"http://riversideresearch.org/" target=3D"_blank"><b><span =
style=3D'font-size:7.0pt;font-family:"Verdana",sans-serif;color:#404040'>=
riversideresearch.org</span></b></a><span =
style=3D'font-size:5.0pt'><o:p></o:p></span></p></td><td width=3D372 =
valign=3Dtop style=3D'width:279.0pt;padding:0in 10.1pt 0in =
5.4pt;height:4.0pt'><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:7.0pt;margin-right:0in;margin-bottom:12.0pt;m=
argin-left:3.75pt;line-height:105%'><b><span =
style=3D'font-size:14.0pt;line-height:105%;font-family:"Verdana",sans-ser=
if;color:#262626'>Joshua White<br></span></b><span =
style=3D'font-size:9.0pt;line-height:105%;font-family:"Verdana",sans-seri=
f;color:#262626'>Precision Timing Systems Engineer<br>Engineering &amp; =
Support Solutions Directorate <o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-left:3.75pt'><b><span =
style=3D'font-size:8.0pt;font-family:"Verdana",sans-serif;color:#262626'>=
phone:</span></b><span =
style=3D'font-size:8.0pt;font-family:"Verdana",sans-serif;color:#262626'>=
 937.986.3153<br><b>fax:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
937.431.3811</span><o:p></o:p></p></td></tr></table><p =
class=3DMsoNormal><i><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:black;backg=
round:white'><o:p>&nbsp;</o:p></span></i></p><p =
class=3DMsoNormal><i><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:black;backg=
round:white'>This e-mail message, including any attachments, is for the =
sole use of the intended recipient(s) and may contain proprietary, =
confidential or privileged information or otherwise be protected by law. =
Any unauthorized review, use, disclosure or distribution is prohibited. =
If you are not the intended recipient, please notify the sender and =
destroy all copies and the original message.</span></i><i><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif'><o:p></o:p></spa=
n></i></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_002_0058_01D8E7A7.D901D400--

------=_NextPart_001_0057_01D8E7A7.D901D400
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D8E7A7.D8F502C0>

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

------=_NextPart_001_0057_01D8E7A7.D901D400
Content-Type: image/png;
	name="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <image002.png@01D8E7A7.D8F502C0>

iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0
NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
Ok9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoxQjgwMkU1QjBBNTJFNTExOTZDMDk1QTY0NTNC
NzdCOSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowQTY3NjU1QjQxNTMxMUU3QjIwNEUyOURG
OUM2QjA4NyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowQTY3NjU1QTQxNTMxMUU3QjIwNEUy
OURGOUM2QjA4NyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dz
KSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkM5MDA2QjQx
MUE5ODExRTdBMTAyREU5OTEwQkQwMkUxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkM5MDA2
QjQyMUE5ODExRTdBMTAyREU5OTEwQkQwMkUxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpS
REY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+1axiUAAAAYJJREFUeNqslM8rRFEU
x+e9yK8Z3o6tMs1Q7MTCbhZKysK/QCMLm1lIEpGSlS0bkq2lrFhIJFmNlFK2fqyE2Iznc17v6s6b
M9J4pz7v3Pfuvd977rvnXMf3/URcVicPx3EqOo4yvc24HKShBR7hLHdbvNaEJCgneFhiiKRw8zAD
Tcq8IswievirGEKduAPo/sOu1hCcU8UQauPbBWQik0qwA7K9IRi3+iTCdSPmWh3LipBYgQkT+E04
jfStEkTavASRHWf7PNpPUK+I9cAn3IGr9G+xWN6ObKSK0Au8QxJe4UMZM1aWGliXJsSKnvXusaVJ
iSQyrp3vstibEUsqYo0MWsJvSBumYLDKybaKmNnmgzKgARYlIugI28PKuK8woX/+2ck/qkiqomSL
XcFNjWK7phGIoSzVXqhBSEpruyzPrHJaCJPXNkkJRzmkZxggkHutAiTCFVw+zC1jKUXoEvqNkBqZ
dXPI6U3DKGTD20Mq5Bz2YD/8NZW3RlzmJmK0bwEGAAm+ic0hbR0lAAAAAElFTkSuQmCC

------=_NextPart_001_0057_01D8E7A7.D901D400
Content-Type: image/png;
	name="image003.png"
Content-Transfer-Encoding: base64
Content-ID: <image003.png@01D8E7A7.D8F502C0>

iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHoSURBVDhPY6AL2K+ur7BXXSdpj7pu9R41nfK9
6rqhO7S0hKDSxIF9GrrGe9V09wE1/0fHQEN/71XTmb9L3VAKqhw3ALtETecXNoNQsJrui/0auhZQ
bZhgn5quP9BL/7BqxoKBlr7br6WlAtWOAEBBHqCrXmLTBMPnk9P/X0zP+b9PSx/E/wER19kNNQIB
gC7Kh2nap234/+nK1WAaJvZg5pz/MPDjxcv/12vq4XKgMIYaAwHIAQ6y+eebN/+/3Ln7/3p1/f+j
Dm7/P9+4CTXq//+/P378P2LvAjcM6JAmqDEQAHTuE7hhQBe9P3UGqhUTfL17D24QFK+AGgMBQJe9
RVbwaP4iqFZMAAoCZLVAl22BGgMBQMFryAqOOXsAvfoWqh0B/v35+/+kXzCaYTqzoMZAADCaZyIr
AOGz0fH/f7x8BTUGAm539qKoAWNVvTioMRCwT03bGiZ5QN/0/4365v/fnz6FGvH//+dr1/9fzMjB
NEhd58NuJWN+qDEIAHTdGmSFh60d/5/0D/l/xNYJSTMq3qOmWwDVjgpANgANvIxNE1asprvkPwMD
I1Q7Jtgvry8AVLgeQyMK1vkDzOytqxhCmaHa8IM96tqOwChfBIypxxDNuj+BBtwE4gm7NfTUoMqG
DGBgAACFOPVVKARsCwAAAABJRU5ErkJggg==

------=_NextPart_001_0057_01D8E7A7.D901D400
Content-Type: image/png;
	name="image004.png"
Content-Transfer-Encoding: base64
Content-ID: <image004.png@01D8E7A7.D8F502C0>

iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2
MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
Ok9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoxQjgwMkU1QjBBNTJFNTExOTZDMDk1QTY0NTNC
NzdCOSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpCM0I0MjRDRjE1MEUxMUVBODI5QkRDMTNB
MUNERTY5RCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpCM0I0MjRDRTE1MEUxMUVBODI5QkRD
MTNBMUNERTY5RCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dz
KSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkZFNzdGRjBD
NDE1MjExRTc5RUIyQjM3QTBDNDc3RjRDIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkZFNzdG
RjBENDE1MjExRTc5RUIyQjM3QTBDNDc3RjRDIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpS
REY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Fjj5CQAAAdtJREFUeNqslE8og3EY
x5+95m1tGUtbGMm/SEiWEoVGuEmKorlIycFFlKuLi4SUm7Bc1w5uKHZwcfMvkouY/6ZtNn828/3N
+67XjBftqU/P79/7fZ/n+f1RhEIhipcpYg2uF5ZycJXABAzgHhyAzYaj3dfo9WJAihhCPXBjIDvG
f1xgHExD9OVbMYjwcPOg+xcZOUAbBO+lYpxkwSwTUiiVZGhpIqVW+5NYLbAhgETpICdE1QDXx9qG
5kYqmZqg3MEBuejqQP+XDYDYGhwTpASNhowd7XSzuk7+s3M5QSfIMh/uvLGOEkLJ8PXirCYvh5JN
FfR8dU0qo5EyLV10t+EgXXUV8TodnS5aw33BMoQd3xbTzGMBibO8Xk/6RjOpc3NIlZ4WbuePDFEo
GCRteRmVzkxG17NAWjO1XC6nC0t0MDxKFzY7cTxPScVF0mmtVOxSTizo9Yb9q+uBxLpG1S0idgIu
/nmDWOG3ImI4eOzEWSOz/id6OndSwO2mgM/30fY+hufYGOuzNYKt4Pvb6KORAnck3MPf2jPbSYjt
f7oBGGDFaAP+P6TXy4S+3ABBkOVeA45lhFharVi/LPsECRfeAjpBBUgFHrAH7GAOQp6YT1A8H0eO
4mjvAgwAMDClfemlyRgAAAAASUVORK5CYII=

------=_NextPart_001_0057_01D8E7A7.D901D400--

------=_NextPart_000_0056_01D8E7A7.D901D400
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIxMDI0MTY1NTA5WjAjBgkqhkiG9w0BCQQxFgQUfW35cWVPBE0wtxjedFztEWwSrp4wZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgAS3B63YI8adFjF2qUk2+XhRCte/506J
lVslEiRsWlC6W5b8JgZEdR+3S9Y6jt6UAowoA9BR1dUi1S8yMDHvbnbXQvAnQI92CZIpKaKgthwK
olkydP4PRRCndVXsTwo3jVGnZxTBKv/BZPCdO1YafrZgbNKzBX2hS0x/L4NMWNX6AAAAAAAA

------=_NextPart_000_0056_01D8E7A7.D901D400--

--===============6260602179221521167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6260602179221521167==--
