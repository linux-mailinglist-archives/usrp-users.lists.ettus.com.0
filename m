Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20098349C4
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 16:08:36 +0200 (CEST)
Received: from [::1] (port=37544 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYA6i-0001iA-Bk; Tue, 04 Jun 2019 10:08:08 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:60055)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hYA6e-0001Y1-QX
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 10:08:04 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3D60221EAD;
 Tue,  4 Jun 2019 10:07:24 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 04 Jun 2019 10:07:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3HwQIp
 xbaq3pxiauW9MG1GpQpi01WMo3Y5vWAt8ub1w=; b=7WeG7AIyt4pV7pFl+pRLdu
 YX8IOBCFcfb75UepTXculrBobtWBzYDmmgymiCXB9Gyz0++IdVNa5CmW6qM96UFG
 v8dH9IbFfXJkvw97oDuNWZhADQEnwOW5qIOk/8qMiP5nz1iTyEMWRS49RAg/CCak
 NOJiMf7EOHBFLmbPEyYr5R2PRFjLEzpDFw3JsDYYpZvPonMaYbJZCjcv5bfnql4p
 vJvTv9/WcrwuDij5tHdFaCdZEWahZKraDUnHv/1m8WRwza5yxXya4e7j2NbUSFZh
 VU/ygkhinptbKTWWxeZXQzZB2M9E5gft9lXZbT+uajxkqNbLlr8mp73bRavTgGGg
 ==
X-ME-Sender: <xms:G3v2XH09y-14bm3PHuWsDCir2Ss-2MFC-cW1xnMFeZyi7Mmt03Vn4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudefledgjeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepvghtthhushdrtghomhenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhhitghhrggvlhdrughitghkvghnshesvghtthhushdrtghomhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:G3v2XPxekMvEK069nWhiqDRfdyeQmqVgag-dW5vsqC_0rHyVe_nsVQ>
 <xmx:G3v2XHMagHnj1u5MGHMPpnzuASUhV2_3lzpyoda4jrKwBXyWSE4HXw>
 <xmx:G3v2XE6zU_8LHeixMLESM7aDIu-Pr9BE6WrY1y69NDLRNkG20MMGdw>
 <xmx:HHv2XIV5m9ERe5UJ_8JU8BODkeTNNNsaBw2bmARe0aBN8k6U_Vlw0g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C06ED520093; Tue,  4 Jun 2019 10:07:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <ddc1e0ca-f417-475a-bef3-b13aef04229a@www.fastmail.com>
In-Reply-To: <CAPLnO-JEMw5c8TdaqAYaeXDAKWFry2Ri2kgogrzasSQ82zA-rw@mail.gmail.com>
References: <CAPLnO-JEMw5c8TdaqAYaeXDAKWFry2Ri2kgogrzasSQ82zA-rw@mail.gmail.com>
Date: Tue, 04 Jun 2019 10:07:14 -0400
To: "Sneha vasan" <snehabvasan@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Error in frame Equalizer
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
Content-Type: multipart/mixed; boundary="===============3787385395438072233=="
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

--===============3787385395438072233==
Content-Type: multipart/alternative;
 boundary=6f3acfadb59848ce9e2b6a082ef491be

--6f3acfadb59848ce9e2b6a082ef491be
Content-Type: text/plain

Hi Sneha - This is a GR issue, not a USRP issue, so you'd be better off querying that email list (possibly along with this list, as you note a X310 that you're using). I'm following up here for completion. I'll reply to you & the GR list after this email. - MLD

On Tue, Jun 4, 2019, at 9:50 AM, Sneha vasan via USRP-users wrote:
> Hi everyone,
> 
> I am trying to transmit and receive a random signal using ofdm modulation with USRP X310. I am using frame equalizer, but it is showing error. I have attached the variables and the block used. Can anyone tell me how I can correct it.
> 
> 
> Regards,
> Sneha
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> 
> *Attachments:*
>  * Screenshot from 2019-06-04 15-38-48.png
>  * Screenshot from 2019-06-04 15-38-56.png

--6f3acfadb59848ce9e2b6a082ef491be
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Sneha - This is a GR issue, not a USRP issue, so y=
ou'd be better off querying that email list (possibly along with this li=
st, as you note a X310 that you're using). I'm following up here for com=
pletion. I'll reply to you &amp; the GR list after this email. - MLD<br>=
</div><div style=3D"font-family:Arial;"><br></div><div>On Tue, Jun 4, 20=
19, at 9:50 AM, Sneha vasan via USRP-users wrote:<br></div><blockquote t=
ype=3D"cite" id=3D"qt"><div dir=3D"ltr"><div>Hi everyone,<br></div><div>=
<br></div><div>I am trying to transmit and receive a random signal using=
 ofdm modulation with USRP X310. I am using frame equalizer, but it is s=
howing error. I have attached the variables and the block used. Can anyo=
ne tell me how I can correct it.<br></div><div><br></div><div><br></div>=
<div>Regards,<br></div><div>Sneha<br></div></div><div>__________________=
_____________________________<br></div><div>USRP-users mailing list<br><=
/div><div>USRP-users@lists.ettus.com<br></div><div>http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com<br></div><div><br></div><d=
iv><br></div><div><b>Attachments:</b><br></div><ul><li>Screenshot from 2=
019-06-04 15-38-48.png<br></li><li>Screenshot from 2019-06-04 15-38-56.p=
ng<br></li></ul></blockquote><div style=3D"font-family:Arial;"><br></div=
></body></html>
--6f3acfadb59848ce9e2b6a082ef491be--


--===============3787385395438072233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3787385395438072233==--

