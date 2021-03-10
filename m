Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8590F33361D
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 08:06:53 +0100 (CET)
Received: from [::1] (port=38974 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJsvh-0005Xg-Kj; Wed, 10 Mar 2021 02:06:49 -0500
Received: from mail-eopbgr1380120.outbound.protection.outlook.com
 ([40.107.138.120]:46576 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1lJsvc-0005S3-Oq
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 02:06:45 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXfcNR0598VYabJiWMAyJbtFP1UUvzE5ovgO235T7Sz3lwlDD9MPJHFuXNxoKHQxa9asDs1VnLyPtEE+A5tycz7XBC/a0S9WPi1RUbxA1aUSByIwLmfzu9/S48vJWtxnjaDSl4Y5Gk1tG4aoCzmSOf4hb31zsNjBDYcw7aH8zTWRK0hvurZfAAcQOpo/pYPWh5whwW7yHdwo4D+0BQ2p/Ut6gIZFhCv0OLnimbiia8VENYIuL3m2k4dcoPkqXrmL/1OaKrW0/UXSPwN5WSltw+zF1CSkc05qo497G/gJvGtNVLT+MxEMD4cUc70DlMn6ZMSQociRjwz+8Q+V5DivPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOCIdLO/YT40sT+N8H8mHQk3f22Px68E/uWXmRsE73g=;
 b=j11eoMqpOfsAfvceALLQRYtlz5MjjkAt2HVmvfETW7g0p3SdlEtzjyUKLhlwrsJrz6OoE+6TB0fao2AOleRgT/hkCbsYm3thc8Gg4OGYg+hjAiefXqFEBiBSFD4u1LuZIVVd+foW3P1YDSrzleTnCfRcluVnLXJfM0QKnBBn7FlBTktGcZyHVKWEYu9n1AZZDxuYtOFV1rXl+LOvgHBQepH1F7QBElh3nxEQXlJujgo0q9/Y+4zZbw3A/uJZVlOdfJJ3oAeiPG1mDcL3ssJi99IkDMlinOeRg1izX3cp70cYgynG3VTopkmBmmOutTBA0GwlG+j48QBAiNddkcr08g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOCIdLO/YT40sT+N8H8mHQk3f22Px68E/uWXmRsE73g=;
 b=am2tdKL/OfTtNvysqsVI0szXzws5qHG0F/hbLEI//j49ezV5WKfs+6KG/s0IJvEyKNDxYKOu6rSCwPoZsxbLlcNRFxcoxZC9Fz+B22XKh1JNfHpuamHcBUrTnZlzUlnsWR7uyfJPvT7XOXxwr7R+vZNgC3DxRSaURZY7fixV8B8=
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:3b::16)
 by BM1PR01MB2339.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:4a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.26; Wed, 10 Mar
 2021 07:06:00 +0000
Received: from BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7]) by BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c5ab:e2d5:3f7e:f6c7%7]) with mapi id 15.20.3912.028; Wed, 10 Mar 2021
 07:06:00 +0000
To: Wheberth Damascena Dias <wheberth@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Problem in installation of NI Linux device driver
 in ubuntu 20.04.
Thread-Index: AQHXFLlWAb6uIT6ECkyGN5pcuT+s2ap8xlcAgAAHhZc=
Date: Wed, 10 Mar 2021 07:06:00 +0000
Message-ID: <BMXPR01MB2760CDAB1C9526179307B4CD8B919@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB2760A66BED30609D2A9C827A8B929@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>,
 <CALSKgPzZioakV7ch0GEK9SYzC0SrVUwgcdC+ZPpULnoH_VBxhg@mail.gmail.com>
