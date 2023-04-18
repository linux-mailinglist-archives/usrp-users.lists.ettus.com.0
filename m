Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB56E578F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 04:39:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6CEC384200
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 22:39:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681785595; bh=hicdJkJiiLmYy4RdFxJoZ9xPHbwr3/eVYUw/JAFi/94=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mDvnSOBofPjdT15Q925dcAt9YiMwczZvn4jXipI+vFUIncmNJ1vuPtO5qmrY66+TD
	 BQcWXI5pBRmyU6LyPKWgNtdDzYmTWP1JdZog18XLXtEy5M5WREGtJREPOuFG1fyqrO
	 TaaT57uIn5p6/0f8003y1K8IACKrryKwe9ggHL8Pu1qlxe+j7RYHoMde1Cylbyo286
	 zl+BaOP8pO1Q0U9irB82zGxqh2QUook875ZiXJlOSOv+nu7j+rXpZ5TRX9TgVAcCMV
	 1d09sYdrJabs/lLeFE7Rs2lfEVW4uM+LtZhwsDjLAJuyIRmZEUpv8mPUTQkuPjptp6
	 wFvooXoZLdU5A==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0106.outbound.protection.office365.us [23.103.209.106])
	by mm2.emwd.com (Postfix) with ESMTPS id 71BF5384200
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 22:39:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="NC4rnItM";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=IS4Je+O8stZG1xVxNOKnJuO3ipSZsmpP1T/97dg4D9D99Y62Xc7E7CU55b68UCrfDJjChqSaXL97z2NqU8RzeqgvVS7PjqBmfPTpmn1PS9ipxCNL/8xHZtNUjdKf1lVoBYH4KUMNZlyaGUgJ2iM3S/G1MykB4/dfVSdM/xrGHt7nfpcb1HWgTflrZLA/Yxi8ScQ6yYmkqlmoB5Q3l/vglNBfXTMN6hHpNxu43b7kXZM2WrlmNXfq2SvW0zrUabhHR7fBb0Ny1YF94rNyxlnlrLzvNgCpGzmVN/WGMi/ro26QgxHUFG2EuCheFcIa5Ywm0WEbfrY2O1iLJDuAfquvxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M1Yjx7hCEgTM2pt4e5VRlD5KnFglPo6jgGPxe5E9n/Y=;
 b=L6DOV0jWUvCWoUIDWovsZR+RksH+UODCLdhHHjB3mdqLkrpANrAcxtttS6otADY+j41CdVTFpuALGCgXEEIELzKB/sz4/+tTqjuJt2QHrhf/LK9dJo5m3DljNyjfY79cfWhQO7yYMjtJIh4aIiNqbfUcARvZL/6F0yOucOa+2FrCSh4lfmW9vPK0PQWv7OVXqObCyn4jH59YjwcEVxy/bE9heULV0M3WJf9grJKzg+P3ZBfkZP0VzY4WkVkl0j0JE+C4tKdzc/cwH1Srst9VGkotReSlh9a7ORGlTlJWwRsROhXH/TAiBQtbMQcMcOwOkNZu0KGl68/Ks6USJHYpUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1Yjx7hCEgTM2pt4e5VRlD5KnFglPo6jgGPxe5E9n/Y=;
 b=NC4rnItMPeBwfFoBGn+A28rIyuqD8wAE9dJtkbFftIDYkveIBO/CIv4jFWbpPt8qe0XJk8rpL2I23flyHkzYPQbAwG0lXjhtaPy8QqHfx5TYSppsbABTRDULAnyTa/AqFO/4fna6rV7sXtjDsc0p6cdkeCOXUcPJOT3ir7wPWSaFEdFJ7ydniNo2n9Lv9Rmk2jQ5YHAjQdR3W8oqvVyIX01XmEs7zwu5oHyUOvWr0wTWjJLRBWi1LXZn1EBII55+5iZaT7DfmP8uB/Y/R2ghEWizq1Cp6vdRy5KBkbC8NWYz3dY6KXpZyrfZ8MtyNHbTZ3G+ETEQwAWiLGeB0bso2A==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1529.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:184::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.47; Tue, 18 Apr
 2023 02:39:46 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::d154:d2f7:34cc:54ac]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::d154:d2f7:34cc:54ac%3]) with mapi id 15.20.6277.043; Tue, 18 Apr 2023
 02:39:46 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Test
