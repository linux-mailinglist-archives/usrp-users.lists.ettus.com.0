Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF953CDEE
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 16:05:18 +0200 (CEST)
Received: from [::1] (port=45774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hahOh-0004c1-Cr; Tue, 11 Jun 2019 10:05:11 -0400
Received: from otransport-23.outbound.emailsrv.net ([18.214.85.87]:57066)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hahOd-0004W5-He
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 10:05:07 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-23.outbound.emailsrv.net (Postfix) with ESMTPS id DD79C616DA;
 Tue, 11 Jun 2019 14:04:26 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2053.outbound.protection.outlook.com [104.47.32.53])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 45B7BA2451;
 Tue, 11 Jun 2019 14:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e8hP/NbRY3nMBZ5ZCkLzKca2qlF1ORZf1iSWueY1/HM=;
 b=gMbgrFgpXR59X8VbZ/i7TsfZkUoKmJ1+MOXNbPDkGpBy8wgfQXcO/hm79+34FbXaTvHzrtp0DyIZkGcJrXTwHjFY9z0zFblFThJ9zB6s281j72czdaN0PNgOTZp7srnxxVHyUoEMPikEEXVescPp0nbCUaQ/6IaYzWOz5stt5jw=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2386.namprd12.prod.outlook.com (52.132.11.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Tue, 11 Jun 2019 14:04:23 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 14:04:23 +0000
To: kailash kumar <kailash.kain@gmail.com>
Thread-Topic: [USRP-users] Unable to detect X310 over pcie
Thread-Index: AQHVICLiEnRqFHE9ikewOodYPiw7WKaWfJfZ
Date: Tue, 11 Jun 2019 14:04:23 +0000
Message-ID: <BL0PR12MB23408981B63633BE13A89707AFED0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <CAAMvqVEabgQrw=sp_EmTwfXPG+pVF5yigwioHf8v6pT+jz=rhQ@mail.gmail.com>
In-Reply-To: <CAAMvqVEabgQrw=sp_EmTwfXPG+pVF5yigwioHf8v6pT+jz=rhQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b7a18c7-94c7-4085-d1aa-08d6ee75b4da
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2386; 
x-ms-traffictypediagnostic: BL0PR12MB2386:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB2386CCC608CD3044B07346B3AFED0@BL0PR12MB2386.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6019001)(396003)(39830400003)(346002)(366004)(136003)(376002)(279900001)(199004)(189003)(81166006)(81156014)(71190400001)(6506007)(86362001)(71200400001)(11346002)(508600001)(4326008)(8676002)(66066001)(966005)(6116002)(446003)(476003)(19627405001)(3846002)(7736002)(14454004)(5660300002)(2906002)(486006)(21615005)(52536014)(73956011)(76116006)(316002)(6246003)(33656002)(66476007)(606006)(1015004)(68736007)(66556008)(6436002)(64756008)(26005)(8936002)(74316002)(102836004)(66446008)(14444005)(6916009)(7696005)(76176011)(6306002)(54896002)(9686003)(229853002)(6606003)(186003)(66946007)(53546011)(236005)(53936002)(55016002)(256004)(99286004)(25786009)(1549645003)(256605007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2386;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xA1Do4XzrKDzh40dgyxzFcvcOqo//IDcDLlLrTQwpbekin0qV8zFqfphI3OGNzHhi648n0IY8kgm2YcFWb4B4/nEOUkfmcetxSHBAZP+Mo7YKHGcS8GUyZkbgUu9xZqHe/qlsQjdgtZ71tJ1EIxmVX6Id5G5YmZ/vZFPSziDRAQeWGqTN/e9DACcW8ubpn6r1II5KNLuEcW3E//j8dlmDSr+tS09cIZA8cL7CMpvCXEWYMmee7Lj7BeGvrenCzaILtuZr9jzIqUZrnRWZYnuR+WyTKAu69+HDaotALRvwbGNNVzddhTboF9VGXmKuea9ubgohlviBkvfsPr+ZO6eMRf5aECFRjqD3qxjZfXhDqSwj2kTx+L3BIheYxPoTkzflbo8rVrXj2CoRIZhweoE/UMtQs0OoVqVbjIvQJAZ8i8=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b7a18c7-94c7-4085-d1aa-08d6ee75b4da
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 14:04:23.1258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2386
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-sn1nam01lp2053.outbound.protection.outlook.com|104.47.32.53|NAM01-SN1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.32.53, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-17297-c
X-Mailprotector-ID: d38f499b-b4b9-4761-86a1-ecab1ab52c99
Subject: Re: [USRP-users] Unable to detect X310 over pcie
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
Content-Type: multipart/mixed; boundary="===============6787426109220477224=="
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

--===============6787426109220477224==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23408981B63633BE13A89707AFED0BL0PR12MB2340namp_"

--_000_BL0PR12MB23408981B63633BE13A89707AFED0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I had similar issues (that I never overcame).  Here was some tips I receive=
d back in FEB when I tried: http://lists.ettus.com/pipermail/usrp-users_lis=
ts.ettus.com/2019-February/059114.html


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of kailash =
kumar via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, June 11, 2019 2:55 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Unable to detect X310 over pcie

Hi,

I am unable to detect X310 over pcie. I have installed uhd(v3.14.0.0) and c=
ompiled and installed RIO drivers as well. Below is my configuration:

UHD RIO Installer version:
niusrprio-installer-18.0.0

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo niusrprio_p=
cie start
Making sure drivers are up to date...
Module nikal is up-to-date
Module nibds is up-to-date
Module nistreamk is up-to-date
Module NiRioSrv is up-to-date
Module niusrpriok is up-to-date
Loading: NiRioSrv niusrpriok
Starting: niusrpriorpc

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ lsmod | grep -i =
ni
niusrpriok            417792  0
NiRioSrv              942080  0
nistreamk             131072  2 niusrpriok,NiRioSrv
nibds                  57344  2 niusrpriok,NiRioSrv
nikal                  98304  4 niusrpriok,NiRioSrv,nistreamk,nibds

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uname -r
4.19.48-48.lts2018

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ ls /dev/ni/
'nistreamk:0\nistreamk\0'

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo netstat -an=
p| grep 5444
tcp        0      0 0.0.0.0:5444<http://0.0.0.0:5444>            0.0.0.0:* =
              LISTEN      1845/niusrpriorpc

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uhd_usrp_probe -=
-args "type=3Dx300,resource=3DRIO0"
[INFO] [UHD] linux; GNU C++ version 9.1.1 20190605 gcc-9-branch@271943; Boo=
st_106800; UHD_3.14.0.HEAD-0-g6875d061
[ERROR] [UHD] Device discovery error: input stream error
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    type: x300
    resource: RIO0

[pretlist@clr-85a7812169e346e6b143a228fe1b9641 uhd]$ git status
HEAD detached at v3.14.0.0

Digging through uhd code
lib/usrp/x300/x300_impl.cpp (x300_find_pcie ) ->
lib/usrp/x300/x300_impl.cpp (niusrprio_session::enumerate(rpc_port_name, de=
v_info_vtr)) ->
lib/transport/nirio/niusrprio_session.cpp (nirio_status_chain(temp_rpc_clie=
nt.niusrprio_enumerate(device_info_vtr), status)) ->
lib/transport/nirio/rpc/usrprio_rpc_client.cpp  (usrprio_rpc_client::niusrp=
rio_enumerate(NIUSRPRIO_ENUMERATE_ARGS))

out_args >> status; -> This returns status as -52012

Thanks
Kailash

--_000_BL0PR12MB23408981B63633BE13A89707AFED0BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I had similar issues (that I neve=
r overcame).&nbsp; Here was some tips I received back in FEB when I tried:&=
nbsp;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2019-February/059114.html" class=3D"OWAAutoLink" id=3D"LPlnk789450" previe=
wremoved=3D"true">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/2019-February/059114.html</a></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of kailash kumar via USRP-users =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, June 11, 2019 2:55 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Unable to detect X310 over pcie</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi,</div>
<div><br>
</div>
<div>I am unable to detect X310 over pcie. I have installed uhd(v3.14.0.0) =
and compiled and installed RIO drivers as well. Below is my configuration:<=
/div>
<div><br>
UHD RIO Installer version:<br>
niusrprio-installer-18.0.0</div>
<div><br>
</div>
<div>[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo niusrp=
rio_pcie start<br>
Making sure drivers are up to date...<br>
Module nikal is up-to-date<br>
Module nibds is up-to-date<br>
Module nistreamk is up-to-date<br>
Module NiRioSrv is up-to-date<br>
Module niusrpriok is up-to-date<br>
Loading: NiRioSrv niusrpriok <br>
Starting: niusrpriorpc<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ lsmod | grep -i =
ni<br>
niusrpriok &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;417792 &nbsp;0<br>
NiRioSrv &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;942080 &nbsp;0<br>
nistreamk &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 131072 &nbsp;2 niusrpri=
ok,NiRioSrv<br>
nibds &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;57344 &=
nbsp;2 niusrpriok,NiRioSrv<br>
nikal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;98304 &=
nbsp;4 niusrpriok,NiRioSrv,nistreamk,nibds<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uname -r<br>
4.19.48-48.lts2018<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ ls /dev/ni/<br>
'nistreamk:0\nistreamk\0'<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo netstat -an=
p| grep 5444<br>
tcp &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;0 <a href=3D"http://0.=
0.0.0:5444" id=3D"LPlnk747836" class=3D"OWAAutoLink" previewremoved=3D"true=
">
0.0.0.0:5444</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0.0.0.0:* &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LISTEN &nbsp; &nbsp; &nbsp;1845/n=
iusrpriorpc &nbsp;
<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uhd_usrp_probe -=
-args &quot;type=3Dx300,resource=3DRIO0&quot;<br>
[INFO] [UHD] linux; GNU C&#43;&#43; version 9.1.1 20190605 gcc-9-branch@271=
943; Boost_106800; UHD_3.14.0.HEAD-0-g6875d061<br>
[ERROR] [UHD] Device discovery error: input stream error<br>
Error: LookupError: KeyError: No devices found for -----&gt;<br>
Device Address:<br>
&nbsp; &nbsp; type: x300<br>
&nbsp; &nbsp; resource: RIO0<br>
<br>
[pretlist@clr-85a7812169e346e6b143a228fe1b9641 uhd]$ git status<br>
HEAD detached at v3.14.0.0<br>
<br>
Digging through uhd code<br>
lib/usrp/x300/x300_impl.cpp (x300_find_pcie ) -&gt; &nbsp;<br>
lib/usrp/x300/x300_impl.cpp (niusrprio_session::enumerate(rpc_port_name, de=
v_info_vtr)) -&gt;
<br>
lib/transport/nirio/niusrprio_session.cpp (nirio_status_chain(temp_rpc_clie=
nt.niusrprio_enumerate(device_info_vtr), status)) -&gt; &nbsp;<br>
lib/transport/nirio/rpc/usrprio_rpc_client.cpp &nbsp;(usrprio_rpc_client::n=
iusrprio_enumerate(NIUSRPRIO_ENUMERATE_ARGS))<br>
<br>
out_args &gt;&gt; status; -&gt; This returns status as -52012</div>
<div><br>
</div>
<div>Thanks</div>
<div>Kailash<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23408981B63633BE13A89707AFED0BL0PR12MB2340namp_--


--===============6787426109220477224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6787426109220477224==--

