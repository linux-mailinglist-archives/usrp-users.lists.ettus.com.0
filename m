Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7B24D04E
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 16:25:25 +0200 (CEST)
Received: from [::1] (port=51486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdy0A-0004qa-NK; Thu, 20 Jun 2019 10:25:22 -0400
Received: from otransport-10.outbound.emailsrv.net ([52.22.72.116]:59068)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hdy06-0004i1-O0
 for usrp-users@lists.ettus.com; Thu, 20 Jun 2019 10:25:18 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-10.outbound.emailsrv.net (Postfix) with ESMTPS id 6088E612AC;
 Thu, 20 Jun 2019 14:24:38 +0000 (UTC)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2050.outbound.protection.outlook.com [104.47.44.50])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id D1352613BF;
 Thu, 20 Jun 2019 14:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5hykWNvFga3LiZZkRjnkiqOshriiCZSVU2KzsIVZWVM=;
 b=gMrUsJfHdhHFTW9O+LUdj00KZk5cL+6kHvf8B9F/CaczhitGjBkXQ4IiqBLXGX83SzRK542nU1Bp/yDzDX9LKBDWHuVdBNE1cbgsWMcWvSGmu3YLqMxUm60qY4PZMCNOCYrcvnbse7JiTtGUFESRdLtXUrpA2VCx2XW6SxQbRCo=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2369.namprd12.prod.outlook.com (52.132.11.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 14:24:36 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 14:24:36 +0000
To: Chris Gobbett <gobbo@tpg.com.au>, Ettus List <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 with larger SD card
Thread-Index: AQHVJv4VYKtKw5BHWEGmE1+eknNVuaakiJze
Date: Thu, 20 Jun 2019 14:24:36 +0000
Message-ID: <BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>,
 <89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>
In-Reply-To: <89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 340c4a53-0871-4970-81cd-08d6f58b05a0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BL0PR12MB2369; 
x-ms-traffictypediagnostic: BL0PR12MB2369:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB23695A4932164D53BD10C6F6AFE40@BL0PR12MB2369.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(136003)(39830400003)(396003)(51914003)(189003)(13464003)(199004)(66066001)(53936002)(508600001)(54896002)(52536014)(66446008)(486006)(6116002)(14454004)(55016002)(76176011)(3846002)(6436002)(102836004)(66556008)(476003)(6306002)(236005)(66476007)(9686003)(25786009)(86362001)(99286004)(7696005)(6246003)(11346002)(76116006)(6506007)(66946007)(446003)(73956011)(33656002)(64756008)(7736002)(256004)(14444005)(53546011)(8676002)(6606003)(8936002)(186003)(2906002)(71200400001)(81166006)(26005)(5660300002)(229853002)(81156014)(19627405001)(68736007)(316002)(110136005)(71190400001)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2369;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gzBFqbkzjI9lSgw6Oh7YI8Rx+/17JUkBPKqvNZTGRRYA49i/uIhQiLPsozl+mVa6ZsKPQwG8atKK8qPYcITmptN1OPqwSo28K5jm56/+ZmTxuc2zzxOlqGvdLfjZ5XSCzZV7yR50rt7CF18M3pxOveZuh+fN+17En1Na2NLouVNAq7t1vH87ifH0fG0fHN6wwjhIj6SimnYPYOxuNo+MrnmUUBRz0vhjEJUrgrgGgnsgI7CPb6RieH5siKwXcG3/qS2Vfj3hEDIOFzlazQF4lKWsFBGKwm1RJLvwgkaWxa+un/UVA65VxfEQUwyqT2x4lh4iB/nVyQdWL6kMwvNDtID+ExA+/j+N1FKiE0qpkj2ZMMK0BwJgVYLeygIz+p+R9a915GHcC8vbpyORwmJr8IOl9e/ecI5+3mr0SKUJ4Vk=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 340c4a53-0871-4970-81cd-08d6f58b05a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 14:24:36.2358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2369
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam04lp2050.outbound.protection.outlook.com|104.47.44.50|NAM04-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.44.50, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-28479-c
X-Mailprotector-ID: 601b188f-4a54-436f-8ef3-3d2aec9e74b2
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
Content-Type: multipart/mixed; boundary="===============1749320413819237288=="
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

--===============1749320413819237288==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40BL0PR12MB2340namp_"

--_000_BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, I thought I had it, but it is still not working.  Here are some new det=
ails though.


I load up a fresh SD card (I've tried both bmaptools as well as dd).  I tos=
s it into my E320 and it boots up happy as pie.  I do a proper shutdown and=
 put it back into my host PC.  I unmount and then using gparted I extend th=
e data partition. I put the SD card back into the E320 and it boots up fine=
.  dh is showing that the partition is the new larger size and uhd_find_dev=
ices works, so I am happy there.  I reboot and all is gravy.  I shutdown -h=
 now and power-up and all is gravy.


I then create a folder in /data called localinstall.  Shutdown and then boo=
t up, all is fine.


I install my cross-compiled uhd into that folder.  I issue a shutdown -h no=
w command and it seems to shutdown fine.  Then it never powers up again.  I=
t really feels like even though the partition shows up as the new size on t=
he device, that I am overwriting the small partition size and screwing thin=
gs up...


________________________________
From: Chris Gobbett <gobbo@tpg.com.au>
Sent: Wednesday, June 19, 2019 8:21 PM
To: Jason Matusiak; Ettus List
Cc: Ettus Mail List
Subject: Re: [USRP-users] E320 with larger SD card


My understanding of the partiitons on the card are (in order);

<boot><filesystem+kernel A><filesystem+kernel B><persistent data><empty spa=
ce>

Mender allows you to boot from one of the A/B partitions as your primary fi=
lesystem (mounted as /), plus the persistent data (mounted as /home/ or /da=
ta or similar).

My experience is if you perform resizing while keeping the partitions conti=
guous (no free space between them), and have the A and B partitions identic=
al in size, it "just works". So my steps in the previous reply would look l=
ike:
   <boot><filesystem+kernel A><filesystem+kernel B><persistent data><------=
----empty space--------------->  # original image on large SD Card
   <boot><filesystem+kernel A><filesystem+kernel B><-------------empty spac=
e------------><persistent data>  # shift persistent data to the end
   <boot><----------filesystem+kernel A---------><----------filesystem+kern=
el B---------><persistent data>  # maximise A/B partitions, keeping A and B=
 the same size

Rather than extending the data partition, I wanted to add new libraries and=
 applications in /usr, which is located on the A/B partitions. Hence my ins=
tructions involve me resizing those partitions instead of the data partitio=
n.

If you're simply extending the size of the persistent data partition withou=
t shifting it's start point (while leaving the other partitions alone) I'm =
at a loss as to why it wouldn't work. But when you do this you may need som=
e extra linux-fu to shift your new binary/library locations to that partiti=
on rather than the default /usr.

Cheers,
Chris

----- Original Message -----
From:
"Jason Matusiak" <jason@gardettoengineering.com>

To:
"Chris Gobbett" <gobbo@tpg.com.au>
Cc:
"Ettus Mail List" <usrp-users@lists.ettus.com>
Sent:
Wed, 19 Jun 2019 23:12:40 +0000
Subject:
Re: [USRP-users] E320 with larger SD card


Chris, thanks for the tips.

So I put a fresh load on a card, then used gparted to extend the data parti=
tion to fill things out. That isn't enough, and your instructions certainly=
 show more steps. But I don't understand what you mean with the partitions =
in the middle.

I'll read up on Mender and see if that answers it for me. Thanks again.
On Jun 19, 2019, at 6:56 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:gobbo@t=
pg.com.au>> wrote:

Hi Jason,

I've had luck with the following:
- backup/clone the original SDCard image to disk and/or larger SDCard (usin=
g dd or otherwise)
- on the new card, resize/shift the data partion to the end of the card (us=
ing gparted)
- resize the two filesystem/kernel partitions to fill in the empty space in=
 the middle, but they need to be the same size (using gparted)

Read up on Mender for more info on the partition layout (https://docs.mende=
r.io/1.7/devices/general-system-requirements#partition-layout). It's a pain=
 that they went with Mender for the default E320 card; it cuts the 'usable'=
 file system space in half, at the benefit of having 2 independent filesyst=
em partitions... I haven't had time to fiddle around and ditch the mender f=
or a 'normal' partition layout, but I'd assume it's possible.

Cheers,
Chris



----- Original Message -----
From:
"Jason Matusiak" <jason@gardettoengineering.com>

To:
"Ettus Mail List" <usrp-users@lists.ettus.com>
Cc:

Sent:
Wed, 19 Jun 2019 16:29:38 +0000
Subject:
[USRP-users] E320 with larger SD card



I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.  I loaded up the card, and then extended the data partition to=
 use up the rest of the free space (about 100GB).  But then it doesn't boot=
.


I am wondering if the change to a partition size screwed up something in a =
config file somewhere.  Is there a way to fix this without rebuilding a doc=
ker image?  I am using the UHD 3.14.0.0. that has the smaller data partitio=
n (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/pyt=
hon packages, so I need to use the older image).


Thanks.

--_000_BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40BL0PR12MB2340namp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0">OK, I thought I had it, but it i=
s still not working.&nbsp; Here are some new details though.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I load up a fresh SD card (I've =
tried both bmaptools as well as dd).&nbsp; I toss it into my E320 and it bo=
ots up happy as pie.&nbsp; I do a proper shutdown and put it back into my h=
ost PC.&nbsp; I unmount and then using gparted I
 extend the data partition. I put the SD card back into the E320 and it boo=
ts up fine.&nbsp; dh is showing that the partition is the new larger size a=
nd uhd_find_devices works, so I am happy there.&nbsp; I reboot and all is g=
ravy.&nbsp; I shutdown -h now and power-up and
 all is gravy.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I then create a folder in /data =
called localinstall.&nbsp; Shutdown and then boot up, all is fine.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I install my cross-compiled uhd =
into that folder.&nbsp; I issue a shutdown -h now command and it seems to s=
hutdown fine.&nbsp; Then it never powers up again.&nbsp; It really feels li=
ke even though the partition shows up as the new
 size on the device, that I am overwriting the small partition size and scr=
ewing things up...</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Chris Gobbett &lt;gob=
bo@tpg.com.au&gt;<br>
<b>Sent:</b> Wednesday, June 19, 2019 8:21 PM<br>
<b>To:</b> Jason Matusiak; Ettus List<br>
<b>Cc:</b> Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 with larger SD card</font>
<div>&nbsp;</div>
</div>
<div style=3D"font-family:'Helvetica Neue',Helvetica,Arial,sans-serif; font=
-size:12px">
&nbsp;<br>
My understanding of the partiitons on the card are (in order);
<div><br>
<div>&lt;boot&gt;&lt;filesystem&#43;kernel A&gt;&lt;filesystem&#43;kernel B=
&gt;&lt;persistent data&gt;&lt;empty space&gt;</div>
<div><br>
</div>
<div>Mender allows you to boot from one of the A/B partitions as your prima=
ry filesystem (mounted as /), plus the persistent data (mounted as /home/ o=
r /data or similar).&nbsp;</div>
<div><br>
</div>
<div>My experience is if you perform resizing while keeping the partitions =
contiguous (no free space between them), and have the A and B partitions id=
entical in size, it &quot;just works&quot;. So my steps in the previous rep=
ly would look like:</div>
<div>
<div>&nbsp; &nbsp;&lt;boot&gt;&lt;filesystem&#43;kernel A&gt;&lt;filesystem=
&#43;kernel B&gt;&lt;persistent data&gt;&lt;----------empty space----------=
-----&gt;&nbsp; # original image on large SD Card</div>
<div>&nbsp; &nbsp;&lt;boot&gt;&lt;filesystem&#43;kernel A&gt;&lt;filesystem=
&#43;kernel B&gt;&lt;-------------empty space------------&gt;&lt;persistent=
 data&gt;&nbsp; # shift persistent data to the end</div>
<div>&nbsp; &nbsp;&lt;boot&gt;&lt;----------filesystem&#43;kernel A--------=
-&gt;&lt;----------filesystem&#43;kernel B---------&gt;&lt;persistent data&=
gt;&nbsp; # maximise A/B partitions, keeping A and B the same size</div>
</div>
<div><br>
</div>
<div>Rather than extending the data partition, I wanted to add new librarie=
s and applications in /usr, which is located on the A/B partitions. Hence m=
y instructions involve me resizing those partitions instead of the data par=
tition.&nbsp;</div>
<div>
<div><br>
</div>
<div>If you're simply extending the size of the persistent data partition w=
ithout shifting it's start point (while leaving the other partitions alone)=
 I'm at a loss as to why it wouldn't work. But when you do this you may nee=
d some extra linux-fu to shift your
 new binary/library locations to that partition rather than the default /us=
r.</div>
<div><br>
</div>
<div>Cheers,</div>
<div>Chris<br>
<blockquote><br>
----- Original Message -----<br>
<div style=3D"width:100%; background:rgb(228,228,228)">
<div style=3D"font-weight:bold">From:</div>
&quot;Jason Matusiak&quot; &lt;jason@gardettoengineering.com&gt;</div>
<br>
<div style=3D"font-weight:bold">To:</div>
&quot;Chris Gobbett&quot; &lt;gobbo@tpg.com.au&gt;<br>
<div style=3D"font-weight:bold">Cc:</div>
&quot;Ettus Mail List&quot; &lt;usrp-users@lists.ettus.com&gt;<br>
<div style=3D"font-weight:bold">Sent:</div>
Wed, 19 Jun 2019 23:12:40 &#43;0000<br>
<div style=3D"font-weight:bold">Subject:</div>
Re: [USRP-users] E320 with larger SD card<br>
<br>
<br>
<div>Chris, thanks for the tips.<br>
<br>
</div>
<div>So I put a fresh load on a card, then used gparted to extend the data =
partition to fill things out. That isn't enough, and your instructions cert=
ainly show more steps. But I don't understand what you mean with the partit=
ions in the middle.
<br>
<br>
</div>
<div>I'll read up on Mender and see if that answers it for me. Thanks again=
.</div>
<div class=3D"x_gmail_quote">On Jun 19, 2019, at 6:56 PM, Chris Gobbett &lt=
;<a href=3D"mailto:gobbo@tpg.com.au" id=3D"LPlnk185361" class=3D"OWAAutoLin=
k" previewremoved=3D"true">gobbo@tpg.com.au</a>&gt; wrote:
<blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 0pt .8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
&nbsp; <br>
Hi Jason,
<div><br>
</div>
<div>I've had luck with the following: </div>
<div>- backup/clone the original SDCard image to disk and/or larger SDCard =
(using dd or otherwise)
</div>
<div>- on the new card, resize/shift the data partion to the end of the car=
d (using gparted)
</div>
<div>- resize the two filesystem/kernel partitions to fill in the empty spa=
ce in the middle, but they need to be the same size (using gparted)
</div>
<div><br>
</div>
<div>Read up on Mender for more info on the partition layout (https://docs.=
mender.io/1.7/devices/general-system-requirements#partition-layout). It's a=
 pain that they went with Mender for the default E320 card; it cuts the 'us=
able' file system space in half,
 at the benefit of having 2 independent filesystem partitions... I haven't =
had time to fiddle around and ditch the mender for a 'normal' partition lay=
out, but I'd assume it's possible.
</div>
<div><br>
</div>
<div>Cheers, </div>
<div>Chris </div>
<div><br>
<br>
<blockquote><br>
----- Original Message ----- <br>
<div style=3D"width:100%; background:rgb(228,228,228)">
<div style=3D"font-weight:bold">From: </div>
&quot;Jason Matusiak&quot; &lt;jason@gardettoengineering.com&gt; </div>
<br>
<div style=3D"font-weight:bold">To: </div>
&quot;Ettus Mail List&quot; &lt;usrp-users@lists.ettus.com&gt; <br>
<div style=3D"font-weight:bold">Cc: </div>
<br>
<div style=3D"font-weight:bold">Sent: </div>
Wed, 19 Jun 2019 16:29:38 &#43;0000 <br>
<div style=3D"font-weight:bold">Subject: </div>
[USRP-users] E320 with larger SD card <br>
<br>
<br>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; font-family:Calibr=
i,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I wanted to use a larger SD card=
 than the one that as supplied, but I am having issues.&nbsp; I loaded up t=
he card, and then extended the data partition to use up the rest of the fre=
e space (about 100GB).&nbsp; But then it doesn't
 boot.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I am wondering if the change to =
a partition size screwed up something in a config file somewhere.&nbsp; Is =
there a way to fix this without rebuilding a docker image?&nbsp; I am using=
 the UHD 3.14.0.0. that has the smaller data
 partition (UHD 3.14.1.0 has a larger data partition, but doesn't include a=
ny GR/python packages<span style=3D"font-family:Calibri,Helvetica,sans-seri=
f,EmojiFont,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI S=
ymbol','Android Emoji',EmojiSymbols; font-size:16px">,
 so I need to use the older image</span>).</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks.</p>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40BL0PR12MB2340namp_--


--===============1749320413819237288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1749320413819237288==--

