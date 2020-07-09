Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3208721A794
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 21:10:56 +0200 (CEST)
Received: from [::1] (port=56726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtbwX-000210-Lh; Thu, 09 Jul 2020 15:10:49 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:46257)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <anabel.almodovar@gmail.com>)
 id 1jtbwU-0001wO-8s
 for usrp-users@lists.ettus.com; Thu, 09 Jul 2020 15:10:46 -0400
Received: by mail-lj1-f180.google.com with SMTP id h19so3621177ljg.13
 for <usrp-users@lists.ettus.com>; Thu, 09 Jul 2020 12:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2sKwegnTs2ybpcSFOfcFBEl3EX7IxpeN04YbrjNMV7o=;
 b=T4iLUjmv93btrJKvWllFefaMyRQrf23j1exF7e4USpJ05P5yBzZIaXc5yenJy5U1Sz
 8t8UtTOC1/nvRoij9OtH7wzQVEU6jAnlQUl571jn7u8/qUVrIQMLoEApKi+hvQedhAQv
 sv/BSpdqWbK808/BAClDCLsggDHT8ebal0ANQPLMZ03i5VqZw4ndK5T2p4JboIKcS59k
 6ZVE16fGyPOfWz+BZPQ2WtO5gKKcCiL2qQrCfMjNbUG61XRiFdbkq3z+F6AJafxrLNLU
 NlAywb5j6ud/52aD960mM04i0ObR5Pn9BCZiEp7palmrl8iS6sXahGfTbFRJt8S85VQz
 K0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2sKwegnTs2ybpcSFOfcFBEl3EX7IxpeN04YbrjNMV7o=;
 b=W/t18MLAqTstexnFF9MQ2TOV77TslG66n4HBlvFhjAsRChMsDlteMncb4VaEDRsBzj
 2l/lNVnsWIWgMXXyRj54vk2/rL7WKfPWICBGSm6OkslLAlweTCA1o19rXwh7lPjg5V5y
 3jMJ9M7IMs6hVbEY3G4Pv+bmujDZoxA5VZuslobO3thys2bOzKgaPxPRPu6tlAOCna7E
 oOrEmcOYl9bsqKQMKpKATD4sNcae1xWSdC16LtxjGdOLAwo4VZZ5jY0upWzG6tofjzpH
 PgVAkrHXyuUvu3GzIErMwnRrEdIo9AUSY8+J2tVBeqrVNzOJHkBNlDz9tOuW9g4ZFCoE
 d6Hw==
X-Gm-Message-State: AOAM53068bzSsjYMZbvLovQPAiRNvLwJ+Bf5QZOJl5C9d4nlIfIVD5eW
 dHFHx2pnwdb0+N+DsXDyvSRGgUPhMQLDMUO0kzLGchO5
X-Google-Smtp-Source: ABdhPJwgZyeFFjIkQU96uCEqN5hfYTlsziU2H/QKr+FwWAxqroGv4RKpCsMTpgXIXUaZYQfH3nQx43i1fUs/BJnY9U0=
X-Received: by 2002:a2e:8187:: with SMTP id e7mr32279827ljg.308.1594321804346; 
 Thu, 09 Jul 2020 12:10:04 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 9 Jul 2020 21:09:51 +0200
Message-ID: <CAFPzw1m-mmo1=awxMVoa3mPSQPJ7qD9G-gA=oXTz6k+35XLQHA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Timeout error with LO aligned
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Anabel Almodovar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anabel Almodovar <anabel.almodovar@gmail.com>
Content-Type: multipart/mixed; boundary="===============6416113411309830849=="
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

--===============6416113411309830849==
Content-Type: multipart/alternative; boundary="000000000000ce496405aa06f841"

--000000000000ce496405aa06f841
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to sync two X310 cards with two TwinRXs using timed commands as
indicated in links
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
 and https://files.ettus.com/manual/page_sync.html. However, when using the
"set_comand_time" statement I get a timeout error.


*Unexpected Standard exception from MEX file.What() is:ERROR_CODE_TIMEOUT
 No packet received, implementation timed-out.*

 I'm working on Ubuntu 16.04 with UHD 3.12.0.0 and run the code in Matlab
R2018a.
Does anyone know why this error may be caused?

Thank you in advance.

Regards,
Anabel

--000000000000ce496405aa06f841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to sync two X310 car=
ds with two TwinRXs using timed commands as indicated in links=C2=A0<a href=
=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in=
_UHD</a>=C2=A0and=C2=A0<a href=3D"https://files.ettus.com/manual/page_sync.=
html">https://files.ettus.com/manual/page_sync.html</a>. However, when usin=
g the &quot;set_comand_time&quot; statement I get a timeout error.</div><di=
v><br></div><div><b><i>Unexpected Standard exception from MEX file.<br>What=
() is:ERROR_CODE_TIMEOUT =C2=A0No packet received, implementation timed-out=
.</i></b><br></div><div><br></div><div>=C2=A0I&#39;m working on Ubuntu 16.0=
4 with UHD 3.12.0.0 and run=C2=A0the code in Matlab R2018a.</div><div>Does =
anyone know why this error may be caused?<br></div><div><br></div><div>Than=
k you in advance.</div><div><br></div><div>Regards,</div><div>Anabel</div><=
/div>

--000000000000ce496405aa06f841--


--===============6416113411309830849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6416113411309830849==--

