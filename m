Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0F11C9562
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 17:48:17 +0200 (CEST)
Received: from [::1] (port=53390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWiky-0006wq-8M; Thu, 07 May 2020 11:48:16 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:35720)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jWiku-0006pH-2e
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 11:48:12 -0400
Received: by mail-ot1-f52.google.com with SMTP id k110so4871632otc.2
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 08:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uOc6TgTgyugMAgoRR3raSVxz6IU7YgHue+iCNX4NoYU=;
 b=FJF23WR+Gx5/nSsHbZi1CHdzKyF8VUodTdsMam8CqYo36C6HpzfeQlE0nTWyQZr2WS
 +8KXxRY5NPvBzahYr8kluvSH0bRlR4uvkwO85gHptdO1e2K8ukge6An8VYRobaCkSgy+
 pAwYwtCURCEYqHiEe8Ai9FiJfeqmofrwhUdGAqjqdsVq9rAu9iRnn4ZZShK+eYe7KUrM
 hkojpDHw9VbhxwX2c2fur6xH5+FJDq1eghl0vXodL80g6+6ROKpAabtFhEGOjc99SJSd
 5dy5gJkjC5wSwyukZ9MxJf/j93B54U5hjOgyZBgo7xj+4zVvzewIC3fLcgyarHpfdcaC
 8AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uOc6TgTgyugMAgoRR3raSVxz6IU7YgHue+iCNX4NoYU=;
 b=WDWJArl3+Qb0MkHIcv75Vabyy2tPBNXjS/5tcBlLqwzxg/LTL1n7YlGJYQpGXXBGku
 9Yd2vCUg3eQ+f32Dyc3DzzWuDPXs5yJ5JArGDNZ3xobl/iemTuYB+d/iTS782mxkb3Gk
 y04IEKjSsVimvpvKWl33k4ucKHFsRkjy4lSiNCpTD3rDGSL77H+vlMvxV8lhdvQulhVc
 XCGjh07qSBzXvovglu6LP9PVJgWh3RZF7a8AmjRjlb5SzcsInYwKuWVTK3+h/Nry8b+b
 U2f02bwnpaiUTwUVNYEGtUcYrfeK99cL7gliqRfcQugykYjDXUeNm1tACA8MCbdpW2ah
 c96A==
X-Gm-Message-State: AGi0PuZafbQPGHJHvASUww+bYDpp0nbPC9sZLPBuMiyAn8b18ONmdydZ
 zqZ3n8hZQJ42XJy41xltrHq7UOwY4UylhcYcua8Ze6Fr
X-Google-Smtp-Source: APiQypK3jDEkFXfwrTiUitFlXMc1hw8uRWSi+m8RjTtFrvOiVPsFnRsS0fpSsr03oV3HXT3h82npq3zeigjrFyHvrCg=
X-Received: by 2002:a9d:4113:: with SMTP id o19mr10642548ote.354.1588866451416; 
 Thu, 07 May 2020 08:47:31 -0700 (PDT)
MIME-Version: 1.0
References: <7cbfa8fd-7351-a718-d35a-699bc7df2a28@wanadoo.fr>
In-Reply-To: <7cbfa8fd-7351-a718-d35a-699bc7df2a28@wanadoo.fr>
Date: Thu, 7 May 2020 11:47:19 -0400
Message-ID: <CAEXYVK4APqF4-Qi-MSu0VRmxfxbOsUVVOm2wDBehEngXm-UDsQ@mail.gmail.com>
To: Jean Marie Brieussel <f6etu@wanadoo.fr>
Subject: Re: [USRP-users] Clock Rate problem on N300
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
Content-Type: multipart/mixed; boundary="===============6818611731960866309=="
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

--===============6818611731960866309==
Content-Type: multipart/alternative; boundary="0000000000006ead9f05a510cc1e"

--0000000000006ead9f05a510cc1e
Content-Type: text/plain; charset="UTF-8"

On Thu, May 7, 2020 at 11:33 AM Jean Marie Brieussel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
> Normally, the N300 has three programmable clock rate frequencies, 122.88
> MHz / 125 MHz / 153.6 MHz on my N300 I can't seem to have another clock
> rate than 125 MHz. See the attached screenshot.
>

I believe the clock rate and sample rates are different.

What are you trying to do?

Brian

--0000000000006ead9f05a510cc1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 7, 2020 at 11:33 AM Jean Mari=
e Brieussel via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <p>Hello,<br>
    </p>
    <span lang=3D"en"><span title=3D"">Normally, the N300 has three program=
mable clock rate
        frequencies, 122.88 MHz / 125 MHz / 153.6 MHz on my N300 I can&#39;=
t
        seem to have another clock rate than 125 MHz.</span> <span title=3D=
"">See the attached screenshot.</span></span></div></blockquote><div><br></=
div><div>I believe the clock rate and sample rates are different.</div><div=
><br></div><div>What are you trying to do?</div><div><br></div><div>Brian</=
div></div></div>

--0000000000006ead9f05a510cc1e--


--===============6818611731960866309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6818611731960866309==--

