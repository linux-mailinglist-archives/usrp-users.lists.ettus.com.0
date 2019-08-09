Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E688817E
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 19:44:55 +0200 (CEST)
Received: from [::1] (port=60042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw8we-0001J3-U3; Fri, 09 Aug 2019 13:44:52 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:34623)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hw8wb-0001B7-5i
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 13:44:49 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CCFB722023;
 Fri,  9 Aug 2019 13:44:08 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Fri, 09 Aug 2019 13:44:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=lGlGwO
 OpJQjtPyCDm2qp3ZPMnSACcSmfRPy0qWdHBNU=; b=IhodOxXH/a2Tfd06ZFxnk0
 bd8LWhn3cwV8HNGoCFKtjPLXCb3oFmCNJOrHUx+4xDdQCLSgbSLLs7teRiOyQitH
 hxCY0TltuhSG5Kno0LZWahe5W7PmgSpKwkrZ0YMc6D2p0xkLWEkyQzKvQtKt7T9B
 9nt9uzd8peatKFDpSQnrylfvdxTTxXv425N06g3Kk6mAsIhcYEzhJqIC4qidF0gn
 qFZYXJ/A5Gz44pgZ1h48ZQ9dWCj+PFm5+RKsFQW675euYkVFDXLy/9NqOvntrqQF
 lzGCzDBWvm1RSi5ZHSs/XyjgbVqV7SIa4nu+687k7lxtYrGI39yO8dB7Ikkb3cYQ
 ==
X-ME-Sender: <xms:6LBNXUr9m-q_ShFnROeX4qQxLXfDUcvXDqEJuVRfSRGYrrnPdyLMww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddujedguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerreejnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgt
 khgvnhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6LBNXe5JWFcdGp_LyJGQ3GCf64c4KEsPwqtGLz571peFpMjGPhEELw>
 <xmx:6LBNXUM7FtB5w1omwEKNJhLznYQuHTwjkE20o-dhpydxvcwtyEQ3VA>
 <xmx:6LBNXQN3eF3--rO1sN1DgD_zHOpd7L49sZ-YiwHho2Lv6Z9dKgHKZA>
 <xmx:6LBNXVuaFhNc0OLJL9wfI73NMAdl6RxTXENgK82jJwUc8ypr-35_Kw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6317E520093; Fri,  9 Aug 2019 13:44:08 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-809-g8e5c451-fmstable-20190809v1
Mime-Version: 1.0
Message-Id: <5222c01d-6b97-4c31-ac89-46ca2e0a0f4c@www.fastmail.com>
In-Reply-To: <CAPLnO-JPnORCuOHs0kcW4vmSrGipRJgDAqcCnVp19ap1ixBf0w@mail.gmail.com>
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
 <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
 <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
 <CAPLnO-Kagbfu8yn41ZV0j4P6nAwOFCOnFWPD-uN=5Sfj5u58ag@mail.gmail.com>
 <3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com>
 <5D4C7D01.8060709@gmail.com>
 <CAPLnO-JPnORCuOHs0kcW4vmSrGipRJgDAqcCnVp19ap1ixBf0w@mail.gmail.com>
Date: Fri, 09 Aug 2019 13:44:07 -0400
To: "Sneha vasan" <snehabvasan@gmail.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2459267962293066681=="
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

--===============2459267962293066681==
Content-Type: multipart/alternative;
 boundary=0556053a090b4de9a2478e1e01354891

--0556053a090b4de9a2478e1e01354891
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Let's take this discussion off list. If there's something useful to repo=
rt back to the list we will. - MLD

On Fri, Aug 9, 2019, at 3:41 AM, Sneha vasan wrote:
> I want to know the time it takes to transmit and receive the signal,(w=
hich is in the sense delay). I calculate this based on the time instant =
I receive the signal. Since I was receiving the signal at different time=
 instants. And currently I am receiving the delay of 1.9e-4sec, 2.3e-4, =
2.1e-4s...so on.
> So I was just wondering is it common to receive this. And also with th=
e cable length of 20cm I expect the delay to be in =C2=B5s. Isn't it hig=
her delay?.
> And I am transmitting a signal of 300=C2=B5s continuously with 20MHz s=
ampling rate.
> I dont know if I clear enough with my explanation. Can you be specific=
, if more details required.
>=20
> Regards,
> Sneha

--0556053a090b4de9a2478e1e01354891
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Let's take this discussion off list. If there's something =
useful to report back to the list we will. - MLD<br></div><div style=3D"=
font-family:Arial;"><br></div><div>On Fri, Aug 9, 2019, at 3:41 AM, Sneh=
a vasan wrote:<br></div><blockquote type=3D"cite" id=3D"qt"><div dir=3D"=
ltr"><div>I want to know the time it takes to transmit and receive the s=
ignal,(which is in the sense delay). I calculate this based on the time =
instant I receive the signal. Since I was receiving the signal at differ=
ent time instants. And currently I am receiving the delay of 1.9e-4sec, =
2.3e-4, 2.1e-4s...so on.<br></div><div>So I was just wondering is it com=
mon to receive this. And also with the cable length of 20cm I expect the=
 delay to be in =C2=B5s. Isn't it higher delay?.<br></div><div>And I am =
transmitting a signal of 300=C2=B5s continuously with 20MHz sampling rat=
e.<br></div><div>I dont know if I clear enough with my explanation. Can =
you be specific, if more details required.<br></div><div><br></div><div>=
Regards,<br></div><div>Sneha<br></div></div></blockquote><div style=3D"f=
ont-family:Arial;"><br></div></body></html>
--0556053a090b4de9a2478e1e01354891--


--===============2459267962293066681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2459267962293066681==--