In-Reply-To: <CALSKgPzZioakV7ch0GEK9SYzC0SrVUwgcdC+ZPpULnoH_VBxhg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 192d91b3-628b-4904-b884-08d8e392f63b
x-ms-traffictypediagnostic: BM1PR01MB2339:
x-microsoft-antispam-prvs: <BM1PR01MB2339C6585EB9C1BCFC089E0B8B919@BM1PR01MB2339.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jZwPdLqIhfhl+g2aWSgRYhooEp+it6e2pWSpzrpum5uut1LHxHoobmtACCHIwIrmaY6MX3bQQp2osxEPS+Q0uzG2U4xDIUnlNvFhgvFUvVx6FmwGvmOr13l6j3D0otb28KxJgL/SJ5AAJPXC4oZC1LZfVtiNSJcAVMfWDS2sybEG6bC/DRJ+PreGDoi1GigisjKijli7yX/ghxMMx+13DQyOqRu86eJf+o1M8c1lelX2kp1YvZDvuNJXrkpMHsTxJ/Dv7X3p5AxS5IhilCChPyi1kX7MlfBuW02z5K7Osdx6z7TIh9BS9DafAS6mkuo743GQlzisY2LkrKk2ekz0IBtV3vqvyRV86+giUaZchafPguPQJi28xage3+5N2tseQETl5+j9so/QlE9nQafFWHYPxs/tZoQN32fDH22186balMDqT7Mq3pd+veOU7PJOLa1zR7viyZdJ+04Rg56nqBwVyWe/aPaW6rkPbrtcRYXiq07s4MNWnRiEfpCZNT0yoCJ++vbknqeqND64lajr4s3piaZAIVZml/1f+mz/1Sfg9BOi6u88x9BHLR475Z8Vk70euWGNCfKbceJ0IueaGY9CkUQ3YxYEURvApHNa4a0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(39830400003)(376002)(346002)(396003)(136003)(366004)(21615005)(66574015)(71200400001)(7696005)(52536014)(966005)(316002)(8936002)(6916009)(2906002)(86362001)(478600001)(55016002)(33656002)(5660300002)(8676002)(9686003)(4326008)(53546011)(83380400001)(6506007)(26005)(19627405001)(186003)(66946007)(66556008)(66446008)(64756008)(166002)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?S7hJchdiM9UoG1a0cAH5M/4BvB4qQlKx+KvplKSa7cB83jQt9JyrIAXsHCuB?=
 =?us-ascii?Q?iEChIbfq33lSZP3nq1lWnPYkOLweuC7IwtPMap8+ikA6LA674lXwO9Juj596?=
 =?us-ascii?Q?Tmvn9vC2NkBDWohYqUfLTHVMeM+twkNzAkKdUASuYKswciDuDLI3CFLtL1Fz?=
 =?us-ascii?Q?HGsiwarheUMQ7qBVTx0Drm26xTQ2qcIzNYXL0NnRM7vBjJYDk7XiB3/DzLyy?=
 =?us-ascii?Q?odHl7qppnmD+ccMZETUycBjahAuytFAtD6jkyL43p9eFWiFNypYNDIl/w7CP?=
 =?us-ascii?Q?MpANRodx22fg+2xlM0ppqo5RQSXS4yGpNu6WVP9XDZqjuiCJ25BabqxWzG7R?=
 =?us-ascii?Q?bF6oWrinfkGKsnJPfqxJQkEZezK7JdeOFFYJi21sGrMN+ea2BqwU8PUsQknv?=
 =?us-ascii?Q?drpRLYhwDUVndk5gnzAIxNV0Xo/5g64s7Cd2dF9RRDsTYOt1vyvKpwBEYuw+?=
 =?us-ascii?Q?KC8iNLoidiUREM13HOvYqhptdF+Jusxw7KMr54CP/8sxbVnewal6bkl5MChl?=
 =?us-ascii?Q?kmMeXkdrVA84iyAl+R6deu+Jm0tiD9QgAaeIHof02YNLK2FkpqXbyr6CzZVE?=
 =?us-ascii?Q?3sd+ke20EvnMi5bFbjGit7fqQfF7ALKZ29ulHj4u+H5kO0qcAhDJY8DA9ZWF?=
 =?us-ascii?Q?BCbX/WF3bHJTLRmjJTPWmDYKlNrDbp0kBZpcwoyovE3nWE/1TVPvGg6CCQiO?=
 =?us-ascii?Q?qwh2NCT4kVrN6Hy8efF5ozy112PZa/bssKOTBGhh69r6lKUrB98cKvRDwVlW?=
 =?us-ascii?Q?1KesWYLdIOZnf/F0Wo2Antm6cNsmH1MD7E3oKkG3K8Tul/x4Bh4EThpQt9vS?=
 =?us-ascii?Q?O5efx1XqahMNZxruIAp97tymBNUD0xWRufNALcdE517HH3h0QLAXJXZHXK9G?=
 =?us-ascii?Q?6dIX1Za6VIDSr0dnaRiK6YqZYuz9EvQjPqKsuuO8eg3LYbVn2WFw6uXstCOS?=
 =?us-ascii?Q?hkhgj2MoWmVqrd42Sf3xwRy/syqjrXSckOnCGwztD+Ry9hdlTcCTP6ZG4eI8?=
 =?us-ascii?Q?aEbo+Bu6CqjcNmA/L1//LYvUHd7ihvVi9oD+WoQs0HoSYbbDcWWoJpuPO5/e?=
 =?us-ascii?Q?wLm7ydXOYKXRamFgT2ftH5OAXfz2AUxLl0xU/kXcbxJAc3uc1fBIKcEEDTjx?=
 =?us-ascii?Q?PPXcXvCbkHgBONG4d+FuhGUhVir8cF81+q4/q1EOvwiFVuCZ9ljqTTIXAUlo?=
 =?us-ascii?Q?IH1xPouGs7rsqQFE+j1Der5um/mZzskIYoMpMPriC8fxilRRdM84mM8HTJQb?=
 =?us-ascii?Q?ZCaLXuuQ+E1IpydmRX+Z74ypym0aYhw8C26j6S8Md2cAhU7dHWNiPrKkKUzI?=
 =?us-ascii?Q?a9U=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 192d91b3-628b-4904-b884-08d8e392f63b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 07:06:00.7825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OcDS+ckYS62eQdOkC9rwG2cZSL9GBsXLiUsJndvK624g2me6bMOooljtaZ3iu8g14G6P/uXVS/PiGOyLm1lCxHsfUr0XQ2Sqq+gCASMgjug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB2339
