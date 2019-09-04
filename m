Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA704A796A
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 05:43:56 +0200 (CEST)
Received: from [::1] (port=47960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5MD5-000093-5j; Tue, 03 Sep 2019 23:43:55 -0400
Received: from mx0b-00199b02.pphosted.com ([148.163.152.185]:47706)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i5MD2-0008UB-2S
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 23:43:52 -0400
Received: from pps.filterd (m0114303.ppops.net [127.0.0.1])
 by mx0b-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x843guTn024968; Wed, 4 Sep 2019 03:43:11 GMT
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2058.outbound.protection.outlook.com [104.47.37.58])
 by mx0b-00199b02.pphosted.com with ESMTP id 2uqhxchjw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Sep 2019 03:43:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exP/ccM0Z7J1h2B/1+KJ/e/Iq+dr6JXROxV9wci7M/GJfhj9nDaYiqcqbmO04EWoXi+i3rxcdOFo8rT6jmr3RDIgH17lVPLYFFxj1Lrpg/Hg/AuiAmdICWpaGsfUUAhe3aXPkBZd+Bqgik0cpT38eHRCfJ+RADMBJffYU4gm+i2ZbrQrpbhoWxP6EJ7GXzwvKbKQv9tZdJmbYSZqiai6HNKzKKW75GFNvAdfxh9ua/gDIrJgFs7nHHSLT5fgawI6TCpD8P0XbGPVGeIGgWYXJ5KgjQOw/jsgHLUT4Evpw8mmuhTLFtk7yaJ0hSqbLwHLC+oSUmK7HqmEnHiJhEDIKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4LX1163Bd/aHsU4EeQ9XUsSkvZd4RK7uzVuZ/n5mn6Q=;
 b=eyi5ei4HzJvu7k31cgfKD6YXBGPf1v54cOjk+pPcacfCwUs6H4VqrJPgCmqfyzF4FNAco8i3uZht/qBNl0+nASVoDSlAyqTLS3yZ3HBU1xfOpgcpYzhlBdyPwXU3MoHLGk2uTlcq+3S3oYu5LVbggzymCXAkOuULUiDFiLtSoPsGbjVMSB6eshwWeHPuRroi+F9J1arzvZ4IGHpK6N62F4ItNrVOKTI86lCBUZQe6Rkh58jtKjPYWKVvdimpESTL4UYtIL/xjtx37TCX0wlM1w08mgZ76cpOgye2HlWa8JQdXzLhfc0TzHVXe8lc71Q4zs4hxY5nh+MllZ1VAm/5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB3866.namprd03.prod.outlook.com (20.176.114.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Wed, 4 Sep 2019 03:43:09 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2220.020; Wed, 4 Sep 2019
 03:43:09 +0000
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] Addsub HLS Block Error
Thread-Index: AQHVYpieP/fOZgDUjECq35w86GFd86cabzaAgAAbhf+AAFT1gIAAAIWg
Date: Wed, 4 Sep 2019 03:43:09 +0000
Message-ID: <DM6PR03MB37880EB10D6C1538CE6FAF19E6B80@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
 <CA+JMMq80MhC7x4O8W8ytrnFVxEO_ER-e+gC7yX2LM5mb6tdSHw@mail.gmail.com>
 <DM6PR03MB37884233E0BD08DDF53EC805E6B90@DM6PR03MB3788.namprd03.prod.outlook.com>,
 <CA+JMMq9qN1ah88g-1NTeDsn7ybnJxm3wpSKyMxqbWe3erb6jRw@mail.gmail.com>
