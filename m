Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F22339252
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:38:47 +0200 (CEST)
Received: from [::1] (port=32972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHt8-0005a0-Gv; Fri, 07 Jun 2019 12:38:46 -0400
Received: from otransport-23.outbound.emailsrv.net ([18.214.85.87]:55936)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZHt5-0005R3-5I
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:38:43 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-23.outbound.emailsrv.net (Postfix) with ESMTPS id A2C366126B;
 Fri,  7 Jun 2019 16:38:01 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2057.outbound.protection.outlook.com [104.47.42.57])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id CEDE41E000A;
 Fri,  7 Jun 2019 16:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1vEuhg4MU5Xr3YDJAkRs/vL88R3gv/9EiYFq0SwzV4=;
 b=lpMHcYa9e5XI1OP/09S7rdr7dde6NzkGD7Jl3cSbajUI6SFauj366goQpQSAQrR+2O1iWp7xlx5pDUUCiKCDXd7JTI+2s93375Wn7cKbdDPxVCdf/ia3bltJRBM6lnmvzYbqgvyVkRV5gorr4cYWKV8TOZPbzCOOG4ET8o/WFA0=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2452.namprd12.prod.outlook.com (52.132.11.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 16:37:57 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 16:37:57 +0000
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/qaQS+aAgAALXZaAAAMIAIAAAXc7gAAC34CAAABakIAABSm8
Date: Fri, 7 Jun 2019 16:37:57 +0000
Message-ID: <BL0PR12MB23406F4B69DFB6652CFC8F83AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>,
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e117ba66-f854-4457-2f63-08d6eb667f62
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2452; 
x-ms-traffictypediagnostic: BL0PR12MB2452:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB2452F9881360A314A79C5DAAAF100@BL0PR12MB2452.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(366004)(39830400003)(376002)(136003)(54094003)(189003)(199004)(3846002)(6116002)(2906002)(11346002)(476003)(7696005)(5660300002)(52536014)(99286004)(446003)(6436002)(229853002)(25786009)(76176011)(53546011)(66066001)(256004)(6506007)(26005)(186003)(102836004)(5070765005)(486006)(33656002)(6306002)(54896002)(7736002)(6916009)(73956011)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(74316002)(14454004)(19627405001)(966005)(86362001)(316002)(54906003)(55016002)(9686003)(71200400001)(2940100002)(8936002)(606006)(71190400001)(53936002)(508600001)(81166006)(236005)(4326008)(6246003)(53386004)(81156014)(8676002)(6606003)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2452;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UlswG5lW5RgxPkEkQSJPSob5LWY/xqwe/LtieBeX+aDLG4OT9tvyUnOy/5KbzObhKiSUO9AEyD821VSCAoYu/448T7RPWNQIlD7L9liWqr2ZntZAMGH3/6U78LSGHQtVtFnDdy20uHbv/rAlYXLdXv7U2d00uH9SgmW6S4WBfI4okqNRpukDAtrOP/HoK1y7Q733a5CTNfHI1Nfzr6BolXPUmrEkrTMMjfzsWqC5q7NdjDBIpgcvH6cCL+GW2sN19a0uHQp4Wenmgg5blabNNbO2wwZto0aQmq/uTaesGlAISXHM94J/S/Rb9DZFVtA7Yvr4e7GWgO9j3zxyC5SU04O2SkjSjTHGjLdyFPgPjsYms/+ectlQmxm7rWKThU7ub7d5Sb4uRMnoUrve8zkwJybF1nkPcQ1uyTJtUMExQb4=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e117ba66-f854-4457-2f63-08d6eb667f62
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 16:37:57.4747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2452
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2057.outbound.protection.outlook.com|104.47.42.57|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.57, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: 8a201ffa-7878-4b1a-8873-525bea13889d
Subject: Re: [USRP-users] E320 hogging the network
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
Cc: Philip Balister <philip@balister.org>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6994977212698223915=="
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

--===============6994977212698223915==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23406F4B69DFB6652CFC8F83AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB23406F4B69DFB6652CFC8F83AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I just realized that using the 127 and 102 addresses don't work with the pr=
obe on the E310. It only works when I don't use the arg flag.


________________________________
From: Jason Matusiak
Sent: Friday, June 7, 2019 12:22 PM
To: Nate Temple
Cc: Marcus D Leech; Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] E320 hogging the network


Howdy.


Nope, but it fails in a weird way.  I disconnected the E320 to make sure th=
is issue wasn't due to it, but it still acts the same.


If I run: uhd_usrp_probe --args "addr=3D127.0.0.1"

root@ettus-e3xx-sg3:~# uhd_usrp_probe --args "addr=3D127.0.0.1"
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400; UHD_3.11.0.1-0-unk=
nown
Error: i2c_zc_impl recv timeout



