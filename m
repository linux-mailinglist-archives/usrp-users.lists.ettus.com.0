Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D898BCBB
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 17:12:56 +0200 (CEST)
Received: from [::1] (port=34036 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxYTm-0005Vp-Py; Tue, 13 Aug 2019 11:12:54 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:41297)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hxYTj-0005Od-5K
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 11:12:51 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E59DE327;
 Tue, 13 Aug 2019 11:12:09 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 13 Aug 2019 11:12:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tV9sN7
 4y0pFmPZHfLPW7zfOOmp9AHog33+YDewK3Qwg=; b=TM3Nge1tfdDs6m8AiwEt/1
 xSXzHwqgscpqTWgrnZbR6bmbQzzNmjEOGvzsjOlqXVDrrC28/7DTLZyzuRfqXsQc
 vy6R9WFYASvTqEBoi3at0i+8WpuRB3CIn8uZkS0sTssB6VgPQkrl6LOzkESUzuO1
 gSKYy9j0bfRJanLW0cLqPXZt0nwR2A/qM/xzaNvhpPjY4Nv64464VEr70uBjShRt
 QYq2dmfQsSj8KTKRRaBew/qgaZQ1bmYjol+UjgqwXKHOEjM/0h5Q0x6BQiERnsj5
 owuRPZazGXDoFGiqmb+Xkw95G6WBJ/QjvV2iT8bPRm0nhwQE6yESC1QbtOsr4mrA
 ==
X-ME-Sender: <xms:SdNSXes-dKPqN2GhGLqAWrFXH6i108r1RnHpDJXd676mtXAuJ93IDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddviedgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepvghtthhushdrtghomhenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhhitghhrggvlhdrughitghkvghnshesvghtthhushdrtghomhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:SdNSXeWg5IW2e4mRKkqZAxQ-kgrNjBYwdnPND9kkWKavzjzeauc7Ow>
 <xmx:SdNSXcpb5nXmaydlrVpai4uYxpDvwKgYfU1a_7dsZYo0Uq3OFWwKBA>
 <xmx:SdNSXS5GZr5maAVgo_LnOBK9Do_xStS6D2ozYLLZ8dDAjXnPscs9gA>
 <xmx:SdNSXZpTA4QhOfKUW1yG7kc7r-WJhgkrB3C6rW2v6zIqEBEdmnjn2Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 22931520093; Tue, 13 Aug 2019 11:12:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-868-g07f9431-fmstable-20190813v2
Mime-Version: 1.0
Message-Id: <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
In-Reply-To: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
References: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
Date: Tue, 13 Aug 2019 11:12:08 -0400
To: "Emil Bjelski" <emil.bjelski@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Compiling UHD examples errors
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============1337285407774298450=="
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

--===============1337285407774298450==
Content-Type: multipart/alternative;
 boundary=41bec003f6354aabb5355addbf08cb8e

--41bec003f6354aabb5355addbf08cb8e
Content-Type: text/plain

Hi Emil - Can you tell us what OS you're using for the UHD host computer? If you're trying to compile UHD from source, which version of UHD (release / GIT / version). Those are useful starting points. Cheers! - MLD

On Tue, Aug 13, 2019, at 10:47 AM, Emil Bjelski via USRP-users wrote:
> Hello everyone, 
> 
> I trying to compile UHD examples following tutorial provided here:
> https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B
> 
> However, I am facing issue when runining:
> cmake ../
> 
> I get this error:
> CMake Error at CMakeLists.txt:52 (UHD_INSTALL):
>  Unknown CMake command "UHD_INSTALL".
> 
> -- Configuring incomplete, errors occurred!
> 
> 
> I am sure that uhd is installed as I am able to execute command
> uhd_find devices.
> 
> What could be the issue?
> 
> Thanks,
> 
> Emil
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

--41bec003f6354aabb5355addbf08cb8e
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi Emil - Can you tell us what OS you're using for the UHD=
 host computer? If you're trying to compile UHD from source, which versi=
on of UHD (release / GIT / version). Those are useful starting points. C=
heers! - MLD<br></div><div style=3D"font-family:Arial;"><br></div><div s=
tyle=3D"font-family:Arial;"><span style=3D"font-size: 0.875rem; font-fam=
ily: &quot;Source Sans Pro&quot;, sans-serif;">On Tue, Aug 13, 2019, at =
10:47 AM, Emil Bjelski via USRP-users wrote:</span><br></div><blockquote=
 type=3D"cite" id=3D"qt"><div dir=3D"ltr"><div>Hello everyone, <br></div=
><div><br></div><div>I trying to compile UHD examples following tutorial=
 provided here:<br></div><div><a href=3D"https://kb.ettus.com/Getting_St=
arted_with_UHD_and_C%2B%2B">https://kb.ettus.com/Getting_Started_with_UH=
D_and_C%2B%2B</a><br></div><div><br></div><div>However, I am facing issu=
e when runining:<br></div><div>cmake ../<br></div><div><br></div><div>I =
get this error:<br></div><div><div style=3D"font-family:Arial;">CMake Er=
ror at CMakeLists.txt:52 (UHD_INSTALL):<br></div><div style=3D"font-fami=
ly:Arial;">&nbsp; Unknown CMake command "UHD_INSTALL".<br></div><div sty=
le=3D"font-family:Arial;"><br></div><div style=3D"font-family:Arial;">--=
 Configuring incomplete, errors occurred!<br></div></div><div><br></div>=
<div><br></div><div>I am sure that uhd is installed as I am able to exec=
ute command<br></div><div>uhd_find devices.<br></div><div><br></div><div=
>What could be the issue?<br></div><div><br></div><div>Thanks,<br></div>=
<div><br></div><div>Emil<br></div></div><div>___________________________=
____________________<br></div><div>USRP-users mailing list<br></div><div=
>USRP-users@lists.ettus.com<br></div><div>http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com<br></div><div><br></div></blockquot=
e><div style=3D"font-family:Arial;"><br></div></body></html>
--41bec003f6354aabb5355addbf08cb8e--


--===============1337285407774298450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1337285407774298450==--

