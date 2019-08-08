Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B4886472
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 16:36:46 +0200 (CEST)
Received: from [::1] (port=46314 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvjX0-00083z-EM; Thu, 08 Aug 2019 10:36:42 -0400
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:40245)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hvjWx-0007yB-5i
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 10:36:39 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CEF5C3C2;
 Thu,  8 Aug 2019 10:35:57 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Thu, 08 Aug 2019 10:35:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=tqlcbe
 CE6SayObtvgzEUWWL0VM48ZA7DVZw/27slqGY=; b=s3xSEjDSLwn55dlpbBCSlD
 X3XfPRYsqlvlY+CUKtf3W575URS3TCIVsSbRxlaMUlFhWI6LRjRUy/Pv0G6nqZgd
 biGvyacRnT68qRivf8i1WNgmwFL4uaAmWOgJuPjpCPiPHH/1lYY7Efpdj8O1UM60
 ZkPqDfMAw3m7cY3TxO8x6GM88rZ++8pxJEQqM/PaxNmGYehdMH7OOVl7upVAwyiM
 y2nEbxS0aC0rhtPGu618OEP8pW7lNYm7hgb9daJX6fTDcxat/RHJd4Sl0XbBVJju
 ZpcYHD1Hll35AO+KThz2Y+Ue2X4IAWmO6xIk999f2hqgZG78LK+pISxXelvRdQkw
 ==
X-ME-Sender: <xms:TTNMXUNtM7O95xlOM1T4B0l_obc25q9IH7yhoiH4YavGap9RBLAvmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduhedgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepvghtthhushdrtghomhenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhhitghhrggvlhdrughitghkvghnshesvghtthhushdrtghomhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:TTNMXR4HIHn38CDEvcH4NrISMZp1WolmXBBd0XAGwDTnVRFBVJDMLw>
 <xmx:TTNMXQYYd65icAqm3wqY1A4CyQYyANKcMBWBcG7uz7HZjVKo_kGT6A>
 <xmx:TTNMXREt61Ygbb8yCZfrs7SYfvKCRFDAwRjuBQ2uw93YeYjohcVFaw>
 <xmx:TTNMXWp0eTdSei_3elmGYUzHriPBx9UBpbHxg1nC5V2B3xXnH9DMMg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 1B4DD520093; Thu,  8 Aug 2019 10:35:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-808-g930a1a1-fmstable-20190805v2
Mime-Version: 1.0
Message-Id: <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
In-Reply-To: <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
 <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
Date: Thu, 08 Aug 2019 10:35:56 -0400
To: "Sneha vasan" <snehabvasan@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============6537425267963034007=="
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

--===============6537425267963034007==
Content-Type: multipart/alternative;
 boundary=f1de8c8cb38f4d4283add321955519c1

--f1de8c8cb38f4d4283add321955519c1
Content-Type: text/plain

Hi Sneha - I take it by you forwarding your query without further comment that you didn't receive an answer to it? FYI It would be useful in the future to add such a comment, enquiring politely, before the forwarded part.

So the big question here is how you are generating the signal. You say "MATLAB", but do not supply your code (m-file or siumulink or whatever). There is very little we can do to help you without knowing how the signal is -actually- being generated. Maybe supply at least a snippet of code or a screenshot of the simulink?

There are probably some folks here who use MATLAB with UHD / USRP, so maybe someone on this list will understand you situation. I'd also encourage you to reach out to the MathWorks support, as this might be an area where they know more about the situation more quickly than you'd get here.

Hope this is useful! - MLD

On Thu, Aug 8, 2019, at 10:22 AM, Sneha vasan via USRP-users wrote:
> 
> 
> ---------- Forwarded message ---------
> From: *Sneha vasan* <snehabvasan@gmail.com>
> Date: Thu, Aug 8, 2019 at 2:31 PM
> Subject: Varying delay in signal reception
> To: <usrp-users@lists.ettus.com>
> 
> 
> 
> Hi everyone,
> 
> I am transmitting a OFDM modulated random signal padded with zeros which is generated from the Matlab. I am transmitting this signal using USRP X310. But I am receiving the continuous random signal with the various delays in the first burst. This delay in receiving the signal is varying randomly with should certainly not happen when the parameters are constant. 
> 
> In my project I am using a 20cm MIMO Cable to connect TX and RX. Can you please tell how I am receive signal with a constant delay at receiver.
> 
> Regards,
> Sneha
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

