Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 132382FEF0A
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 16:38:49 +0100 (CET)
Received: from [::1] (port=48854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2c2q-00077g-4C; Thu, 21 Jan 2021 10:38:48 -0500
Received: from mx0b-00272701.pphosted.com ([208.86.201.61]:10640)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=86551c2823=rmattingly@ou.edu>)
 id 1l2c2l-0006yp-LI
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 10:38:43 -0500
Received: from pps.filterd (m0107986.ppops.net [127.0.0.1])
 by mx0b-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 10LFV7aH008957
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 09:38:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=domainkey;
 bh=XwRxdARAa+eFbrZOktXQf4xtYqag63kRKdRP+JrVzys=;
 b=IJh45G9lXH4H3IGlvQCHavJp2rQz3VU/HsReoAOYjDSKb3ZoSgvgfAYL2nfFbzrNmAX2
 PRzdD+qqHRfVegB0Pl9rKNQ5PFRQL/6oE7OVFDg8pcOM8sj6wXGTxt4SgVJQFQPACbIB
 5eEfkmpMnSgtC16Z0uyAqVlqL4+SR/68J87aa5xASWGkHRe0vI6/1/z4Jp+9pcj8ASho
 WjXQvj7+DEjTb9e21xdF32SZBZyxemmf/nIE25v9YhNepTmEb9VT9D/WGyrNNT5CBHhV
 HTW5L+Y8jeJkHFhDOv9Rr8ySQFak7ao/Dd9ypvsTWIP03A8WsAwKbopO29D2c3U4hDjH 1g== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
 by mx0b-00272701.pphosted.com with ESMTP id 3668p8mt6v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 09:38:02 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0BuKSdj5+7e4ytvkcGAvbGRrz1dcH/dRO8XuTESQkycOdSzZHxQej1Tpqyss9FmXSaPMVKsH9LRPh7p2bfdYZ9PS43rvnHaHEaZQXO/B/PKojqDtRLUtLYl9Wa63a3YzJbWZAijFXE/9gEmTv02+MdgpjgaWi6c7o6D9rCarPWHsMTKKanvIWeof1R8wvg/0kFcsSH9/6NuRZbRKUOjKNeAdIUCVBnCXQZ/9w6vGNCKwc2fiowAD172n1tuOFkUXY5/rfF76K3gLBmUV4h0qLcmugJhGMiwHIGuJtGQaognR94664vdSQfTXnkWj6lkKeU+7B8CfoGoRgwn6E/gWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwRxdARAa+eFbrZOktXQf4xtYqag63kRKdRP+JrVzys=;
 b=Md9SpdaB5v56i7H76AC6km8klL1VZ8qVl0OCiS5ujxaosnyxwvJFm/ZBHqN046Bz1StS1mB/kNsgJkG5rhVyfdYuv5JkY4SS2uL8fI2NpHBw45JbifUFmELxKbTidwu6oSm9kabXMuO2nkndN0hcelRrhg8/UL3EE4I0LGCBjkdRoQ2I6GYmoCXtA1CtyGQ+QmCmSvxl1JxaCS1AXqhchKJ8JQPGUXOQll0ubR6Nt5HdM/AcgJ6VRmFGipBZ79hRGjFz11uX9a27SEs2yNIU59me1/3mY2STT+0zK8QqVr/w0N6iYvgnSo9WDujo0NSKvcvgT5PbYhDeeVuKVSSvgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SA0PR03MB5642.namprd03.prod.outlook.com (2603:10b6:806:bd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Thu, 21 Jan
 2021 15:38:00 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd%4]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 15:38:00 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC 4 FFT with GNURadio
