Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4789B2942FD
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 21:31:02 +0200 (CEST)
Received: from [::1] (port=36810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUxLV-0004tg-8F; Tue, 20 Oct 2020 15:30:57 -0400
Received: from mail-eopbgr770083.outbound.protection.outlook.com
 ([40.107.77.83]:25308 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1kUxLQ-0004Wt-Oq
 for usrp-users@lists.ettus.com; Tue, 20 Oct 2020 15:30:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igLmqNM8W7MUgIiJxV4ki4EGbs1laF4T4sTvKIS6FPqfyacD9GRdeY4hajFI4vbTZcn3fouAbakyCPFvDG8/+YLW0FNVz4LqdzpUsoAMBxdlJsR/+njIjaglDVUn0KJdJaveDcho9Q7VXFZPz+S/c7P9hIW71IGP7r8w8ib1BchaNlctWcfTn7Ikk+rR+ObMWZEhtTRQOLHdWAH3a7DCA/Xzr3nfzyuPhma0qo7fw14rVP5bJrBQ59UybdAdZMuBcPe3LP8M7zkfT+e3a7zsefswjwfL3JcWWSzNHS+sTlEqVKaaQ45CYsE7SFx9W4YK830258jkEB5UAPmj/6D++g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ww751Gvt1RnDpjFBDmAITk+aRTyC+dG8TjYGh6I8aqI=;
 b=gq0+gvx/LyKIb5r6dAaYybt5I2vzpBGSUk5ZBCylaNimZddfrv9bTMA7ebf/CyzPwwJf/uxZsVrgKUHuaCIoLOO12AhRpvBYs0IJ8jOsqKJGqkfW0XyyRj82fKawfuB4PCrChi85f0kT0W8rjUII1ZcapKUkIAASAXERmCBgBISfwrXWqTjR/ypU1QKdtMi8Mt1I+jKQQIGgD6OVaT6yZhKKWgpPFiTeg0avsBt0METqMjQSyTZsARMxFB29gW3Ny8F+mLSpxTGJsoXjO9ltsMCWHyA44idzX3CdNloK3BliQqiMGOGE34ZvAMJY+nUPtEjNHdsCcfJlnG27XQaqTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ww751Gvt1RnDpjFBDmAITk+aRTyC+dG8TjYGh6I8aqI=;
 b=WrMNecNQRVoIuE7QLyYxCd9TVuMhg4AJh1jFx+SMXuKjjX7dt6bN6Sfs7jRxW2mvFhRTSKiTEZnoeLxodR9/qWcipMoJLSMd7cy68neXNcK7rMqRTXp4aeR67UgYFtGrYhh/nV2c1mvd8ZTMXQZcw3S4q0f83C6WBBxtjdd3tfY=
Received: from SA0PR19MB4382.namprd19.prod.outlook.com (2603:10b6:806:90::19)
 by SN6PR19MB2254.namprd19.prod.outlook.com (2603:10b6:805:55::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Tue, 20 Oct
 2020 19:30:10 +0000
Received: from SA0PR19MB4382.namprd19.prod.outlook.com
 ([fe80::e434:eca4:30cd:7594]) by SA0PR19MB4382.namprd19.prod.outlook.com
 ([fe80::e434:eca4:30cd:7594%7]) with mapi id 15.20.3477.028; Tue, 20 Oct 2020
 19:30:10 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Underruns causing USRP to stop transmitting and receiving 
Thread-Index: AdanF2I3U3k3IjTSQYeo+yfs0PXvNA==
Date: Tue, 20 Oct 2020 19:30:10 +0000
Message-ID: <SA0PR19MB43827AFF6817FF8079637D64C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76163fda-bc11-4341-b3b1-08d8752e8f32
x-ms-traffictypediagnostic: SN6PR19MB2254:
x-microsoft-antispam-prvs: <SN6PR19MB22541AFE516D9AF1E86E61B6C61F0@SN6PR19MB2254.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HksoeyuvLz0KuzooCkCm0pcBfCaP4iIaIJJLV8nl689tRdgWQ2IvQVlY0ImgdFck7MOFsIBp58A5ICmQSXjxHabgpGhNMcaV9UFQsDkcbI4LZzsEFXtVTm6fj6ei97VlIl//ouxSIYhW3ipRqSl13BolTEislqQmAXSPW8joGDn55pkgwVwQ/Fw82v1AqhZBitA1qy6V8ejic6jcs5C6pBHWDAaafkRFhf6DZD20Z9Hx0SKQjFWhYDhLCOH60q+jJoaSovpaoXqPFj3LMoRTOfQf21RSW3E22U8iiCyjd3CpI7lvtUUY7D7Zlq2GEHg+hl6EUCeVQNtHX3RvrdV1WQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA0PR19MB4382.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(366004)(346002)(396003)(136003)(376002)(66446008)(44832011)(76116006)(4744005)(2906002)(33656002)(71200400001)(7696005)(6506007)(64756008)(66556008)(66476007)(5660300002)(52536014)(83380400001)(4743002)(86362001)(9326002)(6916009)(66946007)(55016002)(478600001)(316002)(186003)(8936002)(26005)(9686003)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Rphbh6DjVokhtirr79jUYgPWcesw5CtbFzxG2WuFBq1fu9W3A8k/kFAd2PAqYOiVKJZbqBALhEHXtV5aT+EnxTOXzSpHrP0otZmc6ktN/6MYj8bu8IgCxGQLw+Y0CYYkFXyZqv1vHyKxEuaKwIjK05NR03VVrtNCZGZxdwq6aFf1cgGJ2eVv/SpoSYzYFOAGVDZiMifsTVarqdjTJG1MRDVEiW5o2r1IxAm7XprT7HSJg49hD1JwW5RpH9ydfCFlgA1SZduyWcb/a3gDiCooiUinTCy8rhbgAwvic3Lni2q7HKISQSwm6Z01nO1np8xAN3EzVFkFmZjckyXof5SekazuIp1Xa5P3GC5JxiB/eVbmZRgJU+jWVNcL1UKEMTEIGgxYf7TqMukgPMdfLxBAQsuWFsCDw6uby+aWXDiYfBwTBu6TtUJrLsdlGTjJ3MHM5cXJQ22OhKPMeTUkJ+mAK5EqALrqd9EEMC2tszxdsfITTJ1T5cg6yib2ITQRmWt0fu3/61CFI+okO94wIHPoD8nKnguoytgEGtIvYC4pMJZrOShdp5nLMX8al4nviWIcbbXJuS4XxCaTOaNCrATUmuUtRqcyKyXAbrd+B6wOfhnjjeORqSvEnV9BgbWo+1FzJvHVbKVXiUdIyjleUvvVFg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA0PR19MB4382.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76163fda-bc11-4341-b3b1-08d8752e8f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2020 19:30:10.2040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBA+VdbpxqDzyHqGtAPHdSN/KceD/WGN2Ks2yB1TcNsXxbkBq22VxOA2wXbADo13j5FRjwmwA81z85G90ZWLDsgCKJ/pmHWfr0B+5EeuDDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR19MB2254
Subject: [USRP-users] Underruns causing USRP to stop transmitting and
 receiving
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============1660316416671733074=="
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

--===============1660316416671733074==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA0PR19MB43827AFF6817FF8079637D64C61F0SA0PR19MB4382namp_"

--_000_SA0PR19MB43827AFF6817FF8079637D64C61F0SA0PR19MB4382namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

So I am working on writing an embedded python block in GNU Radio Companion =
to preform some analysis of RF signals that is received by a USRP x310 and =
transmitted back out of the USRP after analysis has been done. I have been =
running into some underruns lately that I have not been able to find a solu=
tion for. If I execute some of my analysis functions in the work function o=
f the block, the application underruns and it causes the USRP to stop trans=
mitting or receiving. However, if I execute the functions in separate polli=
ng functions that are being used to display values in the GUI, I do not get=
 underruns. I think this might has to do with how often the analysis functi=
on is being executed, as the poll functions are only called at a rate of 10=
 Hz which is controlled by a function probe. Can anyone give me suggestions=
 on what to try to fix the underrun problem, and any resources you can poin=
t me to that might help would be appreciated.

Best Regards,

Jerrid

--_000_SA0PR19MB43827AFF6817FF8079637D64C61F0SA0PR19MB4382namp_
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
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I am working on writing an embedded python block =
in GNU Radio Companion to preform some analysis of RF signals that is recei=
ved by a USRP x310 and transmitted back out of the USRP after analysis has =
been done. I have been running into
 some underruns lately that I have not been able to find a solution for. If=
 I execute some of my analysis functions in the work function of the block,=
 the application underruns and it causes the USRP to stop transmitting or r=
eceiving. However, if I execute
 the functions in separate polling functions that are being used to display=
 values in the GUI, I do not get underruns. I think this might has to do wi=
th how often the analysis function is being executed, as the poll functions=
 are only called at a rate of 10
 Hz which is controlled by a function probe. Can anyone give me suggestions=
 on what to try to fix the underrun problem, and any resources you can poin=
t me to that might help would be appreciated.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA0PR19MB43827AFF6817FF8079637D64C61F0SA0PR19MB4382namp_--


--===============1660316416671733074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1660316416671733074==--

