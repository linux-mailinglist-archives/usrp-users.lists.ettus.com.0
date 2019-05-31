Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B9730E5C
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2019 14:48:26 +0200 (CEST)
Received: from [::1] (port=56252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWgxK-000853-5Z; Fri, 31 May 2019 08:48:22 -0400
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:59501)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hWgxG-00080j-Qj
 for usrp-users@lists.ettus.com; Fri, 31 May 2019 08:48:18 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7ABB2DC8;
 Fri, 31 May 2019 08:47:37 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Fri, 31 May 2019 08:47:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZWqVu/
 2PuisZKbY8Ns+dMSFXmcByVPYR45af1caG34U=; b=CB0EXD4z1rIBJM99d8t7su
 o/yCbopcw2zSq0MfgARP1OWoH+kYvdLwAet9rlUDqGX0ogJkKEIjXhaW3k24myJ1
 siUydQJueMKAkGOKEEApnn6GeguMg9diNYTcni+ONIW3x+0yrNheJF6O6JsNC7w6
 c+Zv6rx8MD8yvWJ3SibwMEU5oa1756nHifmJaLP1usOES9g2m7+eSnoD8Y7r2v5N
 j1KCVYornb8UYLy6nP96FsJGYVOJCPrrZZYi5b9m+ALGaNYDQuT125ctWKnPA/aY
 sWqJ7bBkijhiwLiygog42oxRLQ+sqUCv9WIS5JiKqDZGTFeGx76SObB8vPXSLL9Q
 ==
X-ME-Sender: <xms:aCLxXBIqwjlagF6lEYZO7UthUPsw1nvkpqYEmu8I6nccleGgMoQ65A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudefuddgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreerjeenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucfrrghrrghmpehmrghilhhfrhhomhepmhhitghhrggvlhdrughitghk
 vghnshesvghtthhushdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:aCLxXJPGDmu0vmDi2lIkzZCzQfsHQCBLmmbE7D6-8GnQAiTNwThGpQ>
 <xmx:aCLxXFCUpb4oN4_Nal-KeZOzY-SpQmq02UctGXZZ3OinIkV5Mavg6g>
 <xmx:aCLxXBVj7A0VKFpgH7FXZ62kjWHsDOvESFAGtGhqPfIEQWtvVq5uhg>
 <xmx:aSLxXC4cB_v8Y59_ROLdtRZX7eZsRs_IoMc0uyxR4XxZdUJFomsLHQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8286C520094; Fri, 31 May 2019 08:47:36 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <84b0b9ca-23ed-4231-830e-caba727ccf78@www.fastmail.com>
In-Reply-To: <MWHPR02MB26554323EE96D5596519123DAA190@MWHPR02MB2655.namprd02.prod.outlook.com>
References: <79af66b8-8e50-4fbd-ab46-2678bf13081f@www.fastmail.com>
 <d2b04014-954e-4113-86eb-81ea00dbb47e@www.fastmail.com>
 <MWHPR02MB26554323EE96D5596519123DAA190@MWHPR02MB2655.namprd02.prod.outlook.com>
Date: Fri, 31 May 2019 08:47:30 -0400
To: "Fengyang Jiang" <fzj28@psu.edu>
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiDlm57lpI06ICBBIHByb2JsZW0gb24g?=
 =?utf-8?q?transmitting_data_using_5GHz?=
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
Content-Type: multipart/mixed; boundary="===============3404681415330275868=="
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

--===============3404681415330275868==
Content-Type: multipart/alternative;
 boundary=6f9b2dbb0b0d469e8ddfdf55bde8b85a

--6f9b2dbb0b0d469e8ddfdf55bde8b85a
Content-Type: text/plain

Hi Fengyang - I'm glad to hear that things got working for your SDRs, regardless of how. Sometimes "cruft happens" and things just need to be reset. Good luck with your research! - MLD

On Thu, May 30, 2019, at 8:46 PM, Jiang, Fengyang wrote:
> Hi Michael,
> 
> I've been trying different ways on that, and after resetting both two USRPs, they began to work. I've been using them for several days but only configured them once at the very beginning, maybe something went wrong with the system.. now they work at the ~5GHz range. I apologize for bringing the inconvenience, and really thank you for all your help!
> 
> Best regards,
> Fengyang

--6f9b2dbb0b0d469e8ddfdf55bde8b85a
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">

p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"f=
ont-family:Arial;">Hi&nbsp;Fengyang - I'm glad to hear that things got w=
orking for your SDRs, regardless of how. Sometimes "cruft happens" and t=
hings just need to be reset. Good luck with your research! - MLD<br></di=
v><div style=3D"font-family:Arial;"><br></div><div>On Thu, May 30, 2019,=
 at 8:46 PM, Jiang, Fengyang wrote:<br></div><blockquote type=3D"cite" i=
d=3D"qt"><div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif=
;font-size:12pt;color:rgb(0, 0, 0);">Hi Michael,<br></div><div style=3D"=
font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:r=
gb(0, 0, 0);"><br></div><div style=3D"font-family:Calibri, Arial, Helvet=
ica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);">I've been trying dif=
ferent ways on that, and after resetting both two USRPs, they began to w=
ork. I've been using them for several days but only configured them once=
 at the very beginning, maybe something went wrong with the system.. now=
 they work at the ~5GHz
 range. I apologize for bringing the inconvenience, and really thank you=
 for all your help!<br></div><div style=3D"font-family:Calibri, Arial, H=
elvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);"><br></div><div =
style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:12p=
t;color:rgb(0, 0, 0);">Best regards,<br></div><div style=3D"font-family:=
Calibri, Arial, Helvetica, sans-serif;font-size:12pt;color:rgb(0, 0, 0);=
">Fengyang<br></div></blockquote><div style=3D"font-family:Arial;"><br><=
/div></body></html>
--6f9b2dbb0b0d469e8ddfdf55bde8b85a--


--===============3404681415330275868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3404681415330275868==--

