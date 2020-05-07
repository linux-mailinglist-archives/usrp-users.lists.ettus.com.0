Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA5D1C9A45
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 21:01:23 +0200 (CEST)
Received: from [::1] (port=33902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWllq-0001MD-Nu; Thu, 07 May 2020 15:01:22 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:42582)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jWlll-00014z-VJ
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 15:01:18 -0400
Received: by mail-oi1-f182.google.com with SMTP id i13so6186613oie.9
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 12:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q4Yg4I2qEF1s1UxiwGr/29uqRZtFXRGOix6/ST1f/HQ=;
 b=Z7Zir0aA13hyZXJADc36AWkBjkKMqEL3unPgfrgcapJuwAaHmx/ROU7hy9wYyTwiRU
 +9jwsiHjbUcyiwhDOAbUlWQTUgh+mM+6+rEk0cTXqBGTZq0tbpibevjGRH9nZ3wE93Zq
 NMerHss5f6tHe8SsgJVHFkFCs8f3HfkD+2IQLvOgkkwqRzQNLErjZESBETgv2J1xRJ7q
 USn7Oq1xxn89ekwb6W8uqCl2hEKfy+Xtbe76qLvrOORH0vEq6ETyg0JK96nf6V5WTx0m
 Jj9wo1hKpAjya3l47ScDt70KSOF8bFldQ3p6fer449gsIVaSL5D62S4C5e219pTDRBLj
 mKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q4Yg4I2qEF1s1UxiwGr/29uqRZtFXRGOix6/ST1f/HQ=;
 b=CId4uWOWb7VBopyR+ZF9opLRJYUe19+1KCXU3x0AH6lr5H2GLFHTje8fBhNb2m9tMs
 twUMo/tjSqnp5RsJ3CxN98MFW3AlOYzeRtOSJWzD1HGghjQeTdzULR2b7tYD5Bgqd01t
 g/pFiq6E+OxMEB1OyiUoVLJaETvCzht0Ant957xXAMBMh7baskl0oJLafi3eHCFKrZeE
 NqwCpbBFlj6VNn8K0dbEGlh4D/NdiuSVQHlWWxgXATglcH/RmBJyRcalmptut+i4V+zO
 IwByxtewiCt9TRYDIsNHCmvGrY4BCMw2rbkLwBlqV940BbVDrUWSvrieagle4CpNxO2c
 iF/w==
X-Gm-Message-State: AGi0Pub0BnrUDJkEgk9qebfM+oZ4c6y8jqGZ6oFnaj2J0YoJrdTZ+BHe
 Ivin/d1/CEfACbSaiPurso827mvOhSpav2eJEqs=
X-Google-Smtp-Source: APiQypLuSIPxIs17I1umH54baWoDD1KTLeB7vT/wg4C4gEYtQ3c8F62vL4YPPo6UmfF9+PgUtketDKokwg4S05y6v1U=
X-Received: by 2002:aca:f541:: with SMTP id t62mr7432762oih.148.1588878037252; 
 Thu, 07 May 2020 12:00:37 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAGNhwTPdQpcTQZEGe916-EoXaWkTU3iztw-g=+Lccd6dCOhjyA@mail.gmail.com>
 <e17443be-6f0a-9c2a-a1a4-30f722ffb2e7@email.de>
In-Reply-To: <e17443be-6f0a-9c2a-a1a4-30f722ffb2e7@email.de>
Date: Thu, 7 May 2020 15:00:25 -0400
Message-ID: <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
To: Max <hex98@email.de>
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
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
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8059784239241880446=="
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

--===============8059784239241880446==
Content-Type: multipart/alternative; boundary="000000000000007d1305a5137f97"

--000000000000007d1305a5137f97
Content-Type: text/plain; charset="UTF-8"

On Thu, May 7, 2020 at 2:58 PM Max via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Michael,
>
> thank you for the feedback.
> Unfortunately the X300 offers just one SFP+, so combining two links
> should not be possible. I also don't think the network interface itself
> is the bottleneck, considering two independent processes don't seem to
> have a problem providing the data.
>

You can use a dual 10Gbe FPGA image and get dual links on the X300.

Brian

--000000000000007d1305a5137f97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 7, 2020 at 2:58 PM Max via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hi Michael,<br>
<br>
thank you for the feedback.<br>
Unfortunately the X300 offers just one SFP+, so combining two links<br>
should not be possible. I also don&#39;t think the network interface itself=
<br>
is the bottleneck, considering two independent processes don&#39;t seem to<=
br>
have a problem providing the data.<br></blockquote><div><br></div><div>You =
can use a dual 10Gbe FPGA image and get dual links on the X300.</div><div><=
br></div><div>Brian</div></div></div>

--000000000000007d1305a5137f97--


--===============8059784239241880446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8059784239241880446==--

