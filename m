Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF36D391A7
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:10:26 +0200 (CEST)
Received: from [::1] (port=43714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHRh-0001dT-R2; Fri, 07 Jun 2019 12:10:25 -0400
Received: from otransport-3.outbound.emailsrv.net ([52.1.182.179]:55148)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZHRd-0001Us-Eq
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:10:21 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-3.outbound.emailsrv.net (Postfix) with ESMTPS id C77D9616E1;
 Fri,  7 Jun 2019 16:09:40 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2050.outbound.protection.outlook.com [104.47.40.50])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 257011E000D;
 Fri,  7 Jun 2019 16:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bb+4lXOVpLPP0eXeu3Oup44VljdRRzFiOeZnEzTnJjI=;
 b=XrTK/mdiCpe0z92dSdLyz46iKcztcq3eykO6XHxz0DBK2upwJNw2w+Q/N7ycvtZaUmVIh/I23bI3jyev3Qsv6lafrd6mhzn+joiSZtDQn5fTihECIBiNLxaKar4BReC3sS9h2W237TF49DmR8EEvPbz4qU0J+m5DzVn4Ll0I6fs=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2436.namprd12.prod.outlook.com (52.132.11.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 16:09:38 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 16:09:38 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/qaQS+aAgAALXZaAAAMIAIAAAXc7
Date: Fri, 7 Jun 2019 16:09:38 +0000
Message-ID: <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
In-Reply-To: <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5e7829b-d328-4570-86b4-08d6eb628a6f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2436; 
x-ms-traffictypediagnostic: BL0PR12MB2436:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB243699274C72BB9588C50DE8AF100@BL0PR12MB2436.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39830400003)(396003)(136003)(199004)(189003)(6606003)(6246003)(7736002)(6916009)(74316002)(53386004)(606006)(53936002)(1015004)(81166006)(966005)(476003)(256004)(33656002)(14454004)(486006)(229853002)(3846002)(6436002)(446003)(81156014)(11346002)(66946007)(73956011)(66446008)(76116006)(64756008)(66556008)(66476007)(6116002)(508600001)(316002)(4326008)(8936002)(25786009)(54896002)(55016002)(6306002)(236005)(9686003)(2906002)(68736007)(102836004)(99286004)(186003)(5660300002)(71200400001)(76176011)(52536014)(53546011)(71190400001)(7696005)(1411001)(6506007)(86362001)(19627405001)(54906003)(66066001)(26005)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2436;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IdnQujP1MLCESOijlP4nAMZeH/WrUlQUYQAiQ6EmDKIQwUK9qzN8eWjpBihSS+anVFyMlVXuLlTaX+TPX3C/uEGVlfr1b6a2ssNw9ctYDKl1/DY2xTEeCi3Zjz5vIH8950HXSW8gIBDvWmxuUtsawQTswybkEPWgxlbr8b5qE85kiRJmemywEi0kA0npEGMehbPMwy4+dprq0Pe2W5TpEOy0YFca2moHrVojXnVJ++btga8itDp4/FQF6GRodyndGbgZFw6iBrl/W1c7TJijRMVFD9+2dckWQ08RISACy7ggF8z/qK9vptiVE7VmD5ueArjNd3mV+5tkszGADG2vBf6jverSyK7Gl3fpm+iTuzxm8aY3ZvJtAT4OYlGSvBypyz66DyNaxW7g8fosz8/J75kMnOK+PLeCXNb4GftC7TY=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5e7829b-d328-4570-86b4-08d6eb628a6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 16:09:38.0341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2436
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam03lp2050.outbound.protection.outlook.com|104.47.40.50|NAM03-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.40.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-25738-c
X-Mailprotector-ID: d4aa3192-ebbf-4035-929e-a52bc50d3a59
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
Content-Type: multipart/mixed; boundary="===============2877930616179363618=="
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

--===============2877930616179363618==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340AA2DD249B609B88CBFE3AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB2340AA2DD249B609B88CBFE3AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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
From: Marcus D Leech <patchvonbraun@gmail.com>
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

