Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B2C8D4BD
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 15:31:56 +0200 (CEST)
Received: from [::1] (port=37960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxtNa-0002P5-1k; Wed, 14 Aug 2019 09:31:54 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:36185)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hxtNW-0002J0-Lq
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 09:31:50 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4FCCC2202C;
 Wed, 14 Aug 2019 09:31:10 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Wed, 14 Aug 2019 09:31:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=JQqQvi
 CV3xprscP6hds+Sbg72ym2ha0v6m3Gxk3LMpg=; b=qIpnTAJgzlg7+vOz5XsW9Y
 PCMbk1W4KAhJ4NVFvMJcZRDTvrXCfyQB8yGOJDnDGsb+Dd83dNJV9qbECZt5nnn6
 PDiK9L0yKtMeN/KZJyThlCoXa5AOSOQfV469b53KecfubapC7atvPr3q/3kcmw2V
 W3fPofluXuLHeXYgteBvUlFBuVgBkbMPpbvsIWKUauV0AMpiypPYwixmHgpN07hF
 AX1cphKWcPUeeoK7VA7F92h5HjtwwM6faJr2obT48qj1KxRaRHFiD+IJbzqFd1wj
 4Sh1AFpLMzD1cihF1L2Tx8lFjt8NtjwAViRpdwjpcLRvE6udtjGO2nrlay7k9fWA
 ==
X-ME-Sender: <xms:HQ1UXWJu9KLDWOq5AQulfvfTL8RsiUAFBwsEeIkTqL7ejhkoTQiXqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddvledgtdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucfrrghrrghmpehmrghilhhfrhhomhepmhhitghhrggvlhdrughitghk
 vghnshesvghtthhushdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:HQ1UXRGUf9cUaEbwAYDYkM7l2sq4cXOh0vc0fCZFeKyS65KYP_FBmw>
 <xmx:HQ1UXdeCJBEGMvlb3d4s_WkGqi8n1Uu3vzQjIhebBDcfwv_y0jSFxQ>
 <xmx:HQ1UXVhcJxr0zOR3FjZWEZCAQhN9CTRGfv61i6zbe6liWop4zfM7oA>
 <xmx:Hg1UXZic5eSqzlF2H77zq8txMzrn2FhHNwhP0Lgqzpn-LVW_3O5T5w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C2A28520093; Wed, 14 Aug 2019 09:31:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-868-g07f9431-fmstable-20190813v2
Mime-Version: 1.0
Message-Id: <4c8328c7-f585-44bf-bff1-2d14bfbd16e6@www.fastmail.com>
In-Reply-To: <CADrptxW3Hu2HFMkwf0qGo67Q2WP-FzM5ZSarY2D2pJifAP-rdA@mail.gmail.com>
References: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
 <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
 <CADrptxURrkg82rUbQwHHWiV3jFn2-mGSEPO9tyqZ+DvxSEKJBg@mail.gmail.com>
 <c0a28d10-1f50-46e4-9131-6df3c2dbee0a@www.fastmail.com>
 <CADrptxW3Hu2HFMkwf0qGo67Q2WP-FzM5ZSarY2D2pJifAP-rdA@mail.gmail.com>
Date: Wed, 14 Aug 2019 09:31:09 -0400
To: "Emil Bjelski" <emil.bjelski@gmail.com>
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
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4964891984278610996=="
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

--===============4964891984278610996==
Content-Type: multipart/alternative;
 boundary=6b86b2466a9f4dad9bb63f3746d4023c

--6b86b2466a9f4dad9bb63f3746d4023c
Content-Type: text/plain

HI Emil - Thanks for that info. I'll work with you off-list & we can report back on-list if appropriate. - MLD

On Wed, Aug 14, 2019, at 5:08 AM, Emil Bjelski wrote:
> Hi,
> I want to compile and install one of the existing example scripts that are located in */rfnoc/src/uhd/host/examples/*.
> As a first step, I decided to use existing CMakeLists.txt for init_usrp.
> 
> However, after calling in */rfnoc/src/uhd/host/examples/init_usrp*
> 
> *cmake ../*
> 
> I get error:
> 
> *CMake Error at CMakeLists.txt:52 (UHD_INSTALL):
>  Unknown CMake command "UHD_INSTALL".
> 
> 
> CMake Warning (dev) in CMakeLists.txt:
>  No cmake_minimum_required command is present. A line of code such as
> 
>  cmake_minimum_required(VERSION 3.3)
*...

--6b86b2466a9f4dad9bb63f3746d4023c
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">HI Emil - Thanks for that info. I'll work with you off-lis=
t &amp; we can report back on-list if appropriate. - MLD<br></div><div s=
tyle=3D"font-family:Arial;"><br></div><div>On Wed, Aug 14, 2019, at 5:08=
 AM, Emil Bjelski wrote:<br></div><blockquote type=3D"cite" id=3D"qt"><d=
iv dir=3D"ltr"><div style=3D"font-family:Arial;">Hi,<br></div><div>I wan=
t to compile and install one of the existing example scripts that are lo=
cated in <b>/rfnoc/src/uhd/host/examples/</b>.<br></div><div>As a first =
step, I decided to use existing CMakeLists.txt for init_usrp.<br></div><=
div><br></div><div>However, after calling in <b>/rfnoc/src/uhd/host/exam=
ples/init_usrp</b><br></div><div><br></div><div><b>cmake ../</b><br></di=
v><div><br></div><div>I get error:<br></div><div><br></div><div><i>CMake=
 Error at CMakeLists.txt:52 (UHD_INSTALL):<br>&nbsp; Unknown CMake comma=
nd "UHD_INSTALL".<br><br><br>CMake Warning (dev) in CMakeLists.txt:<br>&=
nbsp; No cmake_minimum_required command is present.&nbsp; A line of code=
 such as<br><br>&nbsp; &nbsp; cmake_minimum_required(VERSION 3.3)<br></i=
>...<br></div></div></blockquote><div style=3D"font-family:Arial;"><br><=
/div></body></html>
--6b86b2466a9f4dad9bb63f3746d4023c--


--===============4964891984278610996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4964891984278610996==--