Subject: Re: [USRP-users] Problem in installation of NI Linux device driver
 in ubuntu 20.04.
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
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Content-Type: multipart/mixed; boundary="===============1420387086126831098=="
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

--===============1420387086126831098==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB2760CDAB1C9526179307B4CD8B919BMXPR01MB2760INDP_"

--_000_BMXPR01MB2760CDAB1C9526179307B4CD8B919BMXPR01MB2760INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for the information.
I have also tried this in ubuntu 18.04 and I did it successfully. But now I=
 want to install it in ubuntu 20.04. Is there any way to install it in ubun=
tu 20.04?
my purpose is : I have installed gnuradio-companion in 20.04 and I want to =
capture signal using usrp x310 (via PCIE cable) and measure the power of th=
at signal using GNURADIO. In order to do that we need to check whether the =
usrp communicating with host machine or not. That is why I am trying to ins=
tall NI Linux device driver but I am unable to do that. please help me in t=
his matter.

Thanking you.

with regards,
Sourin Mondal

Associate Software Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +91 9330337699 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com<http://www.vehere.com/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: Wheberth Damascena Dias <wheberth@gmail.com>
Sent: Wednesday, March 10, 2021 12:07 PM
To: Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
Subject: Re: [USRP-users] Problem in installation of NI Linux device driver=
 in ubuntu 20.04.

Hello,

I have used this driver with a X310 in Ubuntu 18.04. I think there is a lim=
it to the kernel version supported by the driver.

Regards,
Wheberth

On Wed, Mar 10, 2021, 07:17 Sourin Mondal (Vehere) via USRP-users <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello everyone,

I am trying to install NI Linux device driver and I followed the steps ment=
ioned in the link "https://files.ettus.com/manual/page_ni_rio_kernel.html" =
but I am facing an error. Can anyone help me the proper procedure of how to=
 install NI Linux device driver in ubuntu 20.04.
Please find the attachment where I wrote the error messages.

with regards,

Sourin Mondal

Associate Software Engineer
Vehere | Proactive Communications Intelligence & Cyber Defence
M: +91 9330337699 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere=
.com<http://www.vehere.com/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BMXPR01MB2760CDAB1C9526179307B4CD8B919BMXPR01MB2760INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helveti=
ca,sans-serif">Hi,</span>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif">
<br>
</div>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif">
Thanks for the information.</div>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif">
I have also tried this in ubuntu 18.04 and I did it successfully. But now I=
 want to install it in ubuntu 20.04. Is there any way to install it in ubun=
