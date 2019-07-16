Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7396A7B8
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 13:54:36 +0200 (CEST)
Received: from [::1] (port=53420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnM2R-00089D-6k; Tue, 16 Jul 2019 07:54:31 -0400
Received: from otransport-14.outbound.emailsrv.net ([54.172.220.45]:38388)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hnM2N-000822-Qy
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 07:54:27 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-14.outbound.emailsrv.net (Postfix) with ESMTPS id 73BC0616BA;
 Tue, 16 Jul 2019 11:53:47 +0000 (UTC)
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2054.outbound.protection.outlook.com [104.47.49.54])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 06FA6A25DD;
 Tue, 16 Jul 2019 11:53:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QiUyx7k8TI4ofKuAYGcMGyvQ0BtmyU4iZpzGc757XelrU5Ces130QfgS6oDpmU90JKAFHaSC5Bdx+fhZNUhr0OAvIOLS1m7zXytFszXKs8tQazXQTVsDFsHCQ1JT/vbd0tClAJkiTRXLYP596fkoLGJmb58EDQ5swfTtvOQmOCvYswh4iVAy4a1D+G7L52ExZsW/RZJjKXCCfvJLdBoHp2oplAajHe7f7Iyu2fUXz+OnrT7wzQUOaZ/jJApe0bMQOof0eQPVCJGdrQHqdhWnjJBdTIPjl8GSv3ZaFAzaPeJYi8Rp7CRsy16irG9v+BtligdleAKqd+uWw5gV6X3gdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4OtJl/bkHGCyZMb8WABOgPS5TNRGPhjtBBCaXJdxfA=;
 b=PWZ0za63hhL4S57DhmCLWzyR7wRdnCSAPiyLs/yTzy20PndWf8fkqoqiSMT/D3Ggh6D0+rCh09zqhypGMgZsQ3W8mJMgKE5JOcNJ1pdMI2BInezgS/9a9X0wYMkSeavGx8I/BpfbXeGZMQDBG4brbnJwT1MwQewuUAU0fAyIbhXHm9lEEPJov7gT4cI85kcBVK2mjbrBzPLkPqaXHDX/xde/h6QmeRe2ljPVJ0nHv009vgyxNKryEKc4orTpcmlwP7kwWrYepqXmjiIBoTAR4oOMOrsIOl2FhJCVuFSnztsNObs+mUgEgwLUn35BeZkdCcNICpulq6k5zHI3c0HYng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4OtJl/bkHGCyZMb8WABOgPS5TNRGPhjtBBCaXJdxfA=;
 b=oCvs/IQGW2kC8x79zs9eajxrUpXz2eXiBD07OEZCBdUbIa5KzlqGE/aKH9lgbDMxKbG5+C1YWG4ipQfhm0K77kFYgVzipoE7P0hM1pdMfcS6b+MUN0nc6KEVSzd/jk08v3IqhhGikXqGOzrCh6+9oQrKt33z6QaZzZW8SyetJEo=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2562.namprd12.prod.outlook.com (52.132.29.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 11:53:44 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 11:53:44 +0000
To: Robin Coxe <coxe@quanttux.com>, Marcus D Leech <patchvonbraun@gmail.com>, 
 "Koyel Das (Vehere)" <koyel.das@vehere.com>
Thread-Topic: [USRP-users] USRP E313
Thread-Index: AQHVOucxymOz7T55AUuyh9O0QDUUAqbLwY6AgAABbICAASicAoAAN+7B
Date: Tue, 16 Jul 2019 11:53:44 +0000
Message-ID: <BL0PR12MB234010BCEA83C62889B2B9C6AFCE0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <MAXPR0101MB153020BA8AEC1D99B16F030790CF0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
 <1915F48D-FF15-4AD4-A124-A15ABFB9324A@gmail.com>,
 <CAKJyDkLz2Q=J2SL1DSZzCvm2sEKmu_jMbZfTievjOUmD9XCcvA@mail.gmail.com>,
 <MAXPR0101MB153051C4A461F52317E5211F90CE0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR0101MB153051C4A461F52317E5211F90CE0@MAXPR0101MB1530.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9257678c-ac64-4ae3-8452-08d709e4411b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2562; 
x-ms-traffictypediagnostic: BL0PR12MB2562:
x-ms-exchange-purlcount: 7
x-microsoft-antispam-prvs: <BL0PR12MB2562450777932517B2309554AFCE0@BL0PR12MB2562.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(136003)(39830400003)(366004)(346002)(365934003)(189003)(199004)(446003)(6306002)(476003)(236005)(53936002)(54896002)(9686003)(15974865002)(256004)(11346002)(14444005)(5024004)(4326008)(186003)(316002)(2906002)(53386004)(105004)(6116002)(6246003)(3846002)(66574012)(110136005)(66446008)(64756008)(66556008)(66476007)(33656002)(14454004)(76116006)(71190400001)(52536014)(606006)(8676002)(733005)(66946007)(5660300002)(71200400001)(99286004)(55016002)(74316002)(5070765005)(6436002)(66066001)(229853002)(81166006)(81156014)(76176011)(86362001)(7696005)(68736007)(508600001)(25786009)(8936002)(966005)(102836004)(53546011)(486006)(26005)(7736002)(6506007)(19627405001)(15398625002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2562;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EIlJYBiSw5AFmEqH0uHKx4djMnGMCCfrq1XkLMa2MbpY4oNeYFG+p8IBwIII25ePvXZunGmoDGNJINu22UTkaR9uDdcmH9kJxziX2Bya3OLSLMdXOzrFQVHGrVhRzmeGIB/mRp1mGawsxG3ip2mYlfoulzKlQu1RPHZHS63qX7Ixl8pjdSnH+B/v0uO1Z3yWXOjCNSSOsCKrLhCI8FI/IGKpGvRLsTl/vH+UJeoMfWJi6C4MYwllHzW5k3249GTNa5+w1MFJvOZrLOBruwezWOWgTB0fHPUAX7paBvG+X6y2NRYVvOhkEQMhVY+yn6EaUo4MbwvYaIKkUsKD0Z7kEWMVtF70yUtddm9sGbEhUSFeQWtRbJCKTiB/q1whvp1QpQxg8hzewUFVzyG4PohpVlBwIK7cr9WT3qkH2abWeSU=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9257678c-ac64-4ae3-8452-08d709e4411b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 11:53:44.3421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2562
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam05lp2054.outbound.protection.outlook.com|104.47.49.54|NAM05-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.49.54, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: aa656617-e749-4eda-8474-2a70c4bb5b39
Subject: Re: [USRP-users] USRP E313
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
Content-Type: multipart/mixed; boundary="===============1365712439986064322=="
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

--===============1365712439986064322==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234010BCEA83C62889B2B9C6AFCE0BL0PR12MB2340namp_"

--_000_BL0PR12MB234010BCEA83C62889B2B9C6AFCE0BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Koyel,

It "supports" it, but that is a bit of a misnomer.  Unless you are using th=
e aforementioned network mode (which has its own speed limitations due to i=
t not being designed for anything more than testing), the Ethernet goes thr=
ough the ARM first, so the speeds are no where near the possibilities of 1G=
b.  If you are able to buy something different and still need embedded, loo=
k at the E320.  The firmware isn't quite ready for prime time, but it is us=
able enough and its network mode is designed to be used like the other non-=
embedded devices and can work up to 10G.


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, July 16, 2019 4:31 AM
To: Robin Coxe; Marcus D Leech
Cc: Ettus Mail List
Subject: Re: [USRP-users] USRP E313

Does it support 1gig Ethernet? That is will the data rate be 1 gig?

Regards,

Koyel Das
Senior =96 Product Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com



Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.
________________________________
From: Robin Coxe <coxe@quanttux.com>
Sent: Monday, July 15, 2019 8:18:41 PM
To: Marcus D Leech
Cc: Koyel Das (Vehere); Ettus Mail List
Subject: Re: [USRP-users] USRP E313

The USRP E313 is an E310 in a weatherproof enclosure with PoE capability.  =
 As Marcus points out, the network interface to the PC (over 1gigE RJ-45) h=
as far less bandwidth than an Ettus-branded USRP X310 or NI USRP 294x or 29=
5x using a PCIe or 2x10 gigE link to a host PC.



On Mon, Jul 15, 2019 at 7:44 AM Marcus D Leech via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Not really possible except for a test mode called network mode that offers =
very low bandwidth

Sent from my iPhone

On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:


Hi,


The following USRP


https://www.ettus.com/all-products/usrp-e313/

[https://www.ettus.com/wp-content/uploads/2019/01/E313_Front-Large_2-1200x6=
30.jpg]<https://www.ettus.com/all-products/usrp-e313/>
USRP E313 | Ettus Research, a National Instruments Brand | The leader in So=
ftware Defined Radio (SDR)<https://www.ettus.com/all-products/usrp-e313/>
www.ettus.com<http://www.ettus.com>
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploym=
ent. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive =
testing to ensure operation under demanding environmental conditions.

has embedded processor I think. So is it possible that we don't use the emb=
edded processor and use it like USRP 2955 that is capture data using gnurad=
io API and process it in our computer as we are doing with 2955?



Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BL0PR12MB234010BCEA83C62889B2B9C6AFCE0BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Koyel,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It &quot;supports&quot; it, but that is a bit of a misnomer.&nbsp; Unless y=
ou are using the aforementioned network mode (which has its own speed limit=
ations due to it not being designed for anything more than testing), the Et=
hernet goes through the ARM first, so the speeds
 are no where near the possibilities of 1Gb.&nbsp; If you are able to buy s=
omething different and still need embedded, look at the E320.&nbsp; The fir=
mware isn't quite ready for prime time, but it is usable enough and its net=
work mode is designed to be used like the
 other non-embedded devices and can work up to 10G.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Koyel Das (Vehere) via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, July 16, 2019 4:31 AM<br>
<b>To:</b> Robin Coxe; Marcus D Leech<br>
<b>Cc:</b> Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] USRP E313</font>
<div>&nbsp;</div>
</div>
<div>Does it support 1gig Ethernet? That is will the data rate be 1 gig?<br=
>
<br>
Regards,<br>
<br>
Koyel Das<br>
Senior =96 Product Engineer<br>
Vehere | Proactive Communications Intelligence &amp; Cyber Defence<br>
M: &#43;919051132173 | T: &#43;91 33 40545454 | F: &#43;91 33 40545455 | W:=
 www.vehere.com<br>
<br>
<br>
<br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!<br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Robin Coxe &lt;coxe=
@quanttux.com&gt;<br>
<b>Sent:</b> Monday, July 15, 2019 8:18:41 PM<br>
<b>To:</b> Marcus D Leech<br>
<b>Cc:</b> Koyel Das (Vehere); Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] USRP E313</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">The USRP E313 is an E310 in a weatherproof enclosure with =
PoE capability.&nbsp; &nbsp;As Marcus points out, the network interface to =
the PC (over 1gigE RJ-45) has far less bandwidth than an Ettus-branded USRP=
 X310 or NI USRP 294x or 295x using a PCIe or
 2x10 gigE link to a host PC.
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Mon, Jul 15, 2019 at 7:44 AM M=
arcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bo=
rder-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"auto">Not really possible except for a test mode called network=
 mode that offers very low bandwidth<br>
