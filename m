Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D81884D413
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 18:44:53 +0200 (CEST)
Received: from [::1] (port=33270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1he0B6-0007NI-6V; Thu, 20 Jun 2019 12:44:48 -0400
Received: from otransport-2.outbound.emailsrv.net ([52.1.140.110]:51652)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1he0B1-0007FZ-2P
 for usrp-users@lists.ettus.com; Thu, 20 Jun 2019 12:44:43 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-2.outbound.emailsrv.net (Postfix) with ESMTPS id 932DA61625;
 Thu, 20 Jun 2019 16:44:02 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2054.outbound.protection.outlook.com [104.47.45.54])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id D79C2A4044;
 Thu, 20 Jun 2019 16:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YkBFg0jFuS3Bei/M67n3HZ3ErCPyf2DLEp1LvFHkLh4=;
 b=ULGFLQ6TCFeGGZjhiOEa81a7IZX+ewKNmQTfG1cC4oR8AirJdQjldbkMDwPyYZiNU5oJXUMCPn8HsFDOiaw6bo6yseq57KwtDNnsVvQiNBCf/nnSsN8D/Q5R08xANuffnrm+4uOuMDS/ucS5yBsNrXXvrF6xIDa8dkyGf+xC8ZE=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2481.namprd12.prod.outlook.com (52.132.11.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 16:43:58 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 16:43:58 +0000
To: Chris Gobbett <gobbo@tpg.com.au>, Ettus List <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 with larger SD card
Thread-Index: AQHVJv4VYKtKw5BHWEGmE1+eknNVuaakiJzegAA3onE=
Date: Thu, 20 Jun 2019 16:43:58 +0000
Message-ID: <BL0PR12MB23404BB4EA6BDB9D545E911EAFE40@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>,
 <89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>,
 <BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c6ff776-2860-4230-c5bb-08d6f59e7dd3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2481; 
x-ms-traffictypediagnostic: BL0PR12MB2481:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BL0PR12MB24817B21FDED49B72D32DEA8AFE40@BL0PR12MB2481.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(396003)(366004)(346002)(39830400003)(189003)(45074003)(13464003)(51914003)(199004)(606006)(5660300002)(8936002)(2906002)(446003)(19627405001)(68736007)(66556008)(6606003)(486006)(229853002)(66066001)(25786009)(52536014)(33656002)(102836004)(6306002)(86362001)(186003)(14454004)(53936002)(66946007)(53546011)(6116002)(236005)(6506007)(55016002)(14444005)(1015004)(9686003)(64756008)(11346002)(76116006)(73956011)(66476007)(66446008)(81166006)(2940100002)(71200400001)(99286004)(7736002)(26005)(76176011)(6246003)(7696005)(3846002)(256004)(54896002)(476003)(8676002)(6436002)(74316002)(110136005)(316002)(508600001)(81156014)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2481;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3TXBDDfoG9hkEklqphtwt1HWqARPkkdySuZvfzliEV+yp7psKPWtHo12s+Zhyr+FrfJ2BaDOr5bpBb9+of9jyCidEOhyccWWKqlRQSSu1ZzvucXbYAp3FWBBTzNKwTfXUcSydRvk1bhs9k8xXvy4hzQiBIxhjEgvEqO5gaBImvxPsu1d2sXQZ4WFzIfsdEwVf5zVF/c4Pvq5qZYGm42wH7fMXiX3ZPT5Kb2Htqjp3S2yGDL8W9tkDhdqs8DSemT4TCaTbrjcud7JMjxi/WZIR0THk0zwJQQkNFhNB4x0mYIGxV8BQpRfwCtXWmOurWsojqZyubxI+odXpi9Jb/0jn5H9AsUH57zrVL/SMGpQGcyuf4R+bWt4zpHR5qe6r2n53WPxaArUXEAnHSqwTsAlal75CweL8yOZXAsxleuTtUI=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c6ff776-2860-4230-c5bb-08d6f59e7dd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 16:43:58.2833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2481
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam04lp2054.outbound.protection.outlook.com|104.47.45.54|NAM04-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.45.54, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: f6fd14c5-af20-476d-9b26-88a730faa560
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
Content-Type: multipart/mixed; boundary="===============7259639468061634185=="
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

--===============7259639468061634185==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23404BB4EA6BDB9D545E911EAFE40BL0PR12MB2340namp_"

--_000_BL0PR12MB23404BB4EA6BDB9D545E911EAFE40BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Alright, I am going to say that this is a non-starter for the time being.  =
Digging around I found this "Known Issues" comment on the mender-convert pa=
ge (https://github.com/mendersoftware/mender-convert):


  *   An issue for Raspberry Pi Zero W has been spotted with the mender-con=
vert tool version 1.1.0. After an initial boot, having last partition resiz=
ed to the end of the SD card, the correct device tree cannot be found. As a=
 result the boot cannot succeed. For more information and current status, s=
ee issue tracker<https://tracker.mender.io/browse/MEN-2436>.

We aren't using a pi, but it certainly feels like the same issue.

________________________________
From: Jason Matusiak
Sent: Thursday, June 20, 2019 10:24 AM
To: Chris Gobbett; Ettus List
Subject: Re: [USRP-users] E320 with larger SD card


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

--_000_BL0PR12MB23404BB4EA6BDB9D545E911EAFE40BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Alright, I am going to say that t=
his is a non-starter for the time being.&nbsp; Digging around I found this =
&quot;Known Issues&quot; comment on the mender-convert page (<a href=3D"htt=
ps://github.com/mendersoftware/mender-convert" class=3D"OWAAutoLink" id=3D"=
LPlnk635411" previewremoved=3D"true">https://github.com/mendersoftware/mend=
er-convert</a>):</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ul style=3D"box-sizing: border-box; margin-bottom: 16px; margin-top: 0px; =
padding-left: 2em; color: rgb(36, 41, 46); font-family: -apple-system, Blin=
kMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&q=
uot;; font-size: 16px;">
<li style=3D"box-sizing: border-box;">An issue for&nbsp;<code style=3D"box-=
sizing: border-box; font-family: SFMono-Regular, Consolas, &quot;Liberation=
 Mono&quot;, Menlo, Courier, monospace; font-size: 13.6px; background-color=
: rgba(27, 31, 35, 0.05); border-radius: 3px; margin: 0px; padding: 0.2em 0=
.4em;">Raspberry
 Pi Zero W</code>&nbsp;has been spotted with the&nbsp;<code style=3D"box-si=
zing: border-box; font-family: SFMono-Regular, Consolas, &quot;Liberation M=
ono&quot;, Menlo, Courier, monospace; font-size: 13.6px; background-color: =
rgba(27, 31, 35, 0.05); border-radius: 3px; margin: 0px; padding: 0.2em 0.4=
em;">mender-convert</code>&nbsp;tool
 version 1.1.0. After an initial boot, having last partition resized to the=
 end of the SD card, the correct device tree cannot be found. As a result t=
he boot cannot succeed. For more information and current status, see&nbsp;<=
a href=3D"https://tracker.mender.io/browse/MEN-2436" rel=3D"nofollow" style=
=3D"box-sizing: border-box; background-color: transparent; color: rgb(3, 10=
2, 214); text-decoration-line: none;" id=3D"LPlnk462843" class=3D"OWAAutoLi=
nk" previewremoved=3D"true">issue
 tracker</a>.</li></ul>
<p></p>
We aren't using a pi, but it certainly feels like the same issue.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Thursday, June 20, 2019 10:24 AM<br>
<b>To:</b> Chris Gobbett; Ettus List<br>
<b>Subject:</b> Re: [USRP-users] E320 with larger SD card</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
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
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Chris Gobbett &lt;g=
obbo@tpg.com.au&gt;<br>
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
<div class=3D"x_x_gmail_quote">On Jun 19, 2019, at 6:56 PM, Chris Gobbett &=
lt;<a href=3D"mailto:gobbo@tpg.com.au" id=3D"LPlnk185361" class=3D"x_OWAAut=
oLink" previewremoved=3D"true">gobbo@tpg.com.au</a>&gt; wrote:
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0pt 0pt 0pt .8ex; bor=
der-left:1px solid rgb(204,204,204); padding-left:1ex">
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
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23404BB4EA6BDB9D545E911EAFE40BL0PR12MB2340namp_--


--===============7259639468061634185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7259639468061634185==--