In-Reply-To: <CA+JMMq9qN1ah88g-1NTeDsn7ybnJxm3wpSKyMxqbWe3erb6jRw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [96.29.140.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7576ae6-0be3-4fbf-83a6-08d730ea00df
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB3866; 
x-ms-traffictypediagnostic: DM6PR03MB3866:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR03MB38667DBE1085DA12AD398D99E6B80@DM6PR03MB3866.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(189003)(199004)(51444003)(81156014)(476003)(446003)(256004)(14444005)(71190400001)(71200400001)(5024004)(26005)(55016002)(186003)(102836004)(6506007)(53546011)(1411001)(6916009)(6436002)(66066001)(3846002)(74316002)(76176011)(75432002)(478600001)(486006)(7736002)(8936002)(11346002)(99286004)(786003)(966005)(316002)(229853002)(5070765005)(6116002)(86362001)(606006)(517774005)(91956017)(81166006)(76116006)(66946007)(33656002)(88552002)(9686003)(66556008)(4326008)(6306002)(53936002)(54896002)(64756008)(25786009)(6246003)(5660300002)(66446008)(66574012)(14454004)(7696005)(2906002)(236005)(52536014)(66476007)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB3866;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U5HqwvNHeXVDh5NKNqjGcTvgrSyB9FcYbiU/BmRIPqBG4xYIcWd779rnZCLX7XcFZY2U97DoCHyjc+ZaIGxRCG27x4ebgZf/aR51jkleNJdGmdsxaJur//aaOc3bbkdSaOtPPFU9xlKIgCPJYEujDOUQ90a5aOr11EPPEOf6jLY7gVkxpNOCblGexEIDHqtdbVaJDpN1/Za+ORoF21ALrTXCLMh0KFK+jZ8yF9VU54I4GUI2CQtKGa5+ePG0p6452lnlu12Im7C11pA2q7R9ZfP9F9uGzLFaTB/cRuiUjk364FuZnV7kjAQi4hO3shMKOq0k9PjuwQi+n+SYF2aFVww7J3oeG5mnUHPf9GsFcGj4MsF2TR6yulZioLdfSXi1mYQNDVL9hEuN471XLQh/IFWH9xY9RScqUW/sV4dQrWQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: d7576ae6-0be3-4fbf-83a6-08d730ea00df
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 03:43:09.0693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cMY3dB8U5/i9FX/5D0MJ8d/rdQNVWpYfIrFnmJQM5Laa/ztRg7COGNqW5nGU2BJa04zUPOGwgpPoIT3tEDGsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3866
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-03_05:2019-09-03,2019-09-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1906280000 definitions=main-1909040038
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
Content-Type: multipart/mixed; boundary="===============1886473633035049534=="
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

--===============1886473633035049534==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB37880EB10D6C1538CE6FAF19E6B80DM6PR03MB3788namp_"

--_000_DM6PR03MB37880EB10D6C1538CE6FAF19E6B80DM6PR03MB3788namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried connecting one Signal Source block to both the inputs of addsub blo=
ck. It still throws the same error.

Adnan
________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Tuesday, September 3, 2019 11:40:05 PM
To: Quadri,Adnan <adnan.quadri@louisville.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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

--_000_DM6PR03MB37880EB10D6C1538CE6FAF19E6B80DM6PR03MB3788namp_
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
I tried connecting one Signal Source block to both the inputs of addsub blo=
ck. It still throws the same error.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Adnan<span id=3D"OutlookSignature"></span><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Nick Foster &lt;bistr=
omath@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 11:40:05 PM<br>
<b>To:</b> Quadri,Adnan &lt;adnan.quadri@louisville.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
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
,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu">adnan.quadri@loui=
sville.edu</a>&gt; wrote:<br>
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
<div id=3D"gmail-m_8414608855882084273appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8414608855882084273divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_bl=
ank">bistromath@gmail.com</a>&gt;<br>
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
<div class=3D"gmail-m_8414608855882084273x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_8414608855882084273x_gmail_attr">On Tue, =
Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_8414608855882084273x_gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
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
</body>
</html>

--_000_DM6PR03MB37880EB10D6C1538CE6FAF19E6B80DM6PR03MB3788namp_--


--===============1886473633035049534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1886473633035049534==--

