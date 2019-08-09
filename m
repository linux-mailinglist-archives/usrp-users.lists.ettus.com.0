Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0638814E
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 19:33:49 +0200 (CEST)
Received: from [::1] (port=55422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw8lu-0000FL-Ut; Fri, 09 Aug 2019 13:33:46 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:48263)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hw8lr-00009F-DZ
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 13:33:43 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 045FB21B6B;
 Fri,  9 Aug 2019 13:33:03 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Fri, 09 Aug 2019 13:33:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=jgE6dl
 1Nj/Jd61A8yDLi3A3U24+RZj7/TQiyGzPlfe8=; b=LUwzfGvaOKj2dg1E8JXuoW
 Eu+8QY51XMv1b0BT8Q8ccUuYX5XXO2skPfay7j+y5jqy/XvCAr9omawOaRxDtjQw
 o6vrB85JKz/pilTtpiVTmXquB5TRq3nVOdUxYvHqij/Msvip7a3rZf7h8FUs75ne
 f+MjAtdMa6a+ur/VTFA+hgM1BXkA/ElxBQdwaKlABHjfhNGDq79eIZLUi+EfwsWV
 91YAaBWGW8VwaaY47yTybMLcKdRuijDSoOS8W3U1FxpbBJuK/gLO6l99BE+bjUPJ
 LAPt9VO8L3cXEMHsSI8pzTpSZ49UmNcoZIB5ykweXla55H+/3nYjAR/eRRVgr8Jw
 ==
X-ME-Sender: <xms:Tq5NXXx_T5p54h9Kf1VZNR_6vStNgylZamv_TWERBizMJNS5WpCGSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddujedgudduhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecuffhomhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtpdhgihht
 hhhusgdrtghomhdpghhnshhsqdhsughrrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:Tq5NXTil18-Uwd3p1BpXx_b-eLgCUG99MchsgwyZodBzukCGH-vycA>
 <xmx:Tq5NXcWVjN7KR0dSN_ONPztoJnxP_sF-BZTTbmPj5MJrpIZfyhMtLQ>
 <xmx:Tq5NXV3MBQecm-LAIQm-zHwA-H_x1a-tCSYMS-9GidVyj-E1lQhINQ>
 <xmx:Tq5NXc-Q_pbn-LA9RjbaLZRuQCwiv8LrNpjSUyvA2P_62KLE0iKPYg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7ED15520093; Fri,  9 Aug 2019 13:33:02 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-809-g8e5c451-fmstable-20190809v1
Mime-Version: 1.0
Message-Id: <3d794848-cd21-4a34-848f-94406e829146@www.fastmail.com>
In-Reply-To: <CACBa4aMGrsTbSAi_E8H+9Gs67FZiXqAKBCSw9pfvugcecXjdXw@mail.gmail.com>
References: <CACBa4aMGrsTbSAi_E8H+9Gs67FZiXqAKBCSw9pfvugcecXjdXw@mail.gmail.com>
Date: Fri, 09 Aug 2019 13:33:02 -0400
To: "Zhao Xu" <ZhaoXu9807@gmail.com>, "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to get code phase from the output of GNSS-SDR?
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
Content-Type: multipart/mixed; boundary="===============2728301536174564202=="
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

--===============2728301536174564202==
Content-Type: multipart/alternative;
 boundary=b67525d30c0a4d5f9c715908ce89d710

--b67525d30c0a4d5f9c715908ce89d710
Content-Type: text/plain

Hi Zhao Xu - Your query is really about GNSS-SDR, not about USRP (or GNU Radio). Hence it is better suited for their email list < https://sourceforge.net/p/gnss-sdr/mailman/gnss-sdr-developers/ >, or directly to one of their development team < https://gnss-sdr.org/team/ >, or maybe on their GitHub < https://github.com/gnss-sdr/gnss-sdr >. I've always had good success in contacting the GNSS-SDR team via various of these methods; hopefully you will too! - MLD

On Fri, Aug 9, 2019, at 1:19 PM, Xu, Zhao via USRP-users wrote:
> Hello, I am trying to use USRP N210 to get the code phase of the received satellite signal. And I have the output of Acquisition and Tracking Blocks after running gnss-sdr command according to the instructions ( https://gnss-sdr.org/conf/ ).
> 
> However, I cannot understand the usage of these data and I also cannot find some detailed explanation of the output file. I have the following data and could you please tell me how I can calculate the code phase?

--b67525d30c0a4d5f9c715908ce89d710
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Zhao Xu - Your query is really about GNSS-SDR, not=
 about USRP (or GNU Radio). Hence it is better suited for their email li=
st &lt;&nbsp;<a href=3D"https://sourceforge.net/p/gnss-sdr/mailman/gnss-=
sdr-developers/">https://sourceforge.net/p/gnss-sdr/mailman/gnss-sdr-dev=
elopers/</a>&nbsp;&gt;, or directly to one of their development team &lt=
; <a href=3D"https://gnss-sdr.org/team/">https://gnss-sdr.org/team/</a>&=
nbsp;&gt;, or maybe on their GitHub &lt;&nbsp;<a href=3D"https://github.=
com/gnss-sdr/gnss-sdr">https://github.com/gnss-sdr/gnss-sdr</a> &gt;. I'=
ve always had good success in contacting the GNSS-SDR team via various o=
f these methods; hopefully you will too! - MLD</div><div style=3D"font-f=
amily:Arial;"><br></div><div>On Fri, Aug 9, 2019, at 1:19 PM, Xu, Zhao v=
ia USRP-users wrote:<br></div><blockquote type=3D"cite" id=3D"qt"><div d=
ir=3D"ltr"><div style=3D"font-family:Arial;">Hello, I am trying to use U=
SRP N210 to get the code phase of the received satellite signal. And I h=
ave the output of Acquisition and Tracking Blocks after running gnss-sdr=
 command according to the instructions ( <a href=3D"https://gnss-sdr.org=
/conf/">https://gnss-sdr.org/conf/</a>&nbsp;).<br></div><div><br></div><=
div>However, I cannot understand the usage of these data and I also cann=
ot find some detailed explanation of the output file. I have the followi=
ng data and could you please tell me how I can calculate the code phase?=
<br></div></div></blockquote><div style=3D"font-family:Arial;"><br></div=
></body></html>
--b67525d30c0a4d5f9c715908ce89d710--


--===============2728301536174564202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2728301536174564202==--

