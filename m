Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 997B2A7986
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 06:07:08 +0200 (CEST)
Received: from [::1] (port=51696 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5MZS-0001Ht-NJ; Wed, 04 Sep 2019 00:07:02 -0400
Received: from mx0a-00199b02.pphosted.com ([148.163.149.0]:33120)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i5MZO-0001CG-H2
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 00:06:58 -0400
Received: from pps.filterd (m0114302.ppops.net [127.0.0.1])
 by mx0a-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x843sL8S030793; Wed, 4 Sep 2019 04:06:16 GMT
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2056.outbound.protection.outlook.com [104.47.48.56])
 by mx0a-00199b02.pphosted.com with ESMTP id 2uqf5tjw4v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Sep 2019 04:06:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvUtI+T+58Dpd8vr/Zmccf4VqBxaWaZT0sUYDeXJ/ygKt+ar0BHFK3HP9JktzkMA4gCqvZtWNK7S0A8Nbc4GB6kCSZNYQ+OcT/pJlqti1CDENG5ZziMDqblOqZhqVyZOzfFn1WFOHFFomY5dqhzkeRAassVF8eW0XKbU1zhp+m8L5s/d74cgaN6Fh3E2XLY4rF6t+RrBmMHRuus6Ga8Y4CJ9nHPn3v7OtSnpPtPRhPJDzlvJ4gOSxqDtxzRAwkPzYx8bI8EZvNolhhohouHrM9vI74wFCmxneMHQRmKcpcfx/GxiyigaMNPn1B9a+84zSOJ8Pn/+J2ZykvOzmI5o8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SeFVJJMkXM1NlNxXe/TWTRE9pPdNziIrUT8ztyD6yK8=;
 b=lmrTMqIH6XlsOY+T9ZZ9GP1gis1+JkiEIPjOl52vDS7S9DvHFUGHjiCA06u38NyTbF02ekNnxQap7AqZMzQegZ3k+IlB2zPlINOZamOzP5M+HYEOTmyVzgOFwjtRaS07567vVVC3T9PmFnA6YRtCspN0rro8EdhNx0Lg0SuzcyTTqnC0tqgAqKc111+ZHaulgP1ivqd0yBDEFsx0PTdkEMUF3cnbx0LlewjQy2m3rUROHEXo7Qjs/TUuPdQPyWNUSZmBUI1gD4owKGY+9AUHr4Aqv5X96sJE+d7FCoNT6QN/PAWb37w/d/CIFLgMemqZPlLYTGdNWoxHKAG8QWNJ0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB5082.namprd03.prod.outlook.com (10.141.161.72) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Wed, 4 Sep 2019 04:06:14 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2220.020; Wed, 4 Sep 2019
 04:06:14 +0000
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] Addsub HLS Block Error
Thread-Index: AQHVYpieP/fOZgDUjECq35w86GFd86cabzaAgAAbhf+AAFT1gIAAAIWggAABEQCAAAUGyg==
Date: Wed, 4 Sep 2019 04:06:14 +0000
Message-ID: <DM6PR03MB3788B23F989AE40F60B92235E6B80@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
 <CA+JMMq80MhC7x4O8W8ytrnFVxEO_ER-e+gC7yX2LM5mb6tdSHw@mail.gmail.com>
 <DM6PR03MB37884233E0BD08DDF53EC805E6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
 <CA+JMMq9qN1ah88g-1NTeDsn7ybnJxm3wpSKyMxqbWe3erb6jRw@mail.gmail.com>
 <DM6PR03MB37880EB10D6C1538CE6FAF19E6B80@DM6PR03MB3788.namprd03.prod.outlook.com>,
 <CA+JMMq-jpVG6pUTjvy3JqQjtCWBg0qxYLeP2G7xPfp-Z4j3h_Q@mail.gmail.com>