Reading up on the USRP2, they specifically say that you need to be on diffe=
rent subnets if you are using more than on device.  I wonder if this is the=
 case here too?
https://files.ettus.com/manual/page_usrp2.html#usrp2_network_multidev


________________________________
From: Nate Temple <nate.temple@ettus.com>
Sent: Friday, June 7, 2019 12:17 PM
To: Jason Matusiak
Cc: Marcus D Leech; Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] E320 hogging the network

Hi Jason,

On the E310, if you pass the device arg addr with 127.0.0.1 does it work as=
 expected?

uhd_usrp_probe --args "addr=3D127.0.0.1"


Regards,
Nate Temple

On Fri, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Darn, I was hoping that was it, but I don't think so.


Here is the result from my E310:

eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:44:46

and now the E320:

sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:C2:FB

If I ping each device on my host, then run arp, I see this (the mac address=
es match up correctly):

Address                  HWtype  HWaddress           Flags Mask            =
Iface
192.168.10.45            ether   00:80:2f:24:c2:fb   C                     =
p4p1
192.168.10.95            ether   00:80:2f:25:44:46   C                     =
p4p1

I figured that that would be fine though because I have the same issue when=
 I am running commands ON my E310.  And if it was a routing issue, it would=
 mean that both my machine and the E310 and the E320 were being screwed up.


________________________________
From: Marcus D Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.co=
m>>
Sent: Friday, June 7, 2019 12:01 PM
To: Jason Matusiak
Cc: Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] E320 hogging the network

Check the MAC addresses.

I know that on some ARM platforms that has to be programmed in at boot and =
perhaps these system images have it set to the same value.

Sent from my iPhone

On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:


Philip,


They have unique addresses (10.95 and 10.45).  It is really weird that when=
 I am on the E310, and set the ip-addr to himself, that he would even look =
off the device....


They both have hostnames and they are not similar to each other at all.


________________________________
From: Philip Balister <philip@balister.org<mailto:philip@balister.org>>
Sent: Friday, June 7, 2019 11:10 AM
To: Jason Matusiak; Ettus Mail List
Subject: Re: [USRP-users] E320 hogging the network

Check each ones ip address, likely by running ifconfig. In the back of
my mind, I recall something like this in the E100 days. Do they have the
same hostname?

Philip

On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:
> It looks like I am misunderstanding something with how the E320 handles t=
he network.
>
>
> I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of t=
he default 10.2).  I can ssh into it and things seem to run fine in embedde=
d mode.
>
>
> Now, if I ssh onto an E312 that is on the same network (IP 10.95), it doe=
sn't work right as long as the E320 is plugged in.  When I do a probe or ru=
n any other UHD-type commands on the E310, it seems to always talk to the E=
320 first and it screws everything up.  It doesn't matter if I put the E310=
's address into the command or not, the E320 responds.  I also remember see=
ing this occur when I was on my host machine running commands (the E320 bul=
lied its way into being the main attraction).
>
>
> My current work-around is to unplug Ethernet from the E320, run my comman=
d on the E310, plug back into the E320, then run its command.  This seems t=
o allow things to work as I intended, but is obviously not ideal and is fai=
rly difficult to do when devices are remote.
>
>
> So what am I missing here?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
USRP-users Info Page - Ettus<http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com>
lists.ettus.com<http://lists.ettus.com>
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>. Yo=
u can subscribe to the list, or change your existing subscription, in the s=
ections below.


>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BL0PR12MB23406F4B69DFB6652CFC8F83AF100BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I just realized that using the 12=
7 and 102 addresses don't work with the probe on the E310. It only works wh=
en I don't use the arg flag.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Friday, June 7, 2019 12:22 PM<br>
<b>To:</b> Nate Temple<br>
<b>Cc:</b> Marcus D Leech; Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Howdy.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Nope, but it fails in a weird wa=
y.&nbsp; I disconnected the E320 to make sure this issue wasn't due to it, =
but it still acts the same.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">If I run:&nbsp;<span>uhd_usrp_pr=
obe --args &quot;addr=3D127.0.0.1&quot;&nbsp;</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span></span></p>
<div><b>root@ettus-e3xx-sg3:~# uhd_usrp_probe --args &quot;addr=3D127.0.0.1=
&quot;&nbsp;</b></div>
<div><b>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.3.0; Boost_106400; UH=
D_3.11.0.1-0-unknown</b></div>
<div><b>Error: i2c_zc_impl recv timeout</b></div>
<div><br>
</div>
<br>
<p></p>
Reading up on the USRP2, they specifically say that you need to be on diffe=
rent subnets if you are using more than on device.&nbsp; I wonder if this i=
s the case here too?
<div><a href=3D"https://files.ettus.com/manual/page_usrp2.html#usrp2_networ=
k_multidev" class=3D"x_OWAAutoLink" id=3D"LPlnk533634" previewremoved=3D"tr=
ue">https://files.ettus.com/manual/page_usrp2.html#usrp2_network_multidev</=
a><br>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Nate Temple &lt;nat=
e.temple@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:17 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Marcus D Leech; Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_x_gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif">Hi Jason,<br>
<br>
On the E310, if you pass the device arg addr with 127.0.0.1 does it work as=
 expected?<br>