tu 20.04?</div>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif">
my purpose is : I have installed gnuradio-companion in 20.04 and I want to =
capture signal using usrp x310 (<b>via PCIE cable</b>) and measure the powe=
r of that signal using GNURADIO. In order to do that we need to check wheth=
er the usrp communicating with host
 machine or not. That is why I am trying to install <span lang=3D"en-US"><s=
pan>NI Linux device driver but I am unable to do that. please help me in th=
is matter.</span></span></div>
<div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetic=
a,sans-serif">
<span lang=3D"en-US"><span><br>
</span></span></div>
<span style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helveti=
ca,sans-serif"><span lang=3D"en-US"><span>Thanking you.</span></span></span=
><br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
with regards,<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D""><font face=3D"Tahoma, sans-serif" color=3D"#222222"><span s=
tyle=3D"font-size:12px"><b>Sourin Mondal</b></span></font><br>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif; co=
lor:rgb(34,34,34)">Associate Software Engineer</span><span style=3D"margin:=
0px; font-family:Tahoma,sans-serif; color:rgb(34,34,34)"><br>
</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-se=
rif; color:rgb(34,34,34)">Vehere | Proactive Communications Intelligence &a=
mp; Cyber Defence<br>
M: +91 9330337699 | T: +91&nbsp;33 40545454 | F: +91&nbsp;33 40545455 | W:&=
nbsp;</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sa=
ns-serif; color:rgb(31,73,125)"><a href=3D"http://www.vehere.com/" target=
=3D"_blank" rel=3D"noopener noreferrer" style=3D"margin:0px"><span style=3D=
"margin:0px; color:rgb(17,85,204)">www.vehere.com</span></a></span><span st=
yle=3D"margin:0px; font-size:9.5pt; font-family:Arial,sans-serif; color:rgb=
(34,34,34); background:white">&nbsp;&nbsp;</span><span style=3D"margin:0px;=
 color:rgb(31,73,125)">&nbsp;</span><span style=3D"margin:0px"></span></p>
<p style=3D"color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:=
11pt; margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,2=
55,255)">
<i><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif;=
 color:rgb(34,34,34)">Vehere is the proud recipient of the Fastest Growing =
Technology Company Awards in India &amp; Asia since 2012!<br>
<br>
</span></i><span style=3D"margin:0px; font-size:7.5pt; font-family:Tahoma,s=
ans-serif; color:rgb(34,34,34)">The content of this e-mail is confidential =
and intended solely for the use of the addressee. The text of this email (i=
ncluding any attachments) may contain
 information, which is proprietary and/or confidential or privileged in nat=
ure belonging to Vehere Interactive Pvt Ltd and/or its associates/ group co=
mpanies/ subsidiaries. If you are not the addressee, or the person responsi=
ble for delivering it to the addressee,
 any disclosure, copying, distribution or any action taken or omitted to be=
 taken in reliance on it is prohibited and may be unlawful. If you have rec=
eived this e-mail in error, please notify the sender and remove this commun=
ication entirely from your system.
 The recipient acknowledges that no guarantee or any warranty is given as t=
o completeness and accuracy of the content of the email. The recipient furt=
her acknowledges that the views contained in the email message are those of=
 the sender and may not necessarily
 reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing =
the attachment please check and scan for virus. WARNING: Computer viruses c=
an be transmitted via email. The recipient should check this email and any =
attachments for the presence of
 viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.&nbsp;</span></p>
<br>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Wheberth Damascena Di=
as &lt;wheberth@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, March 10, 2021 12:07 PM<br>
<b>To:</b> Sourin Mondal (Vehere) &lt;sourin.mondal@vehere.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Problem in installation of NI Linux device=
 driver in ubuntu 20.04.</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hello,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I have used this driver with a X310 in Ubuntu 18.04. I th=