--_000_BL0PR12MB2340AA2DD249B609B88CBFE3AF100BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Darn, I was hoping that was it, b=
ut I don't think so.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Here is the result from my E310:<=
/p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>eth0&nbsp; &nbsp; &nbsp; Link encap:Ethernet&nbsp; HWaddr 00:80:2F:25:=
44:46&nbsp;&nbsp;</div>
<div><br>
</div>
and now the E320:
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>sfp0&nbsp; &nbsp; &nbsp; Link encap:Ethernet&nbsp; HWaddr 00:80:2F:24:=
C2:FB&nbsp;&nbsp;</div>
<div><br>
</div>
If I ping each device on my host, then run arp, I see this (the mac address=
es match up correctly):
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Address&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
HWtype&nbsp; HWaddress&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Flags Mask&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Iface</div>
<div><span style=3D"font-size: 12pt;">192.168.10.45&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; ether&nbsp; &nbsp;00:80:2f:24:c2:fb&nbsp; &nbsp;C&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p4p1</s=
pan><br>
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
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D Leech &lt;pa=
tchvonbraun@gmail.com&gt;<br>
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
<div id=3D"x_AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" id=3D"LPlnk639361" class=3D"OWAAutoLink" =
previewremoved=3D"true">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Philip,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">They have unique addresses (10.9=
5 and 10.45).&nbsp; It is really weird that when I am on the E310, and set =
the ip-addr to himself, that he would even look off the device....</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">They both have hostnames and the=
y are not similar to each other at all.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Philip Balister &lt=
;<a href=3D"mailto:philip@balister.org" id=3D"LPlnk882867" class=3D"OWAAuto=
Link" previewremoved=3D"true">philip@balister.org</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">Check each ones ip address, likely by running if=
config. In the back of<br>
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
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk624958" class=
=3D"OWAAutoLink" previewremoved=3D"true">
USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"LPlnk737468" class=3D"x_OWAAutoLink" previewremoved=3D"true"=
>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"LPBorder_GT_15599226502150.13089060943563968" style=3D"margin-bo=
ttom:20px; overflow:auto; width:100%; text-indent:0px">
<table id=3D"LPContainer_15599226502120.04792581257573203" role=3D"presenta=
tion" cellspacing=3D"0" style=3D"width:90%; background-color:rgb(255,255,25=
5); overflow:auto; padding-top:20px; padding-bottom:20px; margin-top:20px; =
border-top:1px dotted rgb(200,200,200); border-bottom:1px dotted rgb(200,20=
0,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"x_TextCell_15599226502130.8981442849088146" colspan=3D"2" style=
=3D"vertical-align: top; padding: 0px; display: table-cell; position: relat=
ive;">
<div id=3D"LPRemovePreviewContainer_15599226502130.8567687510464137"></div>
<div id=3D"LPTitle_15599226502130.9834956850385919" style=3D"top:0px; color=
:rgb(47,144,196); font-weight:400; font-size:21px; font-family:wf_segoe-ui_=
light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&=
quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; line-height:21px">
<a id=3D"LPUrlAnchor_15599226502140.7551838018712569" href=3D"http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank" st=
yle=3D"text-decoration:none">USRP-users Info Page - Ettus</a></div>
<div id=3D"LPMetadata_15599226502140.4985541427536597" style=3D"margin:10px=
 0px 16px; color:rgb(102,102,102); font-weight:400; font-family:wf_segoe-ui=
_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; =
font-size:14px; line-height:14px">
<a href=3D"http://lists.ettus.com" id=3D"LPlnk749581" class=3D"OWAAutoLink"=
 previewremoved=3D"true">lists.ettus.com</a></div>
<div id=3D"LPDescription_15599226502150.3645585643269975" style=3D"display:=
block; color:rgb(102,102,102); font-weight:400; font-family:wf_segoe-ui_nor=
mal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font=
-size:14px; line-height:20px; max-height:100px; overflow:hidden">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"LPlnk519634" class=3D"O=
WAAutoLink" previewremoved=3D"true">
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
<span><a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk365189" clas=
s=3D"OWAAutoLink" previewremoved=3D"true">USRP-users@lists.ettus.com</a></s=
pan><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" id=3D"LPlnk448224" class=3D"OWAAutoLink" previewremoved=3D"true">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></spa=
n><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340AA2DD249B609B88CBFE3AF100BL0PR12MB2340namp_--


--===============2877930616179363618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2877930616179363618==--