<br>
uhd_usrp_probe --args &quot;addr=3D127.0.0.1&quot; <br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Fri, Jun 7, 2019 at 9:10 AM Ja=
son Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" id=3D"LPlnk431857" class=3D"x_OWAAutoLink" previewremoved=3D"true">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bo=
rder-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_x_gmail-m_-717118252188596494divtagdefaultwrapper" dir=3D"ltr"=
 style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,s=
ans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Darn, I was hoping that was =
it, but I don't think so.</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Here is the result from my E=
310:</p>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<div>eth0&nbsp; &nbsp; &nbsp; Link encap:Ethernet&nbsp; HWaddr 00:80:2F:25:=
44:46&nbsp;&nbsp;</div>
<div><br>
</div>
and now the E320:
<p></p>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<div>sfp0&nbsp; &nbsp; &nbsp; Link encap:Ethernet&nbsp; HWaddr 00:80:2F:24:=
C2:FB&nbsp;&nbsp;</div>
<div><br>
</div>
If I ping each device on my host, then run arp, I see this (the mac address=
es match up correctly):
<p></p>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<div>Address&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
HWtype&nbsp; HWaddress&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Flags Mask&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Iface</div>
<div><span style=3D"font-size:12pt">192.168.10.45&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; ether&nbsp; &nbsp;00:80:2f:24:c2:fb&nbsp; &nbsp;C&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p4p1</spa=
n><br>
</div>
<div>192.168.10.95&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ether&nbsp; &nb=
sp;00:80:2f:25:44:46&nbsp; &nbsp;C&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p4p1</div>
<div><br>
</div>
I figured that that would be fine though because I have the same issue when=
 I am running commands ON my E310.&nbsp; And if it was a routing issue, it =
would mean that both my machine and the E310 and the E320 were being screwe=
d up.
<p></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_-717118252188596494divRplyFwdMsg" dir=3D"ltr"><font =
face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>=
From:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank" id=3D"LPlnk198700" class=3D"x_OWAAutoLink" previewremoved=3D=
"true">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:01 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div dir=3D"auto">Check the MAC addresses.&nbsp;
<div><br>
</div>
<div>I know that on some ARM platforms that has to be programmed in at boot=
 and perhaps these system images have it set to the same value.&nbsp;<br>
<br>
<div id=3D"x_x_gmail-m_-717118252188596494x_AppleMailSignature" dir=3D"ltr"=
>Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" id=3D"LPlnk219607" class=3D"x_x_gmail-m_-=
717118252188596494OWAAutoLink x_OWAAutoLink" target=3D"_blank" previewremov=
ed=3D"true">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_x_gmail-m_-717118252188596494x_divtagdefaultwrapper" dir=3D"lt=
r" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica=
,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Philip,</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">They have unique addresses (=
10.95 and 10.45).&nbsp; It is really weird that when I am on the E310, and =
set the ip-addr to himself, that he would even look off the device....</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">They both have hostnames and=
 they are not similar to each other at all.</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_-717118252188596494x_divRplyFwdMsg" dir=3D"ltr"><fon=
t face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><=
b>From:</b> Philip Balister &lt;<a href=3D"mailto:philip@balister.org" id=
=3D"LPlnk752829" class=3D"x_x_gmail-m_-717118252188596494OWAAutoLink x_OWAA=
utoLink" target=3D"_blank" previewremoved=3D"true">philip@balister.org</a>&=
gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_x_gmail-m_-717118252188596494x_BodyFragment"><font size=3D"=
2"><span style=3D"font-size:11pt">
<div class=3D"x_x_gmail-m_-717118252188596494x_PlainText">Check each ones i=
p address, likely by running ifconfig. In the back of<br>
my mind, I recall something like this in the E100 days. Do they have the<br=
>
same hostname?<br>
<br>
Philip<br>
<br>
On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; It looks like I am misunderstanding something with how the E320 handle=
s the network.<br>
&gt; <br>
&gt; <br>
&gt; I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead o=
f the default 10.2).&nbsp; I can ssh into it and things seem to run fine in=
 embedded mode.<br>
