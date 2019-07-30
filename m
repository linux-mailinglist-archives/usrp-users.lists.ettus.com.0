Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA8D7AFD0
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 19:26:50 +0200 (CEST)
Received: from [::1] (port=35624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsVtX-0006pi-8O; Tue, 30 Jul 2019 13:26:39 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:39463)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hsVtU-0006kA-DZ
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 13:26:36 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 23347221F9;
 Tue, 30 Jul 2019 13:25:56 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 30 Jul 2019 13:25:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=zb7KYI
 HFFAsch0Q5lqAvLQ+U+WEEbvfgkN/8spYElHQ=; b=1Akz1pk+I9lLp0d4UBOBys
 ivQl/T75Ww+jmVXpNRqU5ElWAtGj6/BaCrIgfPkflhRaHs+kOJb9hfnY6tYmeijC
 Gsr3Grj2SbOMe35NpLSlljpKVakbbc5UHjVU6UKFINXzCmSGSGNddPV0qO6lgrIC
 QiMYu15FSvPWLX+MtgPX4iI9whlUu+wMoU8ylZociYkHFEuNp3GmQEqcszhoRzs0
 HxyNyxL+h9j08RYYqCP4aulwz4/76AkvJvilDNtBQPkFxj9sByghjiAG9+/udXUu
 JOJ9wvDXFyX4Zw1Nm7T2Egvg9HBy3j1bG/+6lZyK31tsLn6xQeFK5gpi56exmsOQ
 ==
X-ME-Sender: <xms:o31AXXmsX-Zto__oj2oPNsKNXL79OQQkPgh626Aj9F0FZdoOErapbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleefgdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucfrrghrrghmpehmrghilhhfrhhomhepmhhitghhrggvlhdrughitghk
 vghnshesvghtthhushdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:o31AXZWtpxjqZwKhRjEJ0IPaWgYNGp_lUErTKd8hrEDk8X2lQ0uFjA>
 <xmx:o31AXZIF0_5IzU7R4LZpOGMznSSc0CzMG5JrGdoQDPEM-nl1BBtgTA>
 <xmx:o31AXZse7rdYLaoIx7vHCY3R13dbT7R6bvLR6AX-VVaLsyJox0QIJA>
 <xmx:pH1AXY2xtsFnVWIAywR_DojkYEgG2Nk1ZBlByF6PEOTYSCe1lCUfpw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AFE78520093; Tue, 30 Jul 2019 13:25:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <4f03729e-ff4a-48bb-ad5e-c1dac5c70afb@www.fastmail.com>
In-Reply-To: <CALSxwQH-2YqD4DE0fqTO+EhZee3WH1WkZ3Kwcjm=VsYbU1xo1w@mail.gmail.com>
References: <mailman.62.1564502403.13824.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQH-2YqD4DE0fqTO+EhZee3WH1WkZ3Kwcjm=VsYbU1xo1w@mail.gmail.com>
Date: Tue, 30 Jul 2019 13:25:55 -0400
To: "Simona Sibio" <ssibio2@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] turn off filter for DC offset calibration
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
Content-Type: multipart/mixed; boundary="===============3703499580872874986=="
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

--===============3703499580872874986==
Content-Type: multipart/alternative;
 boundary=dc317bafd91f4af7a8aaa4786306e865

--dc317bafd91f4af7a8aaa4786306e865
Content-Type: text/plain

Hi Simona - Please see my reply just now to the GR discussion list, following up from the other emails on the topic earlier today. - MLD

On Tue, Jul 30, 2019, at 12:42 PM, Simona Sibio via USRP-users wrote:
> Hi everyone,
> 
> I am using N200 with GNU radio and I would like to measure the DC offset.
> When I sent in baseband a constant tone, in the receiver I saw only zero.
> I tried to change the Enable DC offset in USRP source putting False, but the information in the receiver is not chaged.
> Could you help me?
> Best Regards,
> 
> Simona

--dc317bafd91f4af7a8aaa4786306e865
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Simona - Please see my reply just now to the GR di=
scussion list, following up from the other emails on the topic earlier t=
oday. - MLD<br></div><div style=3D"font-family:Arial;"><br></div><div>On=
 Tue, Jul 30, 2019, at 12:42 PM, Simona Sibio via USRP-users wrote:<br><=
/div><blockquote type=3D"cite" id=3D"qt"><div dir=3D"ltr"><div>Hi everyo=
ne,<br></div><div><br></div><div>I am using N200 with GNU radio and I wo=
uld like to measure the DC offset.<br></div><div>When I sent in baseband=
 a constant tone, in the receiver I saw only zero.<br></div><div>I tried=
 to change the Enable DC offset in USRP source putting False, but the in=
formation in the receiver is not chaged.<br></div><div>Could you help me=
?<br></div><div>Best Regards,<br></div><div><br></div><div>Simona<br></d=
iv></div></blockquote><div style=3D"font-family:Arial;"><br></div></body=
></html>
--dc317bafd91f4af7a8aaa4786306e865--


--===============3703499580872874986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3703499580872874986==--

