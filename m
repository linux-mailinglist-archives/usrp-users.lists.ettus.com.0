Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DE3508735
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 13:41:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED81F3844E4
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 07:40:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650454858; bh=6pM5vJhj4npBsGk/Dr5xH05LEb0Q51rdgykQuM0TC0Y=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=h7fRBLpEmvTVHbBB8duhRUwIc1HGd6jQhHuMZWWNnZUbSFdZDfbEAu9AYNF9FJ7WH
	 b60+NE2af+C8bPpZbsf72hy5898s9RwqNIAi5VjvnyMtDgFNzZ9dMfqbK3mW5PiCty
	 mfWZgRxYxXw6Q1Wcn8Qg+P8VWneHVJICQoPP00E/GK//GlWEeNZIOQeFGV2ooWErse
	 LylwqM+Lk6D1xm+ct49EMwDMfS9NAN33mTWKMpkI63i8SkxAwg+6EHja90C/ivuybj
	 pj6lG4K2itamZfUtnXe60Ao17/04kggy8e99VanrYMNiFmiT5k44XzF5OSK5SmBMD0
	 B/TAvWk2fGV1A==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0043.outbound.protection.office365.us [23.103.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 81A433844E4
	for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 07:39:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="oCGQXCvx";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Rd7dQoHrY2bcmoGCYuKheUYSedPrRJJDiQjTDx66YfsSVevyDz1a3oL201WDYL7sNMSWBH/P2o4AtzICEq5TPWTXesIoU7ttSS1IOzZNywDKyJq7f/UchkvutDoyfT9tukGLPmOCrOSV8XkVWD8wCl0wTJLrbxoWV4fZXihe2M0bUDSDdMbqcCCoXbOrwiS4V0Z7IVFSdRPWZ6JZ+TKFrFrLUW5f+gdjFUNpxKAFDSbM+H64by+Mdx/v07g4BFjPYcJUxWUytIQ4p7zYDyhZGK2zC3xOu9Rf7dkRYq+y8ODFQKGxQwrR1Dr5hX9FKl510+2/5v50Q6eeCW7K5ZXkNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CxmivMoZ/MpQ3Z6DbF7hsSRYEIbmq1dioQY7KIV0ZRw=;
 b=Ba7w5d4DT2yYNoMmGkwE+svPfpzNwjnFTt56xkjgWKqwWf7rxua8hgsl8pwgO7UaRdK2Z8mJ/L1CwtUiB15VK/9ntnmmpUBhqktUeLvkqhDs6gb+nqWUjhxHqbxlZklAJygkfkowKbWPAaYSoApTcBG8D6K3vDIphu2tpU8nmoDfiKCqKN9IemloLx61tS48ZehbmBWHyTfF54X/3NrbxrbEInUVNFSjgpQ7WeF3JglTnwa2At1Czav80OFtiVHD9JgVdI8Sv4T5VsYs8EvTS47wp5Vy+hG+urDr8h6bc9Ggkp3aPpdqy/ysRpGkbr26o1ZrKSQuIVgEoxCPPauYng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CxmivMoZ/MpQ3Z6DbF7hsSRYEIbmq1dioQY7KIV0ZRw=;
 b=oCGQXCvxVebiNuuWK4ZjT7rV4ZkEZTZG6iQzg/LFCUiFCeMZkt70DMvHWjG8weOXc6usC3JNbKtw3wDz1WY4HI+VOM6WYUkVLkOyGZH8fuKL5IQf8xxfJVKGuvozUa0q2FHyVE6kBEQGJpEm/k3Gk5x+DhlWoLcuX3MCDRdZDU5E9E5cqB0kCwk7xtEjj7nMhq8wLfA/o33ptiRCnPrHXYO7tM84+KwaVvCrsVNVRbMjRPjju2MBVoDy4GrihAzErGRZBoI/1TP6nvRj3taSFstnbY8VpfEKCLG0Rpt0268NjRpxJavQfKIMPr/Ejhkxr26KZVZ15kNJhLbRK4HwAg==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1267.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.19; Wed, 20 Apr
 2022 11:39:42 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::75f6:cf8e:ab07:b9ae%6]) with mapi id 15.20.5186.014; Wed, 20 Apr 2022
 11:39:42 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Substitute power plug part for USRP E320?
Thread-Index: AdhUqZMd9Vw3eTZ5RIWopyDB+3NKwg==
Date: Wed, 20 Apr 2022 11:39:41 +0000
Message-ID: 
 <PH1P110MB1665E0B25C1A0673B385CE98B7F59@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fb36501-836d-4bd1-ff1f-08da22c27598
