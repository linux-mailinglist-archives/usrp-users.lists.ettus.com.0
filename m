Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D9390A5
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 17:53:45 +0200 (CEST)
Received: from [::1] (port=49180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHBW-000593-TW; Fri, 07 Jun 2019 11:53:42 -0400
Received: from otransport-30.outbound.emailsrv.net ([3.209.239.254]:43040)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZHBT-00052o-7H
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 11:53:39 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-30.outbound.emailsrv.net (Postfix) with ESMTPS id A5C16617A7;
 Fri,  7 Jun 2019 15:52:57 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2053.outbound.protection.outlook.com [104.47.46.53])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 64068A4014;
 Fri,  7 Jun 2019 15:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IXIboQW0Nbsxu8zr+oYYEfXcd0c8IDWWrq3GptTSmdE=;
 b=Dc7UdEXXtKg4vddkb8vhsC7PGUBOLLyBIfNsZmMyCfe7e6xUZM32NSl/W6uCKYmO7SUnyiLj1cjPJlIvc4FMhgpS+aXKkTdUXCWYFMIV5GAp3On/WLjRZMHhxn4YEHYNrnRxbg5r/2pB4A8Q6+xvRneck9lfJdh9ePLyNSDqYG8=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2547.namprd12.prod.outlook.com (52.132.27.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 15:52:55 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 15:52:55 +0000
To: Philip Balister <philip@balister.org>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/qaQS+aAgAALXZY=
Date: Fri, 7 Jun 2019 15:52:55 +0000
Message-ID: <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
In-Reply-To: <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbd63e44-ecd5-4343-b2f6-08d6eb6034b2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2547; 
x-ms-traffictypediagnostic: BL0PR12MB2547:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2547F6E0E9655F9BE20B2C06AF100@BL0PR12MB2547.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(26005)(3846002)(86362001)(186003)(2906002)(66066001)(8676002)(14454004)(606006)(229853002)(8936002)(68736007)(6116002)(316002)(446003)(52536014)(7736002)(5660300002)(81166006)(19627405001)(476003)(66946007)(11346002)(6436002)(74316002)(81156014)(66556008)(66446008)(64756008)(486006)(66476007)(966005)(236005)(9686003)(6306002)(102836004)(110136005)(256004)(99286004)(54896002)(6506007)(33656002)(71200400001)(55016002)(508600001)(7696005)(53546011)(6606003)(71190400001)(25786009)(1015004)(76176011)(6246003)(76116006)(73956011)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2547;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: B2akxsyzi5FlHZkbYhQwhTRNtc2AKYc87ZtSXL7YAXJF0QpAwwQr3kfJSRKMfxxHL/025bJEa4c7KghmUG29KIQAgidIIc7Nxq1GYN2weKfVgFrpKPnDAQOJ0gF9rpRXGtYs+wGaAKEJF24lOUg0TtUhF1wdalA3fMIKiS0gKUf37eBR/zIJaGlsqOEmcXTrmKkgkdeLcPmfyQdPlzxFDN2JJ2eqcaZT34e6dgQ9Q3uppSTfC3ZecQOQ9B8AJM27c3Zj5q+ez3D0+IxG8cuU+7dA6NxuyBzVmfXh7gd6s8cFKoswKNjpRtEGeqoJH0tAnHy1oPoxHAoAjuzfG19iI4GFD3YarzpGsrPHEHg2sA2Y8Q4Xmc/1w8DLDX5ylx6XhEbwXyNKidW77JmyJw/uoQA+gNF+NnfRWQd63AqWOWI=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd63e44-ecd5-4343-b2f6-08d6eb6034b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 15:52:55.1169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2547
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam04lp2053.outbound.protection.outlook.com|104.47.46.53|NAM04-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.46.53, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-17573-c
X-Mailprotector-ID: 0fd1d22b-f641-4985-9ffc-d6ff3598f708
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
Content-Type: multipart/mixed; boundary="===============8761044727803859912=="
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

--===============8761044727803859912==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23407505B7EFEE3FAF0A34BBAF100BL0PR12MB2340namp_"

--_000_BL0PR12MB23407505B7EFEE3FAF0A34BBAF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Philip,


They have unique addresses (10.95 and 10.45).  It is really weird that when=
 I am on the E310, and set the ip-addr to himself, that he would even look =
off the device....


They both have hostnames and they are not similar to each other at all.


________________________________
From: Philip Balister <philip@balister.org>
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
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
USRP-users Info Page - Ettus<http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com>
lists.ettus.com
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to usrp-users@lists.ettus.com. You can subscribe to the list, or cha=
nge your existing subscription, in the sections below.


>

--_000_BL0PR12MB23407505B7EFEE3FAF0A34BBAF100BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Philip,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">They have unique addresses (10.95=
 and 10.45).&nbsp; It is really weird that when I am on the E310, and set t=
he ip-addr to himself, that he would even look off the device....</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">They both have hostnames and they=
 are not similar to each other at all.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Philip Balister &lt;p=
hilip@balister.org&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Check each ones ip address, likely by running ifco=
nfig. In the back of<br>
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
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"LPlnk737468" class=3D"OWAAutoLink" previewremoved=3D"true">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"LPBorder_GT_15599226502150.13089060943563968" style=3D"margin-bo=
ttom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15599226502120.04792581257573203" role=3D"presenta=
tion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255=
, 255); position: relative; overflow: auto; padding-top: 20px; padding-bott=
om: 20px; margin-top: 20px; border-top: 1px dotted rgb(200, 200, 200); bord=
er-bottom: 1px dotted rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15599226502130.8981442849088146" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15599226502130.8567687510464137"></div>
<div id=3D"LPTitle_15599226502130.9834956850385919" style=3D"top: 0px; colo=
r: rgb(47, 144, 196); font-weight: 400; font-size: 21px; font-family: wf_se=
goe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-heig=
ht: 21px;">
<a id=3D"LPUrlAnchor_15599226502140.7551838018712569" href=3D"http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank" st=
yle=3D"text-decoration: none;">USRP-users Info Page - Ettus</a></div>
<div id=3D"LPMetadata_15599226502140.4985541427536597" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_se=
goe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, s=
ans-serif; font-size: 14px; line-height: 14px;">
lists.ettus.com</div>
<div id=3D"LPDescription_15599226502150.3645585643269975" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_segoe-=
ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-=
serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hid=
den;">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to usrp-users@lists.ettus.com. You can subscribe to the list, or cha=
nge your existing subscription,
 in the sections below.</div>
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
</body>
</html>

--_000_BL0PR12MB23407505B7EFEE3FAF0A34BBAF100BL0PR12MB2340namp_--


--===============8761044727803859912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8761044727803859912==--

