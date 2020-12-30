Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EEF2E7ABF
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 16:52:52 +0100 (CET)
Received: from [::1] (port=36414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kudmL-00019n-PE; Wed, 30 Dec 2020 10:52:49 -0500
Received: from mx0b-00010702.pphosted.com ([148.163.158.57]:9834)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=663339ec30=dylan.baros@ni.com>)
 id 1kudmI-00015B-33
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 10:52:46 -0500
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BUFn9Un016320
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 09:51:56 -0600
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
 by mx0b-00010702.pphosted.com with ESMTP id 35p31654hp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 09:51:56 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NNC+6IfsZ+205i+fVM9ZLxQ0ctqvz3K4eVD1DfVPXq/XKsZZwGfU++DDyeOEKO583KJo6h3n0WivvWhcURXRQGDehIJvwSsdGsZSUCr/ch6CDn6a3smxNLiaKJDtPWZl2TQig04wxn0p3sRSgleUE+mMBfzfccz0QrX7J1Yhx1jLNfUEHwQNfPlaX28//dvGr5h5E+cxnKqVHU+mYyT7/ESwaihFwpvSNXwRdPHY9Oj4dDJ6klS6oLuyPHgTBLhPLR8owFzB6hZYjNJuEoMoHKoYijlzskzHcZ8t6wCmXJV/muFXvvhjzdRMUWdRgDXoY0C/WRc0dZf2sG2ASntj2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSjzjDrs7wRsy7eWv06ajadCOQzKvPovO5TVsxa+yxg=;
 b=SZRMz8lHsNkyAlSa3b24shQgxKUGec4Jx1ERDc3B+LLQIR43grhL+UBz0O05w+McIfrphaTEcnJUxj2T3H9rv7Xhmf+I7gXLI54H6LzJ/R3KCdwBFgdTIbAoMgHNxfe7trSAcu2EwZf5iNA096FuLLCCsdaQ4weA+gTCTpeDzW3YKLuPKzU5gZW8u/WT4Miv8kI1ihFSI5LNsythfe4WvAjKjvGwBpRlSaaGBPNZ5rvQgy6BTkiMc8pumjaOtKnPPBRev9mZ3ZxzDSNIoY4PHWRLMszL9n2fLnvPBAO2uFRRQfiureXFNKKMbKzXQzHhIRXa6B99zRDFXHKo+46DcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSjzjDrs7wRsy7eWv06ajadCOQzKvPovO5TVsxa+yxg=;
 b=SMKFALGIsOvXdSnYSJMUnUJMac5FJF9rRlrtpbIKaSr8AVaplsFZ4Ycl+zgngu3B+eMwTsxfZTyLsdXtqMeI8RGUtyhUDLfNxkMISsNS257RihF/0PuzNOGUTHnYSd/fsRClJW25YUfhN0Xd+fYvRmX9M5cPxxSFGZByCBHd+40=
Received: from BN7PR04MB4387.namprd04.prod.outlook.com (2603:10b6:406:fc::17)
 by BN8PR04MB5714.namprd04.prod.outlook.com (2603:10b6:408:77::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Wed, 30 Dec
 2020 15:51:54 +0000
Received: from BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::a50a:b070:88cd:34a1]) by BN7PR04MB4387.namprd04.prod.outlook.com
 ([fe80::a50a:b070:88cd:34a1%5]) with mapi id 15.20.3721.020; Wed, 30 Dec 2020
 15:51:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfNoc Replay Benchmark with N321
