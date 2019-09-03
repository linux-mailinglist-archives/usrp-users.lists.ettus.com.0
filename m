Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F83BA7540
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2019 22:48:07 +0200 (CEST)
Received: from [::1] (port=37054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5Fif-0002HH-8A; Tue, 03 Sep 2019 16:48:05 -0400
Received: from mx0a-00199b02.pphosted.com ([148.163.149.0]:45270)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i5Fia-0001y1-A9
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 16:48:00 -0400
Received: from pps.filterd (m0114299.ppops.net [127.0.0.1])
 by mx0a-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x83KihO7000364
 for <usrp-users@lists.ettus.com>; Tue, 3 Sep 2019 20:47:17 GMT
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2057.outbound.protection.outlook.com [104.47.46.57])
 by mx0a-00199b02.pphosted.com with ESMTP id 2uqe0b1y9x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 03 Sep 2019 20:47:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVf/8NGlxcid/FmIXHw3h2M2nN1BC+RNC0qgvw+d7T77Kfob/XjBBlQna9eHIhWOCELyG8ZN91xuHnvLzPRpcqa5G8ezRf1OxwwYEmKaj7tOOeYbNuOlQ4ivKEIUBM2GZ1iCOE8Ni5U+q3fjC80If5tPX8Ss9o2BL8hl4T0dVPca2XNFyUONAInL0VXjxBJ8o96UNyu5dtfU1sl17dsX+Sezo++qnYQGxgJPXEPLSa1MgiZYfzdfODFCtTNGH/Byoq08TQKt0Ihkx5Tot0CfOvAQYScxEVbRti6YvzEI7DJerYLNNdTCPhNWwMt23AR949xiHCOLCHr+Rv2MFZal/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Detrwb4vw1VwfTEHnfeLR7EoOZBkeP28TEmAs9Dnb44=;
 b=BJiZYlnrRp2+7cBgUhA37Q72rsjDuKdhMtNnMP3wqmMoPd4ZNg6TN3jWmsIbk2TS7a/zDCE2EEht4Co7g97KxTg8mhLqANgVVNohcAtOeb0TD2v0Th+SK9lfwDeIQQMUmyqgxXK+3qbzw6UzVG2LhgT/+GJ3bck0ayswJhYgoyYqFt6DatepNT5WM9l4pm51YXJef13pFJ9kD1ux9YeLuAyHIh0IBKxdQYLO2tvrDeqR7fTwPGNbG3QaYanAZ0yHYk/G2qb0EWqzSuYKLkFc/pNeTouuBuTXocbpYHFg0w0llNTCVngFDqW3WcXaSnhz8S1eDghvC4UpCtu38K0cgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB4506.namprd03.prod.outlook.com (20.178.26.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Tue, 3 Sep 2019 20:47:15 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2220.020; Tue, 3 Sep 2019
 20:47:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Addsub HLS Block Error 
Thread-Index: AQHVYpieP/fOZgDUjECq35w86GFd8w==
Date: Tue, 3 Sep 2019 20:47:15 +0000
Message-ID: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [216.249.140.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08b282fd-95b5-4f4a-a174-08d730afe794
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB4506; 
x-ms-traffictypediagnostic: DM6PR03MB4506:
x-microsoft-antispam-prvs: <DM6PR03MB45068DD0382F7244CBA752BDE6B90@DM6PR03MB4506.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(2906002)(66446008)(25786009)(74316002)(64756008)(86362001)(478600001)(66476007)(66556008)(66946007)(88552002)(55016002)(6436002)(33656002)(5640700003)(3846002)(6116002)(7696005)(6506007)(4743002)(71200400001)(71190400001)(91956017)(76116006)(8936002)(99286004)(105004)(26005)(19627405001)(256004)(486006)(102836004)(3480700005)(2501003)(7736002)(52536014)(4744005)(81156014)(81166006)(66066001)(14454004)(476003)(8676002)(9686003)(53936002)(54896002)(6916009)(316002)(786003)(75432002)(2351001)(5660300002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4506;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j7CBspMhnbBImKB6HB7nVWHuhFouySYRkopxRa34t5oQngor2jUk3rwwt6DW1aWfcaYJiIcIDFVnmMbOBo92/aFx4jh12edn4rIdAf1beahb782kLb1WqGj/753ZuZ+vee4zViPq3h6Vp0Y91Sf1XRDcIvAURFAfxca+uBYk1Wnyys6Dyug+tTh13UMKj8AVmAJM+4VYN2PItNYHRDaxqU8xn6nuhGoxnJ1/4wHGzuyZ/mK+bqMgrR3qLkYxcz17PbOWHRRA4VAt2Evx1ssthDC7UhdMyB3IuLP60AXHFKXTiBrFNOML5pFXwe7W2PZDHqhUFVqN/acxivXeJ89rjeLjP3YjYvtl2l2gSUhKShpiu3ihV94KC78Y3klXbCOmkd63/FBqegTfkgdjLYxeKd/pbkEVDAJxI7he0fHMs0E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b282fd-95b5-4f4a-a174-08d730afe794
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 20:47:15.6613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K9tYXOmS9xHnQEw9e8OetqTrV6uJ+fSbGXg24KBvpA7GwLBWE5/uhd0vpBUyFmNoHsszhFYxc205b1FFYyE5dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4506
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-03_04:2019-09-03,2019-09-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=796
 clxscore=1015 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1906280000 definitions=main-1909030208
Subject: [USRP-users] Addsub HLS Block Error
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
From: "Quadri,Adnan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Quadri,Adnan" <adnan.quadri@louisville.edu>
Content-Type: multipart/mixed; boundary="===============7702585584794165458=="
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

--===============7702585584794165458==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90DM6PR03MB3788namp_"

--_000_DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90DM6PR03MB3788namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are trying to run the RFNoC addsub HLS block.

I was able to build the FPGA Image and made sure in the noc_block verilog c=
ode to point to the HLS implementation for addsub block on RFNoC as opposed=
 to the verilog/VHDL implementation.

But when we run the example Flowgraph with two signal source as input to th=
e two inputs for addsub block on GRC, we get the following error -

ERROR:
thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]: RuntimeError: In=
valid recv stream command - stream now on multiple channels in a single str=
eamer will fail to time align.

Does this have anything to do with the C++ code for HLS implementation or i=
s it a problem at UHD level?

Thanks,
Adnan

--_000_DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90DM6PR03MB3788namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We are trying to run the RFNoC addsub HLS block.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I was able to build the FPGA Image and made sure in the noc_block verilog c=
ode to point to the HLS implementation for addsub block on RFNoC as opposed=
 to the verilog/VHDL implementation.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
But when we run the example Flowgraph with two signal source as input to th=
e two inputs for addsub block on GRC, we get the following error -</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
ERROR:<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]: RuntimeErr=
or: Invalid recv stream command - stream now on multiple channels in a sing=
le streamer will fail to time align.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Does this have anything to do with the C&#43;&#43; code for HLS implementat=
ion or is it a problem at UHD level?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Adnan<br>
</div>
</body>
</html>

--_000_DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90DM6PR03MB3788namp_--


--===============7702585584794165458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7702585584794165458==--

