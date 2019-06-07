Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B6B3925E
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:42:30 +0200 (CEST)
Received: from [::1] (port=34462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHwj-0005yZ-TQ; Fri, 07 Jun 2019 12:42:29 -0400
Received: from otransport-19.outbound.emailsrv.net ([54.164.123.4]:37369)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZHwf-0005pO-VE
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:42:25 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-19.outbound.emailsrv.net (Postfix) with ESMTPS id 96695616D2;
 Fri,  7 Jun 2019 16:41:44 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2055.outbound.protection.outlook.com [104.47.42.55])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id CD1E11E0008;
 Fri,  7 Jun 2019 16:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9cZ313rcvh1iGscO+xgRShjeAPOddOK9wuS/nHFuyVQ=;
 b=n002a2GTDADOiOCGHooWbvmpcU0BbgQpoCLQEBSNdOPEQ+FVY9Yl1A+eRZGorLilQugvo+WcgWAjcLaAu5AiGwmkIyagSL0leLD6v//ZgJYjveTgEImJIly8iA0p5OlrkfsOzUr0qNezd5JpdHwNJteNyw6YKNMKu+/Rc398S8s=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2452.namprd12.prod.outlook.com (52.132.11.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 16:41:41 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 16:41:41 +0000
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/qaQS+aAgAALXZaAAAMIAIAAAXc7gAAC34CAAABakIAABWsAgAAAWPY=
Date: Fri, 7 Jun 2019 16:41:41 +0000
Message-ID: <BL0PR12MB2340EF121686FC31593EC856AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>
In-Reply-To: <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c237dc8-6ddb-4b21-8480-08d6eb67050b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2452; 
x-ms-traffictypediagnostic: BL0PR12MB2452:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB2452ABDFB6AFDD25005526E2AF100@BL0PR12MB2452.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(366004)(39830400003)(376002)(136003)(54094003)(189003)(199004)(3846002)(6116002)(2906002)(11346002)(476003)(7696005)(5660300002)(1015004)(52536014)(99286004)(446003)(6436002)(229853002)(25786009)(76176011)(53546011)(66066001)(256004)(6506007)(26005)(186003)(102836004)(5070765005)(486006)(33656002)(6306002)(54896002)(7736002)(6916009)(73956011)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(74316002)(14454004)(19627405001)(966005)(86362001)(316002)(54906003)(55016002)(9686003)(71200400001)(8936002)(606006)(71190400001)(53936002)(508600001)(81166006)(19627235002)(236005)(4326008)(6246003)(53386004)(81156014)(8676002)(6606003)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2452;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Fso1pQZ/7EF91CYBJpl62stXx82fagfz0FepCaZREAzun8wDvuIX5cfDe09jYF/eOmT+BTqPpVGQSv++jOvLoe+59O3a2gl04upv2ewyYUfBDn9dqZBd0/4UPq8DRkI6yGmDzLAdbDOXeAwN5o9eVbOmwBVcDw+CqxlLDWZT6VW3l5h49+gGzEEHLNQ158910Cnxe4gPAFQ820h7TcSJLTgXAgx2fUS9fSS2BckrqZqVgc/Pt3WypV9rXgIWYpwpb0et+xpWyufso6DYQjDQzfCIMZzJErLyVslYm5pLYqbZgaHon7vjACBj8SXXbHnvmzAIn511if67jxXhQPpxM9lioImhBnYY6YOyhAHgPGtqwVICWoRQJ5EB2iCB4m/tfzhxj/n+rt47aB+WrMjKB3AEToKssweIlkTWlCpLve4=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c237dc8-6ddb-4b21-8480-08d6eb67050b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 16:41:41.7454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2452
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-by2nam03lp2055.outbound.protection.outlook.com|104.47.42.55|NAM03-BY2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.42.55, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: a8de4786-1963-4376-9310-00d5713d0a0d
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
Content-Type: multipart/mixed; boundary="===============5903321310835239022=="
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

--===============5903321310835239022==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340EF121686FC31593EC856AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB2340EF121686FC31593EC856AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, maybe based on my last email (which crossed yours I think).  The addr f=
lag doesn't seem to work at all with the uhd_usrp_probe on the E310 (at lea=
st my version).