<br>
<div id=3D"x_x_gmail-m_-3497708271369395004AppleMailSignature" dir=3D"ltr">=
Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jul 15, 2019, at 4:27 AM, Koyel Das (Vehere) via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_x_gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr=
" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,=
sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emo=
jiSymbols">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
Hi,</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
The following USRP</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_x_gmail-m_-3497708271369395004LPlnk349954" target=3D"_bl=
ank">https://www.ettus.com/all-products/usrp-e313/</a></p>
<div id=3D"x_x_gmail-m_-3497708271369395004LPBorder_GT_15631740463640.46097=
31603017766" style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiF=
ont; font-size:16px; width:885px; margin-bottom:20px; overflow:auto">
<table cellspacing=3D"0" id=3D"x_x_gmail-m_-3497708271369395004LPContainer_=
15631740463610.5595525113046114" style=3D"width:796px; margin-top:20px; pad=
ding-top:20px; padding-bottom:20px; border-top:1px dotted rgb(200,200,200);=
 border-bottom:1px dotted rgb(200,200,200); overflow:auto">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td colspan=3D"1" id=3D"x_x_gmail-m_-3497708271369395004ImageCell_156317404=
63620.520711699452409" style=3D"width:250px; padding-right:20px">
<div id=3D"x_x_gmail-m_-3497708271369395004LPImageContainer_15631740463620.=
7982520787803893" style=3D"display:table; width:250px; height:131px; margin=
:auto">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_x_gmail-m_-3497708271369395004LPImageAnchor_156317404636=
20.5859776582035903" target=3D"_blank" style=3D"text-align:center; display:=
table-cell"><img id=3D"x_x_gmail-m_-3497708271369395004LPThumbnailImageID_1=
5631740463620.0445211311981637" style=3D"vertical-align:bottom; display:inl=
ine-block; width:250px; height:131px; max-width:250px; border-width:0px; ma=
x-height:250px" src=3D"https://www.ettus.com/wp-content/uploads/2019/01/E31=
3_Front-Large_2-1200x630.jpg"></a></div>
</td>
<td colspan=3D"2" id=3D"x_x_gmail-m_-3497708271369395004TextCell_1563174046=
3630.9983429177449736" style=3D"vertical-align:top; padding:0px">
<div id=3D"x_x_gmail-m_-3497708271369395004LPRemovePreviewContainer_1563174=
0463630.5835837580145755">
</div>
<div id=3D"x_x_gmail-m_-3497708271369395004LPTitle_15631740463630.948763322=
1229601" style=3D"color:rgb(0,120,215); font-size:21px; font-family:wf_sego=
e-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; li=
ne-height:21px">
<a href=3D"https://www.ettus.com/all-products/usrp-e313/" rel=3D"noopener n=
oreferrer" id=3D"x_x_gmail-m_-3497708271369395004LPUrlAnchor_15631740463630=
.8538318560805709" target=3D"_blank" style=3D"text-decoration-line:none">US=
RP E313 | Ettus Research, a National Instruments
 Brand | The leader in Software Defined Radio (SDR)</a></div>
