Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C05FAFFB8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 17:14:45 +0200 (CEST)
Received: from [::1] (port=44208 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i84KM-0005fA-VN; Wed, 11 Sep 2019 11:14:38 -0400
Received: from mx0b-00199b02.pphosted.com ([148.163.152.185]:3256)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <adnan.quadri@louisville.edu>)
 id 1i84KI-0005Y7-Tj
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 11:14:34 -0400
Received: from pps.filterd (m0114303.ppops.net [127.0.0.1])
 by mx0b-00199b02.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8BEx1Rx003388; Wed, 11 Sep 2019 15:13:53 GMT
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2059.outbound.protection.outlook.com [104.47.40.59])
 by mx0b-00199b02.pphosted.com with ESMTP id 2uxcnd39u6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 11 Sep 2019 15:13:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBnFvP0CiRNgJFvz5/Qq+KFIhZitOjlre1KMTb+29CDxP/VfG4PTHK1GII1RVcMxv4DRYizWklPrrUBy5yEAGwrAzCnNMQ9QyPBN5hEC9lYGYbZ0dc7mCt0+a0QZi2MLfqStVbLxxMEK8r4cx6e86FvnTQBPGviReZ6viw3qiB65adCdukIooja0TFnIc36spYjioXZvo1G7ALp2O5XShC9lcnvBX6sJ9MBJyIcmRSBpiqKJuf9uRd6vYtQN3i7G0ieq1nsmh6NqqBd9OAu9SpWpsnOWcKiqv4ZWtixKoYzdvr0fgmjIX6VAF2FF7GZAO4PeBpJyw3lTfc22i2V9Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bqUpTyXVgiFU3cprFPF02ggQXqzfIS4yv+1TF5fnENw=;
 b=Qmqb3h0MtnSGk5UKJ4Nh/M+9UdJBKqe9BZiIAsneaz1a+fEf/bRlybax6jEMg+w0qxjWZml1T2oULnWtQQdCs7ARg9QPhSPDwWuXRXmLPintU6p0MB9yWjXI2MJwB98dkMtuH52nT/VzYyvUms2zA2OYlpl114POS1BaFhNHYwUgp4B+9CR+3iC2yL/2o4ZHFNhmtYKnXx3JwCHA/TgUJO+D/iegI4OEqUlEkRykGJEqOyGu79r7d9Y5STbpE7MNtwsN51pKEdey+BFxCpC8YRs2ma9R1uGcyRIjNZafG0RotGkH8fWQZVRG39tlvjDMdgoiosbiUWN22ddR1MCqkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=louisville.edu; dmarc=pass action=none
 header.from=louisville.edu; dkim=pass header.d=louisville.edu; arc=none
