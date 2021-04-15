Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45451361425
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 23:33:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F090384B0A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 17:33:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="YZU4AvOo";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 79E7838401D
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 17:32:14 -0400 (EDT)
Received: by mail-oi1-f176.google.com with SMTP id k18so20844923oik.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 14:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QQu7VwDNvRi2ykh2iT0Uq7m9uDxbXqyEEGqwrQtx9QU=;
        b=YZU4AvOoW92ZRc8064DOHYPzKpGbblg9OmUZV+6FXvaTo54JMCcq8Q4sAZ0c8V+VK2
         E7Y1y9tFud64RsnzBezshcQq9iigybpSvioQd+KKmcpYtBvy3BpfqtTS5rIBcsoXkWPf
         mcWvkmcjRO5vlgxLDU/O+Wh2XgRIM5nns+/2Vy4YCeof5ML9D2IrUwkgL9OyRD4O4QxI
         l+vu/ufoCc3koSrHU3yj+laIf7j/1Re1Rl61YoCaJcde8n2wtS7EeuCArL0zn7siUkoF
         uWf1G6uCkb9UQqqQq9PKoSo5a6VWfQa2BnZ9l7chmNkN/G7CH6+DJx+zxmCJxx2iW4bB
         tyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QQu7VwDNvRi2ykh2iT0Uq7m9uDxbXqyEEGqwrQtx9QU=;
        b=GzKq3U0DiCHQ2+LkcX1lPtjuHbO51V956POEt2S98oXk3i+0Inx5MjHz1/xVLYPrER
         BJg/LHHtce7n6GEqnFRItkLpB3Xc8h3Ap+vCNY+YjvVTxgk5FSl2CT4BcS3AHKBdnidL
         76PDRKTs9MkxffUq/xRaREG+HQe5fQTz7qRPOq0UxhPK9QADIa5tp7xcte/QwMBlaRPU
         Eo/D/8d+pXJnY00Lppy4jJL3L0TP6rwdcWm46wn8yCNHl9hqtGvTqSVyzEa8aC98/fpx
         yW96DnXqpVLlzPDMNtK1ub0vgjRcgTxHcrPoJHep8o5Odq9tIaGwPfwLmuYFhpKRRUw0
         5IoA==
X-Gm-Message-State: AOAM532+JkLkU5BAwxs/y63ahweiU1HgPkOC9tgX9t7caQGVn4fO0xuy
	uPRR+wWyyZu1NyK06MKsGp7nbqUSmIAfa6nNT8BDog==
X-Google-Smtp-Source: ABdhPJzPUq0PvXMRoRSbjd969Cquz3zr1NhSwkvkzh7vQuFBccDLr0vOVbC4GxgmAJrgpfMeJcIjX8q1STq5IObUzW4=
X-Received: by 2002:aca:f5c1:: with SMTP id t184mr4082790oih.124.1618522333471;
 Thu, 15 Apr 2021 14:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk@lists.ettus.com>
In-Reply-To: <Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 15 Apr 2021 17:32:02 -0400
Message-ID: <CAB__hTTBC_n_h_5V74H1GSEWR17aMSGN+VOfpdxfygMZDA0ARg@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: X5AJVYSQHNX3LJNEKSR6C4UPFDEGTOPO
X-Message-ID-Hash: X5AJVYSQHNX3LJNEKSR6C4UPFDEGTOPO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adjusting data rate in custom RFNoC block based on DDC or DUC data rate.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5AJVYSQHNX3LJNEKSR6C4UPFDEGTOPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2024781705149852791=="

--===============2024781705149852791==
Content-Type: multipart/alternative; boundary="000000000000bf986a05c00998aa"

--000000000000bf986a05c00998aa
Content-Type: text/plain; charset="UTF-8"

Adding to what Jonathan said, if your custom block needs to know the DDC
output rate or DUC input rate, this value will be propagated automatically
through an edge property such that when the user sets the rate for the DDC,
this rate will propagate to your custom block and you can use it as you
wish.  My point is that I don't think you need to create a separate user
register for this.

On Thu, Apr 15, 2021 at 5:27 PM <jcasallas2019@gmail.com> wrote:

> Hi Jonathon,
>
>
> I appreciate your insight here, our RFNoC block will be dropping payload
> data for certain amount of time but still keeping track of the timestamp
> and it also modifies the CHDR header to notify the host through the
> RX_streamer that do not expect to receive data setting EOB flag and keeping
> the time accurate when reading state is back again. In this case we are not
> passing through the context signals and gating our payload data.
>
> I wonder if in this case the data will be replicated, assuming that we set
> the DDC at 100MSps, because we are setting our axis context and payload
> output signals following ce_clk 200MHz.
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bf986a05c00998aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adding to what Jonathan said, if your custom=C2=A0block ne=
eds to know the DDC output rate or DUC input rate, this value will be propa=
gated automatically through an edge property such that when the user sets t=
he rate for the DDC, this rate will propagate to your custom block and you =
can use it as you wish.=C2=A0 My point is that I don&#39;t think you need t=
o create a separate user register for this.</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15, 2021 at 5:27 PM =
&lt;<a href=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi=
 Jonathon,</p><p><br></p><p>I appreciate your insight here, our RFNoC block=
 will be dropping payload data for certain amount of time but still keeping=
 track of the timestamp and it also modifies the CHDR header to notify the =
host through the RX_streamer that do not expect to receive data setting EOB=
 flag and keeping the time accurate when reading state is back again. In th=
is case we are not passing through the context signals and gating our paylo=
ad data.</p><p>I wonder if in this case the data will be replicated, assumi=
ng that we set the DDC at 100MSps, because we are setting our axis context =
and payload output signals following ce_clk 200MHz.</p><p><br></p><p>Thanks=
 </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bf986a05c00998aa--

--===============2024781705149852791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2024781705149852791==--