--f1de8c8cb38f4d4283add321955519c1
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Sneha - I take it by you forwarding your query wit=
hout further comment that you didn't receive an answer to it? FYI It wou=
ld be useful in the future to add such a comment, enquiring politely, be=
fore the forwarded part.<br></div><div style=3D"font-family:Arial;"><br>=
</div><div style=3D"font-family:Arial;">So the big question here is how =
you are generating the signal. You say "MATLAB", but do not supply your =
code (m-file or siumulink or whatever). There is very little we can do t=
o help you without knowing how the signal is -actually- being generated.=
 Maybe supply at least a snippet of code or a screenshot of the simulink=
?<br></div><div style=3D"font-family:Arial;"><br></div><div style=3D"fon=
t-family:Arial;">There are probably some folks here who use MATLAB with =
UHD / USRP, so maybe someone on this list will understand you situation.=
 I'd also encourage you to reach out to the MathWorks support, as this m=
ight be an area where they know more about the situation more quickly th=
an you'd get here.<br></div><div style=3D"font-family:Arial;"><br></div>=
<div style=3D"font-family:Arial;">Hope this is useful! - MLD<br></div><d=
iv style=3D"font-family:Arial;"><br></div><div style=3D"font-family:Aria=
l;"><span style=3D"font-size: 0.875rem; font-family: &quot;Source Sans P=
ro&quot;, sans-serif;">On Thu, Aug 8, 2019, at 10:22 AM, Sneha vasan via=
 USRP-users wrote:</span><br></div><blockquote type=3D"cite" id=3D"qt"><=
div dir=3D"ltr"><div style=3D"font-family:Arial;"><br></div><div style=3D=
"font-family:Arial;"><br></div><div class=3D"qt-gmail_quote"><div class=3D=
"qt-gmail_attr" dir=3D"ltr"><div style=3D"font-family:Arial;">----------=
 Forwarded message ---------<br></div><div style=3D"font-family:Arial;">=
From: <b dir=3D"auto" class=3D"qt-gmail_sendername">Sneha vasan</b> <spa=
n dir=3D"auto">&lt;<a href=3D"mailto:snehabvasan@gmail.com">snehabvasan@=
gmail.com</a>&gt;</span><br></div><div style=3D"font-family:Arial;">Date=
: Thu, Aug 8, 2019 at 2:31 PM<br></div><div style=3D"font-family:Arial;"=
>Subject: Varying delay in signal reception<br></div><div style=3D"font-=
family:Arial;">To:  &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt;<br></div></div><div style=3D"font-famil=
y:Arial;"><br></div><div style=3D"font-family:Arial;"><br></div><div dir=
=3D"ltr"><div><br></div><div>Hi everyone,<br></div><div><br></div><div>I=
 am transmitting a OFDM modulated random signal padded with zeros which =
is generated from the Matlab. I am transmitting this signal using USRP X=
310. But I am receiving the continuous random signal with the various de=
lays in the first burst. This delay in receiving the signal is varying r=
andomly with should certainly not happen when the parameters are constan=
t. <br></div><div><br></div><div>In my project I am using a 20cm MIMO Ca=
ble to connect TX and RX. Can you please tell how I am receive signal wi=
th a constant delay at receiver.<br></div><div><br></div><div>Regards,<b=
r></div><div>Sneha<br></div></div></div></div><div>_____________________=
__________________________<br></div><div>USRP-users mailing list<br></di=
v><div>USRP-users@lists.ettus.com<br></div><div>http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com<br></div><div><br></div></blo=
ckquote><div style=3D"font-family:Arial;"><br></div></body></html>
--f1de8c8cb38f4d4283add321955519c1--


--===============6537425267963034007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6537425267963034007==--