Thread-Index: AdlxdYe4Y56VfPLCRgedVhCv1v8voAAKWzhA
Date: Tue, 18 Apr 2023 02:39:46 +0000
Message-ID: 
 <BN0P110MB1015F3D693970E286DC4B38CB19D9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BL3PR12MB64029D1AD52C2AD4596AFBE8E29C9@BL3PR12MB6402.namprd12.prod.outlook.com>
In-Reply-To: 
 <BL3PR12MB64029D1AD52C2AD4596AFBE8E29C9@BL3PR12MB6402.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1015:EE_|BN0P110MB1529:EE_
x-ms-office365-filtering-correlation-id: 44040e00-4a72-4ac0-3307-08db3fb62c62
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 83inWQONy36y0Cl/PMZTYAzZ12sTqG+ayH280wmMiJvo1Xzva1nxzdzH0EuADLyUJ3eeRHWpEMvIGL/k3dTN5ZRLxaKt0hxraYNkmxkc65HULJEF3xUaEIUcFjbw1b/+HA/kaquSa55lpNzQV20ptrS9FQ2P8eC2pLOKX2l6pSRD/2TT1tqdTYc7rKPjQ/GcQVWZebr/pTe3YHu0aynDccxx8bTP9Z6zV2ozgsHxq+WtQtkNVt63dBViu9Ah6GEQuwc05aGb66UWYPE9kpQNENZCN5XxWIwZveMUlrvIHVilyjSQHVi6kbwTCNFpkqVZ8J9gdOVoUN4rq5FaqQtIbnt2UoG3hX0tJEyPTr+PMUvXgof6rGS17qGWFij55GIFb/BPf9QBb5tcurnZqcomyBKt+ubHHR9yGVNyz9MBpKpJpH6CkLEU+GMQcJBMXSuvSN0OvzGzaSo7z/aRKggaYOAhbDN+Oibmt8gNG7XVHpIYmWOAkTWM1xZqiXk3//kYlIUsmPZXWrcZyI1Om9tpYqbJ37ETEdwWCVPoTomCObPEtqaCd38J40AfevXzgZAaFCxfPCe8lzeYiQcjwZ3pFaZMVhG0I3vZsd9cxOf76CFnml779iTGkeTimHPqU7dF
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(39830400003)(136003)(396003)(366004)(451199021)(166002)(41320700001)(38100700002)(86362001)(66946007)(38070700005)(40140700001)(33656002)(55016003)(66446008)(66556008)(66476007)(6916009)(508600001)(3480700007)(8936002)(52536014)(7116003)(8676002)(5660300002)(76116006)(41300700001)(186003)(83380400001)(71200400001)(64756008)(7696005)(6506007)(99936003)(26005)(53546011)(4744005)(9686003)(122000001)(2906002)(82960400001)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9C0VMZdA8KK5OMUpV/oeguNydCJgigXZwt2VLVOmnGrcO3VLtvZ6puUlyL?=
 =?iso-8859-1?Q?45EAUnkteaaGm1x+mZTG2OVOsz8Ng+Gr1obwIhQFYcGbs3QBRAGqIKTWuu?=
 =?iso-8859-1?Q?94dpozX2kOQpu/uLsSjv9ikO+8D28ijx25qdHMrseeY8cHWFB/iepGQY/l?=
 =?iso-8859-1?Q?XL+JdHfU02OfcliRZkjay+QgW2u3Y/9JZUzMsNWc/LXjS9PEKOzwUOXIwj?=
 =?iso-8859-1?Q?Scb9M6Y2wXizy5OpEAjnXOmmbw6CVggw2Cq9ELLXXDoEGv4iKNBjvNFshD?=
 =?iso-8859-1?Q?kE2CXCEnGNvIY4R/+9jb0cF8quw2Pq+/ZSMchEqVS4+b/kBRNq2VXJbnPg?=
 =?iso-8859-1?Q?J7qoJ4kyKzayY8ekRYu0Loi+se3qVIEemcUUldEqJ+Cf45aMbVhemkWsDR?=
 =?iso-8859-1?Q?uTsnh7aLw1rCewvAODBjlYTHyZshnYjrt33O/pjJ7kHkrNW8jOMw+P3qnt?=
 =?iso-8859-1?Q?0RbsrU4AAnvgcbfkuv7XwwRLR+GwoVvj4C3yB0SXhqZwdEZ5wd8iX+dbHu?=
 =?iso-8859-1?Q?Y/oL2gtGmrNDTKLyVLz2/AE4B1jsCmW19N8UBTb0ivUHIieDodVNVechJ6?=
 =?iso-8859-1?Q?pXTdJc2MfNXsWwPPQM3MozsbMZ1N7ua0hG9M82jRjAxvazXfFTZV+/uNcP?=
 =?iso-8859-1?Q?/JcBpk0CNzQ1tSsFa+sLGYR7/s/cQp8nrk8VxEEYcd7WpSRi6hq3Z088xF?=
 =?iso-8859-1?Q?k7kgPmsTtL8YjS3XSZB1Krsish60QtWX+DpkjFkXrQOgAYsNrb5xKpa/AP?=
 =?iso-8859-1?Q?D0O4U2g9MspJ6w+efST5qktTeY9OnhQ8Q2CR6jH/PItAXhO/O/+qNt5ajk?=
 =?iso-8859-1?Q?ZRBZOLppF/dA7kRg5wD6wke+X0Dm5xYAENYYjIsY6mMws4EPKB1dB4yTdv?=
 =?iso-8859-1?Q?CSz+QfFV+Gkp9T3y4wrlN80ltdHq32vlnCD6ZlyAQhCd6Bjfz3ejWDG8P8?=
 =?iso-8859-1?Q?kZS642IUt6x7vl42RfPK2RpR+oG5b3Qbw3H1kjSOQZHiTOqY3hA/Psm7r+?=
 =?iso-8859-1?Q?DGVmsVurQJZb5d5Hcap8eGpaGhTHZ1p1sdkdqWrpaB5JI9J0srncoPRS6p?=
 =?iso-8859-1?Q?X/5FKD/Au8VcLI1cMPr+wq+dcdcMRyRFVQxeZ73vzWuLVnVsMbwgTXymTR?=
 =?iso-8859-1?Q?Qo43VDLnNonP2C1H0JSSIx3JEPA92WE5T2B9YpcaDIAlAkTRdYnvi00Viy?=
 =?iso-8859-1?Q?x72THNqXQWz1kKF9VVn9SMW6UggZuiS5Bk1wDbZ5R2PfeleLW9rC1WPQZ2?=
 =?iso-8859-1?Q?7l2hRa7/XG/bv0ZJlwDfo2i2jAdHTPZly84tbRToEcvdOepEdU4/qzfrgH?=
 =?iso-8859-1?Q?ldEQ87BtXTWWl+ubNFGdVdfyiGl+9F2UWt7kRKb4m1NZhYTWIsUF5sQNeB?=
 =?iso-8859-1?Q?+tSlow3P60hz28vOJYnFEaLWuCIuS59D9FUQP6c3HvbO8DqpW78YhUs64I?=
 =?iso-8859-1?Q?YvFnk4GH89KkWt6f6/T4sY4d0diIC7XLTQUY2zlM/9xZhMtXv2+2CxE1gl?=
 =?iso-8859-1?Q?j5lh3SE4bHrvwIrxZs3zlrg8So4gi7EC/lkRdY8OhfMpuF3ATwSKBdoE0o?=
 =?iso-8859-1?Q?zX/PipN4d4R18o+vy/mNr/Z7eHUn?=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 44040e00-4a72-4ac0-3307-08db3fb62c62
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 02:39:46.4007
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1529
Message-ID-Hash: AJEHKK3XZHPUYMD4KK3CSLOS5QKZYFKH
X-Message-ID-Hash: AJEHKK3XZHPUYMD4KK3CSLOS5QKZYFKH
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YLGQZGMTIJXMJWP5A53EEWWTTF4FA4J6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1226572488506332084=="