Thread-Index: AQHW3sMu3G+kMscaeEyGDZamwwaJjQ==
Date: Wed, 30 Dec 2020 15:51:54 +0000
Message-ID: <BN7PR04MB438735C2290ABC23244C5E3E8FD70@BN7PR04MB4387.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ni.com;
x-originating-ip: [2601:2c4:c800:5fe:81cb:6fef:3db6:5275]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc117f90-6d3f-4149-e75e-08d8acdad4c3
x-ms-traffictypediagnostic: BN8PR04MB5714:
x-microsoft-antispam-prvs: <BN8PR04MB5714697FE0A6502C2BCF22E28FD70@BN8PR04MB5714.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S5pACPJViwlixT7911+x+qVD1QM84TbBFp5Kvl/k/60PadTgTFOfQR8vo8N9IkG4ke605J97BHNFsEBZrwXYhu3bGyvH3qn2iNELaWCZHxcc5PfHx3c+FdD5i8QvcIhwKUIqIcKYrC9kvCEEByAoxMEJjrCWf2SKd0mBNvV0kQqw5DBV29gTeNgvJBu330xjJVsK69E2oBOR0dz+b6QZPV1i67B+jbybvQkfa0vonuvwesMwogDo50GiX6l1w/XuB8R9g2+OcJw5GkYYmMSQSSOKXYTPOU3QdrWElEXfCzb1qd4xhXQS/5gcMGK6VFdjFF7yy2nvgcdcCLN3N3N1G0xTgeaBY7aeUfoNju4l+3pvebDvDpjnRxazJ1Y1sgAdv5C2nZjOW87UAE4GhK+xtQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR04MB4387.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(136003)(366004)(39850400004)(346002)(2906002)(478600001)(64756008)(71200400001)(7696005)(91956017)(5660300002)(86362001)(316002)(33656002)(52536014)(76116006)(66556008)(66476007)(8676002)(66446008)(6916009)(66946007)(6506007)(558084003)(44832011)(55016002)(8936002)(9686003)(83380400001)(19627405001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?1xGkC1Et7kmQ2nvzEbLASRt6ypz9khkMn0haqU6VmDjrh/Xmd9GWB3EuGM?=
 =?iso-8859-1?Q?WcF/l2PTCZpV+pXHxCihtGDpw+OB+W8h1lrXYgWNhRAw+criVPF3Ap74/7?=
 =?iso-8859-1?Q?mKE8asWrlE1V4EVBSqbdoaULSQC2jO+ymR4DooNdBGuI1ebA9Vk4NJ/0Uu?=
 =?iso-8859-1?Q?n/jWfTJs9KMvcWbqz9JJKuUZfK4Pbqck4EtSJN3r2gBGOB4eOnUYu+Zxh3?=
 =?iso-8859-1?Q?OpgnnbZpfpLaK27ANbF9xRZBNDaavg7CH/ALWEgzDHr/IRjRH0/8Ha/q9o?=
 =?iso-8859-1?Q?tIjJbpNHl1/5LTZEfUT6AUarDdiz+EqBPv9Mx50OHZTH92APP2hVPHdEEB?=
 =?iso-8859-1?Q?UvEqaMhNdDqnyo+VfOhUCRhRBTxA+tyT5E4A2XmrR3/Zforx4dAQU6g4O6?=
 =?iso-8859-1?Q?NOaSu2rAqcs0N3pBHGsF/MFE+tkMzNJ4fTZJumNuSS5Epl8iTpJL2TB5gd?=
 =?iso-8859-1?Q?ijPQh9gM6LVFAwx9BtGkGJdP9moJzaBFEtKhyyD8VGSKTRvYfSCsQMb4OD?=
 =?iso-8859-1?Q?Dr/lN0KxAj2yTxJlrI4x0/j/M7mRetSbD6wTNuV9Ny08Fu07UjKShZAtuZ?=
 =?iso-8859-1?Q?Jbs2/BOCFyviqvbnqTVfnngM5pCTZZ6JyrUyfz7TYfsL6eGwnb8Aigk1uA?=
 =?iso-8859-1?Q?taewPVXCI5SxJLBX+OfbBwcUXeV7x3qYO0Iuik+Jd9vcVr6lmWPDlTnmFk?=
 =?iso-8859-1?Q?ijcgr8xc+ANlO08YKN+NAu+ZeiB7+a2k4gs+/+55AdpVWUwZQ0OvIrNiIi?=
 =?iso-8859-1?Q?IXnkj0wLAHshr3GnXG4t78VK/A4uUAWbX8vPzICi4KEEyNrPN79+unDRji?=
 =?iso-8859-1?Q?w5XLS5yOTP+IOWyoIitXf90VG/FpVYKuIj/UyaZwHfiWS33i/2Y3i+rJXC?=
 =?iso-8859-1?Q?NzBWIfT1Ca8h/EN98ka7zTS9QZffENCziVicfzmQMV1TfTEARmwkLMtH3a?=
 =?iso-8859-1?Q?AZGxog7sMQK7bG+btUEiiZO3HWdoe4aMszrT4uXpkEzpVpwEJ6Yt6YzDVI?=
 =?iso-8859-1?Q?ZYKUJ4gVCHZhtSnXsoXj1ZQpBRIZh7h1ef+fwILd4q+YhSEUUpxO3vY09u?=
 =?iso-8859-1?Q?aoQjrvFU3Xqpj2dafHKPy48=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR04MB4387.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc117f90-6d3f-4149-e75e-08d8acdad4c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2020 15:51:54.3962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QfK8VJF5wO4eNWTh6Qtq/w8sxaAuYJLkAn26vxuOPu+m+2MgzQ1wqnk4tFDpFx4SWMioe0RRPywT4j/pfqMSaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5714
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-30_08:2020-12-30,
 2020-12-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=30
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015
 mlxlogscore=531 mlxscore=0 bulkscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2012300097
Subject: [USRP-users] rfNoc Replay Benchmark with N321
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dylan Baros via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dylan Baros <dylan.baros@ni.com>
Content-Type: multipart/mixed; boundary="===============1774526215976391923=="
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

--===============1774526215976391923==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR04MB438735C2290ABC23244C5E3E8FD70BN7PR04MB4387namp_"

--_000_BN7PR04MB438735C2290ABC23244C5E3E8FD70BN7PR04MB4387namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Good morning,

I am interested in using a rfnoc replay block to benchmark rx over both 10 =
gb ports, is that possible? I would like to dedicate both ports to receivin=
g and the rfnoc replay block to transmit. I am using a N321.

Thanks,
Dylan

--_000_BN7PR04MB438735C2290ABC23244C5E3E8FD70BN7PR04MB4387namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Good morning,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I am interested in using a rfnoc replay block to benchmark rx over both 10 =
gb ports, is that possible? I would like to dedicate both ports to receivin=
g and the rfnoc replay block to transmit. I am using a N321.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Dylan&nbsp;</div>
</body>
</html>

--_000_BN7PR04MB438735C2290ABC23244C5E3E8FD70BN7PR04MB4387namp_--


--===============1774526215976391923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1774526215976391923==--

