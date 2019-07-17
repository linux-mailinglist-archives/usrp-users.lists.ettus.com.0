Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D663A6BBD4
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 13:51:31 +0200 (CEST)
Received: from [::1] (port=41170 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hniT2-0005iV-A5; Wed, 17 Jul 2019 07:51:28 -0400
Received: from otransport-19.outbound.emailsrv.net ([54.164.123.4]:33884)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hniSy-0005cK-TY
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 07:51:24 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-19.outbound.emailsrv.net (Postfix) with ESMTPS id 983BE618CF;
 Wed, 17 Jul 2019 11:50:44 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2056.outbound.protection.outlook.com [104.47.33.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 55B9E613B7;
 Wed, 17 Jul 2019 11:50:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lOMIpv4RGX6j3K1xvuwIJQcMtK05o0PiZuE/Y0GYhOsQ2WGwXuQ3zQ3NmzZ69UHdRrvqpAI/49ibuPADfxO2Co1ep9dP+B4wjRMcnokBr31/4TWZAIuIb6SCwr49Pd+xd7PWnBRvkpGKfILV0AG0/5h2IeZuIpAqZPcEr451iQprmvNQIPt15io1SKaF58noPm1pcN34C6H4fXiOAAWzAwrEvhM7cTsyHNS+rPX7O1/iy5ldviQXrXh6qYaRjvpKCkihutvaSgiFHvJiLLVoHmhcvdXyVdmc3JVr2T1keCnPXF0R0I5zUwFmRT1/gR8vYFrhhANF/640DQ/H9E/5XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brkImCgUjDrfRFW1i8MuOl2WfqO5+ZcX0YqccmRguAI=;
 b=ZvGMW799KLqJ9wMdV2cvmnjf6A3zU/1Fsnofa9WbLYmXyR+lsOVh0cN2Pl+AxXvltk2bSJdhQ9XALn17CfE0x2pXpZ9NYf4OeXQOPiE7aUInG//1EEJu10PD+i4a62ikxJQzbgEGqduds6hLsoizOXhhX9/J0Ed+bgXSj1vv7M/1bCQ1hpGji7c5OvYwLM1seMR7P3UPGXXZKaciZYzc6jDj9ijag+ZPdp/StmBHjA1+7bPBZx9sffhkF2s/dNfmZ27lF+a8LNo2xih35llyTR7saS0wSMr3Gof2xAQQEMaNwEP1NCxXbpbqAo7UVPypdAi8Nob6sCSOfrob7OXgJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brkImCgUjDrfRFW1i8MuOl2WfqO5+ZcX0YqccmRguAI=;
 b=Ui/8Kggufr8Wc0laP3bLtez6zbj9qyVby3TlBMcsjq0lxkg694ilcV1Hzw+XIVWKih1Yw630YkmJQfsaxuvNj7PdkVDyJfIhuSD7Py/8UGyWOvtQWOT2HKfs/Zaw5wqzItQ1lIBkdCzb9YL+dA0TLKZMuqPo/UW6KbOCU3tzLtI=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2484.namprd12.prod.outlook.com (52.132.11.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 11:50:42 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2094.011; Wed, 17 Jul 2019
 11:50:42 +0000
To: Sumit Kumar <cogwsn@gmail.com>
Thread-Topic: [USRP-users] Sequence Errors N200
Thread-Index: AQHVPJEbXcWWBQK7KE2S3Vh3Ld9JNKbOqY5VgAAHsoCAAAE5Sw==
Date: Wed, 17 Jul 2019 11:50:42 +0000
Message-ID: <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
In-Reply-To: <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00ab3e4c-fda0-4a6e-8dfd-08d70aacff0d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2484; 
x-ms-traffictypediagnostic: BL0PR12MB2484:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB2484A7705C71D64E6FA1D2DFAFC90@BL0PR12MB2484.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(39830400003)(366004)(136003)(199004)(189003)(508600001)(19627405001)(68736007)(7736002)(966005)(229853002)(5660300002)(76116006)(6916009)(5070765005)(486006)(66066001)(81166006)(76176011)(81156014)(33656002)(3846002)(66946007)(102836004)(8936002)(7696005)(6506007)(21615005)(86362001)(105004)(71190400001)(4326008)(53546011)(256004)(6306002)(54896002)(71200400001)(9686003)(6116002)(11346002)(476003)(8676002)(606006)(446003)(236005)(1411001)(26005)(25786009)(53936002)(74316002)(55016002)(99286004)(14454004)(66476007)(66556008)(64756008)(66446008)(52536014)(2906002)(316002)(6436002)(6246003)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2484;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DKUDpVCnObjmn5wwNtTMqm3yG+o0cciIXwQ27cNB3PU2n0SvBv/svTo0/KguVK8dXHbGXHgxTwh1nTeHo2lJkEnympr57ZrawzGlHrADP9YeCpfBVcnX4TciqHPiODLFXKVuV/lZ+O5GtUbza0v8CtKTMBExUz3UMmjXdGRzeJ+gCCGXCHJomTB0qL7gsOwM2S8wn7BkPV6RAsKioP1Pup82WwUDQFG7qLUl8UNTjzCHbV5SFUfJZqg3ioiZ4XyV4a+v/93mbpLP20yQeoh3OdauNaeljnooPbguNgPo8zB9Sf4saLnn59plJ3ERnXg1CnKEYY3qJDKbfi3QcVd2YsxMNrhDw24wzca/b6wsaIYsQYg/bL911DdqNJyJMsfgHRio9tikkGVCPqLwh36yl+K4Hz3zUztXKcwF455XLu0=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00ab3e4c-fda0-4a6e-8dfd-08d70aacff0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 11:50:42.4106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2484
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2056.outbound.protection.outlook.com|104.47.33.56|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-23079-c
X-Mailprotector-ID: f8fb3e2e-c5d2-4157-84d4-6ce9b49bfed2
Subject: Re: [USRP-users] Sequence Errors N200
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0643570539375544123=="
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

--===============0643570539375544123==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340682EFC45C0AA255B6AA2AFC90BL0PR12MB2340namp_"

--_000_BL0PR12MB2340682EFC45C0AA255B6AA2AFC90BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sumit,

OK, the last idea I have:

There is a sticker on the back of the N-series devices it usually says the =
version there, but not always.  This has a little info: https://kb.ettus.co=
m/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_=
EEPROM

Do they match?

________________________________
From: Sumit Kumar <cogwsn@gmail.com>
Sent: Wednesday, July 17, 2019 7:45 AM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Sequence Errors N200

Hi Jason,

Yes they are consistent, I mean the output of uhd_usrp_probe for both N200 =
is exactly the same (except the ip, serial and mac addr).
I do not know where the problem is! Hardware or software

Regards
Sumit

On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <jason@gardettoengineering.c=
om<mailto:jason@gardettoengineering.com>> wrote:
I am not really an N-series guy, so this probably won't be helpful.  Have y=
ou tried doing a uhd_usrp_probe on both devices and seen that the responses=
 are consistent?

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Sumit Kumar via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, July 17, 2019 7:15 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Sequence Errors N200

Hi,
I am trying transmit using Ettus N200 (call it A) but getting this error me=
ssage on the console

SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS..................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
................................

I looked for it on google and found these links
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495=
.html
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/03283=
8.html

Both the links  suggested problem related to the gigabit port. Then I conne=
cted another USRP N200 (call it B) to the same laptop and tried transmittin=
g using that as there were no such sequence error messages.

This makes me believe there is some problem with the first USRP, i.e., A.

Further I tried with different versions of UHD 3.11, UHD 3.15.. but its the=
 same.

Receive is good only transmit is throwing error.

Not only with UHD, even in labview, when I transmit, I see nothing coming o=
ut from the N200 (A).

I am using SBXv2 daughter board.

Any clue!

Regards
--
--
Sumit kumar
Postdoc
SnT, Luxembourg




--
--
Sumit kumar
Postdoc
SnT, Luxembourg



--_000_BL0PR12MB2340682EFC45C0AA255B6AA2AFC90BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Sumit,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
OK, the last idea I have:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
There is a sticker on the back of the N-series devices it&nbsp;<em>usually<=
/em>&nbsp;says the version there, but not always.&nbsp; This has a little i=
nfo:&nbsp;<a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughte=
rcard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM" rel=3D"nofollow" style=3D"c=
olor: rgb(59, 115, 175)">https://kb.ettus.com/About_the_Motherboard_and_Dau=
ghtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Do they match?</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Sumit Kumar &lt;cogws=
n@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:45 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Sequence Errors N200</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
<div>Yes they are consistent, I mean the output of uhd_usrp_probe for both =
N200 is exactly&nbsp;the same (except the ip, serial and mac addr).</div>
<div>I do not know where the problem is! Hardware or software&nbsp;</div>
<div><br>
</div>
<div>Regards</div>
<div>Sumit&nbsp;&nbsp;</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Jul 17, 2019 at 1:19 PM Jas=
on Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gard=
ettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am not really an N-series guy, so this probably won't be helpful.&nbsp; H=
ave you tried doing a uhd_usrp_probe on both devices and seen that the resp=
onses are consistent?</div>
<div id=3D"x_gmail-m_9014729813065413461Signature">
<div>
<div id=3D"x_gmail-m_9014729813065413461appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_9014729813065413461divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com=
" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Sumit Kumar via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Sequence Errors N200</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,&nbsp;
<div>I am trying transmit using Ettus N200 (call it A) but getting this err=
or message on the console&nbsp;</div>
<div><br>
</div>
<div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.....................................<br>
</div>
<div><br>
</div>
<div>I looked for it on google and found these links&nbsp;</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2014-May/037495.html" target=3D"_blank">http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2014-May/037495.html</a><br>
</div>
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2012-July/032838.html" target=3D"_blank">http://lists.ettus.com/pipermail/=
usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
</div>
<div><br>
</div>
<div>Both the links&nbsp; suggested problem related to the gigabit port. Th=
en I connected another USRP N200 (call it B) to the same laptop and tried t=
ransmitting using that as there were no such sequence error messages.</div>
<div><br>
</div>
<div>This makes me believe there is some problem with the first USRP, i.e.,=
 A.&nbsp;<br>
</div>
<div><br>
</div>
<div>Further I tried with different versions of UHD 3.11, UHD 3.15.. but it=
s the same.&nbsp;</div>
<div><br>
</div>
<div>Receive is good only transmit is throwing error.&nbsp;</div>
<div><br>
</div>
<div>Not only with UHD, even in labview, when I transmit, I see nothing com=
ing out from the N200 (A).&nbsp;</div>
<div><br>
</div>
<div>I am using SBXv2 daughter board.&nbsp;</div>
<div><br>
</div>
<div>Any clue!</div>
<div><br>
</div>
<div>Regards</div>
<div>-- <br>
<div dir=3D"ltr" class=3D"x_gmail-m_9014729813065413461x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136); font-size:12.8px">-=
-&nbsp;</span><br style=3D"color:rgb(136,136,136); font-size:12.8px">
<div style=3D"color:rgb(136,136,136); font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136); font-size:12.8px">SnT, Luxembourg</di=
v>
<div style=3D"color:rgb(136,136,136); font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"color:rgb(136,136,136); font-size:12.8px">-=
-&nbsp;</span><br style=3D"color:rgb(136,136,136); font-size:12.8px">
<div style=3D"color:rgb(136,136,136); font-size:12.8px">Sumit kumar<br>
Postdoc</div>
<div style=3D"color:rgb(136,136,136); font-size:12.8px">SnT, Luxembourg</di=
v>
<div style=3D"color:rgb(136,136,136); font-size:12.8px"><br>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340682EFC45C0AA255B6AA2AFC90BL0PR12MB2340namp_--


--===============0643570539375544123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0643570539375544123==--