ink there is a limit to the kernel version supported by the driver.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Regards,</div>
<div dir=3D"auto">Wheberth</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Mar 10, 2021, 07:17 Sourin =
Mondal (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)">Hello everyone,</span></span></d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)"><br>
</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif; font-size:12pt; color:rgb(0,0,0)">I am trying to install NI Linux =
device driver and I followed the steps mentioned in the link &quot;<a href=
=3D"https://files.ettus.com/manual/page_ni_rio_kernel.html" rel=3D"noopener=
 noreferrer noreferrer" target=3D"_blank">https://files.ettus.com/manual/pa=
ge_ni_rio_kernel.html</a>&quot;
 but I am facing an error. Can anyone help me the proper procedure of how t=
o install NI Linux device driver in ubuntu 20.04.<br>
</span><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-=
size:12pt; color:rgb(0,0,0)">Please find the attachment where I wrote the e=
rror messages.</span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span lang=3D"en-US">with regards,<br>
</span></div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_7874002252811083234Signature">
<div>
<div><font face=3D"Tahoma, sans-serif" color=3D"#222222"><span style=3D"fon=
t-size:12px"><b>Sourin Mondal</b></span></font><br>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px; color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:11pt;=
 margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,255,25=
5)">
<span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif; co=
lor:rgb(34,34,34)">Associate Software Engineer</span><span style=3D"margin:=
0px; font-family:Tahoma,sans-serif; color:rgb(34,34,34)"><br>
</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-se=
rif; color:rgb(34,34,34)">Vehere | Proactive Communications Intelligence &a=
mp; Cyber Defence<br>
M: +91 9330337699 | T: +91&nbsp;33 40545454 | F: +91&nbsp;33 40545455 | W:&=
nbsp;</span><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sa=
ns-serif; color:rgb(31,73,125)"><a href=3D"http://www.vehere.com/" rel=3D"n=
oopener noreferrer noreferrer" target=3D"_blank" style=3D"margin:0px"><span=
 style=3D"margin:0px; color:rgb(17,85,204)">www.vehere.com</span></a></span=
><span style=3D"margin:0px; font-size:9.5pt; font-family:Arial,sans-serif; =
color:rgb(34,34,34); background:white">&nbsp;&nbsp;</span><span style=3D"ma=
rgin:0px; color:rgb(31,73,125)">&nbsp;</span><span style=3D"margin:0px"></s=
pan></p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px; color:rgb(32,31,30); font-family:Calibri,sans-serif; font-size:11pt;=
 margin:0cm 0cm 0.0001pt; text-align:start; background-color:rgb(255,255,25=
5)">
<i><span style=3D"margin:0px; font-size:9pt; font-family:Tahoma,sans-serif;=
 color:rgb(34,34,34)">Vehere is the proud recipient of the Fastest Growing =
Technology Company Awards in India &amp; Asia since 2012!<br>
<br>
</span></i><span style=3D"margin:0px; font-size:7.5pt; font-family:Tahoma,s=
ans-serif; color:rgb(34,34,34)">The content of this e-mail is confidential =
and intended solely for the use of the addressee. The text of this email (i=
ncluding any attachments) may contain
 information, which is proprietary and/or confidential or privileged in nat=
ure belonging to Vehere Interactive Pvt Ltd and/or its associates/ group co=
mpanies/ subsidiaries. If you are not the addressee, or the person responsi=
ble for delivering it to the addressee,
 any disclosure, copying, distribution or any action taken or omitted to be=
 taken in reliance on it is prohibited and may be unlawful. If you have rec=
eived this e-mail in error, please notify the sender and remove this commun=
ication entirely from your system.
 The recipient acknowledges that no guarantee or any warranty is given as t=
o completeness and accuracy of the content of the email. The recipient furt=
her acknowledges that the views contained in the email message are those of=
 the sender and may not necessarily
 reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing =
the attachment please check and scan for virus. WARNING: Computer viruses c=
an be transmitted via email. The recipient should check this email and any =
attachments for the presence of
 viruses. The company accepts no liability for any damage caused by any vir=
us transmitted by this email.&nbsp;</span></p>
<br>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB2760CDAB1C9526179307B4CD8B919BMXPR01MB2760INDP_--


--===============1420387086126831098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1420387086126831098==--

