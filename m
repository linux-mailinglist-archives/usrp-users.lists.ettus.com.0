Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F696A3A10
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 05:15:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B99138406D
	for <lists+usrp-users@lfdr.de>; Sun, 26 Feb 2023 23:15:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677471342; bh=EplGgqzinte2rtULkSyaSNhnbU66iOf7gVWy8lcf8ho=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AOAurzCXm4i16SA/snH/pTWsZYz9Lyqcamtyx7W/7yL49eMCusxCZ2AXJgoHAdamt
	 GNn/5cKMOZ50zfPigYozIrqfm6qI7BFZWTkLKR8eeREGfk2ZrhCjYAs2vLXn255oTF
	 fuoANwHFz158RzPdhcrERX2Nra3PvjB+r+rJXt36x0AQn5roe4SdilHHjy8RcBHJ3c
	 u1xSNnvBKvr0t+21LzGfjQaqtEIqbhP2q3y3PdzaXSMzIhG1PwRx7iYI1qHJO/TyOU
	 /VLzvTkuT+C/g6PZvh9ad8jaFavymV1SMTbG3O0b/OakH5xQk1DmvkZNoeA64qUve6
	 qVteY7cd7gldA==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2139.outbound.protection.outlook.com [40.107.100.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 0440A383D94
	for <usrp-users@lists.ettus.com>; Sun, 26 Feb 2023 23:14:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=paladinsys.onmicrosoft.com header.i=@paladinsys.onmicrosoft.com header.b="vHSFzv16";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDacc3u6ZVk/R+5takmtqCbuNh684KZ1FTeR4lvOvDoSgKuR7YlJPxt4AU7NkBOsE/uOnFMCFuPWInvppkPk7R9DsuIOB0mo74dVX2u73STRsOLy4B5hfPZ8DQvz/FAcH4xA2Coi8Hhu+io6+ccPZblG82t1sXEdOi5EjKzBWcg3i5eJZ4m3m2GNnBKID///zccAysrCxQvIWZgrYAsFFiUa2xRVeJ+jdJXOwABsC1gu4XGYvLBMND1vqt2dRZ1dPs60GP/61JNBIrIpRH7I5LgQlPV3CD4IZyaDIafsMRLtIQ3SFJIr2FkY9C6POf4sEKrMium1w0+70l/E7PQGZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N0nUjFPb62yuJFUwSEWNvsXKbxJvlE4QlggtaBxEDDo=;
 b=gcE7SgzH3lIpodBCGVV81cYkE9kKvFa41WlAzIujZgSlM+C5YuNXvukj0uCSy7koVlTx0+SIfQNkz51OTch/oT9s6G5YlrawDvx8iP5TMn03UZGt67WYk6zTj9ZWIASVAJSSSo/BEPQ2WZnjIEWad23t5otIEKbo3Ud5edtCEQOoftjCgtCCTPNQpV3ugSgyR2YI5Jh2MqUcJU9r3OZRQzRypemaNwfHTPVgO1WCalxrOQYx/J/nLidUQJT3i7EG6/kNrxtpy/tauZlsqonmEJjUfRl+3DAYMDUw4mgnrWE5VDNkpHc4mEKC+2mGkTiBCqto2M9fXDYtjiPMCKypUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=paladin-sys.com; dmarc=pass action=none
 header.from=paladin-sys.com; dkim=pass header.d=paladin-sys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paladinsys.onmicrosoft.com; s=selector2-paladinsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N0nUjFPb62yuJFUwSEWNvsXKbxJvlE4QlggtaBxEDDo=;
 b=vHSFzv16pYAV1MFtQx/ckOfIIQZ0t8b76tyUdtnmEyiZyFD92ePjNj1IWt3/0fbHxVsDL5BFqiOCMJ6Im5ohzKQ5As05SFuKquMCZdRI+l24u9q+IrfOjVfMVAxPOYjC9fUmWGOMIeGSECxdgcoHzkXd78J4SqU103r7Fas90Qw=
Received: from BL3PR12MB6402.namprd12.prod.outlook.com (2603:10b6:208:3b2::17)
 by SJ0PR12MB5455.namprd12.prod.outlook.com (2603:10b6:a03:3ba::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 04:14:50 +0000
Received: from BL3PR12MB6402.namprd12.prod.outlook.com
 ([fe80::cffe:cdbb:9263:2e9e]) by BL3PR12MB6402.namprd12.prod.outlook.com
 ([fe80::cffe:cdbb:9263:2e9e%3]) with mapi id 15.20.6134.025; Mon, 27 Feb 2023
 04:14:50 +0000
From: Milo H Fields III <mfields@paladin-sys.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD unit tests
Thread-Index: AdlKYGVdkCk8EO6cQuajMiXyRM2XBA==
Date: Mon, 27 Feb 2023 04:14:50 +0000
Message-ID: 
 <BL3PR12MB6402BECFFDE50B6DE95C56C3E2AF9@BL3PR12MB6402.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=paladin-sys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6402:EE_|SJ0PR12MB5455:EE_
x-ms-office365-filtering-correlation-id: ce066e90-20ab-41f2-9b10-08db18792b5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 79Shi5ppNHc56jZdMj2uUhuaNudDjN04gCs+MALivenBO5XpZKRJXUefM1dCLrJ+jA780ex0pjYEmzxYkSxNKHrxAfZR3oqbfgvqmoSi/PI4Ea3N2YdJmWKq6rJkI9c9gxU9GcKbfpYYw740ppOQDsjFAwNMZJ7LmKaNle4seC+/MS21iUiKiVQTn0uIZcIIf5m6I9PweVuf6/duq00rwoEx46RZkPrCJidTOV7fLptcxvoWospzIb0djPH0hNH3IVoL2N0qMPejmcCivel9s1XCkqqWwWYPxA8J/iAEyRwxX3FALlvC4haJtZxmXBGpRjyIB4ncWTOklOGqDyx0BopxI+jcg0EGfATf22cxo3+cz7msD9k+yPAN5ia9dvgmV4grIJ0EtYmyHFGRxY1rcwA2o0Yp+BcYhOAFU5EYg6U/F/qFJIAzR8xc4nel9gkk1JQP63nZtoxw49FuwBdXoTcF76jbWr1jjc8UUdWzBubsR0FObJ+uPwXnUq5QH5lNJjewt2LGgX9T4bxOMZLpC9y++QAb6Y+EXKLowSUaku57se2ithQM4G32ZZ7a8lvj2JNFf1sSA678hp1+S4g6cXBzVCRdy4o9/dVArO+pij1piNX00Opv/0nsHLJCCTsa4VATU3DDE362yPu/VCq/+e+i2hJZQUu8HHzjlgJKlKwPiayXkZi0LNcsX97FQRqPVu3nf6yJ/9IZiRLfWLTB+g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6402.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39830400003)(136003)(376002)(396003)(346002)(451199018)(7116003)(8936002)(2906002)(5660300002)(71200400001)(52536014)(4744005)(41300700001)(66476007)(66556008)(66946007)(76116006)(66446008)(64756008)(6916009)(8676002)(316002)(478600001)(7696005)(3480700007)(26005)(9686003)(186003)(6506007)(122000001)(86362001)(33656002)(99936003)(38070700005)(55016003)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/Xqi5wtLHvBSfFD1qIF2wJemq8Gdh2hAe5vlin7/Fdjhsmuj4rUdBEVElxb0?=
 =?us-ascii?Q?whFW5yVAUABprFkbIiXtSwHQQhsJPsq0Ru+PNygSa4RncEEAELmdUmmw41jC?=
 =?us-ascii?Q?z/Wor2na4e5gCJiC8DWmE2bsy1+Je2n4IpL/dtxpdPv7ITupzyOTnBtGfRTo?=
 =?us-ascii?Q?dZXR5fjT1CMlpBMCsNfeKyBnc4T7siRVj/FcfnWhxCZaIJmxqTcBTk9EV/eL?=
 =?us-ascii?Q?oUhr1rBmVl5QlNuy19l5e7cxckmJsnsoMaNK2hgQhr1T38ydX5drOEdAzR1G?=
 =?us-ascii?Q?Ov6kU8CrfvH38Ksp8FmPQ7g/Fysst08bXdP9qie746NA8RaAJ68NE0Y+wrRD?=
 =?us-ascii?Q?MkZA5tC0Ua2ZnUBRwaYzePpkV6OOLHZZQzjKKiREnpI5yVtUhgfkmG0Dv8oK?=
 =?us-ascii?Q?MTQk2HFmz9DVc59kSWv6QQntia0L0ronVGthtkvcYnEiPNgT9wg/eI9rGaes?=
 =?us-ascii?Q?ju84tNLiR0bWkDlOHDs9icW1s7NY57UUocGNcrx6kHMXzlCsZFEL8V1OOPqi?=
 =?us-ascii?Q?smFYFaocBYkRalToVkSpPjSa3KQp4T+3mGeOHpxqc1crmVC2lXSaxWcI5UaA?=
 =?us-ascii?Q?dRRRW/mKm0FI+h9ibwTnyB6PEqWwd/hHEto7T4z4nhrQnCCNWILNlz2W9q5l?=
 =?us-ascii?Q?Ww7mTYvVw5a+0jbZRAcna1iRH5J6cYtjm1GJCoWoWE5+x9aEq1qav4jp73H4?=
 =?us-ascii?Q?HavJV0jlRqCEQdPjlkNGVSqCTbaPo7jO3QWtIfceT5ZzI+KZQFOitFm9hbgw?=
 =?us-ascii?Q?+XOHEjhaiKpz+Wdae98wHtH/2rXXGVbMaYDK2igAURjXPrUOWbwv6uhByRNQ?=
 =?us-ascii?Q?RgA57Y143jxmfAyJQhAi+5taUfK8RqxMdotfCQKiFUeLO8sxGyBVjJ5T1vSs?=
 =?us-ascii?Q?sTxQZxD1fdOqOFBsVQ9x/vHY6RMsfoEEtvWvxCeaJQWhJkQ2FtqyZHdGH9Xf?=
 =?us-ascii?Q?K+OFznm4+lmj/fWlXKZZJCnooOjHtiqg0/37AhmVR5fiuuZa5tBwwCbI9rko?=
 =?us-ascii?Q?ST5K2hjbqHqrPqeXdraez8LyEt1nmTw+19p02BgbxJRLmZEtrTWsWLROT/oR?=
 =?us-ascii?Q?Sa62GV2Fxg5rn6KXVkBo1Tn4yam8W53Bo+Oh6IDyzAYTpatCoyIqz/WEgdOC?=
 =?us-ascii?Q?zpelyc2/JlHHU5MhH99jjIecYqcDnS+qzLEoEPZlgaNsE49Ql+DQIFEdyl3f?=
 =?us-ascii?Q?SHYEYAc2YdAVPkwtIjxX3vOGxt7K5rbyTUU1C+bHQ1NvbXxHVSFtGVtqqwoS?=
 =?us-ascii?Q?kBXRsAuJc8tugi/AAPN40ZJj9c8bXH7r617WsDlT3Wc4fwAyzoYX0diyH8Rw?=
 =?us-ascii?Q?lz3dHqISMd//6Vu1pjvWQHPtVkoTCnygFB1PCGlsW2qx87I+PoMZ0kTDrppq?=
 =?us-ascii?Q?mOr1+xAQ2FJwzAP/9/PkCkKgXlecUHK1r0lY0tw6X39brUqw4D1ICp+hhz2T?=
 =?us-ascii?Q?GmU7ZRXfWB1K1aO3wCQ87gn3bkuSdvyG+9z9glc+xGDzsjYEVnGziKfKe9gw?=
 =?us-ascii?Q?jO7CIhndZe2TiAvWbrCNOxpXdhv52ovkTrgaLZzYsrerxIuIO+YIvjVaVKe8?=
 =?us-ascii?Q?7YY966BA7FEgxrwNVLnGI+yxJ27ff5RKYxMCQSjZ?=
MIME-Version: 1.0
X-OriginatorOrg: paladin-sys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6402.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce066e90-20ab-41f2-9b10-08db18792b5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2023 04:14:50.0630
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dca57ab3-fd50-4fd1-a77a-df89575aa606
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zbRPd/H2yIoc72d1irABw/yNS8pq6gSZKkJ+wjH5UDcaxYPXejzkB1YZMyIoLFwLL1Mq/ZyjJj3eW3SuBn0sAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5455
Message-ID-Hash: E3D4GLLZLQ4E6KARUSI5LVWN7L27QJ44
X-Message-ID-Hash: E3D4GLLZLQ4E6KARUSI5LVWN7L27QJ44
X-MailFrom: mfields@paladin-sys.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD unit tests
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YQOAKKNAOLUZJKQB43PJSQP6VGICBF2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5244127894722888692=="

--===============5244127894722888692==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_0000_01D94A38.0FB0CF90"

------=_NextPart_000_0000_01D94A38.0FB0CF90
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0001_01D94A38.0FB0CF90"


------=_NextPart_001_0001_01D94A38.0FB0CF90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Greetings,

I'm trying to build the UHD on Windows with Visual Studio 2022 and find that
the build complains about not being able to open
boost_unit_test_framework-vc143-mt-gd-x64-1_80.lib.

The library is present along with the other boost libraries which the build
locates without issue. Has anyone had similar results. I find that if I
disable tests (ENABLE_TEST= unchecked) and regenerate the visual projects I am
able to BUILD_ALL without any issue.  Can the test fixtures be run on Windows?
I don't recall having similar issues on Ubuntu.

 

 

 


------=_NextPart_001_0001_01D94A38.0FB0CF90
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
class=3DWordSection1><p class=3DMsoNormal>Greetings,<o:p></o:p></p><p =
class=3DMsoNormal>I&#8217;m trying to build the UHD on Windows with =
Visual Studio 2022 and find that the build complains about not being =
able to open =
boost_unit_test_framework-vc143-mt-gd-x64-1_80.lib.<o:p></o:p></p><p =
class=3DMsoNormal>The library is present along with the other boost =
libraries which the build locates without issue. Has anyone had similar =
results. I find that if I disable tests (ENABLE_TEST=3D unchecked) and =
regenerate the visual projects I am able to BUILD_ALL without any =
issue.&nbsp; Can the test fixtures be run on Windows? I don&#8217;t =
recall having similar issues on Ubuntu.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0001_01D94A38.0FB0CF90--

------=_NextPart_000_0000_01D94A38.0FB0CF90
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISVzCCA1cw
ggI/oAMCAQICAQEwDQYJKoZIhvcNAQELBQAwTTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4g
R292ZXJubWVudDEMMAoGA1UECxMDRUNBMRYwFAYDVQQDEw1FQ0EgUm9vdCBDQSA0MB4XDTEyMDMy
MDE2MTMwNFoXDTI5MTIzMDE2MTMwNFowTTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4gR292
ZXJubWVudDEMMAoGA1UECxMDRUNBMRYwFAYDVQQDEw1FQ0EgUm9vdCBDQSA0MIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuHBpV72AWkHAGeaV59SCE9wsOEuKgsociF2OfjwMb2Xh2rgc
cRi23hQIedvGipnt+iHdYhgALfAUzFpOd57y6HcUAxTGqf2yEqBn/x83etBwj5bXcCQOLZ1FXjwA
E+6gOjEakCBXZeQwF8bJBHndHv+gyO9frAAlOgG/lpwElY6tUrORcPT07DPhDwgXgriGCj850dyQ
Occ+uTMpg9kK6BPgXj0NJYDEbM8sLoAq0C1ASRvEnLbzNikm7DEAcxrNd5Wt5SxL8RQpNugxXN71
XI92W6sB1s/nzSer9LRzUEI0JYdXWh5UmTubAerF3ZWjsHK27HChKqqF+vGpOJQVBwIDAQABo0Iw
QDAdBgNVHQ4EFgQUM1ulb3pVYCuBSyYUzHm/SrqLMr0wDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB
/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBALYfYXiGvrV6cReK8ddFAhX3uiDF5ZNpJV4VcTlO
wdHY6HtDu40Z0cAg3+dNq4pdf4AgjY3vAmiK1QCcIbcFrOe3j7GUUz25bvj36IJV0SgkZYDlFsew
RAvThFJDI8ja+172AYbZN7/9brhQyA3mPHT6C26P8ozD31C3nyj4rlAcmsy+dm5K2vS1KDWhHXKR
dhog7zrIRJDAHQZ7sM24weayW09IFVojo2rJBlp8jIhEcYma52rePQmv0cu8lacIV45RoTER03Hw
g+9Qx+55bDsjY/iaZm4OKSAbrSXNubi/G9JzQADDTayJZPFzoIOJDhp0mKiUPLZ07JROAhXrMW4w
ggTMMIIDtKADAgECAgICNDANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQGEwJVUzEYMBYGA1UEChMP
VS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNFQ0ExFjAUBgNVBAMTDUVDQSBSb290IENBIDQwHhcN
MTgwNjA1MTM0OTI4WhcNMjQwNjA1MTM0OTI4WjB3MQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5T
LiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNFQ0ExIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9y
aXRpZXMxHDAaBgNVBAMTE1dpZGVQb2ludCBPUkMgRUNBIDcwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQC+24Vpd3f7yzNWZqYmnOx7uonmrzkn/maFGG0CHkLzT3f3B+KZpp93BBLVS3cw
EbfJbX5ww+98C0SiPLD4AySDVztJ2a4WFNYWBCEAGaSdc6PxWFZ+Sn/Tacy7xdODHqqJkCXggvXi
HHytPfRqq2q7M8F5mf6pXOJgCwOWOIxFpg5dXFUsR4aC/bNwgz3PgQlG4K18MEEHsEJkTLG8zPMD
IlZ/IZKz0mPR95G+g5dB74nD3jlNF9ME8NOFAczbpdA83XwaZmPJmDYMVhxQSx4ltoRSUsx5aUUw
yHbEwXTjbez9kCGN89Kf/kXJLZ6yVS9m2Ez03OSZpcColt1I7RA1AgMBAAGjggGKMIIBhjAfBgNV
HSMEGDAWgBQzW6VvelVgK4FLJhTMeb9KuosyvTAdBgNVHQ4EFgQUYjxQNHk54Crs40Mo+UWkY3pg
qOMwDgYDVR0PAQH/BAQDAgGGMGsGA1UdIARkMGIwDAYKYIZIAWUDAgEMBDAMBgpghkgBZQMCAQwF
MAwGCmCGSAFlAwIBDAYwDAYKYIZIAWUDAgEMBzAMBgpghkgBZQMCAQwIMAwGCmCGSAFlAwIBDAkw
DAYKYIZIAWUDAgEMCjASBgNVHRMBAf8ECDAGAQH/AgEAMAwGA1UdJAQFMAOAAQAwNwYDVR0fBDAw
LjAsoCqgKIYmaHR0cDovL2NybC5kaXNhLm1pbC9jcmwvRUNBUk9PVENBNC5jcmwwbAYIKwYBBQUH
AQEEYDBeMDoGCCsGAQUFBzAChi5odHRwOi8vY3JsLmRpc2EubWlsL2lzc3VlZHRvL0VDQVJPT1RD
QTRfSVQucDdjMCAGCCsGAQUFBzABhhRodHRwOi8vb2NzcC5kaXNhLm1pbDANBgkqhkiG9w0BAQsF
AAOCAQEAAWARJGVpFau5mRxoA2ARXwEk8GfSqRe0O4xyJSyDuc0VuuSvZvjKpb3Dcnxbf4VeCLPV
DTPK2qXig2y+vVYiDJeQiKQnshnFVU49EcTs0KduIeGWf79SIleAMihT84kRHBd8SZjy86nevxkD
0H70bgY/staQu5UdqG4FEBH1uMk8rXLzMXR29naO3tZm4gdkVUY3xONOmaUA0ca15GFsbm4UYSoE
iU0cvxKRImBPs3hgpKwvAzYZmdUGWrB+KVYEbM6Cbog0FFztHn3XZy1YHFAbXVC1XnTHGD462JPB
lsb9mOTYPTGURChE37yuMVH5OBhopNreMR/iBQMzTUUMazCCBPcwggPfoAMCAQICEQCjuKFxjWbt
DIV/TYyN6MfdMA0GCSqGSIb3DQEBCwUAMHcxCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdv
dmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGll
czEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNzAeFw0yMDA5MDYxMjAwMDBaFw0yMzA5MDYx
MjAwMDBaMIGUMQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQL
EwNFQ0ExDDAKBgNVBAsTA09SQzEdMBsGA1UECxMUUGFsYWRpbiBTeXN0ZW1zIEluYy4xMDAuBgNV
BAMTJ0ZpZWxkcyBJSUkuTWlsby5ILk9SQzMwMTEwMjUwNDkuRW5jcnlwdDCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAIaAWT3hdmbmAgfqCm8JxBAVY7mHFSYRuhZBnV9Mdy+Sz7nIUqrC
ky65njVDCW4id+6mGbODKQTafY72GhaUWVAi2gfDENnaseEvhfP1Pyn+gPzVJGULRAOumvxpAVRE
FhjZEuWBoLjiJeKjGqJO18MRmut0W8AO12qVXOOKwbkVeLogPwrilULSzvsccMvMp/020YgffP6m
9ukIoNwe8L14w/9aMbRlfHUVMMoizc/wHcA9sw/AAcq6JXzXtLfWMLqQtaOYPCfI+/KXGsJwPnts
i1MQFauhnM7TbwWg5oSiedG3kzl2/avPrMijeldlRPaE4vunMhoiw5j6qVWSGTUCAwEAAaOCAV4w
ggFaMBMGA1UdJQQMMAoGCCsGAQUFBwMEMCIGA1UdEQQbMBmBF21maWVsZHNAcGFsYWRpbi1zeXMu
Y29tMBsGA1UdCQQUMBIwEAYIKwYBBQUHCQQxBBMCVVMwYwYIKwYBBQUHAQEEVzBVMB8GCCsGAQUF
BzABhhNodHRwOi8vZXZhLm9yYy5jb20vMDIGCCsGAQUFBzAChiZodHRwOi8vZWNhLm9yYy5jb20v
Y2FDZXJ0cy9PUkNFQ0E3LnA3YzAfBgNVHSMEGDAWgBRiPFA0eTngKuzjQyj5RaRjemCo4zAXBgNV
HSAEEDAOMAwGCmCGSAFlAwIBDAUwNAYDVR0fBC0wKzApoCegJYYjaHR0cDovL2VjYS5vcmMuY29t
L0NSTHMvT1JDRUNBNy5jcmwwDgYDVR0PAQH/BAQDAgUgMB0GA1UdDgQWBBQAGtvPRRgfrpgirSQV
7xrUmvzSOTANBgkqhkiG9w0BAQsFAAOCAQEAL9mFKQGBelrbRS/PDQYtXoaE308V36yquRQJB9t0
wQC6mlZSkTtOna72N25T5yqQmUe4V58zKZgxjk3K+nhs/n5GQDAzDQfmCcytJrNtZPn0BtYWkhtP
QF1m1kvTJ47AKVlGYbUG3T42To2YP8BmoMEGx9GzmvKbOfVP5bgfaYpa9IcTEgWL4BAc73Xb3YC3
PVHo0FAb93JB9QjmETCJ2T+uB151oJMTnjZWyp7Ty0gjL4AWQMhlo09fo2wV/oRz9xfLACBh6Lon
A3wdDhlX+m5VpurZhTDjj4JcA4QKOjuonxzQuu3TIPx+uCJpxbuj5dPbbGIxvdWsz123U59P7TCC
BS0wggQVoAMCAQICEGlMqaD21uVv3mxr7dpcGTcwDQYJKoZIhvcNAQELBQAwdzELMAkGA1UEBhMC
VVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDEMMAoGA1UECxMDRUNBMSIwIAYDVQQLExlDZXJ0
aWZpY2F0aW9uIEF1dGhvcml0aWVzMRwwGgYDVQQDExNXaWRlUG9pbnQgT1JDIEVDQSA3MB4XDTIw
MDkwNjEyMDAwMFoXDTIzMDkwNjEyMDAwMFowgY8xCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMu
IEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEMMAoGA1UECxMDT1JDMR0wGwYDVQQLExRQYWxhZGlu
IFN5c3RlbXMgSW5jLjErMCkGA1UEAxMiRmllbGRzIElJSS5NaWxvLkguT1JDMzAxMTAyNTA0OS5J
RDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKqi5zys/DtinIKjxJlm/qmOAwtHib9L
PuuBFQbi1DrMAOYX4PS7HVPpv1ZGnv5KgUAfqKiXKBozKnXT9OfHnbnXZDjCfc02WHb8OgXCUDnK
0cAbhq9NFsKVJQ8SWkLA6NeiCbFXvWiYXzsRgUlzG0ePehNo+czETjbm+f/NGts2H0ktr5CibXa8
vTJH/x826pXw7zvQZDuKBLD3/CWoo3Ax3MKBvHyknf64tX5wMRYUNVdDuWYY74v6dURuGoHeyU6S
PsJSGI5E1q9d1mIzC6gTRxS7duP86x2lCjRvxa9F6Cwseh7Ki/1/76UhYUOfKrwx9c0JTAUigVAp
FbFx+mECAwEAAaOCAZowggGWMEgGA1UdEQRBMD+BF21maWVsZHNAcGFsYWRpbi1zeXMuY29toCQG
CisGAQQBgjcUAgOgFgwUT1JDMzAxMTAyNTA0OUBET0RFQ0EwGwYDVR0JBBQwEjAQBggrBgEFBQcJ
BDEEEwJVUzBjBggrBgEFBQcBAQRXMFUwHwYIKwYBBQUHMAGGE2h0dHA6Ly9ldmEub3JjLmNvbS8w
MgYIKwYBBQUHMAKGJmh0dHA6Ly9lY2Eub3JjLmNvbS9jYUNlcnRzL09SQ0VDQTcucDdjMB8GA1Ud
IwQYMBaAFGI8UDR5OeAq7ONDKPlFpGN6YKjjMBcGA1UdIAQQMA4wDAYKYIZIAWUDAgEMBTA0BgNV
HR8ELTArMCmgJ6AlhiNodHRwOi8vZWNhLm9yYy5jb20vQ1JMcy9PUkNFQ0E3LmNybDApBgNVHSUE
IjAgBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcUAgIwDgYDVR0PAQH/BAQDAgbAMB0GA1Ud
DgQWBBRt1kX4XYeQ+rBhMkhF/sB9TxjPDzANBgkqhkiG9w0BAQsFAAOCAQEAAE12lwr8GywKRHZ0
g2GWRY3yaka5et4PMw08+zltszEVommC8pBUliBREngulCGW0KuZogNWH56Qli42hVGXvboxZuvH
ubL6Z+dddCkkWUhuefvaiACLES+3O4k5/gw+69o9PmHOwKRY0p749zPd3R+7zYckscL7YepQKuhN
G6KvnEXo9J2Xv2cI46eO7wQrMQBoDS+KiwgCBQqr3ytGObYktsn+89YQLEbYTipQ1UdvJBrZwCa7
uPhJYejWFsKnM6+6m9GbLD/X2FtAz/e+XWoieb+LuuDA4Vr5jngk4yFS+o+1djeH7Nuom35sMs+E
2uaPqNiaL/e9u9AWANeRCDGCA30wggN5AgEBMIGLMHcxCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9V
LlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNwIQaUypoPbW5W/ebGvt2lwZNzAJ
BgUrDgMCGgUAoIIBxjAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0y
MzAyMjcwNDE0MjJaMCMGCSqGSIb3DQEJBDEWBBRqLx/ixfRREGVkt3oQj1phl8V/mDAlBgkqhkiG
9w0BCQ8xGDCBFTAHBgUrDgMCGjAKBggqhkiG9w0DBzCBnQYJKwYBBAGCNxAEMYGPMIGMMHcxCzAJ
BgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UE
CxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0Eg
NwIRAKO4oXGNZu0MhX9NjI3ox90wgZ8GCyqGSIb3DQEJEAILMYGPoIGMMHcxCzAJBgNVBAYTAlVT
MRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlm
aWNhdGlvbiBBdXRob3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNwIRAKO4oXGN
Zu0MhX9NjI3ox90wDQYJKoZIhvcNAQEBBQAEggEApGTyMN0yAabu+lF2/2M1IEaC6LsnZEQ6DZ0Y
cjbSYclNmUw8UJq+unM54le8Aa3rlF3Q5Gw9CUM1Qorc6eyRijyOcpYc5xz4UT1kQYkkilF8cfZE
3WJMDC2C7FUw59f/FzDp/nZy7Y1a3GaIR0SYNSiN4olm3+fCaTNZcB5Ile+E9y/dCpqj4ohKe8hM
IWpbYw/xpvUJMLBfl9j3Zea91yd9Er9YIF4KKxZNsQIrUqbU0ibhGpIevLdb3JVgDfSqSKt/UNyP
zlIi62AgGxRu59ZEx0ulZ5pWlj9gc/uhjghXLIbI7i5L2bQanUlJjmvB1uMCR3mzFJZ7QYxJ/6+2
2gAAAAAAAA==

------=_NextPart_000_0000_01D94A38.0FB0CF90--

--===============5244127894722888692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5244127894722888692==--