x-ms-traffictypediagnostic: PH1P110MB1267:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1267EB852333B1DE908796D9B7F59@PH1P110MB1267.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 o0gr4fy4ZboAIhdhf701cY9KEf6Qg29tTsdWV1Dqvw+tTN+pmUm23sHrsB+tqa/j1bILglZtiUaOcxKpUOMKngFAyCvQ1lix6Lr4atBpX4UruMa0KhYh7mZRoQ5iwpGrvnN/QT/jU5p/7ybR4v7Fd6khuPAKMVD/17N+SLqGaLaHTK6yoSRUb+lbhxzVNiJNljuTdxpDDPzNgfIW8oxYFCS6zZv4dyBh9O9g4M9sGH6KIUIXfrHk+0EQTmxmoJTpgFAOTy93iXs0XIzQOj4aJMtG+yCbIglfeWZg+EzUbK430xuHkGESaeYzI8UYEEzl85PpACvQBkknkL8wICH7TYyYL93m4UnUDdCHb3+IkApFgR0rm6fun9neYhrSI/dhmyhXX+czxCYImtXaXDlD10VgAOoeDlQP4EVQaomFYUgFzF9r9JEm0tQMeYxgBYj6a4SRBMIOlB6798hSFYEmE6q2djvl5/ccs/ZxtuhGglh8VFPw049dBLpDZNIVd6U+aOixvEAA/LMETvu+YEsRzizP6F2T/fo6e4RTo1HRCJwpWcSUPj2lpi13yXboMKxNCZZ5WLwqjIF06CCsgUd9RVwMOS1wkNa+79ugHwB8TAAJX6mAovA8dXh0jssTVixBBchoo5GJKViBpGMPjnBLWQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(39830400003)(376002)(346002)(396003)(366004)(38100700002)(122000001)(7696005)(55016003)(86362001)(38070700005)(6506007)(316002)(66476007)(66556008)(71200400001)(9686003)(66946007)(2906002)(6916009)(186003)(52536014)(64756008)(33656002)(66446008)(76116006)(8676002)(4744005)(508600001)(8936002)(5660300002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 z5KSM+es9ZZRtb31I3XKU/EFl+9097Zj6kXL0qCu5g/D/ejjwRiqE0UH/meq0mQT043w4Eo5bYr3AcwO8ajH7WnGdQD9eHhV1ozmhsX6eEe9IACuEX+CEIAS23hjMybvt/AUW6xCmNej0nkzSYY4Aeol9ygrFqGA5mK+1lMN61HSNh2I5rkwss3hRxyEr5dL8HT62LL2b73TxqRN8aqD3z5AwYRujC5Gstm4bmvMdQw/GbItiPSYu9n4pXLgFjwvZu4Gzzj30NSt5M2law3nvz4fwWA/Hr6NpLOzRn7ZJnj+qDO9T0vwBla0aPonu/GfaDTggwZ/XnaYisGHBy3uth6rNHq4o1sbMiysM3KcrphkQagnfWLHZYe7ZwLz8rvrToWa8QLfxv2+uVjOD/Q05xqyNJwXNk2JLl5Glx13GQMGycCUvd/VBDLpmvsgreOYNEfG851m+iprU+zsLva8PmT5i7htflOfayUJNTqMfxs=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fb36501-836d-4bd1-ff1f-08da22c27598
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2022 11:39:41.7994
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1267
Message-ID-Hash: CZZFSEDPPNJZBMHBDQVV4ATMN6MVHZZN
X-Message-ID-Hash: CZZFSEDPPNJZBMHBDQVV4ATMN6MVHZZN
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Substitute power plug part for USRP E320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VLJGQMTKGZ4WOC4E3OSYNB6JQYQIJJD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3989176501876612860=="

--===============3989176501876612860==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1665E0B25C1A0673B385CE98B7F59PH1P110MB1665NAMP_"

--_000_PH1P110MB1665E0B25C1A0673B385CE98B7F59PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all, I need to build a custom power cable to an E320. The radio's hardwa=
re page lists the plug p/n as CUI PDP-40. Unfortunately, that part is out o=
f stock at all distributers. Can anybody recommend a good substitute part? =
I see in-stock options from Kycon that look promising, but I'd appreciate f=
eedback on any known-good solutions here.

Thanks!

--
David Raeman
Synoptic Engineering


--_000_PH1P110MB1665E0B25C1A0673B385CE98B7F59PH1P110MB1665NAMP_
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, I need to build a custom power cable to an E=
320. The radio&#8217;s hardware page lists the plug p/n as CUI PDP-40. Unfo=
rtunately, that part is out of stock at all distributers. Can anybody recom=
mend a good substitute part? I see in-stock
 options from Kycon that look promising, but I&#8217;d appreciate feedback =
on any known-good solutions here.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB1665E0B25C1A0673B385CE98B7F59PH1P110MB1665NAMP_--

--===============3989176501876612860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3989176501876612860==--
