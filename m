Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7917FAC028
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 21:06:00 +0200 (CEST)
Received: from [::1] (port=59906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6JYU-0003ZW-Lw; Fri, 06 Sep 2019 15:05:58 -0400
Received: from mx0b-00199b02.pphosted.com ([148.163.152.185]:55964)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i6JYR-0003Ch-7Y
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 15:05:55 -0400
Received: from pps.filterd (m0114306.ppops.net [127.0.0.1])
 by mx0b-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x86J4GT4015395
 for <usrp-users@lists.ettus.com>; Fri, 6 Sep 2019 19:05:14 GMT
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2053.outbound.protection.outlook.com [104.47.46.53])
 by mx0b-00199b02.pphosted.com with ESMTP id 2utmnw5vwv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 19:05:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QO0g3y46Cu73BERT7WRbnbWcfk78oKj9IThkcOrkBt4/sD9kAJ//9C4AxE5dZGe55G3san0F4+Q/GUgnWcvYxLTPE5/xXRvDGQN3VavElE64vY3ZWr/gjWYrlGxjedI4O/Fxkgb180AlNcfZ9v8fUEmLUOCEqrr7hFVC8yKfboo83qs8d6moc0oq8NYp4wqQ8fi/OBaL0TM033aCk2K08kiQWU7T/jsKQ/U/UzXNsbCnPcr/uG4qkmfa0DzuQlf645YqkLBnl9LQgy1qg/PoYTSk8gmO4+fE1xRNZDiJd1uS3qIpghhlWH0hp2/MxOXQ76YBvzavUKD+e8GW3IHaMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAHK+SPuSJXZH9Dmm8fLEk4OrQCPfV1ysYm6Q5IZoCw=;
 b=TL+Se06HW3bxiBsL1MpwOljzG0PgcgLb+UHSJd54PHh0zwVUTj4Xp2GA3FbEryV8uWPLjV4ypJVp1bPlJCsZiIOGmVE2zm8GWE8blMzHMCxglHIhMFqa4wUBP6vf3xDa5+iLy3LLvJlkqDfsEFPT95yGs245vjn/Uk16+yHIRFLrqJFasJbTOfnfvXzjcRdh20Uj46MyIy+CfIcONbDcgelDntNfn8E/lJ/HHlm3058rnrwAffMEV0VF/tBzEKav2pJWdC0kzUdIQVdaUMLM+j1liJ67FFdfg0cqkd/T4DHFxS4TPUf0KgmAxK00Lchq30MfzZBmQqfKOG/Vrm6LVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Fri, 6 Sep 2019 19:05:13 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2220.020; Fri, 6 Sep 2019
 19:05:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC SVD Block
Thread-Index: AQHVZOVXnxTc+r9T802taJywQSQw8w==
Date: Fri, 6 Sep 2019 19:05:13 +0000
Message-ID: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [136.165.48.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbd8e9e3-1ea2-4c77-86a7-08d732fd2565
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB3788; 
x-ms-traffictypediagnostic: DM6PR03MB3788:
x-microsoft-antispam-prvs: <DM6PR03MB3788F85556AA9D17AD420976E6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(6436002)(75432002)(66476007)(66556008)(64756008)(66446008)(74316002)(86362001)(66946007)(3480700005)(7116003)(25786009)(256004)(66066001)(186003)(7736002)(6116002)(3846002)(2351001)(19627405001)(8676002)(81156014)(81166006)(8936002)(76116006)(2906002)(33656002)(2501003)(6916009)(7696005)(6506007)(55016002)(71200400001)(5640700003)(9686003)(54896002)(71190400001)(102836004)(99286004)(26005)(88552002)(5660300002)(52536014)(786003)(4744005)(105004)(14454004)(478600001)(316002)(476003)(53936002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB3788;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D/mQULkZJUgzTHkk+dEM0glHaQxVDsOjUW7yATAvWp7M3j4PYRClhE2q3SslQQriKGbrbh3tyVGpTpQQqNfflEBe6dVRGjgSjgC7miLFUwuD6OslRnDqFnnExucz/coq4LNPtPZeBYxOAiyNgIL01hCFseL8o7O+qKg6pNj1+bHvEuY9hgovqJxYvdMYcswI8g2hgJYmHvaMZluHvKlCwstDhjCB+iJ+iWOJ4VCWDSmHqup6nENqnd7sNu34bj+sc1CyUaHfGbxwWEMXbP68NTjrGOuZw+jQ/7pyCLPAb7XTyW0vuIrkzCuU0gGTzUGUhHRgpHjKsQF0dRZS3W5iWboIHMlrs+PfflD+VAyMTD1mOQM7mKzuE+7YziXUOFvKYYejJ0zs8CyTBcGflZ04MjyoWKrW8UPkvgVO07BVifU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: cbd8e9e3-1ea2-4c77-86a7-08d732fd2565
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 19:05:13.0210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UKorNbTiAP5bz5kZA63Fwu6Ybq74KzWOkdNEzlSzwbAaoigPkiPQ/dxrVUKhjL5ourtcCiNEML/yfUkDlZPuGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3788
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-06_07:2019-09-04,2019-09-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0
 mlxlogscore=628 adultscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909060198
Subject: [USRP-users] RFNoC SVD Block
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
Content-Type: multipart/mixed; boundary="===============1120884580819476288=="
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

--===============1120884580819476288==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB3788A6E68F615BF33C687A8FE6BA0DM6PR03MB3788namp_"

--_000_DM6PR03MB3788A6E68F615BF33C687A8FE6BA0DM6PR03MB3788namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are trying to perform singular vector decomposition. The idea is to work=
 on an RFNoC block that takes in summation of samples from the Radio source=
 and will perform SVD.

Is anybody working on something similar?
Currently, the RFNoC OFDM synchronizer block has timing constraint issues a=
nd can't be used to build FPGA image.

Just asking around to get some suggestions/advice and idea if working on th=
at Verilog implementation of SVD is something doable and if anybody tried a=
nything similar.

Thank you,
Adnan



--_000_DM6PR03MB3788A6E68F615BF33C687A8FE6BA0DM6PR03MB3788namp_
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
We are trying to perform singular vector decomposition. The idea is to work=
 on an RFNoC block that takes in summation of samples from the Radio source=
 and will perform SVD.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Is anybody working on something similar?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Currently, the RFNoC OFDM synchronizer block has timing constraint issues a=
nd can't be used to build FPGA image.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Just asking around to get some suggestions/advice and idea if working on th=
at Verilog implementation of SVD is something doable and if anybody tried a=
nything similar.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Adnan</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_DM6PR03MB3788A6E68F615BF33C687A8FE6BA0DM6PR03MB3788namp_--


--===============1120884580819476288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1120884580819476288==--