&gt; <br>
&gt; <br>
&gt; Now, if I ssh onto an E312 that is on the same network (IP 10.95), it =
doesn't work right as long as the E320 is plugged in.&nbsp; When I do a pro=
be or run any other UHD-type commands on the E310, it seems to always talk =
to the E320 first and it screws everything
 up.&nbsp; It doesn't matter if I put the E310's address into the command o=
r not, the E320 responds.&nbsp; I also remember seeing this occur when I wa=
s on my host machine running commands (the E320 bullied its way into being =
the main attraction).<br>
&gt; <br>
&gt; <br>
&gt; My current work-around is to unplug Ethernet from the E320, run my com=
mand on the E310, plug back into the E320, then run its command.&nbsp; This=
 seems to allow things to work as I intended, but is obviously not ideal an=
d is fairly difficult to do when devices
 are remote.<br>
&gt; <br>
&gt; <br>
&gt; So what am I missing here?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk972190" class=
=3D"x_x_gmail-m_-717118252188596494OWAAutoLink x_OWAAutoLink" target=3D"_bl=
ank" previewremoved=3D"true">
USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"LPlnk63911" class=3D"x_x_gmail-m_-717118252188596494x_OWAAut=
oLink x_OWAAutoLink" target=3D"_blank" previewremoved=3D"true">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"x_x_gmail-m_-717118252188596494LPBorder_GT_15599226502150.130890=
60943563968" style=3D"margin-bottom:20px; overflow:auto; width:100%; text-i=
ndent:0px">
<table id=3D"x_x_gmail-m_-717118252188596494LPContainer_15599226502120.0479=
2581257573203" cellspacing=3D"0" style=3D"width:90%; background-color:rgb(2=
55,255,255); overflow:auto; padding-top:20px; padding-bottom:20px; margin-t=
op:20px; border-top:1px dotted rgb(200,200,200); border-bottom:1px dotted r=
gb(200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"x_x_gmail-m_-717118252188596494x_TextCell_15599226502130.89814428=
49088146" colspan=3D"2" style=3D"vertical-align:top; padding:0px; display:t=
able-cell">
<div id=3D"x_x_gmail-m_-717118252188596494LPRemovePreviewContainer_15599226=
502130.8567687510464137">
</div>
<div id=3D"x_x_gmail-m_-717118252188596494LPTitle_15599226502130.9834956850=
385919" style=3D"color:rgb(47,144,196); font-weight:400; font-size:21px; fo=
nt-family:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light=
&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; l=
ine-height:21px">
<a id=3D"LPlnk470346" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-=
users_lists.ettus.com" target=3D"_blank" class=3D"x_OWAAutoLink" style=3D"t=
ext-decoration:none" previewremoved=3D"true">USRP-users Info Page - Ettus</=
a></div>
<div id=3D"x_x_gmail-m_-717118252188596494LPMetadata_15599226502140.4985541=
427536597" style=3D"margin:10px 0px 16px; color:rgb(102,102,102); font-weig=
ht:400; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&=
quot;,Tahoma,Arial,sans-serif; font-size:14px; line-height:14px">
<a href=3D"http://lists.ettus.com" id=3D"LPlnk642372" class=3D"x_x_gmail-m_=
-717118252188596494OWAAutoLink x_OWAAutoLink" target=3D"_blank" previewremo=
ved=3D"true">lists.ettus.com</a></div>
<div id=3D"x_x_gmail-m_-717118252188596494LPDescription_15599226502150.3645=
585643269975" style=3D"display:block; color:rgb(102,102,102); font-weight:4=
00; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot=
;,Tahoma,Arial,sans-serif; font-size:14px; line-height:20px; max-height:100=
px; overflow:hidden">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"LPlnk531886" class=3D"x=
_x_gmail-m_-717118252188596494OWAAutoLink x_OWAAutoLink" target=3D"_blank" =
previewremoved=3D"true">
usrp-users@lists.ettus.com</a>. You can subscribe to the list, or change yo=
ur existing subscription, in the sections below.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk853547" clas=
s=3D"x_x_gmail-m_-717118252188596494OWAAutoLink x_OWAAutoLink" target=3D"_b=
lank" previewremoved=3D"true">USRP-users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" id=3D"LPlnk479338" class=3D"x_x_gmail-m_-717118252188596494OWAAut=
oLink x_OWAAutoLink" target=3D"_blank" previewremoved=3D"true">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" id=3D"LPlnk=
954227" class=3D"x_OWAAutoLink" previewremoved=3D"true">USRP-users@lists.et=
tus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank" id=3D"LPlnk430781" class=3D"x_OWAA=
utoLink" previewremoved=3D"true">http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23406F4B69DFB6652CFC8F83AF100BL0PR12MB2340namp_--


--===============6994977212698223915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6994977212698223915==--

