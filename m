Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F0586824
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 19:33:40 +0200 (CEST)
Received: from [::1] (port=44604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvmIC-0001R5-U6; Thu, 08 Aug 2019 13:33:36 -0400
Received: from wout4-smtp.messagingengine.com ([64.147.123.20]:37093)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hvmIA-0001Lr-1U
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 13:33:34 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C0A0E3C1;
 Thu,  8 Aug 2019 13:32:52 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 08 Aug 2019 13:32:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=IEJGf1
 tPR8BhlV94Z+Mrn4ffXidXs41iz0cJzcoma/c=; b=JCRjn7OfliS+K0T+aN0YuC
 NlI3Wv0pePMU6H30d4/oh+T7UhlSarI6Oktl468+u7Dgys4+DIDrjiMyacZdTwbL
 ZHND0jNN8qI8OEmeTRHULuDGGDfGqK1YBgMb26KYIsE0EQA9Og1lChP2tLa+A4y+
 4+ksheIHGW4RW/VSkw7k3pr0kil8JSnuu3fdFab10v3I+fDvTz8FivbyLK69286t
 CD62UZXlxemR/7laCubzz0LES2VM6ocUghJQadp4I2cpRuf5+JUqB0BCIH5bPVoI
 XNEBYPQIkRZYvN/08OZksY1naQNwmgolpNBBz1xzEelarXofAWhaCoD6fXMgJPdA
 ==
X-ME-Sender: <xms:xFxMXbLVWI4YxRSBeOfwTW-K1xiOzgYzEzJMiJGze5SxBrDljAbnpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduhedgudduhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgt
 khgvnhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:xFxMXa027FyZge_FPN4wjVtUXcDq1de0DK3am4Vg_TSDdbzY5u99QQ>
 <xmx:xFxMXXVTavHOqfYGc77XPIadR5ozaV_366C6HQimXnxmNF_8BF_B8g>
 <xmx:xFxMXUp1HqTwYS-GxP_B4gKelQfQAZPpqa5GxZLLkIZpr6OM93onAw>
 <xmx:xFxMXQdbe31b75BjfxltO0X5AvI1l9OUS-d-xIb72Rh1J3MWfh--eQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 1BF43520093; Thu,  8 Aug 2019 13:32:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-808-g930a1a1-fmstable-20190805v2
Mime-Version: 1.0
Message-Id: <3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com>
In-Reply-To: <CAPLnO-Kagbfu8yn41ZV0j4P6nAwOFCOnFWPD-uN=5Sfj5u58ag@mail.gmail.com>
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
 <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
 <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
 <CAPLnO-Kagbfu8yn41ZV0j4P6nAwOFCOnFWPD-uN=5Sfj5u58ag@mail.gmail.com>
Date: Thu, 08 Aug 2019 13:32:51 -0400
To: "Sneha vasan" <snehabvasan@gmail.com>
Subject: Re: [USRP-users] Fwd: Varying delay in signal reception
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
Content-Type: multipart/mixed; boundary="===============3958741195575580229=="
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

--===============3958741195575580229==
Content-Type: multipart/alternative;
 boundary=c032c968bee94965a23c7c77324c2b84

--c032c968bee94965a23c7c77324c2b84
Content-Type: text/plain

Hi Sneha - Please "reply all" to keep the discussion on the USRP users email list. More eyes reading these means a greater chance that folks will jump in to help!

The startup time for UHD / USRP / GR will be very similar between different runs of the exact same flowgraph, but not exactly the same. If you were to somehow measure these and plot them, I'd bet you'd get a curve that looks Gaussian except with limits (a "truncated normal distribution"). The exact same file being Tx'd over and again will have a slightly different delay on Tx each time.

Not sure this is what you're experiencing. If you don't think it is, then please provide more information; what we have right now is pretty thin.

Hope this is useful! - MLD

On Thu, Aug 8, 2019, at 11:38 AM, Sneha vasan wrote:
> Hi Michael,
> 
> I sent a email before I confirmed the subscription for the usrp users. So I was wondering if I could receive the email back if replied in usrp lists. So just forwarded once again just to be sure. Probably I would have put a note there.
> 
> I am generating the signal using Matlab and store it in a file and then send it to the USRP using gnu-radio. So now when I make multiple recordings of the signal at different time , I am receiving the signal at varying intial delay . I except the delay to be constant as I am send same signal and with same parameters.
> 
> Regards,
> Sneha

--c032c968bee94965a23c7c77324c2b84
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Sneha - Please "reply all" to keep the discussion =
on the USRP users email list. More eyes reading these means a greater ch=
ance that folks will jump in to help!<br></div><div style=3D"font-family=
:Arial;"><br></div><div style=3D"font-family:Arial;">The startup time fo=
r UHD / USRP / GR will be very similar between different runs of the exa=
ct same flowgraph, but not exactly the same. If you were to somehow meas=
ure these and plot them, I'd bet you'd get a curve that looks Gaussian e=
xcept with limits (a "truncated normal distribution"). The exact same fi=
le being Tx'd over and again will have a slightly different delay on Tx =
each time.</div><div style=3D"font-family:Arial;"><br></div><div style=3D=
"font-family:Arial;">Not sure this is what you're experiencing. If you d=
on't think it is, then please provide more information; what we have rig=
ht now is pretty thin.<br></div><div style=3D"font-family:Arial;"><br></=
div><div style=3D"font-family:Arial;">Hope this is useful! - MLD<br></di=
v><div style=3D"font-family:Arial;"><br></div><div style=3D"font-family:=
Arial;"><span style=3D"font-size: 0.875rem; font-family: &quot;Source Sa=
ns Pro&quot;, sans-serif;">On Thu, Aug 8, 2019, at 11:38 AM, Sneha vasan=
 wrote:</span><br></div><blockquote type=3D"cite" id=3D"qt"><div dir=3D"=
ltr"><div>Hi Michael,<br></div><div><br></div><div>I sent a email before=
 I confirmed the subscription for the usrp users. So I was wondering if =
I could receive the email back if replied in usrp lists. So just forward=
ed once again just to be sure. Probably I would have put a note there.<b=
r></div><div><br></div><div>I am generating the signal using Matlab and =
store it in a file and then send it to the USRP using gnu-radio. So now =
when I make multiple recordings of the signal at different time , I am r=
eceiving the signal at varying intial delay . I except the delay to be c=
onstant as I am send same signal and with same parameters.<br></div><div=
><br></div><div>Regards,<br></div><div>Sneha<br></div></div></blockquote=
><div style=3D"font-family:Arial;"><br></div></body></html>
--c032c968bee94965a23c7c77324c2b84--


--===============3958741195575580229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3958741195575580229==--

