Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F113699F
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 03:59:52 +0200 (CEST)
Received: from [::1] (port=45968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYhgx-0002TS-Lf; Wed, 05 Jun 2019 21:59:47 -0400
Received: from mail-eopbgr680086.outbound.protection.outlook.com
 ([40.107.68.86]:12964 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <stran@oceanit.com>) id 1hYhgu-0002OD-1Z
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 21:59:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oceanitlabs.onmicrosoft.com; s=selector2-oceanitlabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5IR4sb+nDGnCTGvJw7ai3nWpIXmeMwZHkF/Dez1Tsg=;
 b=woCDnVw4EOQC/eCx+LmXQHkIONRtrSDKsBfI/opVXVSzdso8oK79ios6UXOxcfmE3YbOeu2WCUUP8OxDv0Wrl8HN5ZNGmjTG7fICxSxG6VSC8MdGycAQXLD20wX2JwuIVmqhrVpX4zWWLzOlZ1pER2XysMEXlRWdub5geCI4AUc=
Received: from MW2PR12MB2538.namprd12.prod.outlook.com (52.132.180.157) by
 MW2PR12MB2489.namprd12.prod.outlook.com (52.132.180.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 01:59:01 +0000
Received: from MW2PR12MB2538.namprd12.prod.outlook.com
 ([fe80::688d:bf16:ee98:db0a]) by MW2PR12MB2538.namprd12.prod.outlook.com
 ([fe80::688d:bf16:ee98:db0a%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 01:59:01 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Python API Rx_Multi_Samples Example
Thread-Index: AQHVHAsDda0s8KHXhkO1sXXqmFbVAA==
Date: Thu, 6 Jun 2019 01:59:01 +0000
Message-ID: <MW2PR12MB253838791E2C605C30AB58BEB4170@MW2PR12MB2538.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stran@oceanit.com; 
x-originating-ip: [23.29.243.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3676a18-da7b-4bcb-f5a0-08d6ea228bbe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MW2PR12MB2489; 
x-ms-traffictypediagnostic: MW2PR12MB2489:
x-microsoft-antispam-prvs: <MW2PR12MB2489C72E1DEC7D97C1E20471B4170@MW2PR12MB2489.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(136003)(376002)(39840400004)(366004)(346002)(396003)(53754006)(199004)(189003)(476003)(5640700003)(478600001)(19627405001)(6436002)(486006)(2351001)(186003)(256004)(105004)(7736002)(54896002)(2906002)(316002)(99286004)(86362001)(4744005)(26005)(6506007)(25786009)(102836004)(66066001)(6916009)(74316002)(68736007)(71190400001)(71200400001)(9686003)(7696005)(53936002)(8676002)(64756008)(66946007)(66556008)(14454004)(33656002)(91956017)(81156014)(66476007)(81166006)(66446008)(76116006)(73956011)(6116002)(2501003)(8936002)(3846002)(52536014)(55016002)(5660300002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR12MB2489;
 H:MW2PR12MB2538.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: oceanit.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g06ws6iMDhCT6pID2AdOaBtX+X3RlmwfsQ2aiShOYymgXqa9jmpZTGLRdUQr38Um8vCOSqHndn1EGQ6ZsotViGNinc/+LmTfse2mK9MHY80TCTMdpNE5ZYHBh5pPaauwHREdg42XPGJWXf3Bhd3YpNkeAR+C4lspWWuMPUL+3KEx+Ghrq3WH8w0NYXx7H0lvrRBTNyfZU0eD6Yvx/d2YPYTwnPe//YNRippT3Yw/g2A20AvxIl2MQnhvz6JOW7gMixM8glcrYSoPGkoVBz2+OBrFnRnCJW3kPjs5LiuX5oNafkwjQ5ImCK3gykQPTVp6r8gpqtXiSHxyXU1uLh6nei3ZSh9Iwfx4viIoSNEh4jrjMqQAjBYFHn/oziJUQ/09adD8BDu+3fC2A3bOPxZYNpOGoT9zg1ySfi6qVT/efCU=
MIME-Version: 1.0
X-OriginatorOrg: oceanit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3676a18-da7b-4bcb-f5a0-08d6ea228bbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 01:59:01.1760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f427f34c-60e7-40e1-a8fb-eb2f59eec85e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stran@oceanit.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR12MB2489
Subject: [USRP-users] UHD Python API Rx_Multi_Samples Example
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
From: Sarah Tran via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sarah Tran <stran@oceanit.com>
Content-Type: multipart/mixed; boundary="===============8127180332209689903=="
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

--===============8127180332209689903==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR12MB253838791E2C605C30AB58BEB4170MW2PR12MB2538namp_"

--_000_MW2PR12MB253838791E2C605C30AB58BEB4170MW2PR12MB2538namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,

I am using the rx_to_file.py program as my starter to being able to receive=
 a stream of data then perform DSP on it (synchronization, demodulation, et=
c.). So far I have it working for a single channel. I am using the X310 and=
 want to be able to receive from both A:0 and B:0 simultaneously, but I am =
having some difficulty doing that. Is there an rx_multi_samples.py file sim=
ilar to the rx_multi_samples.cpp? One route I am exploring is to use boost.=
python to pythonize the C++ function from rx_multi_samples.cpp so I can cal=
l it from my python code. I was just wondering if there were others that co=
uld successfully get simultaneous receive on both channels using the python=
 uhd api.

Thank you,
Sarah

--_000_MW2PR12MB253838791E2C605C30AB58BEB4170MW2PR12MB2538namp_
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
Hello all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am using the rx_to_file.py program as my starter to being able to receive=
 a stream of data then perform DSP on it (synchronization, demodulation, et=
c.). So far I have it working for a single channel. I am using the X310 and=
 want to be able to receive from
 both A:0 and B:0 simultaneously, but I am having some difficulty doing tha=
t. Is there an rx_multi_samples.py file similar to the rx_multi_samples.cpp=
? One route I am exploring is to use boost.python to pythonize the C&#43;&#=
43; function from rx_multi_samples.cpp so
 I can call it from my python code. I was just wondering if there were othe=
rs that could successfully get simultaneous receive on both channels using =
the python uhd api.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Sarah<br>
</div>
</body>
</html>

--_000_MW2PR12MB253838791E2C605C30AB58BEB4170MW2PR12MB2538namp_--


--===============8127180332209689903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8127180332209689903==--

