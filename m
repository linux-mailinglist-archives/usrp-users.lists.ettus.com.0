Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DEFB01F2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 18:45:53 +0200 (CEST)
Received: from [::1] (port=54872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i85kb-00034d-Cm; Wed, 11 Sep 2019 12:45:49 -0400
Received: from mx0b-00199b02.pphosted.com ([148.163.152.185]:26910)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i85kX-0002wj-PU
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 12:45:45 -0400
Received: from pps.filterd (m0114305.ppops.net [127.0.0.1])
 by mx0b-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8BGi053004779; Wed, 11 Sep 2019 16:45:05 GMT
Received: from nam01-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2056.outbound.protection.outlook.com [104.47.33.56])
 by mx0b-00199b02.pphosted.com with ESMTP id 2uxcn2uhfs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 11 Sep 2019 16:45:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G32LD2A8I0Ah+Ln3FkfBpg97xa4apmX7FPc7ZFiC24LGJjUMffJOMijC6OyJI8XVuRibZN9rcZzVHIqZpAcmKLPvUfMydrc3DECt7BJagUny0cs+gp4IM6jFLuhQlsz32WhUmrfIqHqLN7L3lJWHS+Rjftu0lpC8GDBgQKAtfihlurwPtCI70wEsxm+wYwBJSuj+8/S/ebJc7mpgbQ5ta/QJcbypvwGjXg65iEKdzuQTvYeCBvrjbBq9w9iDqQLfzF9SnJ9oAlzcZfjzYr8yieIcacdrONa9G2pYmfwWyPEpodIRLxwvAh9LVQypDruMDCYmOZFOJMmpZYABnBG2Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zDeFTVsRDlvTDFN2p9vGJ3UDW4JAOK7qRJ4qOOobNQE=;
 b=KZeotyxYUMr/J8bDqSWQBwZGgzfLte81nWvClhEQkj+TqSiQ0VMupIenKZgrwXHaXiSYaH7CLeyMKW2VIV26jXFjbsDK8FRVs18pCvt39rGTL9mxUWr4BPXymEYEPnV7eOpYyI3PLpiy8cL0BfeDnmi8vr9VmuAiuPHNQAnK7x9wMbJBuna0qGMl+U+o6S3t3ILD2Prk/cqEw5eFeBKDzoaDeqTrgoWgImT9g+DN4vAkBguv4cp3RRtViYVnnSm9rpoHUeVNYVyFNGIe/9iDhhipCpLX7z6BmGXBcRQHCMeTfUT8KCzgWZaux6v5bUYsfj0BTg7WBNBKH+jWQseNBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB4474.namprd03.prod.outlook.com (20.178.26.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 16:45:03 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 16:45:03 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC SVD Block
Thread-Index: AQHVZOVXnxTc+r9T802taJywQSQw86cfIlKAgAd6MXaAABdNAIAAAkQF
Date: Wed, 11 Sep 2019 16:45:03 +0000
Message-ID: <DM6PR03MB3788C5B1BF520A7AC022AABFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
 ,<84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
 <DM6PR03MB37883E0264A559380EB5A1BFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>,
 <a6d01ddb6d45fb692f7fcfc5a5cdf744a7ab17c1.camel@ettus.com>
In-Reply-To: <a6d01ddb6d45fb692f7fcfc5a5cdf744a7ab17c1.camel@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [216.249.140.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c186a9da-4d5d-4879-fbf7-08d736d764f9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB4474; 
x-ms-traffictypediagnostic: DM6PR03MB4474:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM6PR03MB44749093CB443497F2B39173E6B10@DM6PR03MB4474.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:337;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(346002)(136003)(199004)(189003)(236005)(53936002)(55016002)(9686003)(54896002)(6306002)(6116002)(102836004)(53546011)(26005)(6506007)(3846002)(81166006)(66066001)(476003)(11346002)(446003)(486006)(8676002)(8936002)(105004)(81156014)(6246003)(7736002)(229853002)(478600001)(76176011)(2906002)(186003)(74316002)(7696005)(99286004)(110136005)(786003)(316002)(75432002)(76116006)(33656002)(71200400001)(88552002)(14444005)(5660300002)(256004)(71190400001)(606006)(19627405001)(2501003)(86362001)(66574012)(966005)(52536014)(66946007)(25786009)(66446008)(6436002)(66476007)(64756008)(66556008)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4474;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M7L4gblpF8Sn9Wf2TZWcp7NmgD/apIWGOWNlumBfMvl0O4OixE4TOOFNpHiYVB9wGCYM+2SsMRDsdy3LSjDclOzT/vLDk7TZu5jISUhZ7u8ZEIm5ylloEGcS7Ls80ZDz7r2tGPgMHL6+h4ynD7uJZ0aO3XMldfw+POHx9KGIkqPil4cCLMtWsp0vqYwbcaMQps3OJioG7J2ORA6zDEWjfb+T5KUOyR00dbChN538xPMPn5kXQnhQ98IAuDeFRMwsxPEhw5cXbXDIaetL+N3NwTh6JKjoxsefBNgz6X21vZVVIHz/BqgIuXJm7SGz7asImUAriR6KisMe9nDq3Da1IUCAYFsr2imKub2mNw5lE3Fc8oW7iAAj86jR/0eS/aMWLc50CS3YdI/+tMnXQX/rBSBu6jbCvgDHYC7iW1WYv4I=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c186a9da-4d5d-4879-fbf7-08d736d764f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 16:45:03.5158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 34duw7V0vbNjBo+TaDQK53g+DpG/77avr/ZMcZgT+Uv/0XPIYbAJl024jP3pI6ao6gRfvq7LUo0qFz0cvTZQcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4474
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-11_08:2019-09-11,2019-09-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015
 mlxscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1909110155
Subject: Re: [USRP-users] RFNoC SVD Block
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
Content-Type: multipart/mixed; boundary="===============7124264777214994053=="
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

--===============7124264777214994053==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB3788C5B1BF520A7AC022AABFE6B10DM6PR03MB3788namp_"

--_000_DM6PR03MB3788C5B1BF520A7AC022AABFE6B10DM6PR03MB3788namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

This Verilog AXI is so amazing. I just went through the project link quickl=
y.

We can test our verilog implementation on GRC! This will be so helpful.
Thank you so much for sharing the information.

Adnan
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Wednesday, September 11, 2019 11:34 AM
To: Quadri,Adnan <adnan.quadri@louisville.edu>; usrp-users@lists.ettus.com =
<usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC SVD Block

Thanks! I'm always curious about how our hard- and software
infrastructure is being used!

By the way, in case you want to test a verilog SVD implementation
within a signal processing framework: Bowen Hu did a very interesting
Google Summer of Code project this year, in which he made it possible
to just drop in a Verilog Module in a GNU Radio block and use that to
do signal processing in a pure host computer simulation. He'll be at
GRCon this year!

https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_B0WEN-2DH=
U_gr-2Dverilog&d=3DDwIDaQ&c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&r=
=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=3DOAza1LeUx_20PABZFpa8SFpG=
hqGusnLgCJPv8Qn9IY4&s=3DRVT10qjiHFS4-MdCMHF5eFq0-VWOEryN7swfWuOKkZI&e=3D
</shameless_plug>

Best regards,
Marcus
On Wed, 2019-09-11 at 15:13 +0000, Quadri,Adnan wrote:
> Hello,
>
> Thanks for your prompt response and sorry for my delayed one.
>
> I have thought about the first option you have discussed, which is to
> use already implemented SVD but modify it to fit with the nocshell.
>
> As we go down that way, I will update this thread with questions or
> any significant findings.
>
> Thank you,
> Adnan
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Friday, September 6, 2019 4:00 PM
> To: Quadri,Adnan <adnan.quadri@louisville.edu>;
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC SVD Block
>
> Hello Adnan,
>
> I'm currently not aware of anyone doing that.
>
> However, since one of the typical applications of beefier FPGAs is
> math
> accelerators for linear algebra problems, it's more than likely
> someone
> did in fact implement an SVD before, and you might just need to
> connect
> it to a nocshell to make it work in RFNoC. There's a lot of
> interesting
> papers out there on SVD implementations for fixed point math on
> FPGAs,
> I think Drexel uni had some interesting stuff for SVD-based channel
> estimation for OFDM. I've not seen any code of them, though...
>
> So, from an algorithmic point of view, an SVD isn't too hard. IIRC,
> sequential algorithms can work in-place, and thus (for a m=D7n matrix,
> n>m) don't need more than n=B2 space for intermediate and final result
> (+2m for index and scale storage if you want to pivot elegantly).
>
> Now, I've not ever implemented more than a C++ QR decomposition
> (which
> is the core algorithm for most EVD problems, which you typically
> householder-transform an SVD problem to), so I'm really not competent
> to comment on hardware implementations, but chances are you want to
> compute a lot of result values in parallel if you're doing it in the
> FPGA =96 because otherwise, you'd abhor doing much work in hardware
> (that
> being _hard_) in favor of doing it easier-to-debug and also free-to-
> have in the shape of LAPACK software. (Subtext message, more for
> future
> readers than for you: Evaluate whether something really should be
> done
> in hardware; it's not inherently better to do things in hardware.)
> But that parallelism might imply that in-place is not a feasible way
> of
> computing things, and your memory requirements might be much larger.
> Depending on the size of SVD you're planning to do, that might or
> might
> not be an issue.
>
> Best regards,
> Marcus
>
> On Fri, 2019-09-06 at 19:05 +0000, Quadri,Adnan via USRP-users wrote:
> > Hello,
> >
> > We are trying to perform singular vector decomposition. The idea is
> > to work on an RFNoC block that takes in summation of samples from
> the
> > Radio source and will perform SVD.
> >
> > Is anybody working on something similar?
> > Currently, the RFNoC OFDM synchronizer block has timing constraint
> > issues and can't be used to build FPGA image.
> >
> > Just asking around to get some suggestions/advice and idea if
> working
> > on that Verilog implementation of SVD is something doable and if
> > anybody tried anything similar.
> >
> > Thank you,
> > Adnan
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> >
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwIDaQ&c=3DOAG1LQNACBDguGv=
BeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02=
U&m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&s=3DwNh-TuGTVEYzPNN0GRzBj=
YiBuFKVQfG5vjCSdYCEnPY&e=3D
>
>


--_000_DM6PR03MB3788C5B1BF520A7AC022AABFE6B10DM6PR03MB3788namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This Verilog AXI is so amazing. I just went through the project link quickl=
y. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We can test our verilog implementation on GRC! This will be so helpful.</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you so much for sharing the information. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Adnan<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, September 11, 2019 11:34 AM<br>
<b>To:</b> Quadri,Adnan &lt;adnan.quadri@louisville.edu&gt;; usrp-users@lis=
ts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RFNoC SVD Block</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Thanks! I'm always curious about how our hard- and=
 software<br>
infrastructure is being used!<br>
<br>
By the way, in case you want to test a verilog SVD implementation<br>
within a signal processing framework: Bowen Hu did a very interesting<br>
Google Summer of Code project this year, in which he made it possible<br>
to just drop in a Verilog Module in a GNU Radio block and use that to<br>
do signal processing in a pure host computer simulation. He'll be at<br>
GRCon this year!<br>
<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_B0WEN-2DHU_gr-2Dverilog&amp;d=3DDwIDaQ&amp;c=3DOAG1LQNACBDguGvBeNj18Swhr9=
TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=
=3DOAza1LeUx_20PABZFpa8SFpGhqGusnLgCJPv8Qn9IY4&amp;s=3DRVT10qjiHFS4-MdCMHF5=
eFq0-VWOEryN7swfWuOKkZI&amp;e=3D">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__github.com_B0WEN-2DHU_gr-2Dverilog&amp;d=3DDwIDaQ&amp;c=3DOAG=
1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6=
s3MEmtJLBypH6x02U&amp;m=3DOAza1LeUx_20PABZFpa8SFpGhqGusnLgCJPv8Qn9IY4&amp;s=
=3DRVT10qjiHFS4-MdCMHF5eFq0-VWOEryN7swfWuOKkZI&amp;e=3D</a>
<br>
&lt;/shameless_plug&gt;<br>
<br>
Best regards,<br>
Marcus<br>
On Wed, 2019-09-11 at 15:13 &#43;0000, Quadri,Adnan wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; Thanks for your prompt response and sorry for my delayed one.<br>
&gt; <br>
&gt; I have thought about the first option you have discussed, which is to<=
br>
&gt; use already implemented SVD but modify it to fit with the nocshell.<br=
>
&gt; <br>
&gt; As we go down that way, I will update this thread with questions or<br=
>
&gt; any significant findings.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; Adnan<br>
&gt; From: Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt; Sent: Friday, September 6, 2019 4:00 PM<br>
&gt; To: Quadri,Adnan &lt;adnan.quadri@louisville.edu&gt;; <br>
&gt; usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Subject: Re: [USRP-users] RFNoC SVD Block<br>
&gt;&nbsp; <br>
&gt; Hello Adnan,<br>
&gt; <br>
&gt; I'm currently not aware of anyone doing that.<br>
&gt; <br>
&gt; However, since one of the typical applications of beefier FPGAs is<br>
&gt; math<br>
&gt; accelerators for linear algebra problems, it's more than likely<br>
&gt; someone<br>
&gt; did in fact implement an SVD before, and you might just need to<br>
&gt; connect<br>
&gt; it to a nocshell to make it work in RFNoC. There's a lot of<br>
&gt; interesting<br>
&gt; papers out there on SVD implementations for fixed point math on<br>
&gt; FPGAs,<br>
&gt; I think Drexel uni had some interesting stuff for SVD-based channel<br=
>
&gt; estimation for OFDM. I've not seen any code of them, though...<br>
&gt; <br>
&gt; So, from an algorithmic point of view, an SVD isn't too hard. IIRC,<br=
>
&gt; sequential algorithms can work in-place, and thus (for a m=D7n matrix,=
<br>
&gt; n&gt;m) don't need more than n=B2 space for intermediate and final res=
ult<br>
&gt; (&#43;2m for index and scale storage if you want to pivot elegantly).<=
br>
&gt; <br>
&gt; Now, I've not ever implemented more than a C&#43;&#43; QR decompositio=
n<br>
&gt; (which<br>
&gt; is the core algorithm for most EVD problems, which you typically<br>
&gt; householder-transform an SVD problem to), so I'm really not competent<=
br>
&gt; to comment on hardware implementations, but chances are you want to<br=
>
&gt; compute a lot of result values in parallel if you're doing it in the<b=
r>
&gt; FPGA =96 because otherwise, you'd abhor doing much work in hardware<br=
>
&gt; (that<br>
&gt; being _hard_) in favor of doing it easier-to-debug and also free-to-<b=
r>
&gt; have in the shape of LAPACK software. (Subtext message, more for<br>
&gt; future<br>
&gt; readers than for you: Evaluate whether something really should be<br>
&gt; done<br>
&gt; in hardware; it's not inherently better to do things in hardware.)<br>
&gt; But that parallelism might imply that in-place is not a feasible way<b=
r>
&gt; of<br>
&gt; computing things, and your memory requirements might be much larger.<b=
r>
&gt; Depending on the size of SVD you're planning to do, that might or<br>
&gt; might<br>
&gt; not be an issue.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On Fri, 2019-09-06 at 19:05 &#43;0000, Quadri,Adnan via USRP-users wro=
te:<br>
&gt; &gt; Hello,<br>
&gt; &gt; <br>
&gt; &gt; We are trying to perform singular vector decomposition. The idea =
is<br>
&gt; &gt; to work on an RFNoC block that takes in summation of samples from=
<br>
&gt; the<br>
&gt; &gt; Radio source and will perform SVD.<br>
&gt; &gt; <br>
&gt; &gt; Is anybody working on something similar? <br>
&gt; &gt; Currently, the RFNoC OFDM synchronizer block has timing constrain=
t<br>
&gt; &gt; issues and can't be used to build FPGA image.<br>
&gt; &gt; <br>
&gt; &gt; Just asking around to get some suggestions/advice and idea if<br>
&gt; working<br>
&gt; &gt; on that Verilog implementation of SVD is something doable and if<=
br>
&gt; &gt; anybody tried anything similar.<br>
&gt; &gt; <br>
&gt; &gt; Thank you,<br>
&gt; &gt; Adnan<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; USRP-users@lists.ettus.com<br>
&gt; &gt; <br>
&gt; <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists=
.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&a=
mp;c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs66=
8QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7=
QquI&amp;s=3DwNh-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D">
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&amp;c=3DOAG1LQNAC=
BDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmt=
JLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&amp;s=3DwNh=
-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D</a><br>
&gt;&nbsp; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR03MB3788C5B1BF520A7AC022AABFE6B10DM6PR03MB3788namp_--


--===============7124264777214994053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7124264777214994053==--

