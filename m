Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F1D30AA62
	for <lists+usrp-users@lfdr.de>; Mon,  1 Feb 2021 16:04:15 +0100 (CET)
Received: from [::1] (port=35308 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6akN-0000k3-I9; Mon, 01 Feb 2021 10:04:11 -0500
Received: from mx0b-00272701.pphosted.com ([208.86.201.61]:49029)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=966646fc09=rmattingly@ou.edu>)
 id 1l6akK-0000d9-EY
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 10:04:08 -0500
Received: from pps.filterd (m0107987.ppops.net [127.0.0.1])
 by mx0b-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 111EvfBb024277
 for <usrp-users@lists.ettus.com>; Mon, 1 Feb 2021 09:03:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=domainkey;
 bh=gfNWEJpCxbxIGaqw6Sd0xf2PoZm3WUZGiLpbDKKHmL0=;
 b=OAsMPUKc4PUhfAjD6J0D9hJxrcLLHRzX/DfBZgGDFdwyKC+HMrRtCiVa7WRfjnF9OqaB
 z7xqmoP/4S5e9l5CNuR5J2rDymQ9rx+EY/RiZPrizPSpRCR3pCRI3AYH+R9LJNkZqDR+
 exF+sRCG0JgFHjrJ6F3dFulCkWQ0zmLP2x6MlXu7qyhZKoOEw3aYOi8RTs9QWdffTO3H
 oxNPgVoAMeHcJ8IoNVzPVfBnQ9DiweuLm26CD9r9rzOI6iz0b/5rqo7tt7Yw8Mu01qz2
 CAzBi6oJyjhlPp8Sv3PFe3YF7U0N2S350Su/j+IKwhghnqtxhrHj7HYwj/eisUPGuj3N rA== 
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
 by mx0b-00272701.pphosted.com with ESMTP id 36dpgyc03r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 09:03:26 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxHCgrkAJ3jna6ax7aFkLoVkrPdREAtgqUGSrsZqD8lczL7x5VdYe/0FnC3Kpb72xKoo8JpM/erRDDdwn/VfT5ck58kH+qTcjtX2TKR4GbeJlj+5fIChrxiGsnPzbfF2XMsLa+E2Pt+o0M8N2hWot7XsdW+CoEowjJGHWcU0HNDgeODwUMbY2CDVKMgGGwAsWrstYKNeIabHoJlzzIfl1K8jpC2Rid5wRG+LkGLIVTX0V9Wp3uCwv9kfvg/TxB4hUbTBBYFTpINovyL+jH57ZI/SEUhc0Ls6Rs/ByR0qKdaic05z8YXn2oD07huFKckyPcR1nVSdSItDwfYXdDDQdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfNWEJpCxbxIGaqw6Sd0xf2PoZm3WUZGiLpbDKKHmL0=;
 b=cfEQdHFIWjfOlghJgMYUlhlSd6204WGy5iMBQiq+yfVdXcWognpBwyGTnfg4Hi72YX09oOlCea6cEOnIAiBaF/NO3XsumJk4qLjr2+tWHr3TDgU4e6Veh8IaPlHxUB+8IYfuV9Nhuqv628xKhLtQQxzxIwkG37FdwMFm/916Bo58GwuFmSlsHXYM99wOKbw77PVJzY3s7fbaSOhD96ouKqVLKcSH0zvnQuqUrZX7N65clV+pm2KVYgbD/ovb0dyOfUtDAFjYNtN+UVRu5AW0dsrdR3nZKPnFgKKp82ZAZeeOpG9AVNk4Z/ObWNFCtFutcXnjKodAtr/wptduYdcpSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SA0PR03MB5595.namprd03.prod.outlook.com (2603:10b6:806:c0::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.20; Mon, 1 Feb
 2021 15:03:24 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd%4]) with mapi id 15.20.3805.024; Mon, 1 Feb 2021
 15:03:24 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC FFT  >512 Samples