Thread-Index: AQHW8AqSK0SAar/A0USi7wUPpRNdpQ==
Date: Thu, 21 Jan 2021 15:38:00 +0000
Message-ID: <SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [129.15.133.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0e05578-0c95-4f71-32e3-08d8be2288b2
x-ms-traffictypediagnostic: SA0PR03MB5642:
x-microsoft-antispam-prvs: <SA0PR03MB564242ED8AE1E6D2CCA2ADDFB1A10@SA0PR03MB5642.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jqVaYiTLSXpn3MAgtXTovuPk7eRinFOAp/TWH4Uzvr0A+W5+dv/IhhuVXEZNT4Vfr/ZcHwHpNxgeCWvQ1KjhJelBWf59xmEf/4bKm4y8lMMShyAOyNhBg9j0dTtvzKSTZVLko8bGby1MCKsp4Kr3nv4Y9oHA23+cwt2vfYwsj7smyZh8dTLH4AxGbvNFYJ/uVhJ5urgVMcz5A7bNoh0+W47a9GsSgptD6LFdAojBHPcqDsHWsbuG9SYHOnQUsN3TbR1rCvXfTpH/u97ixNZB/dcY/XiqAaM0SGVzWL0Yi2O++UcWch+Sig08UTJYIWuNtHc5QL3M8JPsrjAHPu16cl0vLrSgiAGURNcxLGy+BylJ8GriZ6kRoPknniXdGNSQbZX2OQOk1FblNsx6FDvan+aqB5JQkYPujlMYOxumuI57rgxPrRvygjlIFoRtg24Qe/wQ92m8SahzCL02slJncTQA9HBNH2RR8++/otYK8jP3teSweVEen0dOYhLFcbgiO0kmCrVred41Tep2hjHsllr/f73YvDgjERrECEJrakZR5Ycyl/dVmoImycrYWnu48pCgn3bqZ/UtnOBQFaikzC1JBKxAxX2+o5c/BQY5ZFs5oojkqRm+vQG+5H2/fVLIVNlBmaG4T2qa8kjZm3RHdtMtlagihdCoYPT/74XkKwI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR03MB4160.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(75432002)(6506007)(19627405001)(71200400001)(52536014)(86362001)(76116006)(83380400001)(5660300002)(6916009)(9686003)(2906002)(8936002)(55016002)(966005)(64756008)(66476007)(66946007)(498600001)(26005)(33656002)(8676002)(186003)(7696005)(66556008)(66446008)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?YTtSJf7i7aYcnTKcf1bhAuVVLOlCpbe69TzH1OC0HGuUkUs5eFaeihvbwx?=
 =?iso-8859-1?Q?YeKok5FrhFXRnzRVApN/TTwkvlPgA7gexsYiYvZlViJgvVmAfR8tcVRZwa?=
 =?iso-8859-1?Q?PXLf3W7QneAsLFhE5y7NCYQYgEsmTy55FW23pMmLiOdoNTUjL+eTaw+WJV?=
 =?iso-8859-1?Q?bHgwd3i9xYCpOppT3fqcoeYWeAE6T+MWxTzxDS0VPaRrQAJwubpDo+kmVJ?=
 =?iso-8859-1?Q?ec4mWRjL6bjwUrdz1xmsFtzcJNQFpsuFMEKtkHjrD6mFuTiqeNBYy2mAKE?=
 =?iso-8859-1?Q?q/7NXa+rxDSXrjPybcoF+HkntJs16/rFQFxH4oy5XG39nDGQ2c/HIzBEvA?=
 =?iso-8859-1?Q?5gnLjX6Sdci9cxqaPILp4/LE1vh2oO5VpDsGva3VEQ4CvuhQrhau/jRyeR?=
 =?iso-8859-1?Q?wOde6agKvD7THf6Whvb5+ol/oayCyxTKwHAwAeZ3miMCQkLUwnHjfxCweX?=
 =?iso-8859-1?Q?kAK4QfmtRLI8iFvSvsSWwDQMP8C0HtkOXsErAoS8xZJ0ALHiy68KUan/Rh?=
 =?iso-8859-1?Q?iXOwXE4W3SDq4g92ykAtIAVTrWBhz8Fa2nbcCqKqomLPD4tdFbyjn3Juoi?=
 =?iso-8859-1?Q?3wscNvVhpDjwkTqVxrjXN/HqNS7iH4PJTaXehWvmA8GPetdn1wo3akYeKY?=
 =?iso-8859-1?Q?tFHBLzQoh6/iqHGpU50iHMN8Hwj4lTf/FoV55pKRihkxY34YPyp51AJPyg?=
 =?iso-8859-1?Q?/Wf0GCDjSlmqtb0uxbEaIjymWDTlBe/yLeVphqVXlA/Us4z07bwS3kly83?=
 =?iso-8859-1?Q?03wrdb6hffsRS2X8Cm10yQ3isMoQhy8K0IsiPAoUHQKemyZ+gePP4MQHZm?=
 =?iso-8859-1?Q?sn+fPovZGe/ziokLNz/QMC+zQgcbbbcUo1A6W4gwibdIpxSGDe4lRCfhs2?=
 =?iso-8859-1?Q?UGdxF7kb1NDTHAdPDt6GTbZQ5lC5FPJsSh0BSAlvHa6a1ExAWYJS5gygnw?=
 =?iso-8859-1?Q?KMw13rdA+5VP35O/bxPwWS/xEMX38gKR7KLf3ylCzbRVs5NVwCtisJHqqx?=
 =?iso-8859-1?Q?gNEaCvQr4aixZkD5cxeh4ihUw5TRobtP6WUQ5is3eKMtt+7EwRrx0pWlWn?=
 =?iso-8859-1?Q?KVi6WuWrVSt0wdygrK/VUUfLaIaNdfsc6F3Hw36aXBLq?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e05578-0c95-4f71-32e3-08d8be2288b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 15:38:00.3111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQeey97Wp7B//64HkXA/f8q4aZHpE39np5T9yWqHts9XQmYcGKM9jSuDuan4cKzSNII6IBY+Xeo93plSvxYZCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR03MB5642
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-21_08:2021-01-21,
 2021-01-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=999 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101210087
Subject: [USRP-users] RFNoC 4 FFT with GNURadio
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
Content-Type: multipart/mixed; boundary="===============4614816056421650601=="
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

--===============4614816056421650601==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19SN6PR03MB4160namp_"

--_000_SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19SN6PR03MB4160namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying (and failing) to get an RFNoC image with the provided FFT worki=
ng with GNURadio. I am using an X310 connected with a 1Gig ethernet and bui=
lding images in the HG configuration.
I used the knowledge base article: "Getting Started with RFNoC in UHD 4.0" =
(linked here: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) t=
o add the FFT to the default image.
The resulting image core with FFT can be found here: https://pastebin.com/x=
Lqyx7qS

The uhd probe shows the fft correctly connected to through its own SEP. How=
ever, when I attempt to run a flowgraph containing the FFT I get a recv() t=
imeout error and then blocks will not flush unitl the USRP is reset. One of=
 the many flow graphs I have tried, and the consistent error are shown in t=
he screenshots here: https://pasteboard.co/JKFUlrH.png and here: https://pa=
steboard.co/JKFTHji.png

I then tried using the UHD Python API deriving from the example shown in th=
e GRCon20 session "Exploring RFNoC with the UHD Python API" by Aaron Rosset=
to. Here I find that a static loopback example like Aaron presented with th=
e FFT worked with one length of samples but trying to extend that for strea=
ming from the radio creates the same behavior that is exhibited with GNURad=
io. The only way that I can get the FFT to execute correctly is if I stream=
 exactly one FFT length of samples. Any larger number of samples from the r=
adio (even length multiple) will crash the block and requires a power cycle=
 to be able to flush again.

Loopback example code: https://pastebin.com/03dScZvB
Streaming test code: https://pastebin.com/WQRn7UhH

I have been able to build and use custom RFNoC blocks sucessfully with GNUR=
adio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.

Thank you,

Rylee


--_000_SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19SN6PR03MB4160namp_
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
Hi all, </div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<div><br>
</div>
<div>I am trying (and failing) to get an RFNoC image with the provided FFT =
working with GNURadio. I am using an X310 connected with a 1Gig ethernet an=
d building images in the HG configuration.</div>
<div>I used the knowledge base article: &quot;Getting Started with RFNoC in=
 UHD 4.0&quot; (linked here: https://kb.ettus.com/Getting_Started_with_RFNo=
C_in_UHD_4.0) to add the FFT to the default image.</div>
<div>The resulting image core with FFT can be found here: https://pastebin.=
com/xLqyx7qS</div>
<div><br>
</div>
<div>The uhd probe shows the fft correctly connected to through its own SEP=
. However, when I attempt to run a flowgraph containing the FFT I get a rec=
v() timeout error and then blocks will not flush unitl the USRP is reset. O=
ne of the many flow graphs I have
 tried, and the consistent error are shown in the screenshots here: https:/=
/pasteboard.co/JKFUlrH.png and here: https://pasteboard.co/JKFTHji.png</div=
>
<div><br>
</div>
<div>I then tried using the UHD Python API deriving from the example shown =
in the GRCon20 session &quot;Exploring RFNoC with the UHD Python API&quot; =
by Aaron Rossetto. Here I find that a static loopback example like Aaron pr=
esented with the FFT worked with one length
 of samples but trying to extend that for streaming from the radio creates =
the same behavior that is exhibited with GNURadio. The only way that I can =
get the FFT to execute correctly is if I stream exactly one FFT length of s=
amples. Any larger number of samples
 from the radio (even length multiple) will crash the block and requires a =
power cycle to be able to flush again.</div>
<div><br>
</div>
<div>Loopback example code: https://pastebin.com/03dScZvB</div>
<div>Streaming test code: https://pastebin.com/WQRn7UhH</div>
<div><br>
</div>
<div>I have been able to build and use custom RFNoC blocks sucessfully with=
 GNURadio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.</div>
<div><br>
</div>
<div>Thank you,</div>
<div><br>
</div>
<div>Rylee</div>
<br>
</div>
</body>
</html>

--_000_SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19SN6PR03MB4160namp_--


--===============4614816056421650601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4614816056421650601==--

