Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 925564BE7B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 18:44:51 +0200 (CEST)
Received: from [::1] (port=55140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hddha-0006hp-B3; Wed, 19 Jun 2019 12:44:50 -0400
Received: from otransport-15.outbound.emailsrv.net ([18.204.234.187]:32847)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hddhW-0006Zx-K1
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 12:44:46 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-15.outbound.emailsrv.net (Postfix) with ESMTPS id 31E1261725;
 Wed, 19 Jun 2019 16:44:06 +0000 (UTC)
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2054.outbound.protection.outlook.com [104.47.48.54])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 9F6541E0007;
 Wed, 19 Jun 2019 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KTFET9B0NyCMfUT2xB1PuY8Zg0Tfp9PD/1XEa4Zg9hc=;
 b=NzXgaQKCSz7vtKfL0XCc7SZQGji23oJPo7dmjMvQCVaY4//UvH7xoeJNXNE6gUKn76dCHQ7iVP0bYHXoYZVydEU7F3NsIvh6V9EDrzj0I3haqmvd5fLHDPOaL+fJzJb3e8UT2SDDDm49hCqQRgXJaJU9LdVt7XNV67rTuz9kZAA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2435.namprd12.prod.outlook.com (52.132.11.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Wed, 19 Jun 2019 16:44:03 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 16:44:03 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] E320 with larger SD card
Thread-Index: AQHVJrwXtVhqj8KwE0ewAOiKvLySv6ajK+WAgAABwwg=
Date: Wed, 19 Jun 2019 16:44:02 +0000
Message-ID: <BL0PR12MB2340261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <5D0A63C7.7080004@gmail.com>
In-Reply-To: <5D0A63C7.7080004@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72ffcaca-3cd9-4fc9-f3c6-08d6f4d5563d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2435; 
x-ms-traffictypediagnostic: BL0PR12MB2435:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2435286B1AFCFAE38E183F76AFE50@BL0PR12MB2435.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(376002)(136003)(396003)(346002)(199004)(189003)(81156014)(229853002)(33656002)(11346002)(81166006)(446003)(14454004)(6116002)(8936002)(86362001)(186003)(6606003)(476003)(1411001)(1015004)(966005)(19627405001)(26005)(66556008)(73956011)(68736007)(66946007)(6436002)(53936002)(606006)(3846002)(76176011)(71200400001)(236005)(486006)(99286004)(71190400001)(5660300002)(76116006)(74316002)(6246003)(66476007)(66446008)(6506007)(64756008)(66066001)(102836004)(25786009)(53546011)(6306002)(54896002)(6916009)(52536014)(256004)(2906002)(9686003)(508600001)(14444005)(55016002)(7736002)(7696005)(4326008)(8676002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2435;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RFiVg5/NyhK2KcyfCuzd+4kwbusuV2eqLCPICh7LBlvkbneTkmFCqQNcXfeYa/LbOxDf3slUMneElX0DwQmoeqWe/XVB5X3Fpr5vrSG8ZfXvAdWgZeFAczZEm1aq8LygGsNgwsiuAEsNWZ9DBFMjWJEL4qVCSNcXa1F6f7W4pC6Uwr1D60iLUPK/fUuimgH7xJXDVSTrA4PdSMT0VR9eD4CVukkliR+jMwPjOXccjFBz8tsfK+Yext7+UEMj76Eb3IX8IN+25Bfd2EFxgAwajH+KyypajlfGgdcb1OFeDUXSke4JwV1Ift55WzDVRsiGkRIKcvl70O3YJspa+4IOF5R6zKVb+cE6j3caeEw1c+pGpfbKJGy4GV1Z5RN5Ft2ACl4Uc0bKqW6iHT38xIg5B44vOLGyQkpqw8ZXTKHwJ3s=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ffcaca-3cd9-4fc9-f3c6-08d6f4d5563d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 16:44:03.0066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2435
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam05lp2054.outbound.protection.outlook.com|104.47.48.54|NAM05-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.48.54, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-13980-c
X-Mailprotector-ID: 1f3f0658-1c06-4faf-94b5-583987942215
Subject: Re: [USRP-users] E320 with larger SD card
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7344170378594876833=="
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

--===============7344170378594876833==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340261564BEEC740712C9BCAFE50BL0PR12MB2340namp_"

--_000_BL0PR12MB2340261564BEEC740712C9BCAFE50BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I used bmaptool to write the image and I used gparted to extend it.  I just=
 tried again and still no dice.


I just tried to boot with the serial terminal on and I see this on the scre=
en (no LED ever comes on):


U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)
mmc boot
Trying to boot from MMC1
reading u-boot.img
reading u-boot.img