________________________________
From: Nate Temple <nate.temple@ettus.com>
Sent: Friday, June 7, 2019 12:37 PM
To: Jason Matusiak
Cc: Marcus D Leech; Philip Balister; Ettus Mail List
Subject: Re: [USRP-users] E320 hogging the network

Hi Jason,

For what its worth, I haven't personally ran this exact combo (E310 w/ UHD =
3.11 and E320 w/ 3.14) on the same subnet, but I have ran two N320's on the=
 same subnet (192.168.10.2 and 192.168.10.3, both with 3.14). I did run int=
o the issue where probing in embedded mode would pickup the other device fi=
rst, but when providing a localhost addr, it worked as expected. I could us=
e both devices from a common host in network mode.

Trying the E320/E310 on different subnets would be worth a try.

I'll open an internal issue on our bug tracker for this, there is likely im=
provements we can make to the device discovery.


Regards,
Nate Temple

On Fri, Jun 7, 2019 at 9:22 AM Jason Matusiak <jason@gardettoengineering.co=
m<mailto:jason@gardettoengineering.com>> wrote:

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
From: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
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

--_000_BL0PR12MB2340EF121686FC31593EC856AF100BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">OK, maybe based on my last email =
(which crossed yours I think).&nbsp; The addr flag doesn't seem to work at =
all with the uhd_usrp_probe on the E310 (at least my version).</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nate Temple &lt;nate.=
temple@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:37 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Marcus D Leech; Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">Hi Jason,<br>
<br>
For what its worth, I haven't personally ran this exact combo (E310 w/ UHD =
3.11 and E320 w/ 3.14) on the same subnet, but I have ran two N320's on the=
 same subnet (192.168.10.2 and 192.168.10.3, both with 3.14). I did run int=
o the issue where probing in embedded
 mode would pickup the other device first, but when providing a localhost a=
ddr, it worked as expected. I could use both devices from a common host in =
network mode.<br>
<br>
Trying the E320/E310 on different subnets would be worth a try. <br>
<br>
I'll open an internal issue on our bug tracker for this, there is likely im=
provements we can make to the device discovery.
<br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 7, 2019 at 9:22 AM Jaso=
n Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" id=3D"LPlnk=
576930" class=3D"OWAAutoLink" previewremoved=3D"true">jason@gardettoenginee=
ring.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_gmail-m_-4609324326238377015divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sa=
ns-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Howdy.</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Nope, but it fails in a weir=
d way.&nbsp; I disconnected the E320 to make sure this issue wasn't due to =
it, but it still acts the same.</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">If I run:&nbsp;<span>uhd_usr=
p_probe --args &quot;addr=3D127.0.0.1&quot;&nbsp;</span></p>
<p style=3D"margin-top:0px; margin-bottom:0px"><span></span></p>
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
k_multidev" class=3D"x_gmail-m_-4609324326238377015OWAAutoLink OWAAutoLink"=
 id=3D"LPlnk3925" target=3D"_blank" previewremoved=3D"true">https://files.e=
ttus.com/manual/page_usrp2.html#usrp2_network_multidev</a><br>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-4609324326238377015divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D=
"_blank" id=3D"LPlnk622893" class=3D"OWAAutoLink" previewremoved=3D"true">n=
ate.temple@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:17 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Marcus D Leech; Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail-m_-4609324326238377015x_gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">
Hi Jason,<br>
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
<div class=3D"x_gmail-m_-4609324326238377015x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail-m_-4609324326238377015x_gmail_attr">On Fr=
i, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" id=3D"LPlnk582436" class=3D"x_gmail-m_-46093=
24326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" previewremoved=3D"=
true">usrp-users@lists.ettus.com</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"x_gmail-m_-4609324326238377015x_gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-l=
eft:1ex">
<div dir=3D"ltr">
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494divta=
gdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); fon=
t-family:Calibri,Helvetica,sans-serif">
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
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494divRp=
lyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" id=3D"LPlnk185021" class=3D"x_gmail-m_-4609324326238377015OWAAutoLink OW=
AAutoLink" target=3D"_blank" previewremoved=3D"true">patchvonbraun@gmail.co=
m</a>&gt;<br>
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
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_App=
leMailSignature" dir=3D"ltr">
Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" id=3D"LPlnk797974" class=3D"x_gmail-m_-46=
09324326238377015x_gmail-m_-717118252188596494OWAAutoLink x_gmail-m_-460932=
4326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" previewremoved=3D"t=
rue">usrp-users@lists.ettus.com</a>&gt;
 wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_div=
tagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); f=
ont-family:Calibri,Helvetica,sans-serif">
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
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_div=
RplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Philip Balister &lt;<a href=3D"mailto:philip@balister.org" =
id=3D"LPlnk711663" class=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118=
252188596494OWAAutoLink x_gmail-m_-4609324326238377015OWAAutoLink OWAAutoLi=
nk" target=3D"_blank" previewremoved=3D"true">philip@balister.org</a>&gt;<b=
r>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_=
BodyFragment">
<font size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_=
PlainText">
Check each ones ip address, likely by running ifconfig. In the back of<br>
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
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk924815" class=
=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OWAAutoLink =
x_gmail-m_-4609324326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" pr=
eviewremoved=3D"true">
USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"LPlnk734464" class=3D"x_gmail-m_-4609324326238377015x_gmail-=
m_-717118252188596494x_OWAAutoLink x_gmail-m_-4609324326238377015OWAAutoLin=
k OWAAutoLink" target=3D"_blank" previewremoved=3D"true">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPBor=
der_GT_15599226502150.13089060943563968" style=3D"margin-bottom:20px; overf=
low:auto; width:100%; text-indent:0px">
<table id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPC=
ontainer_15599226502120.04792581257573203" cellspacing=3D"0" style=3D"width=
:90%; background-color:rgb(255,255,255); overflow:auto; padding-top:20px; p=
adding-bottom:20px; margin-top:20px; border-top:1px dotted rgb(200,200,200)=
; border-bottom:1px dotted rgb(200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_Text=
Cell_15599226502130.8981442849088146" colspan=3D"2" style=3D"vertical-align=
:top; padding:0px; display:table-cell">
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPRem=
ovePreviewContainer_15599226502130.8567687510464137">
</div>
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPTit=
le_15599226502130.9834956850385919" style=3D"color:rgb(47,144,196); font-we=
ight:400; font-size:21px; font-family:wf_segoe-ui_light,&quot;Segoe UI Ligh=
t&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot=
;,Tahoma,Arial,sans-serif; line-height:21px">
<a id=3D"LPlnk642137" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-=
users_lists.ettus.com" class=3D"x_gmail-m_-4609324326238377015OWAAutoLink O=
WAAutoLink" target=3D"_blank" style=3D"text-decoration:none" previewremoved=
=3D"true">USRP-users Info Page - Ettus</a></div>
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPMet=
adata_15599226502140.4985541427536597" style=3D"margin:10px 0px 16px; color=
:rgb(102,102,102); font-weight:400; font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font-size:14px; =
line-height:14px">
<a href=3D"http://lists.ettus.com" id=3D"LPlnk140845" class=3D"x_gmail-m_-4=
609324326238377015x_gmail-m_-717118252188596494OWAAutoLink x_gmail-m_-46093=
24326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" previewremoved=3D"=
true">lists.ettus.com</a></div>
<div id=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPDes=
cription_15599226502150.3645585643269975" style=3D"display:block; color:rgb=
(102,102,102); font-weight:400; font-family:wf_segoe-ui_normal,&quot;Segoe =
UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; font-size:14px; line=
-height:20px; max-height:100px; overflow:hidden">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"LPlnk816741" class=3D"x=
_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OWAAutoLink x_gma=
il-m_-4609324326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" preview=
removed=3D"true">
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
<span><a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk971411" clas=
s=3D"x_gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OWAAutoLink=
 x_gmail-m_-4609324326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" p=
reviewremoved=3D"true">USRP-users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" id=3D"LPlnk691262" class=3D"x_gmail-m_-4609324326238377015x_gmail=
-m_-717118252188596494OWAAutoLink x_gmail-m_-4609324326238377015OWAAutoLink=
 OWAAutoLink" target=3D"_blank" previewremoved=3D"true">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"LPlnk71447" class=3D"x_=
gmail-m_-4609324326238377015OWAAutoLink OWAAutoLink" target=3D"_blank" prev=
iewremoved=3D"true">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" id=3D"LPlnk688022" class=3D"x_gmail-m_-4609324326238=
377015OWAAutoLink OWAAutoLink" target=3D"_blank" previewremoved=3D"true">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340EF121686FC31593EC856AF100BL0PR12MB2340namp_--


--===============5903321310835239022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5903321310835239022==--

