Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 650CBF041C
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2019 18:30:47 +0100 (CET)
Received: from [::1] (port=52460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iS2fC-0004u1-UP; Tue, 05 Nov 2019 12:30:42 -0500
Received: from mx0a-000b4001.pphosted.com ([148.163.146.25]:56394)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <tylertucker1@ufl.edu>)
 id 1iS2f9-0004kn-As
 for usrp-users@lists.ettus.com; Tue, 05 Nov 2019 12:30:39 -0500
Received: from pps.filterd (m0166814.ppops.net [127.0.0.1])
 by mx0a-000b4001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5HT045007188
 for <usrp-users@lists.ettus.com>; Tue, 5 Nov 2019 17:29:57 GMT
Received: from az1-msa-prod03.server.ufl.edu (az1-msa-prod03.server.ufl.edu
 [128.227.74.24])
 by mx0a-000b4001.pphosted.com with ESMTP id 2w125j5g37-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 05 Nov 2019 17:29:57 +0000
Received: from exmbxprd14.ad.ufl.edu (exmbxprd14.ad.ufl.edu [10.36.133.40])
 by az1-msa-prod03.server.ufl.edu (Postfix) with ESMTPS id 5E22A100054
 for <usrp-users@lists.ettus.com>; Tue,  5 Nov 2019 12:29:56 -0500 (EST)
Received: from exmbxprd21.ad.ufl.edu (128.227.145.166) by
 exmbxprd14.ad.ufl.edu (10.36.133.40) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 5 Nov 2019 12:29:56 -0500
Received: from exmbxprd23.ad.ufl.edu (128.227.145.167) by
 exmbxprd21.ad.ufl.edu (128.227.145.166) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 5 Nov 2019 12:29:55 -0500
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.59) by
 exmbxprd23.ad.ufl.edu (128.227.145.167) with Microsoft SMTP Server
 (TLS) id
 15.0.1395.4 via Frontend Transport; Tue, 5 Nov 2019 12:29:55 -0500
