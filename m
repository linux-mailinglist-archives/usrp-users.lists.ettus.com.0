Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 718B6B001E
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 17:33:58 +0200 (CEST)
Received: from [::1] (port=51380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i84cw-0007k8-Uv; Wed, 11 Sep 2019 11:33:50 -0400
Received: from mx0b-00199b02.pphosted.com ([148.163.152.185]:1394)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i84cs-00074r-O4
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 11:33:46 -0400
Received: from pps.filterd (m0114306.ppops.net [127.0.0.1])
 by mx0b-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8BFInfO012707
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 15:33:04 GMT
Received: from nam03-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2056.outbound.protection.outlook.com [104.47.41.56])
 by mx0b-00199b02.pphosted.com with ESMTP id 2uwvran5td-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 15:33:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LPzBwi487OEeVbITqlXb5PgcWfCnhLoYH52BonWchdBh/lnGpVciqmVvv5QER1ybd4iJpcr0cpceO48WXo9n/UL30AMW9KnGY3Ldt1ncJ0rcoZZgJ4IU0+jXwylEQCg8VgrAUDo2faEpQeqQhutD7v2ALpUbj4VPeHhKmKqMFyDSjuajCtOPCVghq0/5WSPoo4ttd5kkJKzowVUz42wKsGLliRtIV/A0HPYzQCkiKrpSucVn6rcXiV244qieh19CDMoRIVBqvLICJPFMBw3L8RmHy5oDt/b96QFDXaUfAbyii/VKIjOOLuzzEwrk/XcYToqi5lE6d0ywB5X+RuYj+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NNwqR9BxO+nhAoDXd7yXoJ281RQorkYDLxiNBw0iZDQ=;
 b=eydh3fRBqlrNYdDgeNpvQCt3IZ4loSORyTgz39Ik1ZLwV6EKb+rA/jan5l4lk/vPaUqNMK+upMZJvB6ip2umTpk83SGf8RJ0CAq2pg63iFznbLremNBntkekIfwoj+XtCMxg3VvZB4YWpk1KozwiyAT16A5O5YK1X0YdHBrvjEGgJWaCWjAzdugzcPrp43dRn+zKYkub1e4kCXP6OLmZjZnoxLmH9imPoXZlSBKBDuuXeNTiukvsbZcj/zeEbX8/7jBYqONkv9aveRdV0CXpZEmKZMY+4lTQKK4YidrjSKrDLoEyqhR7uAIProVIi/6a/BJDWfF0n0fbyqcJrPJVJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB4396.namprd03.prod.outlook.com (20.178.25.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Wed, 11 Sep 2019 15:33:03 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 15:33:03 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Expected FPGA compatibility number mismatch
Thread-Index: AQHVaLTvNh+IYwsP8EmJou0OVFeH/g==
Date: Wed, 11 Sep 2019 15:33:03 +0000
Message-ID: <DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [216.249.140.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93c1a51f-b61d-4827-18d3-08d736cd55f6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB4396; 
x-ms-traffictypediagnostic: DM6PR03MB4396:
x-microsoft-antispam-prvs: <DM6PR03MB439634D44219605064DD116DE6B10@DM6PR03MB4396.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(189003)(199004)(74316002)(7736002)(76116006)(6916009)(66946007)(99286004)(7696005)(14454004)(105004)(6506007)(5640700003)(186003)(26005)(2906002)(9686003)(55016002)(54896002)(53936002)(102836004)(25786009)(478600001)(6116002)(3846002)(81166006)(8936002)(52536014)(81156014)(8676002)(88552002)(2501003)(66446008)(6436002)(66556008)(66066001)(19627405001)(75432002)(2351001)(71200400001)(71190400001)(316002)(786003)(256004)(476003)(14444005)(486006)(66476007)(86362001)(64756008)(33656002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4396;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aqZ+/SMAFeYoDDUhyOLctsjs38lIOejXz75i5Z5xGSPOQ0x+NA9/vm8u6kZaVvlStcZ5xSnxaU/xxz+2G0rjx/FpT2ZunwGxfNd3YsPo4CGxLXPgJJ+ogPMjvhF62VE8vFfUGk2LZwTH+fLYEuj1HPSttPuvqcw0wdyO3Iqx+U5AL+6ZnM6jI5m8i3qYIkTN7IyH5ayP1gGpnCjD+FZrNG9KJFp92gSiUlGadRo6VTURLpDwtrYbAULl1Kh06PJeouU3nW9OvdLdW/LqXvTz6uAnaPVQ1yBj35l3itS82aqaFewyBOOe+BtqmqwZtwpiYhVFIPycHpC+lValEYpNN5csGx7PLu1EpJSohYc6Z32KBTRhs6Vc57ponCGhGKAPrNLibv3K/h/ZOtNw1rvDigYGbnPKLZNzyU/u1rvDeu4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 93c1a51f-b61d-4827-18d3-08d736cd55f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 15:33:03.3272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AQ6h9e0pOmZTuS1nzEj0Cx7v+qum/Diyvpu8ihDFuak312LyUnpS6Nhc10Bie1Jn+nnzKsbbN1B2kDVAr8r3xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4396
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-11_08:2019-09-11,2019-09-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909110140
Subject: [USRP-users] Expected FPGA compatibility number mismatch
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
Content-Type: multipart/mixed; boundary="===============2873617641387916883=="
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

--===============2873617641387916883==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10DM6PR03MB3788namp_"

--_000_DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10DM6PR03MB3788namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We were working on the Schimdl Cox and OFDM Equalizer blocks.

We updated to the recent version of UHD and did the installation manually. =
There is a rfnoc installation as well, done earlier. (UHD in rfnoc is 4.0 b=
ut the new one is 3.14)

With the newly installed UHD and few changes, we could build FPGA image for=
 Schmidl Cox and OFDM Equalizer.

However, when we run the gnuradio flowgraph (which contains blocks required=
 to setup a OFDM receiver), we get the following RunTime error -

RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but got =
35:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/home/sdr/rfnoc/lib/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/home/sdr/rfnoc/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168=
.10.2"


Should I uninstall rfnoc setup. I have already downloaded the images in the=
 newly installed UHD directory.

I built the image using uhd_image_builder and image_loader from the newly i=
nstalled UHD directory. For environment setup for the new UHD I used the se=
tup_env.sh script from rfnoc folder.


Thanks,
Adnan

--_000_DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10DM6PR03MB3788namp_
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
We were working on the Schimdl Cox and OFDM Equalizer blocks.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We updated to the recent version of UHD and did the installation manually. =
There is a rfnoc installation as well, done earlier. (UHD in rfnoc is 4.0 b=
ut the new one is 3.14)<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
With the newly installed UHD and few changes, we could build FPGA image for=
 Schmidl Cox and OFDM Equalizer.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
However, when we run the gnuradio flowgraph (which contains blocks required=
 to setup a OFDM receiver), we get the following RunTime error -
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<b><br>
</b></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<b>RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but g=
ot 35:</b><span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<i><span>The FPGA image on your device is not compatible with this host cod=
e build.<br>
</span></i>
<div><i>Download the appropriate FPGA images for this version of UHD.<br>
</i></div>
<div><i>Please run:<br>
</i></div>
<div><i><br>
</i></div>
<div><i>&nbsp;&quot;/home/sdr/rfnoc/lib/uhd/utils/uhd_images_downloader.py&=
quot;<br>
</i></div>
<div><i><br>
</i></div>
<div><i>Then burn a new image to the on-board flash storage of your<br>
</i></div>
<div><i>USRP X3xx device using the image loader utility. Use this command:<=
br>
</i></div>
<div><i><br>
</i></div>
<div><i>&quot;/home/sdr/rfnoc/bin/uhd_image_loader&quot; --args=3D&quot;typ=
e=3Dx300,addr=3D192.168.10.2&quot;<br>
</i></div>
<i><span></span><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<i><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Should I uninstall rfnoc setup. I have already downloaded the images in the=
 newly installed UHD directory.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I built the image using uhd_image_builder and image_loader from the newly i=
nstalled UHD directory. For environment setup for the new UHD I used the se=
tup_env.sh script from rfnoc folder.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
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

--_000_DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10DM6PR03MB3788namp_--


--===============2873617641387916883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2873617641387916883==--