Received: from DM6PR03MB3788.namprd03.prod.outlook.com (20.176.114.155) by
 DM6PR03MB4218.namprd03.prod.outlook.com (20.176.121.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14; Wed, 11 Sep 2019 15:13:51 +0000
Received: from DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8]) by DM6PR03MB3788.namprd03.prod.outlook.com
 ([fe80::4063:2d9:9f51:f2d8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 15:13:51 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC SVD Block
Thread-Index: AQHVZOVXnxTc+r9T802taJywQSQw86cfIlKAgAd6MXY=
Date: Wed, 11 Sep 2019 15:13:51 +0000
Message-ID: <DM6PR03MB37883E0264A559380EB5A1BFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>,
 <84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
In-Reply-To: <84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [136.165.48.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b81aa4dd-1ef1-4591-d22d-08d736caa771
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB4218; 
x-ms-traffictypediagnostic: DM6PR03MB4218:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR03MB42182F3EC5D5772A5FFC6F5DE6B10@DM6PR03MB4218.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(53936002)(14444005)(19627405001)(110136005)(66066001)(88552002)(74316002)(7696005)(256004)(71190400001)(102836004)(71200400001)(446003)(7736002)(229853002)(99286004)(186003)(6246003)(8676002)(478600001)(2906002)(14454004)(33656002)(75432002)(81156014)(81166006)(966005)(66574012)(86362001)(6506007)(25786009)(316002)(52536014)(11346002)(53546011)(2501003)(55016002)(5660300002)(486006)(6116002)(64756008)(66556008)(66946007)(8936002)(6436002)(3846002)(66476007)(66446008)(54896002)(786003)(76176011)(6306002)(606006)(76116006)(9686003)(236005)(91956017)(26005)(476003)(105004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB4218;
 H:DM6PR03MB3788.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: louisville.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gcTMU8h8QMgC+btqlKqjKox4an33l+XhZQlypm5ImgbaZ+hoEO7IgGcbLDoLMsUcoINFD94x/vhWptcjThVQnYOytOaJjK2v5ockTAulM4zglc831gkQtRJGBQSp2bEsFgntAkp4Ge0aSHVsVUb+GxoZUf4AZk7A/YPSn27ZfsvsjtS11iIAAzWm9j2fYtMG+HTQHsm1ncZQiilMJEh1NQp4bTDBrdaiPJ4Vi2kbWFi87B5AaQLaRoqizzYJGEHSSmUVejb5w7u7s67mWhV6XFvZA2CJR1y9AgT8XkDvyg8brUtRy7mPL1v6pKLf07oMjImGyo8o7k/K6E8AcH0U3HL+zMWMA2mddjFD7NoVLz4ZhPEz7QEr2CyxOYDTBgg0Jy1mSl0H9P3Otzyt+uLsT2QHnCZf9AKqkikh/HadRcw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: louisville.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b81aa4dd-1ef1-4591-d22d-08d736caa771
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 15:13:51.4384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dd246e4a-5434-4e15-8ae3-91ad9797b209
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yC7bOGiU0r5AAVN9+hK6hXKik8TgTgkc73/RBYZzZaVRZxCH1XGyvU/YGn/agfYAJmq4JulWgqm2KAJoD4gzHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4218
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-11_08:2019-09-11,2019-09-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0
 spamscore=0 clxscore=1011 impostorscore=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 priorityscore=1501 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909110139
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
Content-Type: multipart/mixed; boundary="===============0923949882193328579=="
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

--===============0923949882193328579==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB37883E0264A559380EB5A1BFE6B10DM6PR03MB3788namp_"

--_000_DM6PR03MB37883E0264A559380EB5A1BFE6B10DM6PR03MB3788namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

Thanks for your prompt response and sorry for my delayed one.

I have thought about the first option you have discussed, which is to use a=
lready implemented SVD but modify it to fit with the nocshell.

As we go down that way, I will update this thread with questions or any sig=
nificant findings.

Thank you,
Adnan
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Friday, September 6, 2019 4:00 PM
To: Quadri,Adnan <adnan.quadri@louisville.edu>; usrp-users@lists.ettus.com =
<usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC SVD Block

Hello Adnan,

I'm currently not aware of anyone doing that.

However, since one of the typical applications of beefier FPGAs is math
accelerators for linear algebra problems, it's more than likely someone
did in fact implement an SVD before, and you might just need to connect
it to a nocshell to make it work in RFNoC. There's a lot of interesting
papers out there on SVD implementations for fixed point math on FPGAs,
I think Drexel uni had some interesting stuff for SVD-based channel
estimation for OFDM. I've not seen any code of them, though...

So, from an algorithmic point of view, an SVD isn't too hard. IIRC,
sequential algorithms can work in-place, and thus (for a m=D7n matrix,
n>m) don't need more than n=B2 space for intermediate and final result
(+2m for index and scale storage if you want to pivot elegantly).

Now, I've not ever implemented more than a C++ QR decomposition (which
is the core algorithm for most EVD problems, which you typically
householder-transform an SVD problem to), so I'm really not competent
to comment on hardware implementations, but chances are you want to
compute a lot of result values in parallel if you're doing it in the
FPGA =96 because otherwise, you'd abhor doing much work in hardware (that
being _hard_) in favor of doing it easier-to-debug and also free-to-
have in the shape of LAPACK software. (Subtext message, more for future
readers than for you: Evaluate whether something really should be done
in hardware; it's not inherently better to do things in hardware.)
But that parallelism might imply that in-place is not a feasible way of
computing things, and your memory requirements might be much larger.
Depending on the size of SVD you're planning to do, that might or might
not be an issue.

Best regards,
Marcus

On Fri, 2019-09-06 at 19:05 +0000, Quadri,Adnan via USRP-users wrote:
> Hello,
>
> We are trying to perform singular vector decomposition. The idea is
> to work on an RFNoC block that takes in summation of samples from the
> Radio source and will perform SVD.
>
> Is anybody working on something similar?
> Currently, the RFNoC OFDM synchronizer block has timing constraint
> issues and can't be used to build FPGA image.
>
> Just asking around to get some suggestions/advice and idea if working
> on that Verilog implementation of SVD is something doable and if
> anybody tried anything similar.
>
> Thank you,
> Adnan
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwIDaQ&c=3DOAG1LQNACBDguGv=
BeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02=
U&m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&s=3DwNh-TuGTVEYzPNN0GRzBj=
YiBuFKVQfG5vjCSdYCEnPY&e=3D


--_000_DM6PR03MB37883E0264A559380EB5A1BFE6B10DM6PR03MB3788namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for your prompt response and sorry for my delayed one.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I have thought about the first option you have discussed, which is to use a=
lready implemented SVD but modify it to fit with the nocshell.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
As we go down that way, I will update this thread with questions or any sig=
nificant findings.</div>
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
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Friday, September 6, 2019 4:00 PM<br>
<b>To:</b> Quadri,Adnan &lt;adnan.quadri@louisville.edu&gt;; usrp-users@lis=
ts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RFNoC SVD Block</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hello Adnan,<br>
<br>
I'm currently not aware of anyone doing that.<br>
<br>
However, since one of the typical applications of beefier FPGAs is math<br>
accelerators for linear algebra problems, it's more than likely someone<br>
did in fact implement an SVD before, and you might just need to connect<br>
it to a nocshell to make it work in RFNoC. There's a lot of interesting<br>
papers out there on SVD implementations for fixed point math on FPGAs,<br>
I think Drexel uni had some interesting stuff for SVD-based channel<br>
estimation for OFDM. I've not seen any code of them, though...<br>
<br>
So, from an algorithmic point of view, an SVD isn't too hard. IIRC,<br>
sequential algorithms can work in-place, and thus (for a m=D7n matrix,<br>
n&gt;m) don't need more than n=B2 space for intermediate and final result<b=
r>
(&#43;2m for index and scale storage if you want to pivot elegantly).<br>
<br>
Now, I've not ever implemented more than a C&#43;&#43; QR decomposition (wh=
ich<br>
is the core algorithm for most EVD problems, which you typically<br>
householder-transform an SVD problem to), so I'm really not competent<br>
to comment on hardware implementations, but chances are you want to<br>
compute a lot of result values in parallel if you're doing it in the<br>
FPGA =96 because otherwise, you'd abhor doing much work in hardware (that<b=
r>
being _hard_) in favor of doing it easier-to-debug and also free-to-<br>
have in the shape of LAPACK software. (Subtext message, more for future<br>
readers than for you: Evaluate whether something really should be done<br>
in hardware; it's not inherently better to do things in hardware.)<br>
But that parallelism might imply that in-place is not a feasible way of<br>
computing things, and your memory requirements might be much larger.<br>
Depending on the size of SVD you're planning to do, that might or might<br>
not be an issue.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Fri, 2019-09-06 at 19:05 &#43;0000, Quadri,Adnan via USRP-users wrote:<b=
r>
&gt; Hello,<br>
&gt; <br>
&gt; We are trying to perform singular vector decomposition. The idea is<br=
>
&gt; to work on an RFNoC block that takes in summation of samples from the<=
br>
&gt; Radio source and will perform SVD.<br>
&gt; <br>
&gt; Is anybody working on something similar? <br>
&gt; Currently, the RFNoC OFDM synchronizer block has timing constraint<br>
&gt; issues and can't be used to build FPGA image.<br>
&gt; <br>
&gt; Just asking around to get some suggestions/advice and idea if working<=
br>
&gt; on that Verilog implementation of SVD is something doable and if<br>
&gt; anybody tried anything similar.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; Adnan<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists=
.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&a=
mp;c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs66=
8QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7=
QquI&amp;s=3DwNh-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D">
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&amp;c=3DOAG1LQNAC=
BDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmt=
JLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&amp;s=3DwNh=
-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D</a>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR03MB37883E0264A559380EB5A1BFE6B10DM6PR03MB3788namp_--


--===============0923949882193328579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0923949882193328579==--