Received: from BN6PR22MB0708.namprd22.prod.outlook.com (10.172.200.151) by
 BN6PR22MB0947.namprd22.prod.outlook.com (10.171.181.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 17:29:54 +0000
Received: from BN6PR22MB0708.namprd22.prod.outlook.com
 ([fe80::75d8:7c1c:ed59:adf9]) by BN6PR22MB0708.namprd22.prod.outlook.com
 ([fe80::75d8:7c1c:ed59:adf9%12]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 17:29:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N210 MIMO Synchronization
Thread-Index: AQHVk/s+/Z1HAOp8kkeRPCZ50q6nAQ==
Date: Tue, 5 Nov 2019 17:29:54 +0000
Message-ID: <BN6PR22MB07082FBAD6D0D3D403ABF016867E0@BN6PR22MB0708.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.227.226.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78bb4f07-b7b7-4834-aab3-08d76215c5ae
x-ms-traffictypediagnostic: BN6PR22MB0947:
x-microsoft-antispam-prvs: <BN6PR22MB0947B36338272B2CCBC1FDAD867E0@BN6PR22MB0947.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(346002)(39860400002)(366004)(199004)(189003)(53754006)(71200400001)(76116006)(25786009)(6436002)(52536014)(54896002)(66066001)(2906002)(5660300002)(256004)(476003)(71190400001)(105004)(8676002)(66476007)(75432002)(66446008)(81156014)(8936002)(64756008)(66556008)(7736002)(66946007)(2501003)(81166006)(3846002)(6116002)(6916009)(55016002)(33656002)(5640700003)(19627405001)(26005)(86362001)(7696005)(14454004)(88552002)(486006)(478600001)(99286004)(316002)(786003)(186003)(102836004)(74316002)(6506007)(2351001)(4744005)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR22MB0947;
 H:BN6PR22MB0708.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ufl.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EdLf92K6q63zN3duQgI9GGB8dQUaK1zMarMIt3I9icdd6pfy5sF1Ovv1Nk1ZQKUy5cyS1XV8PnT+Ed2zfLuB1PomGHF2xqdUMyQH0lPbNpOx4BMgttcrA/0i41j/Nnh+T6VewCQBnkqQ0oQNz7SUkytY8M49OKCa2yAZ1gYcML8fagkKGi+ljNSVfR4S0HU8yew6kRxdyBRNEV2Rlu2d2ABXLJhpsVH7erWJgTAkt1KnSGXEQSK81cz+TJjfhakT945l0qZpd0J315uJcsCRo/GuEqqpl0sKhgvIx1HnO4KPjW13nZVpdUFLpv3snVln+vMVHF/tdOxX+5FjUhsvaqff5p0q9MQssnfPr42Obzp39dNbhSQFt/ymzFqdSBNE3D7yNfBLYdrLL+ZRU+AtM/4thwc7MVwGhiNdylHH7EIi04t8lnryzQZUs2H1lVjq
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+SEiGSZAg7k9vmtlDtEMGagCNaLohrjI9rLu3X7aHG6qEh+JI0kMchSQAXMjfNM2jYhr6L+D0xZEWNXAPqhgHzdu0x57MCcYXS4/xbyo9Xt6fMMhAXAmHiXC1owE/GJOFcFQUchk1iOzAYrZdF+ra1JkRK+WeDXJQjQAB6meZ0YlbRWThHiNFGieLE6AOHBcBq86HWHCIBLbPofLz2MO1n82YQdHCY7fmXJfGZAlKRW7BwMZFBG0LdSur8XyuicoFNn8kPuMaH59NPNLHKT3wYoGa10fsEr5nr8W5TZyJUgekR3kCuKfI7t2ZmnORN+AWqCD3e8SNzppsnwcVrK0g==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sSUlayjFsEe2XLcvA4aBiPkZraCE/SlHzaQBZlkKTY0=;
 b=i9cH2PgUJ+hrXYpCmnIdMjxqplwF1fRp/iCrQ79bovb82ZfcElZMgdFmmA3wvZNTzjwcsDIAN3BXgXgN8r8u7kGFZVWIewN/EfzMhD2l8CEpFd5NLIhutQQk4WuCLSbwe0/Bl5Zh7Depw+/GDRaEdz5H0gc8d4U14y0hpCKDmFOjDkPcyEhUJmXvV7XkwudJuxn85VQUK4Zv4Dr1RnDC1rhtz/Mfs0BOA5CuGiL+5vH1bxb/2ORhbi80dS9eX6spoHlwAsRa2oai5mhxqPkPrin3eyOvj+KZm+AUeMowO0A0j3463hhHNTx5fA1wgmx8kC8uKbuagV6OHl9YAx+j7w==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ufl.edu; dmarc=pass action=none header.from=ufl.edu; dkim=pass
 header.d=ufl.edu; arc=none
x-ms-exchange-crosstenant-network-message-id: 78bb4f07-b7b7-4834-aab3-08d76215c5ae
x-ms-exchange-crosstenant-originalarrivaltime: 05 Nov 2019 17:29:54.4079 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 0d4da0f8-4a31-4d76-ace6-0a62331e1b84
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 8UzQIm2oMJh2EjAa864SrWspMzRVxxW20Wz6PwujaTzL4iIb/CUWuSkhVMRamXKr8eCL+DY/UdIWbkKul27rkg==
x-ms-exchange-transport-crosstenantheadersstamped: BN6PR22MB0947
MIME-Version: 1.0
X-OriginatorOrg: ufl.edu
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_06:2019-11-05,2019-11-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=542 suspectscore=0 clxscore=1011 adultscore=0 bulkscore=0
 phishscore=0 malwarescore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1911050145
Subject: [USRP-users] USRP N210 MIMO Synchronization
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
From: "Tucker,Tyler M via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tucker,Tyler M" <tylertucker1@ufl.edu>
Content-Type: multipart/mixed; boundary="===============2837471616075896398=="
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

--===============2837471616075896398==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR22MB07082FBAD6D0D3D403ABF016867E0BN6PR22MB0708namp_"

--_000_BN6PR22MB07082FBAD6D0D3D403ABF016867E0BN6PR22MB0708namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey all,

I'm using a pair of Ettus N210s as simultaneous receivers for cellular chan=
nels using a gnuradio program. I need these two devices to have synchronize=
d clocks and time sources to accurately demodulate both uplink and downlink=
 channels, so I have a MIMO cable connecting the two USRPs. In gnuradio, I =
have two separate USRP blocks: one with default settings for clock source a=
nd time source to represent the master and another with both clock source a=
nd time source set to MIMO Cable to represent the slave. The MIMO cable LED=
 illuminates when I connect the two devices together. My concern is that my=
 program runs regardless of whether or not the MIMO cable is actually plugg=
ed in, so I can't tell if the synchronization is actually working. Is there=
 any available tool to check that the USRPs are correctly synchronized?

Thanks,

Tyler Tucker

--_000_BN6PR22MB07082FBAD6D0D3D403ABF016867E0BN6PR22MB0708namp_
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
Hey all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using a pair of Ettus N210s as simultaneous receivers for cellular chan=
nels using a gnuradio program. I need these two devices to have synchronize=
d clocks and time sources to accurately demodulate both uplink and downlink=
 channels, so I have a MIMO cable
 connecting the two USRPs. In gnuradio, I have two separate USRP blocks: on=
e with default settings for clock source and time source to represent the m=
aster and another with both clock source and time source set to
<i>MIMO Cable</i> to represent the slave. The MIMO cable LED illuminates wh=
en I connect the two devices together. My concern is that my program runs r=
egardless of whether or not the MIMO cable is actually plugged in, so I can=
't tell if the synchronization is
 actually working. Is there any available tool to check that the USRPs are =
correctly synchronized?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-size:14pt; line-height:normal">Tyler Tucker</span></div=
>
</div>
</body>
</html>

--_000_BN6PR22MB07082FBAD6D0D3D403ABF016867E0BN6PR22MB0708namp_--


--===============2837471616075896398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2837471616075896398==--

