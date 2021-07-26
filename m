Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DAD3D5A30
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 15:18:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2A3A384A45
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 09:18:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Btjv28jy";
	dkim-atps=neutral
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id CEA453844C6
	for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 09:17:39 -0400 (EDT)
Received: by mail-oi1-f169.google.com with SMTP id u25so10807949oiv.5
        for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u2T4HJxzqWbnF+xV/NOUBlGaIOIFXUVKDfZIAimwP+c=;
        b=Btjv28jy9InpUL5OTqreHi0xxzQHRH6xdzbEMakwfI/+uT/dXt6WTvpAIQ2HtVlJ9i
         Gk/FuCfAb9SuPF+l4my9JMW37B/cWJ2wXAazMfGR35GbBM0z31nMGx+RIUt8tKsn114P
         u6NhWDMcbL7vdwCEd37B8bHLNWWiCVVrQdPfA1KxPC6MukpPXOaQw56TG0rGj9K3YPlX
         DUGSoxhbDjPEuxiKVsee1jfKUswSj+lbvitom4iLsApZoJYZl+H3NSfWFhdqGeWHKQZs
         rq8DPu64+9RCXlmDETWRsAa71DMQQlHn/XRhzZrA3UNGfxcpesUE2VU3HSb1lGw41cto
         2DcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u2T4HJxzqWbnF+xV/NOUBlGaIOIFXUVKDfZIAimwP+c=;
        b=F7pfpOEObFGw3F70wF+CT637sAoJcOavWxjf7AEUbD2UGwHUaGgxG0uvy0+3gofPHs
         j5hF1AC8kv7B8+lqYIH9ba/in+VjeDWbIDlRScjZiHVYGZ2bSw8yEvwsrwCfbXtahNMF
         eifzJv15l6p7QXU4G8vMFNCkcYXy0yNSZycThCFqIcA1OnsRZfsH8FICqq6LHUx+wSM7
         mj1ZMa0mK0LRX3DGWpfPYltClAXyqH3yhizI1dsGPomLdv5VfR3xH+zlRcQiTuBt50Lc
         mlM/0tINbzVXt9TOIi5e6TM3Q2ksAUZsq/wQA0idPLVDcUV/wLs4huqXk/TLpOvRKfcs
         TRcQ==
X-Gm-Message-State: AOAM531K8WsXhmlCw2E+hlEOjWPQFDfUaiWkGgCwzuP5b8xygx3Dw5nK
	BR6hs4zG/4FRuPdHskpHBRDSUJYoftfwfu8Xh7hCpg==
X-Google-Smtp-Source: ABdhPJxC9cnnYyxs2VoiDJyg/ZowNhsLttutUqDKu22qhuPEGDxYkzNP7L5x3Cq+54iw7+ZEUHNPX+vnOZBAATUrYd4=
X-Received: by 2002:aca:c346:: with SMTP id t67mr16870351oif.124.1627305458974;
 Mon, 26 Jul 2021 06:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk@lists.ettus.com>
In-Reply-To: <Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 26 Jul 2021 09:17:28 -0400
Message-ID: <CAB__hTSGS6f=tcvqM8zAYjYCL47sywuFSt=ESkg0Sd93EGKefQ@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: 4GWBIJGPJS4KM4BTM5BZ7ZGPP6O7MWBU
X-Message-ID-Hash: 4GWBIJGPJS4KM4BTM5BZ7ZGPP6O7MWBU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GWBIJGPJS4KM4BTM5BZ7ZGPP6O7MWBU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2638734977194078568=="

--===============2638734977194078568==
Content-Type: multipart/alternative; boundary="000000000000d2f34405c8069306"

--000000000000d2f34405c8069306
Content-Type: text/plain; charset="UTF-8"

My understanding is that 1 DDC with 2 ports and 2 DDC with 1 port is not
much different. I got the impression from Ettus that it was really more of
a conceptual choice to match the 2 channel radios (2 chan per dboard) with
a like-wise 2 channel DDC.
Rob

On Thu, Jul 22, 2021 at 7:28 PM <thebouleoffools@gmail.com> wrote:

> Well it looks like in ddc.yml that num_ports modifies input and output. Is
> that just allowing you then to use the same DDC core for two separate input
> streams? How is that data sequenced through the hardware - is there 2x the
> amount of hardware to process the streams in parallel? Is there a
> difference between making 1 DDC with 2 ports or 2 DDC with 1 port?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d2f34405c8069306
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My understanding is that 1 DDC with 2 ports and 2 DDC with=
 1 port is not much different. I got the impression from Ettus that it was =
really more of a conceptual choice to match the 2 channel radios (2 chan pe=
r=C2=A0dboard) with a like-wise=C2=A02 channel DDC.=C2=A0<div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Jul 22, 2021 at 7:28 PM &lt;<a href=3D"mailto:thebouleoffools@gmail.com=
">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><p>Well it looks like in ddc.yml that num_ports =
modifies input and output. Is that just allowing you then to use the same D=
DC core for two separate input streams? How is that data sequenced through =
the hardware - is there 2x the amount of hardware to process the streams in=
 parallel? Is there a difference between making 1 DDC with 2 ports or 2 DDC=
 with 1 port?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d2f34405c8069306--

--===============2638734977194078568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2638734977194078568==--