U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)

Model: NI Ettus Research Project NEON SDR
DRAM:  ECC disabled 1 GiB
MMC:   sdhci@e0100000: 0





________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, June 19, 2019 12:33 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E320 with larger SD card

On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:

I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.  I loaded up the card, and then extended the data partition to=
 use up the rest of the free space (about 100GB).  But then it doesn't boot=
.

What steps did you take to extend the partition?




I am wondering if the change to a partition size screwed up something in a =
config file somewhere.  Is there a way to fix this without rebuilding a doc=
ker image?  I am using the UHD 3.14.0.0. that has the smaller data partitio=
n (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/pyt=
hon packages, so I need to use the older image).


Thanks.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--_000_BL0PR12MB2340261564BEEC740712C9BCAFE50BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I used bmaptool to write the imag=
e and&nbsp;I used gparted to extend it.&nbsp; I just tried again and still =
no dice.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I just tried to boot with the ser=
ial terminal on and I see this on the screen (no LED ever comes on):</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)</div>
<div>mmc boot</div>
<div>Trying to boot from MMC1</div>
<div>reading u-boot.img</div>
<div>reading u-boot.img</div>
<div><br>
</div>
<div><br>
</div>
<div>U-Boot 2018.01 (May 10 2019 - 13:20:55 &#43;0000)</div>
<div><br>
</div>
<div>Model: NI Ettus Research Project NEON SDR</div>
<div>DRAM:&nbsp; ECC disabled 1 GiB</div>
<div>MMC:&nbsp; &nbsp;sdhci@e0100000: 0</div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, June 19, 2019 12:33 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] E320 with larger SD card</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 06/19/2019 12:29 PM, Jason Matusiak via=
 USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I wanted to use a larger SD card=
 than the one that as supplied, but I am having issues.&nbsp; I loaded up t=
he card, and then extended the data partition to use up the rest of the fre=
e space (about 100GB).&nbsp; But then it doesn't
 boot.</p>
</div>
</blockquote>
What steps did you take to extend the partition?<br>
<br>
<br>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I am wondering if the change to =
a partition size screwed up something in a config file somewhere.&nbsp; Is =
there a way to fix this without rebuilding a docker image?&nbsp; I am using=
 the UHD 3.14.0.0. that has the smaller data
 partition (UHD 3.14.1.0 has a larger data partition, but doesn't include a=
ny GR/python packages<span style=3D"">, so I need to use the older image</s=
pan>).</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks.</p>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________=0A=
USRP-users mailing list=0A=
<a class=3D"x_moz-txt-link-abbreviated OWAAutoLink" href=3D"mailto:USRP-use=
rs@lists.ettus.com" id=3D"LPlnk62513" previewremoved=3D"true">USRP-users@li=
sts.ettus.com</a>=0A=
<a class=3D"x_moz-txt-link-freetext OWAAutoLink" href=3D"http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com" id=3D"LPlnk941573" previe=
wremoved=3D"true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a>=0A=
</pre>
</blockquote>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340261564BEEC740712C9BCAFE50BL0PR12MB2340namp_--


--===============7344170378594876833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7344170378594876833==--