--===============1226572488506332084==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_0000_01D9717D.81C3E510"

------=_NextPart_000_0000_01D9717D.81C3E510
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0001_01D9717D.81C3E510"


------=_NextPart_001_0001_01D9717D.81C3E510
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I received your mail through the mailing list

 

Very respectfully,

 

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org 

T: 937.986.3153 | F: 937.431.3811

 

This e-mail message, including any attachments, is for the sole use of the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any unauthorized
review, use, disclosure or distribution is prohibited. If you are not the
intended recipient, please notify the sender and destroy all copies and the
original message.

 

From: Milo H Fields III <mfields@paladin-sys.com> 
Sent: Monday, April 17, 2023 5:44 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Test

 

 CAUTION: This email is from outside of Riverside Research. Be careful when
clicking links or opening attachments unless you know the content is safe. 

Just checking if my signed emails are getting blocked.

 


------=_NextPart_001_0001_01D9717D.81C3E510
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
class=3DWordSection1><p class=3DMsoNormal>I received your mail through =
the mailing list<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-ligatures:none'>Very =
respectfully,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D;mso-ligatures:none'><o:p>&nbsp;</o:p></span></b></=
p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D;mso-ligatures:none'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-ligatures:none'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-ligatures:none'>Engineering &amp; Support =
Solutions Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-ligatures:none'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D;mso-ligatures:none'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black;mso-ligatures:none'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;color:#1F497D;mso-ligatures:none'>This e-mail =
message, including any attachments, is for the sole use of the intended =
recipient(s) and may contain proprietary, confidential or privileged =
information or otherwise be protected by law. Any unauthorized review, =
use, disclosure or distribution is prohibited. If you are not the =
intended recipient, please notify the sender and destroy all copies and =
the original message.</span><span =
style=3D'color:#1F497D;mso-ligatures:none'><o:p></o:p></span></p></div><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'mso-ligatures:none'>From:</span></b><span =
style=3D'mso-ligatures:none'> Milo H Fields III =
&lt;mfields@paladin-sys.com&gt; <br><b>Sent:</b> Monday, April 17, 2023 =
5:44 PM<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> =
[USRP-users] Test<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'mso-element:para-border-div;border:solid #F9E436 =
1.5pt;padding:2.0pt 0in 2.0pt 0in;background:#F2463D'><p =
style=3D'background:#F2463D;border:none;padding:0in'><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'>&n=
bsp;</span><strong><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#0F0F0F'>CA=
UTION:</span></strong><span =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'> =
This email is from outside of Riverside Research. Be careful when =
clicking links or opening attachments unless you know the content is =
safe.</span><span style=3D'color:black'> =
</span><o:p></o:p></p></div><div><p class=3DMsoNormal>Just checking if =
my signed emails are getting blocked.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>
------=_NextPart_001_0001_01D9717D.81C3E510--

