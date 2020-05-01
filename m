Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCA31C1C7A
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 20:01:57 +0200 (CEST)
Received: from [::1] (port=47772 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUZz1-0007y0-RX; Fri, 01 May 2020 14:01:55 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:43722)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jUZyx-0007qA-JF
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 14:01:51 -0400
Received: by mail-ot1-f48.google.com with SMTP id g14so3165652otg.10
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 11:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q5TDOmsCiNa1WP1SgM1Lx8z1+eB//p6E7Seul6TO9Ek=;
 b=H+Y28XpVUmGXALV8hoywRFxj2fDuRzTtNdo+scn8X8bYkh0oHA4UuJSkWE7uEr8ro/
 nntXGqWzQDjAoFJmwQPlVoWXCVKCE4Lt7+XBpD4BudKjlwnQV6twaqZlEYLPqgE9F5GD
 iIqEwkcRGS4bLH07K1Lk/InovIKeaZx8kXN6dr4MgnoINPyBkjLnBqAjorUXOqE/aapc
 +F7Uoue4zhsBf4nokcAa0Fh2/rnZiAk5q2+JZHvk0ydT1GF9W8zyZoH3D9whp4uYtiiJ
 d68Ex/AzFkeLUzBry9ZeGTtPbKnE2WDM+BCSpipCKCeB2hvNylnwTMqv2wo5CJ7kOPQ/
 rdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q5TDOmsCiNa1WP1SgM1Lx8z1+eB//p6E7Seul6TO9Ek=;
 b=THxrli6vdzq0heGRkMR818NXCc5xiXdAVksMzUFNqTpXbBFpbLtyyo2yOJsk5MXnc/
 FKoyUJJ6lLGPmG63NqBaVfgHjPH6uGNNWy8YqqDka5iTyGfz5axmltAKMy0qqdH69ufR
 uOGD4Jo/9MUsvWig446oR8EMFiU9XYkX2hS4003M2qnU4COOp2pIAq4nRk9yB+6pmmk2
 Q10TlyzQ44gVvzDRuh1TJggq1IVt6hdk3zVAOq6W8mTolFYkina2gzvLJi34gRLIH9EW
 ZFoFIaa9QXeCaEYJJf4EGpDloVlNj6vAGxlZsxLUDX/ovC1mQlVJKS/gkryY0C139a3S
 PInQ==
X-Gm-Message-State: AGi0PuYA0pFoI1TlpL0g3lFXOVWIxGboQQzPv5T+WMwe6/CYfvS608Sc
 PxZP3DTqCqbtrAdGxn+yVrkoA+DKASKLa4sXQVVGrjx2
X-Google-Smtp-Source: APiQypLbe30CDnhZw7KVe0+VUbA9ekbmcyB2KJrNC55NkrZ5/xsuOUiC7Hs5wKRiuF+K2NdogDVpLFpw/YwgAaJ6414=
X-Received: by 2002:a9d:4113:: with SMTP id o19mr4338213ote.354.1588356069956; 
 Fri, 01 May 2020 11:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
 <CAEXYVK6gX7EtOQYwCJw3YUEF-O3E3-Ug8KF+Eg9hHFAmrRMpXw@mail.gmail.com>
 <BY5PR19MB339833717BEEEBA2D976C3F9C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
In-Reply-To: <BY5PR19MB339833717BEEEBA2D976C3F9C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
Date: Fri, 1 May 2020 14:00:57 -0400
Message-ID: <CAEXYVK5MzSdjounEbpRjX3boBLUF2LrF1_FSorsMWABXYFKFxg@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Subject: Re: [USRP-users] Setting up an X310 as a signal generator
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1098744403756658598=="
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

--===============1098744403756658598==
Content-Type: multipart/alternative; boundary="00000000000053a12905a499f780"

--00000000000053a12905a499f780
Content-Type: text/plain; charset="UTF-8"

On Fri, May 1, 2020 at 1:49 PM Jerrid Plymale <jerrid.plymale@canyon-us.com>
wrote:

> Brian,
>
>
>
> I realized I forgot to mention, I am using the multi_usrp API and not the
> RFNoC API, so I am actually unable to use the DRAM FIFO.  Do you have any
> suggestions, or should I work on transitioning the signal generator to an
> RFNoC installation of UHD?
>

I am a little biased since I am more of an FPGA guy than most, so I like
the RFnoC API.

I am not sure if the DRAM FIFO is used in the multi_usrp API - someone from
Ettus might have more information, or there is the code to look at as well.

Brian

>

--00000000000053a12905a499f780
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, May 1, 2020 at 1:49 PM Jerrid Ply=
male &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@can=
yon-us.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-1177728806061239708WordSection1">
<p class=3D"MsoNormal">Brian,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I realized I forgot to mention, I am using the multi=
_usrp API and not the RFNoC API, so I am actually unable to use the DRAM FI=
FO.=C2=A0 Do you have any suggestions, or should I work on transitioning th=
e signal generator to an RFNoC installation
 of UHD?</p></div></div></blockquote><div><br></div><div>I am a little bias=
ed since I am more of an FPGA guy than most, so I like the RFnoC API.</div>=
<div><br></div><div>I am not sure if the DRAM FIFO is used in the multi_usr=
p API - someone from Ettus might have more information, or there is the cod=
e to look at as well.</div><div><br></div><div>Brian</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_=
-1177728806061239708WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--00000000000053a12905a499f780--


--===============1098744403756658598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1098744403756658598==--