Thread-Index: AQHW+Kl6QZ5LUG4p2kyCx0oDPcs3IQ==
Date: Mon, 1 Feb 2021 15:03:24 +0000
Message-ID: <SN6PR03MB4160FCA73A455E3B91825E6BB1B69@SN6PR03MB4160.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [129.15.133.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8aae8c4e-25c0-49cc-7c02-08d8c6c285c4
x-ms-traffictypediagnostic: SA0PR03MB5595:
x-microsoft-antispam-prvs: <SA0PR03MB5595419CB6F0C2119D05CCB7B1B69@SA0PR03MB5595.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ij2Y1EHbV6EnuMFcciWKOUI/j55//hdBYKGBPRGqGy8OZFG6Y2Ts/azcroE0Qra7JrCLrq9wo3bw8VPFqUXhV7Np8wq+SdGPiISO2VTTCFmUgnGqVy0QhzJ94BiRN7DAOn32/cCIsELxavvhkAwEaHSOGXxjmUD8mhlmGzgVC3HBI7nZEniC0Vl3u+seANjanAx7qgKDOKQbCQbjShK17cYb/8br+OdoHeaXvDbWrZYzmlhL4MfPjVoboB2hRS0tzKjNm3kiwdqJaEpAur4t70FvPAXPDNz/xAUHfl1SFIgU/M9VYZ1LHg/LdrRoaSdnehwQPXs+XHrZScGpENfbnvL6PYQZdbGvbeo+60MoarLXwAQUA14sudhYTMU86/7YW7RXi2oC7T/YPYLmPecSoZ6ewDzQ1oKaTXYwo4V9Cq10nuG/tiS9uCw7lERSntDLOgUQaNDCDSTGaSfE9dGkN9/JTQ936lT13I4txG5+pOfJ2kw4JWzcHm6yl9vMxdag7/iix2p2JKnT84nz4a7kCQLvO7p29TXypv3y0bb7AOS3CuHb2tfa1tnpmIZ9D7vrNV3P4pUBVCb/MPSTY3R/KB5VXLOmkcA/XNTML4iQNUoidn10Fp05CWqBm93o8hOGMMfoEX0fiLx6mRRg3GNEXFznP+HZzrwrceIaAtMBPIUZ1upDxNlYq3sAwGHCXLon2dv9PSLZr3Bajn00ql9MC92A9fkvu0EjzM8LnHwfoXw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR03MB4160.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(76116006)(83380400001)(66556008)(66446008)(66476007)(6916009)(64756008)(66946007)(52536014)(8676002)(8936002)(2906002)(33656002)(966005)(71200400001)(316002)(19627405001)(786003)(7696005)(26005)(186003)(75432002)(55016002)(66574015)(6506007)(166002)(5660300002)(9686003)(478600001)(7116003)(86362001)(15519875007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?kfJyukXg+9Htpz3mOccUQ9bROc6f9hAixBy09vSV3xA8tW32iWzvQ+cugR?=
 =?iso-8859-1?Q?wLVSiLEbL+n5nBnhzhxlEg1ZYLGlxGFNPPNNtQx4C1mdRDT8UX4x8J2m47?=
 =?iso-8859-1?Q?F3Wpl5p6ctz/zygbGsuSgx90RmGDvAKqk4oTQC/KFquB6eU+cQ4pCxCrS5?=
 =?iso-8859-1?Q?SAiWL8znFZJyUgoCG+lb+s4M5gjEE6F7UkRXM1ipDlMo2iUiywWWcxzgzp?=
 =?iso-8859-1?Q?35NEwjtARp5YamNWP9felz/FBGXqKKvCWimjKYTuHHfldpxrwyA9Jbuk0X?=
 =?iso-8859-1?Q?wHFkIPsYPcr23mnHpZpUnPDJ9l5NH4NPax4IGZaEmNXEgl7ENk67QRh+6W?=
 =?iso-8859-1?Q?m3BL6vl7zUCVkJ4WFq1/vtkKQbkod6+s4jPW6Thb1/C4pF9LIQ6zmyEcTk?=
 =?iso-8859-1?Q?cBfhYerWfsNsm6Tuwy1TrWmB8OnPFXWGD8C1mtZL2L9eyPVqIY9ZBpEKe2?=
 =?iso-8859-1?Q?s2sTQCXv8Ejq34IXMDzRC0VntnSM8JRnYcj+was/f9Mcvn9B+M2gNq+kvR?=
 =?iso-8859-1?Q?R7SLMJqePgG2tJs63ZrnEfLAzcdyuWo3MlymZZG8DX9ORD8L0WRf9Od/cR?=
 =?iso-8859-1?Q?X4cy+io2mUhkeGeIMoqNlYpJRBae51efLsbGRDfVL++mcxkj9EIsYQWz4g?=
 =?iso-8859-1?Q?r4VlSCEejqFwHoHFfOEnUI2WXXgYCKT685c7DgpJGHX+UknxOW2TAZ8zkO?=
 =?iso-8859-1?Q?joRhEk8YAO0Lt7zL/NCdq9Ln2r6bTOebO9MMckBEzlB3KmUWr+g4ERFhjy?=
 =?iso-8859-1?Q?kj8C7XVuMB8AmQz42NY9gwyyRFL9+5NFMf8AuWR6LUU3rNW7OceE57yZB+?=
 =?iso-8859-1?Q?RXIiT9CPYunO+6Iezeu7nGMR27TKBdQMMYfPJEncAEbz9i3t+pSoV9A5cm?=
 =?iso-8859-1?Q?yATPFWZw/bgfz4rMwoVIgwtTq4/whXOubQkU1PRVO8osGA0TWox2KuMJhN?=
 =?iso-8859-1?Q?c6itw5ELDVFic8CEcJ1efoi4ae+/3GYSbcsKrkLVLqJW0zpx3ScY6YtU86?=
 =?iso-8859-1?Q?eOFRuBa8+h8Zeo7JxbFenoc3Ng682oFGjqyiH46W8SAXaPZZ2MzhL15nDs?=
 =?iso-8859-1?Q?Hg8m263COhpEJ1a46Gs7AoVDBSI4vORzGUGPfU4Hs0uP?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aae8c4e-25c0-49cc-7c02-08d8c6c285c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2021 15:03:24.1577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y6pJyHsObYLzC89XL53qtFaO6q7AztOqPsUS5RwYpMS5k+00tuQxFf33IP3FUFsa6Oub9TdXwo7VHn5+0DCdOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR03MB5595
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-01_06:2021-01-29,
 2021-02-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 lowpriorityscore=0 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0
 mlxlogscore=676 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2102010081
Subject: [USRP-users] RFNoC FFT  >512 Samples
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
From: "Mattingly, Rylee via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Mattingly, Rylee" <rmattingly@ou.edu>
Content-Type: multipart/mixed; boundary="===============7241632827915365302=="
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

--===============7241632827915365302==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB4160FCA73A455E3B91825E6BB1B69SN6PR03MB4160namp_"

--_000_SN6PR03MB4160FCA73A455E3B91825E6BB1B69SN6PR03MB4160namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am having trouble with the RFNoC FFT. When using an FFT length of 256 or =
less everything works smoothly but when I use a 512 or 1024 length FFT I be=
gin to receive a flood of repeating packet errors like: ERROR_CODE_BAD_PACK=
ET (Code: 0xf).  I haven't been able to find any information on this type o=
f error and I am sure that I am missing something o.
I am using the configuration from the "getting started with RFNoC 4" docume=
nt from the knowledgebase. It is my understanding that the default RFNoC FF=
T should be able to go up to an FFT Length of 1024.



Full packet error is shown below:

[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.

Here is a screenshot of the generic flowgraph I am using for troubleshootin=
g: https://imgur.com/a/HLnPrXj


I am working with UHD 4 and GNURadio 3.8 and I am running on an X310.


Thank you in advance,


Rylee Mattingly

--_000_SN6PR03MB4160FCA73A455E3B91825E6BB1B69SN6PR03MB4160namp_
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
Hi all,
<div><br>
</div>
<div>I am having trouble with the RFNoC FFT. When using an FFT length of 25=
6 or less everything works smoothly but when I use a 512 or 1024 length FFT=
 I begin to receive a flood of repeating packet errors like: ERROR_CODE_BAD=
_PACKET (Code: 0xf).&nbsp; I haven't
 been able to find any information on this type of error and I am sure that=
 I am missing something o.</div>
<div>I am using the configuration from the &quot;getting started with RFNoC=
 4&quot; document from the knowledgebase. It is my understanding that the d=
efault RFNoC FFT should be able to go up to an FFT Length of 1024.</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Full packet error is shown below: </div>
<div><br>
</div>
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received erro=
r ERROR_CODE_BAD_PACKET (Code: 0xf)</div>
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<div><br>
</div>
<div>Here is a screenshot of the generic flowgraph I am using for troublesh=
ooting:
<a href=3D"https://imgur.com/a/HLnPrXj" id=3D"LPlnk">https://imgur.com/a/HL=
nPrXj</a><br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
<div><br>
</div>
<div>I am working with UHD 4 and GNURadio 3.8 and I am running on an X310.<=
/div>
<div><br>
</div>
<div><br>
</div>
Thank you in advance,<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif;">
<p style=3D"margin-top:0px; margin-bottom:0px; font-family:Calibri,Arial,He=
lvetica,sans-serif,EmojiFont,'Apple Color Emoji','Segoe UI Emoji',NotoColor=
Emoji,'Segoe UI Symbol','Android Emoji',EmojiSymbols">
Rylee Mattingly</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB4160FCA73A455E3B91825E6BB1B69SN6PR03MB4160namp_--


--===============7241632827915365302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7241632827915365302==--