------=_NextPart_000_0000_01D9717D.81C3E510
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIRcjCCBQcw
ggLvoAMCAQICCmFaT6EABAAAAlYwDQYJKoZIhvcNAQEFBQAwQzETMBEGCgmSJomT8ixkARkWA29y
ZzEXMBUGCgmSJomT8ixkARkWB3JyaS11c2ExEzARBgNVBAMTCkRST0ctQVBQMDQwHhcNMTgxMjI4
MTcyMjQxWhcNMjMxMjI3MTcyMjQxWjBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPy
LGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDIqSfSN9vCMUNv1ClFEtVbNDtXQG2uTUIF4sxljSpofE+0R18jypVQ5sbxYAY+YetA
YaCu9sDvINgjn78bMWro7PjaXLTMKob682UX2hSlfV1u9JLIc/dHZDhQm/g+moZjbJrAaphVJ1tm
zAngB5e9vpNGPtiYnxOHfyJHbXvDODHkXPQHjdhx/96DWEo2ME4o+hbrmKwSv36i9P/fZnx+7dfo
EJ0Xka7ivxxAvSFYwV/lfygF37XMd6iVrQ7HBjt7PYG/Xda26prtnMTaZCj3Xfk17CJ5OD5bhG5/
Fr+BmOB7N0tMEgdOEw4J9ILZ13aZ+u8KHhl8qCRPc+ZCkYJlAgMBAAGjgf4wgfswEgYJKwYBBAGC
NxUBBAUCAwcABzAjBgkrBgEEAYI3FQIEFgQUsiV9iBiIVa/fqUTl68n2xTOrX2MwHQYDVR0OBBYE
FP7n8qkpqNSfs/rzfTADwqy1R1BlMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQE
AwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFEkkMbfTP+jwH38Z85zodUalM249MEcG
A1UdHwRAMD4wPKA6oDiGNmh0dHA6Ly9jcmwucml2ZXJzaWRlcmVzZWFyY2gub3JnL2NybC9EUk9H
LUFQUDA0KDQpLmNybDANBgkqhkiG9w0BAQUFAAOCAgEALpNXZbpzZFwFsfCKiwjKg8ldws18ZS3m
BX6jaYuQAdwneQTtf9gFpx3Pvhb+BSN+9yGGjyJ3EZKYcGzGYRaKBK4Vco2rDgHvHckQR4rxq8kd
xJtfGPlEXwsRQRQLW3C38wrdyCjI5JZA/5u4/qZqY7DXnhjU9u/2bofQOT0iAtJ9pAnI47/vdlxG
uzRBAZjqHU3OIeZkQDWUB0yuCgbKRiluFn+0wOsWKwB4d4/HeXOyLBt0qbS+cMZ79MBDuC76ykbd
R1NEAUsMo69BKgqFQQ3nrUN7LGPpEqPiyheFsCWMqkd6vwsmCPwfL1tSBcfOgU0tMiSohi7mPvBk
SI4ODJ97kWVPcS5WZAWmB50hrRCtp46bE1LbGhNihyf7mKn4d2zsGXmbzX0m+oza/nmR4GWGIlni
DF/83XexzNYV7aNBp/1qW4gjuqzwD6f9+1+gPU3jCscHHdE2++0M9yrZiG6iYnH+T0rilJSu24CY
vxavpQf9G1uD/mlcC0ypkeEqenUxv31WapzGnv3EVeU63FEEVQCcJr+VEW30opb3GTQoNAvm7zTs
oCfC/dc9Uohc6wcukEHDBXA6bIjbBXVISsN9Pe9p06FafqVqfr2S5V/F5EwgbMyTFPQ+SIB6Pa+9
GlGMmOWyAEJphGBG+sK9fl8Jcub47w4YX7dCqY4p5vowggWfMIIDh6ADAgECAhASPGXcwnWGs05X
Q6UPq8/lMA0GCSqGSIb3DQEBBQUAMEMxEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/Is
ZAEZFgdycmktdXNhMRMwEQYDVQQDEwpEUk9HLUFQUDA0MB4XDTE0MDEwNjE1NDc0NFoXDTM5MDEw
NjE1NTc0NFowQzETMBEGCgmSJomT8ixkARkWA29yZzEXMBUGCgmSJomT8ixkARkWB3JyaS11c2Ex
EzARBgNVBAMTCkRST0ctQVBQMDQwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC80o0V
oOdwWusFIsAU/r2pLJjOgnDJeR1gR0FzW4Yx541MohHpWg2T3dvELrWbw8I1bvrwszhkErdhGisO
W4OhIaJSRSZCc7/4lP67uO3WqyH6Ih0lLFejnOWi5z3ifzKYj5fHIE5z0niLL+eg1NxokT9H2qC1
ENHNJ/jssmQZyyoktvKaPShw+I7yAqdwZWr7l9jCUKFgYBbqkPm0kEzZAagNHZ+HOp6LAvGEONL6
4k7a6jGcaz5LvBTVTlCYdws2DROK6deI9w8IkV0dQFL/c4jfQZ7OBbhkz4XMXgnTvnklKlgmzA40
l1lS4RlT29NufZvbyRziERP779HwczfIjpUPi1r70JgpyD42WyepcGoKXCicmBvI8mLaEPdfxEUC
60OnO8VFbU5oKw+T6j3ByuUTD6FEqQf4Q4SqyeDA9GZwRA2k5iwLwFqA0sCfcaUOi2aQkfT3OtTr
JDWnzUIFRXFuenmSMpfTS4r1GW7u3DgAlWrNgKmx0WxdQpreAVt1lkCEb6NodTu4xiktEYtXfiVP
i7LNfTbNS9gDS4wzOUGFc4GIthoWZXaYzSqu4e0h1tnvVPESwCz8+Ke2olwayeLGDK7h19HSE+EK
78XAlrcSuwoCQfrZfRHouSq7si9XRHdQJElFOzUy9N5QD5RL036eqSgc+l2PSBGuPVgD7QIDAQAB
o4GOMIGLMBMGCSsGAQQBgjcUAgQGHgQAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/
MB0GA1UdDgQWBBRJJDG30z/o8B9/GfOc6HVGpTNuPTAjBgkrBgEEAYI3FQIEFgQU2fLvmTrCwkM1
lhWUNB1HIO1BY9cwEgYJKwYBBAGCNxUBBAUCAwQABDANBgkqhkiG9w0BAQUFAAOCAgEAVHa8hXq9
mLpvsLYVR1Iqak2w3d71HKoEjRA67hkS5p1QSVySBnKBo4DqL2SVBnc5kt6J+3uH0hoFQF15CJwW
SzMOCwX3BGA7UpkNgDqe/0sM/FZCVnGi1U56tRgMg/Ndxu26ytn13ptec0MZwGRzU46cNamtMLcW
TxZyEe46ALnKxmv125IMDxEAXyo4p/9Y7xVK7SlzbF8NYUFZB/6lSjvG7BbNdZ4TQqoZ6ngXYcKO
X/fFlb2Gzagbe3RoqFfNC4wRnFkO/wcr7stOB17bHXNN2EE7QZwSiR/oS3tVZ2hSTWTzfi+Mn8FI
9WeMZ/hhkK/vwu+9Leaua6WGVdJUPSJFZK47SGOdekEZ8ipJ5X5pwSO2unOM1V4pVty28Jq9KgF5
aBYiCS/2FOHvAgolQ3PuUIZOxZ87jSd4cTEpF5rUfVLd/Wb7C/i4G15cnolsNuABl+Mgkdr9xHAs
0c3bljbfN6HdYZNHTZQ8kUL6z39UX9b0VFVXoCw+fnQOD+uaNca3lfvQENKOnNpzLSvVuwyOg9LL
U2qdp74brdgXidWL56iwlBj5g/7Rt1glmNCbIusxtEHDr3RWaXvmOZt86lwT1pNy6e4iKaj5opiM
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
DxcNMjMwNDE4MDIzOTQ0WjAjBgkqhkiG9w0BCQQxFgQUIqpLQaNqPCO7NkpIJFD37r83ozQwZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgKm8mNuhUYUPQT6AlG3kFsF5cmWlt/Ef
jGL2PPRNe8QWPFRegtF9fTs7092KT0imhTtRzKqJcUUAmD0xc9UptYf5xNO866PYIqejTbU7c5Gj
NO++NDBujMxu3boq1ttrt4WvhgbL0hyTSp2EAa2qVr75TEhiv+/fkdqoLLjgp/0EAAAAAAAA

------=_NextPart_000_0000_01D9717D.81C3E510--

--===============1226572488506332084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1226572488506332084==--
