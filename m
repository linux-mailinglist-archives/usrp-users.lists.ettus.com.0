Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 028182B25D3
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 21:49:47 +0100 (CET)
Received: from [::1] (port=42830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdg0t-0003s8-9q; Fri, 13 Nov 2020 15:49:43 -0500
Received: from mail-dm6nam10on2078.outbound.protection.outlook.com
 ([40.107.93.78]:1217 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1kdg0q-0003n7-3h
 for USRP-users@lists.ettus.com; Fri, 13 Nov 2020 15:49:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZAa3shAWX/lVMu1pLPkXI9OJEwS5T+DyFOl4gVMpmfrvf2ijrWEPyHTTwR7jULofpk4mPK2LfXoksy6XP+IHFedqHsO5Lv/+ZVdbF71YNn6TsZSEtnwQAPHgweXQyzkTS3I2C7UsaS0/IDdCoqRMYjXlh043C61iCHFF6H/1K4B4OlTdx5GKFFWKik52c+q9MawgPcKsH35K+CZ/iRDK+OefxzOf71Tgwty1FQ+IRYj/oIUa4+lhmYy7rh/q+IUD00fvuyhFsf1fIFJPAguns2KA56fxEe6KAOGkfTYL16pAWXe+mHcSgEi3W8p2ScYXkpOZrZkQqw2vbowrChzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TCuBYBPwDuXJfie4PkGD1jE1bDzhB9TpXwoZcuxFEXw=;
 b=FYGVd8qaW5Q7qDnHGWAHoWkJI0471y460E/k8LeX6STLqhelWB8mXkm/gPXAEkAy2ZvUkHePcJOD2rM7XS5prqUcbl5kQvVQJTZ83gJ+auaeD9B/D1luK+M4lzOeSPKUSfrYtqij6kawH38B+qL9JgJaRjRvQb82W0xFsM4Hb0XN72HXblFPrO42pSfKkvDeK3aKNwDMoBhbO6jxjb9m2z0J3Wiw7X9Q/fIjCS0x6g5MyK8rJcMBl/oFTyO7tyBKpc/hdytpsInW0Zqv+XpgIUsVwntnJWY+/M/oD4pwLjTWO8mg4BLqwHtdbl3vHTw2r/oqCISApqtbSGedrM/TKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TCuBYBPwDuXJfie4PkGD1jE1bDzhB9TpXwoZcuxFEXw=;
 b=dCVDWEMe42hDpj7rwc0SHV6ei4UEYM0BKSPvFMheP++mvka9Hu5XiJchbmTUse/bxqKMrkACuuno38j3frWPA0SL/G+8S6Tex1908lHcPvYs5egPuIPHx+fJOLxUSUgMu7Twj1KkFjwLXN170nADCqI3T3sI0aPr0Uc3CB2mA58=
Received: from SA0PR19MB4382.namprd19.prod.outlook.com (2603:10b6:806:90::19)
 by SA0PR19MB4272.namprd19.prod.outlook.com (2603:10b6:806:81::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.24; Fri, 13 Nov
 2020 20:48:57 +0000
Received: from SA0PR19MB4382.namprd19.prod.outlook.com
 ([fe80::7d85:5917:6fc8:61ab]) by SA0PR19MB4382.namprd19.prod.outlook.com
 ([fe80::7d85:5917:6fc8:61ab%5]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 20:48:57 +0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Expected FPGA Compatibility number 36, but got 38
Thread-Index: Ada5/aqYRX+ppKvhS9WaG8lgjZRmdg==
Date: Fri, 13 Nov 2020 20:48:57 +0000
Message-ID: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 716d3357-c1b9-417f-b1e9-08d888158acf
x-ms-traffictypediagnostic: SA0PR19MB4272:
x-microsoft-antispam-prvs: <SA0PR19MB427263504CAABE6C32A06C14C6E60@SA0PR19MB4272.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YjkXrXgwuyKafXNUNifDWpo7CddXrj+wIGC2KpfiUQTCCpQLjXsZghKwOPW6g43OvrEyJRUxf4xmwu8QsILSYbtLteIXEl3HEWPqaqwC0anpqazKK6/In7MbtXsuxj064KZ78CpgemxNLPO0HF2KKkHMBSmiXQYPw5HyE2rUvxP7UNyRHWymM+s+nkKXmkW7hbXGFGhWekXQc2RkhUgOjHkqhEP9GMGLhhmE6KFdqgc2KT4vpZSOnGdD4wqOZE7HyVQMDHwwrtZZhjWJmY8AXmcaCCF523NAJo2+Qg7RiKFIe/XcKZyD6ZJDS2NCK4LpxTOgj6d9z9R0kHRRpx3/JQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA0PR19MB4382.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39830400003)(346002)(376002)(136003)(396003)(366004)(5660300002)(26005)(478600001)(9686003)(9326002)(55016002)(71200400001)(44832011)(66446008)(66946007)(64756008)(76116006)(83380400001)(8936002)(86362001)(52536014)(6506007)(66556008)(66476007)(316002)(8676002)(2906002)(4744005)(186003)(6916009)(7696005)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 6xTyyfVrPKjjghSzX4wkslCfLrQJj0hhjFxvVFQlUPEjCOYiS+N63QjuZFIv9HidxCvAT7PlqWzIq9pQnUTuGyv7mXgy67oHS0X0VRUe0jkIKz2od+TfrUIzViutKCvP2zU0R5xY+0n7nlst3pH4+ZOFEe6m6sk4Lo0wbXto+rmoZggzPAS+83NcByXgfNMTK6A0pCw5+Lg1SbFzb4gDYGZoDyeWClQgABeaicRe3VApmB7vUEbUxgPwCzyQ82DFIVfBwwvv6iC40QLTEvBCY1xTRMWjfCZAIucbbMQQQSSqJBn8viQy4x8m1Cf0gPXMjrDEoJCLbSIFGSuTsua9P/8rrWsN4WOkMXd5Y1HzaNsML5r8HRITCMxd6Tgy+E/uYWm2FtNGuwDTTSfXxy9rbpAMosEG6xfxdmwzTR/7UGRAisHvOVC3/RjRFdcw0oipPKulh8wO6g8CPv/S1bRME7A94oscWH+YFdKEBqIQrQOSxsVIXjyw4DxvgyBcxis/Lc8UdDXv+s8Ik6cLJnsUmjKswytASu8WQRC6Ar6Y2X3o+o5qrqoqf89V10P3Rtk8DpUIZEBPzCFOzLF86m3SBjGOuSXGrrh3gxcTfjlz15aRbkD7qBRp9G/hwpPz3cZpmikp8n8QWiwu6qGp7EcanQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA0PR19MB4382.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 716d3357-c1b9-417f-b1e9-08d888158acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 20:48:57.6378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5h6jtHiuER+ilr2K5R65+Wb290OoIr0Uc5yNU6oi3oBrt9kMdLlZa6wDobFtwQyIQcKdzwO1loH0RNcVVOULgf+aL/nuJ6o2YCVEly401Is=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR19MB4272
Subject: [USRP-users] Expected FPGA Compatibility number 36, but got 38
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
Content-Type: multipart/mixed; boundary="===============6093313231872276513=="
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

--===============6093313231872276513==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA0PR19MB4382E98531C1FD25FA6C10FEC6E60SA0PR19MB4382namp_"

--_000_SA0PR19MB4382E98531C1FD25FA6C10FEC6E60SA0PR19MB4382namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

So I have been working on transitioning to using UHD 4.0 from 3.15, and I a=
m running into a problem. I was able to get the software updated without is=
sue, then I downloaded the new FPGA images using the uhd_image_downloader a=
nd updated the two USRP X310's I am working with. After that I tried runnin=
g one of my flowgraphs in GRC and I get the following: RuntimeError: Expect=
ed FPGA Compatibility number 36, but got 38. So do I need to update UHD aga=
in to a newer version, or is there a way I can install the older versions o=
f the FPGA Image?

Best Regards,

Jerrid

--_000_SA0PR19MB4382E98531C1FD25FA6C10FEC6E60SA0PR19MB4382namp_
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
<p class=3D"MsoNormal">So I have been working on transitioning to using UHD=
 4.0 from 3.15, and I am running into a problem. I was able to get the soft=
ware updated without issue, then I downloaded the new FPGA images using the=
 uhd_image_downloader and updated
 the two USRP X310&#8217;s I am working with. After that I tried running on=
e of my flowgraphs in GRC and I get the following: RuntimeError: Expected F=
PGA Compatibility number 36, but got 38. So do I need to update UHD again t=
o a newer version, or is there a way I
 can install the older versions of the FPGA Image?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA0PR19MB4382E98531C1FD25FA6C10FEC6E60SA0PR19MB4382namp_--


--===============6093313231872276513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6093313231872276513==--

