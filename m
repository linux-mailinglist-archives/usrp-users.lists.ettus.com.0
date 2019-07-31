Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B717CCA2
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2019 21:17:43 +0200 (CEST)
Received: from [::1] (port=55526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsu6X-0005q5-Ax; Wed, 31 Jul 2019 15:17:41 -0400
Received: from mail-cy1usg02on0139.outbound.protection.office365.us
 ([23.103.209.139]:4516 helo=USG02-CY1-obe.outbound.protection.office365.us)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <Billy.Heckman@amplus-corp.com>)
 id 1hsu6S-0005dt-Mv
 for usrp-users@lists.ettus.com; Wed, 31 Jul 2019 15:17:36 -0400
Received: from CY1P110MB0392.NAMP110.PROD.OUTLOOK.COM (52.145.1.9) by
 CY1P110MB0040.NAMP110.PROD.OUTLOOK.COM (23.103.17.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 19:16:09 +0000
Received: from CY1P110MB0392.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6466:f747:a621:6530]) by CY1P110MB0392.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6466:f747:a621:6530%8]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 19:16:08 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Integrating a custom RFNoC block in UHD, without GnuRadio
Thread-Index: AQHVR9GkwpcuNtETJ0WAIWIm+4otCQ==
Date: Wed, 31 Jul 2019 19:16:08 +0000
Message-ID: <CY1P110MB039252F06BC235B2F3EC5E9BBBDF0@CY1P110MB0392.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Billy.Heckman@amplus-corp.com; 
x-originating-ip: [174.79.189.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 157ea4c4-08f6-47f7-e368-08d715eb8b09
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY1P110MB0040; 
x-ms-traffictypediagnostic: CY1P110MB0040:
x-microsoft-antispam-prvs: <CY1P110MB00408B27083302B81FD471E9BBDF0@CY1P110MB0040.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(199004)(189003)(7736002)(7696005)(52536014)(66066001)(476003)(6916009)(71190400001)(3846002)(6116002)(66476007)(66556008)(64756008)(25786009)(74316002)(33656002)(2351001)(256004)(71200400001)(6606003)(508600001)(99286004)(66946007)(66446008)(8676002)(81156014)(8936002)(5660300002)(81166006)(186003)(86362001)(486006)(68736007)(102836004)(26005)(9686003)(14444005)(55016002)(53936002)(54896002)(14454004)(6506007)(76116006)(19627405001)(5640700003)(6436002)(2501003)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY1P110MB0040;
 H:CY1P110MB0392.NAMP110.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:3; MX:3; 
received-spf: None (protection.outlook.com: amplus-corp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
MIME-Version: 1.0
X-OriginatorOrg: amplus-corp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 157ea4c4-08f6-47f7-e368-08d715eb8b09
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 19:16:08.7961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 65d59888-a76c-450c-be7b-3992fa2ff2af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Billy.Heckman@amplus-corp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P110MB0040
Subject: [USRP-users] Integrating a custom RFNoC block in UHD,
 without GnuRadio
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
From: Billy Heckman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Billy Heckman <Billy.Heckman@amplus-corp.com>
Content-Type: multipart/mixed; boundary="===============6225881299174605562=="
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

--===============6225881299174605562==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB039252F06BC235B2F3EC5E9BBBDF0CY1P110MB0392NAMP_"

--_000_CY1P110MB039252F06BC235B2F3EC5E9BBBDF0CY1P110MB0392NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I made a custom RFNoC block, following the process in the "Getting Started =
with RFNoC Development" guide and built an E320 image with the using UHD v3=
.14.0.0 . After flashing the new image on the device, my first host recogni=
zed the custom block on "uhd_usrp_probe" and operated without any issues in=
 a separate UHD project. My second host has the same version of UHD on it, =
but does not have GnuRadio or gr-ettus. I would like to integrate the custo=
m block on a second host without using steps requiring GnuRadio.


Following UHD Integration section of the guide, I copied over the Block Dec=
laration .xml file to the new host, under "/uhd/rfnoc/blocks/". The host ap=
pears to recognize the custom block, but fails block enumeration with the f=
ollowing error:


[ERROR] [MPMD] Failure during block enumeration: LookupError: Path not foun=
d in tree: /mboards/0/xbar/[custom_name]/args/0/[custom_arg]/type

Running "uhd_usrp_probe --tree | grep [custom_name]" on my first host with =
the same .xml file returns the full device tree of the custom block with al=
l expected values. The same device with the same image is used between both=
 hosts in this scenario. Am I missing any steps in this integration process=
?


Thanks,

Billy

--_000_CY1P110MB039252F06BC235B2F3EC5E9BBBDF0CY1P110MB0392NAMP_
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
<p style=3D"margin-top:0; margin-bottom:0">I made a custom RFNoC block, fol=
lowing the process in the &quot;Getting Started with RFNoC Development&quot=
; guide and built an E320 image with the&nbsp;using UHD v3.14.0.0&nbsp;. Af=
ter flashing the new image on the device, my first host
 recognized the custom block on &quot;uhd_usrp_probe&quot; and operated wit=
hout any issues in a separate UHD project. My second host has the same vers=
ion of UHD on it, but does not have GnuRadio or gr-ettus.&nbsp;<span style=
=3D"font-size: 12pt;">I would like to integrate the
 custom block on a second host&nbsp;without using steps requiring GnuRadio.=
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Following UHD Integration sectio=
n of&nbsp;the guide, I copied over the Block Declaration .xml file to the n=
ew host, under &quot;/uhd/rfnoc/blocks/&quot;. The host appears to recogniz=
e the custom block, but fails block enumeration with
 the following error:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<div>[ERROR] [MPMD] Failure during block enumeration: LookupError: Path not=
 found in tree: /mboards/0/xbar/[custom_name]/args/0/[custom_arg]/type</div=
>
<div><br>
</div>
Running &quot;uhd_usrp_probe --tree | grep [custom_name]&quot; on my first =
host with the same .xml file returns the full device tree of the custom blo=
ck with all expected values. The same device with the same image is used be=
tween both hosts in this scenario. Am I missing
 any steps in this integration process?
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,&nbsp;</p>
<p style=3D"margin-top:0; margin-bottom:0">Billy</p>
</div>
</body>
</html>

--_000_CY1P110MB039252F06BC235B2F3EC5E9BBBDF0CY1P110MB0392NAMP_--


--===============6225881299174605562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6225881299174605562==--

