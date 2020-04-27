Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4929C1BA63E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2020 16:21:27 +0200 (CEST)
Received: from [::1] (port=60274 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jT4dN-0000dp-GW; Mon, 27 Apr 2020 10:21:21 -0400
Received: from mail-c.ads.isi.edu ([128.9.180.198]:22772)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_RSA_WITH_RC4_128_SHA
 (Exim 4.93) (envelope-from <jmonson@isi.edu>) id 1jT4dJ-0000ZA-Cf
 for usrp-users@lists.ettus.com; Mon, 27 Apr 2020 10:21:17 -0400
Received: from usmdrmbx01.ads.isi.edu ([10.100.2.77])
 by usmdrip03-mgmt.ads.isi.edu with ESMTP; 27 Apr 2020 07:20:36 -0700
Received: from mdrprdwmbx01.ads.isi.edu (10.100.2.117) by
 usmdrmbx01.ads.isi.edu (10.100.2.77) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1779.2; Mon, 27 Apr 2020 07:20:57 -0700
Received: from mdrprdwmbx02.ads.isi.edu (10.100.2.118) by
 mdrprdwmbx01.ads.isi.edu (10.100.2.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 27 Apr 2020 07:20:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (128.9.47.203) by
 mdrprdwmbx02.ads.isi.edu (10.100.2.118) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3
 via Frontend Transport; Mon, 27 Apr 2020 07:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQjMyeHv3XueGWGM2psuxGYvU7L3sNrzlIBHtC6zGT/azBT5/E1bIK1jDrK2OylOqjMj0F8m+A0/PuXA4EVA37UBP4Wo5D+5MAyoYexPrmC/993ZH+0JslcEVL0ce77Q7EG8g4GknMtJq3MHTuQwPS38xgVUZjOBzobIHhVRpKmDP8JDJksvf3MhGqKi6MOeefHvecURRccZ8kGXXD3f2qP8ZCO/F0XYOt+6v97UGHLTQ/0owa0YdGSqaKWqVhTppjU4AcJyxuNcMN/OKbEffJQtyH+D7kcmtBVFzKGV0kELWlsvV26wSoYndzACT4kToE19hqH5FPehOA9IER/kmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YqRg/6pDAnaizJjv4MiWs2ra03xBNxAPJIaFDsoyDgs=;
 b=c1UUYy1WmwUZc+ghLaJzPtFjIhYupxtdY6im8HLIpDKoUzSUhkOZY1kj5DIywHRS8dG3Q7KUps3OqW29bop2JyxU1uAmu1YzMBrRZjuwULlxcupR0vXJRUUao8I05Al2mCJk3tEbcHp8WXohtSzDeU/JUARemaDfgBUQw9+ijp3C5MZH/wf37EQ8fyNdeG8JfUP3rGeuXXTIgTbn40CKDZd0UsVGTiupY7Y6gYpi4dqxNNjaXFrTUNjSCR+ojpAQrxEIGn4uFgbwkq4PKAGFh4a727sqpbrpml5IywenZbZvHPxCPqth2YWY9GIyPHXWMh0lT/6X+9msdGn1CK+jXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=isi.edu; dmarc=pass action=none header.from=isi.edu; dkim=pass
 header.d=isi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=USCISI.onmicrosoft.com; s=selector2-USCISI-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YqRg/6pDAnaizJjv4MiWs2ra03xBNxAPJIaFDsoyDgs=;
 b=wL0Mflt3BR9ifJ/1U09YL6PtnGZcDZ1LkUON0uSmrH628LMw0NvOE0AJR1s2Mje/KIJ3d9VTH6l4TuFKnpre32w0m9q9I4o+wWj8tCx1nTl/5KhsQZX2abDGdVswS/qFnNouKfGqKH7FTOMF1nIMREZ3G06jxKFKfeDtTPMeAd0=
Received: from BLAPR16MB3905.namprd16.prod.outlook.com (2603:10b6:208:276::23)
 by BLAPR16MB3843.namprd16.prod.outlook.com (2603:10b6:208:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 14:20:32 +0000
Received: from BLAPR16MB3905.namprd16.prod.outlook.com
 ([fe80::6838:b7c5:3ca1:b901]) by BLAPR16MB3905.namprd16.prod.outlook.com
 ([fe80::6838:b7c5:3ca1:b901%4]) with mapi id 15.20.2937.023; Mon, 27 Apr 2020
 14:20:32 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Remote Power Cycle of the E310/E312
Thread-Index: AdYcnVzI9HhBhcoMS8Wgf+8bq/gFHA==
Date: Mon, 27 Apr 2020 14:20:32 +0000
Message-ID: <BLAPR16MB39050504D7428A8AEADD2250A7AF0@BLAPR16MB3905.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jmonson@isi.edu; 
x-originating-ip: [128.9.48.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8dd3f19-fa43-4071-c3aa-08d7eab62555
x-ms-traffictypediagnostic: BLAPR16MB3843:
x-microsoft-antispam-prvs: <BLAPR16MB38430D4A6B0B20749C32199EA7AF0@BLAPR16MB3843.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BLAPR16MB3905.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39840400004)(396003)(346002)(136003)(376002)(6916009)(75432002)(81156014)(8936002)(9686003)(55016002)(478600001)(33656002)(6506007)(8676002)(52536014)(4744005)(66946007)(66556008)(66476007)(76116006)(66446008)(2906002)(316002)(71200400001)(786003)(9326002)(86362001)(7696005)(26005)(64756008)(5660300002)(186003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: isi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X6JkegNS/lw66tq4HsFfgdrs9PSaQVSyoHXMAx/MEqiKP5GGSm6kyV1IQwZ8PTPt4HiX+QMaPcRhv8SyeVh3nSPtPGLz+FjiHyp5SCR/b6P/0+IXkeP/ajTCSzsw3iOXn/NN/6M8pNO7mThRjweiBJoMKfd3TRQd5+PFsUZiDFMhT88laRbn/XXEEiK2zHbSYK9ibVoaRmxUS7KDQZUSFGQ1TV99k1smcI7Vbz1RP2qf8ZQ0NWkeArf085dB7Rr4eqa+YuZIQKKOpfS7BdIJ6CbXFNIeqFakzVBsjJd+SqL2sxj8N4ujQfo3+Vmq7ql/nrbFoF5HjZOG2Flv5RdrL9kH9lNl0Z4Tbw20JTBaLlKjmwTJcIGJUmjfPICB7UkkrnrPIrzD3+098I0Hm2e9IW6mWqumEWjmOb28sNOHyi2sHXCAPfXD+vNrsDp2LPuI
x-ms-exchange-antispam-messagedata: E/s6xhKsz62z40D+Fc94M1PaPTbU0dckKIHfErl2IumObZQlerIxUG3V15I0v0b5SOohl3On68yjvmFCLZgZ/BNDBy0zvGwwFt8BEYIDRPU6sJwVuWeS5KPe5vocfmnjyZaB4DnPvvECFDa4kdCUBPQ9DjUyieV+JZ/3b9yiaTfXyM3oS3LNiYfi558oSR4+E4LUj7illMLfko9ikbfTOFo0DKx8YWbYgmz90b1xLgKfTsj0KppMH0jUICr70IaqkxdySysLz8yivKtPV/P1mrPnJV2cd/laLQOmm3YJmNO4QQ+hz8ecQzZ+Hio85fq4MybOPMu+OZ23kg3rYdy+dnMBeTjv98KL2UO/RehwT+PPIMC7hI5z4+yCmTqEimALIcNVF5NTHr5/M7ays9dXmZLCQUqKmmyNk3PLiCdcPv58ETCkC4IhGfhaYIBlwFQ5RwyvtRXqzl6SnsbmJHjocjlwPy04hP6KHkkgQyos4Yfx+c31HbmQbuO0t6WlbeDDW3ijitA1hGBaSzJVVt1MNP1i/N0iX6rVT/k4at11jhKQvP5CSQlnXrkJBGUsve0a4+edje85+rxIZvvV/oIu5hme6ePEU4TBRF+T7ZITo6XbbFZ5dDSyk42bcNXcQgDYPNwQCjZj37nO9JYPhKjIbkWMWmNGMsHVvPJK6/EECzApoBoa2o09+ujokciO1bWrYkv607nDClA0g2FwNBtM+X/MkjBbmHN8qMCc6fDWUc0v6D3JJqGK2DTwXfgKYlirbKzxQ1V+fHutM/4G6yOqw6/mtW7VGiahiMIt6gJsOR8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c8dd3f19-fa43-4071-c3aa-08d7eab62555
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 14:20:32.6016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 336f97ac-2a54-469a-a939-2050bb2fc0a6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FvsM15jKxWL6aesN6AObASmX/Yhb6d2YwHF/TzdpMe4i/fgQFQNs8hgnvL3G2+oj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR16MB3843
X-OriginatorOrg: isi.edu
Subject: [USRP-users] Remote Power Cycle of the E310/E312
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joshua Monson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joshua Monson <jmonson@isi.edu>
Content-Type: multipart/mixed; boundary="===============7677455686735695312=="
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

--===============7677455686735695312==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR16MB39050504D7428A8AEADD2250A7AF0BLAPR16MB3905namp_"

--_000_BLAPR16MB39050504D7428A8AEADD2250A7AF0BLAPR16MB3905namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Under the current (COVID19) circumstances, I am having to use my E310/E312'=
s remotely. I have them connected to a remotely controllable PDU that allow=
s me to power cycle the E310 devices when they occasionally crash (as long =
as they have been switched on once). However, the battery-backed E312s do n=
ot respond to the power-cycling in the same way the E310s do and thus I am =
cannot power-cycle them. We disconnected the battery and tested the remote =
power-cycling to no avail. Is there a version of the AVR code that would al=
low me to disable the battery and use the input power to power-cycle the de=
vice? (I could go into the office to reflash the AVR). Alternatively, could=
 I recompile the AVR code with different parameters to force this behavior?

Thanks,

Josh


--_000_BLAPR16MB39050504D7428A8AEADD2250A7AF0BLAPR16MB3905namp_
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
	margin-bottom:.0001pt;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under the current (COVID19) circumstances, I am havi=
ng to use my E310/E312&#8217;s remotely. I have them connected to a remotel=
y controllable PDU that allows me to power cycle the E310 devices when they=
 occasionally crash (as long as they have
 been switched on once). However, the battery-backed E312s do not respond t=
o the power-cycling in the same way the E310s do and thus I am cannot power=
-cycle them. We disconnected the battery and tested the remote power-cyclin=
g to no avail. Is there a version
 of the AVR code that would allow me to disable the battery and use the inp=
ut power to power-cycle the device? (I could go into the office to reflash =
the AVR). Alternatively, could I recompile the AVR code with different para=
meters to force this behavior?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
Josh<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BLAPR16MB39050504D7428A8AEADD2250A7AF0BLAPR16MB3905namp_--


--===============7677455686735695312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7677455686735695312==--