In-Reply-To: <CA+JMMq-jpVG6pUTjvy3JqQjtCWBg0qxYLeP2G7xPfp-Z4j3h_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [96.29.140.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3ef7834-8680-4774-4fc5-08d730ed3ac8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB5082; 
x-ms-traffictypediagnostic: DM6PR03MB5082:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR03MB50826593EE2942CC0FEBBA85E6B80@DM6PR03MB5082.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(366004)(376002)(199004)(189003)(51444003)(88552002)(81156014)(6916009)(2906002)(256004)(1411001)(55016002)(86362001)(5024004)(14444005)(316002)(54896002)(6306002)(786003)(66066001)(53936002)(91956017)(99286004)(9686003)(236005)(5070765005)(66574012)(76116006)(66946007)(4326008)(64756008)(606006)(66446008)(66556008)(66476007)(5660300002)(52536014)(517774005)(440504004)(74316002)(6246003)(8936002)(11346002)(6116002)(476003)(3846002)(25786009)(446003)(7736002)(229853002)(478600001)(14454004)(966005)(7696005)(53546011)(6506007)(33656002)(102836004)(71200400001)(71190400001)(26005)(6436002)(76176011)(186003)(81166006)(8676002)(75432002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB5082;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: J9ZdxCYmvXxgx2PWOeIBGTPK6txAVdneiSmnckIO3HTWOW2aNbNiZqSayQIGq0ja+Z7Ol1ARmeK+a1+rxMoWaxwS7wKoHMHmza72NLE5TU6VHmz6XQHmpTuIfuOMAQr1NkCoMZcIOUNvAxVryRw9MDNyx74zQbcETOL+2uDsb+JlD2YX/21NYadSKPzpVfI2x/Or/nzSeSmw6Z1JCg+8PVlpdtpkEa3fmnxAQpnwK2XgCwLIO/YtgSaNK9KxT2oKcxwhlyRRknulNalwnc6qcoyw496pXCEaIOOiMy/LeMD5IZDKCyfLuVjLixtzTNy6aqkQQStk9dSdaFxtwIS7JWQcPLNqQovac2Aw+wesIJ43Lqfg4JKZ9MMgHhMFprKP7ZBO9PbxPlxdBYLAzSnwoHhnNOoSZD1iiOV+4baA81E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ef7834-8680-4774-4fc5-08d730ed3ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 04:06:14.6573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 76z62H/O2x1Z7BEB39VzgfTI2ZqPBwx3xwe3kMyxT+W2Z5AydOATSEVt+ztOzo04p6qgn78VAs1g0KrjbtFZcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5082
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-03_05:2019-09-03,2019-09-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909040041
Subject: Re: [USRP-users] Addsub HLS Block Error
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5036858753454970340=="
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

--===============5036858753454970340==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB3788B23F989AE40F60B92235E6B80DM6PR03MB3788namp_"

--_000_DM6PR03MB3788B23F989AE40F60B92235E6B80DM6PR03MB3788namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

May I ask what do you mean by host? Also, I can't remember but I read somew=
here before that any two input block is quiet buggy.

I was trying to locate the block controller script and xml script to modify=
 it and make it one output but couldn't locate the source yet.

I am running the Pybombs installation of rfnoc.

Thanks,
Adnan


________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Tuesday, September 3, 2019 11:45:46 PM
To: Quadri,Adnan <adnan.quadri@louisville.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Addsub HLS Block Error

That shouldn't be. Even if you connect both outputs to the host?

I admit I got fed up with it in my own application (don't want both streams=
 going into the host) and just modified the addsub block to be an add-only =
block.

On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri@louisville.edu<ma=
ilto:adnan.quadri@louisville.edu>> wrote:
I tried connecting one Signal Source block to both the inputs of addsub blo=
ck. It still throws the same error.

Adnan
________________________________
From: Nick Foster <bistromath@gmail.com<mailto:bistromath@gmail.com>>
Sent: Tuesday, September 3, 2019 11:40:05 PM
To: Quadri,Adnan <adnan.quadri@louisville.edu<mailto:adnan.quadri@louisvill=
e.edu>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Addsub HLS Block Error

Oh, I see. You have separate sources connected to the same addsub block. It=
's telling you that you need to use timed stream commands to start the stre=
am, or else you will see undefined behavior. Personally I think that error =
should be demoted to a warning -- anyone from Ettus want to chime in?

On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri@louisville.edu<ma=
ilto:adnan.quadri@louisville.edu>> wrote:
Hello,

Thank you for your prompt response. I have connected both the addsub output=
 to two QT Gui Sink but I still get the same error. I have the Copy block i=
n the middle as well.

I am attaching a screenshot of my flowgraph. I tried with different USRP so=
urces/Signal Sources as well. But it is the same error.

Thanks,
Adnan

________________________________
From: Nick Foster <bistromath@gmail.com<mailto:bistromath@gmail.com>>
Sent: Tuesday, September 3, 2019 3:57 PM
To: Quadri,Adnan <adnan.quadri@louisville.edu<mailto:adnan.quadri@louisvill=
e.edu>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Addsub HLS Block Error

I ran into this the other day and it's independent of the HLS component of =
the addsub block (since the interface is identical). You need to connect bo=
th outputs of the addsub block to something, even a null sink. I'm pretty s=
ure this wasn't the intended behavior and also pretty sure that it wasn't l=
ike this last time I checked (which was more than a year ago), so maybe it =
should be filed as a bug.

Nick

On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DOAG1LQNACBDguGvBeNj18Swhr=
9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=3DXH0f=
qWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=3D_hsJH03rqnDSUZXWGyx31-8I7HJLsU5=
_S5hs-j5_WRw&e=3D>

--_000_DM6PR03MB3788B23F989AE40F60B92235E6B80DM6PR03MB3788namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
May I ask what do you mean by host? Also, I can't remember but I read somew=
here before that any two input block is quiet buggy.
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I was trying to locate the block controller script and xml script to modify=
 it and make it one output but couldn't locate the source yet.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I am running the Pybombs installation of rfnoc. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Thanks,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Adnan<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<span id=3D"OutlookSignature"></span><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nick Foster &lt;bistr=
omath@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 11:45:46 PM<br>
<b>To:</b> Quadri,Adnan &lt;adnan.quadri@louisville.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Addsub HLS Block Error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>That shouldn't be. Even if you connect both outputs to the host?</div>
<div><br>
</div>
<div>I admit I got fed up with it in my own application (don't want both st=
reams going into the host) and just modified the addsub block to be an add-=
only block.<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 8:43 PM Quadri=
,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu">adnan.quadri@loui=
sville.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0px;padding:0px;font-family=
:sans-serif;font-size:11pt;color:black">
I tried connecting one Signal Source block to both the inputs of addsub blo=
ck. It still throws the same error.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0px;padding:0px;font-family=
:sans-serif;font-size:11pt;color:black">
Adnan<span id=3D"gmail-m_-4590351526468517139OutlookSignature"></span><br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4590351526468517139divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_b=
lank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 11:40:05 PM<br>
<b>To:</b> Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" =
target=3D"_blank">adnan.quadri@louisville.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Addsub HLS Block Error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Oh, I see. You have separate sources connected to the same=
 addsub block. It's telling you that you need to use timed stream commands =
to start the stream, or else you will see undefined behavior. Personally I =
think that error should be demoted
 to a warning -- anyone from Ettus want to chime in?<br>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 3:53 PM Quadri=
,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" target=3D"_blank"=
>adnan.quadri@louisville.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you for your prompt response. I have connected both the addsub output=
 to two QT Gui Sink but I still get the same error. I have the Copy block i=
n the middle as well.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am attaching a screenshot of my flowgraph. I tried with different USRP so=
urces/Signal Sources as well. But it is the same error.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273appendons=
end"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273divRplyFw=
dMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>From:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" tar=
get=3D"_blank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 3:57 PM<br>
<b>To:</b> Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" =
target=3D"_blank">adnan.quadri@louisville.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Addsub HLS Block Error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>I ran into this the other day and it's independent of the HLS componen=
t of the addsub block (since the interface is identical). You need to conne=
ct both outputs of the addsub block to something, even a null sink. I'm pre=
tty sure this wasn't the intended
 behavior and also pretty sure that it wasn't like this last time I checked=
 (which was more than a year ago), so maybe it should be filed as a bug.<br=
>
</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273x_gmai=
l_quote">
<div dir=3D"ltr" class=3D"gmail-m_-4590351526468517139gmail-m_8414608855882=
084273x_gmail_attr">
On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-4590351526468517139gmail-m_841460885588208427=
3x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We are trying to run the RFNoC addsub HLS block.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I was able to build the FPGA Image and made sure in the noc_block verilog c=
ode to point to the HLS implementation for addsub block on RFNoC as opposed=
 to the verilog/VHDL implementation.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
But when we run the example Flowgraph with two signal source as input to th=
e two inputs for addsub block on GRC, we get the following error -</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
ERROR:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]: RuntimeErr=
or: Invalid recv stream command - stream now on multiple channels in a sing=
le streamer will fail to time align.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Does this have anything to do with the C&#43;&#43; code for HLS implementat=
ion or is it a problem at UHD level?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668Qvj=
pcSGl6s3MEmtJLBypH6x02U&amp;m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4=
&amp;s=3D_hsJH03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_DM6PR03MB3788B23F989AE40F60B92235E6B80DM6PR03MB3788namp_--


--===============5036858753454970340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5036858753454970340==--