<div id=3D"x_x_gmail-m_-3497708271369395004LPMetadata_15631740463630.931928=
0120041624" style=3D"color:rgb(102,102,102); font-size:14px; font-family:wf=
_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,san=
s-serif,serif,EmojiFont; margin:10px 0px 16px; line-height:14px">
<a href=3D"http://www.ettus.com" target=3D"_blank">www.ettus.com</a></div>
<div id=3D"x_x_gmail-m_-3497708271369395004LPDescription_15631740463630.732=
3390913605139" style=3D"color:rgb(102,102,102); font-size:14px; font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; overflow:hidden; max-height:100px; line-height:=
20px">
The USRP E313 is a rugged and weatherproof SDR designed for outdoor deploym=
ent. Containing an embedded USRP E310 inside an IP67-rated enclosure, the U=
SRP E313 provides ingress protection against dust and water with extensive =
testing to ensure operation under
 demanding environmental conditions.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font=
-size:16px">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; fo=
nt-size:16px">has embedded processor I think. So is it possible that we don=
't use the embedded processor and use it like USRP 2955 that is capture dat=
a using gnuradio&nbsp;API and process it
 in our computer as we are doing with 2955?</span>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-=
size:16px">
</p>
<div><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFon=
t; font-size:16px"><br>
</span></div>
<br>
<p></p>
<p style=3D"margin-top:0px; margin-bottom:0px">Regards,</p>
<div id=3D"x_x_gmail-m_-3497708271369395004Signature">
<div id=3D"x_x_gmail-m_-3497708271369395004divtagdefaultwrapper" dir=3D"ltr=
" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,=
sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emo=
jiSymbols">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px; line-h=
eight:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: &#43;919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" =
style=3D"font-size:16px"><font style=3D"font-size:9pt">T: &#43;91&nbsp;33 4=
0545454 | F: &#43;91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.veher=
e.com/" rel=3D"noopener noreferrer" id=3D"x_x_gmail-m_-3497708271369395004L=
PNoLP" target=3D"_blank">www.vehere.com</a></font></font><font face=3D"Taho=
ma,serif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" rel=3D"noopener noreferrer" id=3D"x_x_gmail-m_-3497708271369395004LPN=
oLP" title=3D"https://www.linkedin.com/company/vehere-interactive-p-ltd=0A=
Ctrl&#43;Click or tap to follow the link" target=3D"_blank"><span style=3D"=
color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,Em=
ojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed" style=
=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D=
2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=
=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_W=
wKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4=
e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213=
fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34); fo=
nt-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><=
a href=3D"https://twitter.com/VehereIndia" rel=3D"noopener noreferrer" id=
=3D"x_x_gmail-m_-3497708271369395004LPNoLP" target=3D"_blank"><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed (1=
)" style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/=
0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp=
;attid=3D0.2&amp;disp=3Demb&amp;attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKU=
BvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAa=
CgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46=
f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,3=
4); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</=
span><a href=3D"https://www.facebook.com/VehereIndia/" rel=3D"noopener nore=
ferrer" id=3D"x_x_gmail-m_-3497708271369395004LPNoLP" target=3D"_blank"><sp=
an style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-se=
rif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"un=
named (2)" style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com=
/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213=
fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-R6DmUlgNehr=
-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8Ef=
zpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=
=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rg=
b(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont"=
>&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-family:Tahoma,=
sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p></p>
</div>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-=
users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234010BCEA83C62889B2B9C6AFCE0BL0PR12MB2340namp_--


--===============1365712439986064322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1365712439986064322==--

