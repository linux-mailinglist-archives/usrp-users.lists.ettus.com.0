Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F8F6D9F0C
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 19:44:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96DEE384A4D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 13:44:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680803052; bh=kzDSKc6dpBFnmqn34vDkUX+BBmle440lZ52qArDsG0o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pRjyX2/gQhQdY1mR7S4yssZV9yVExDzVlMY9hx7HAbwg1IsWk/K2kM3CG9RlSWBff
	 bG2etiim+zYj0T2GB1/usrH7I4V+Eag/OJFn0eYY9KHNcPopXZEpZYHCeOXHtlxYID
	 Vq44g8yq18opt1T/7Y5Y1snowJbD5ttiVtbNR4u1h2IeeEpC1PlBWJ+Qot8E2ye54b
	 gG9jBqJyWE1GwOhxC5WvL+k+PLwI/EnfqcQu/mlzQKqKc6qJ9Ct55WsQ5d3DCKMo23
	 AWjzCnYiyukxJK2nhlqVL5gx/rtM1/MY92TdLpl0jrrqxIDRfqfzKYVm7fXfB42ltR
	 bWSAPgjQpztDA==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C745384A3A
	for <usrp-users@lists.ettus.com>; Thu,  6 Apr 2023 13:43:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="GEKDa21i";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id jw24so3264578ejc.3
        for <usrp-users@lists.ettus.com>; Thu, 06 Apr 2023 10:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1680803017; x=1683395017;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7fdgkWOeUhfEZDl4vxDqVey90P/mgNRJTCAO1SXVDXE=;
        b=GEKDa21i02+fottouL3spYn96LId3Yf0/5tVzurnGPSLeNguU0rJzMxQj+dHc9uHnt
         tUkUmYyq8tDo/pCBQI3iFkIGCQu9eHSLitANiqXUcyZlKoEtCK5QBloJRvDwffLVPaNM
         hkos+QEUBJdsfNzvQETAEgc7KAbvFwjy6shjV9Ou0m7wJM+1oAZSGWNKCQk6QKkg8z8L
         8bXJuF89ULHgNYinIw00yyZfv+/yReo6RTibbadHhN8jFgssVBtbxzQVIzPxZR2GVwf9
         2BIbhgFuS4K6ERqkXdg5TM0soY+yJ4gSfbIaka5i31ODugIe5rn+OY+pyE6JuUwaIXXF
         okTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680803017; x=1683395017;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7fdgkWOeUhfEZDl4vxDqVey90P/mgNRJTCAO1SXVDXE=;
        b=4CM+CGZfCNJwU8p8p4VaoEHZdTzSAobxdJvAQDL9juqdGUid70VEoeaWO9OCIeaHSY
         eOsAf6B8xR9HqPrfKhmgiCzOPnkDAnl9AJWw1fPpb8MInlzBEWlvXIokR0KaPZ+cBws3
         XhLmsyYg0RaJh1H4EA9iW10S1HwQB8JQNpfGWUiUMIz211eYaiVWpTbOAjONnYLC54tF
         KO5n8UKKaJ4zKCxo/N7hWHWapi4NSAp8PDM+FLe2k08iVAk1lz7Ph3aLLJxBxlIdekAn
         3NlczHRJVvp39Hau1LgH3XlQ2xPwUp0E9lqT0r64FVo/lrgY5EGtGALz5PtXQMBFAk6g
         5YfA==
X-Gm-Message-State: AAQBX9dUuFEhcrpc9Fdm4M8ag1opKPw3/H+Qw3Mb5NzaPPX/2akAH4qj
	eyI+BtKEhcEClxW40INnFbnUBcfYUBkuixlrUlbOaGOy8fEsJdC3He7kpg==
X-Google-Smtp-Source: AKy350ZPPNt/ctHoSJirZY3rbIVRVy8QEtAq8DS2tlllqLZp1nBQMWbGhp35RKG2RBd6lDCsxapMi8qQT9DnK/+PGkg=
X-Received: by 2002:a17:906:354b:b0:888:b471:8e18 with SMTP id
 s11-20020a170906354b00b00888b4718e18mr3788722eja.8.1680803017035; Thu, 06 Apr
 2023 10:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30@lists.ettus.com>
In-Reply-To: <Iqxbu2c3xd2XaEHZKspuljQUn4FxSVHBipS6dm8X30@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 6 Apr 2023 12:43:20 -0500
Message-ID: <CAFche=h4g1L00VzBoC3cEdnv=Q3BmyG=Acew3NDmzitVd_cKWw@mail.gmail.com>
To: shikunhong12138@outlook.com
Message-ID-Hash: WERCV3LTBD6GIFU7LOWZNYI2GZ2CGING
X-Message-ID-Hash: WERCV3LTBD6GIFU7LOWZNYI2GZ2CGING
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WERCV3LTBD6GIFU7LOWZNYI2GZ2CGING/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3744413871375715083=="

--===============3744413871375715083==
Content-Type: multipart/alternative; boundary="000000000000c4a55f05f8ae72c0"

--000000000000c4a55f05f8ae72c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't think that card supports 4 x 10 GbE. But suppose you used a card
that does, or you used multiple 10 GbE cards to connect to all four 10 GbE
ports on the X410, then you would set the args to
"addr=3D192.168.10.2,second_addr=3D192.168.11.2,third_addr=3D192.168.12.2,f=
ourth_addr=3D192.168.13.2".
The streams would be automatically distributed across the four ethernet
devices corresponding to those IP address subnets, giving you a total
theoretical throughput of 40 Gbit/s.

Wade

On Thu, Apr 6, 2023 at 8:32=E2=80=AFAM <shikunhong12138@outlook.com> wrote:

> For question 2, can I understand it like this: if I use mellanox
> mcx516ccat board, mirror select x4 200 for firmware, parameters addr,
> second_addr, third_addr and
>
> The fourth_addr is set to 192.168.10.2, so that when uhd is running, the
> data stream will be automatically allocated, up to 40 GbE?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c4a55f05f8ae72c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t think that card supports 4 x 10 GbE. But =
suppose you used a card that does, or you used multiple 10 GbE cards to con=
nect to all four 10 GbE ports on the X410, then you would set the args to &=
quot;addr=3D192.168.10.2,second_addr=3D192.168.11.2,third_addr=3D192.168.12=
.2,fourth_addr=3D192.168.13.2&quot;. The streams would be automatically dis=
tributed across the four ethernet devices corresponding to those IP address=
 subnets, giving you a total theoretical throughput of 40 Gbit/s.<br></div>=
<div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 6, 2023 at 8:32=E2=80=AFAM &l=
t;<a href=3D"mailto:shikunhong12138@outlook.com">shikunhong12138@outlook.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>For question 2, can I understand it like this: if I use mellanox mcx516=
ccat board, mirror select x4 200 for firmware, parameters addr, second_addr=
, third_addr and</p><p>The fourth_addr is set to 192.168.10.2, so that when=
 uhd is running, the data stream will be automatically allocated, up to 40 =
GbE?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c4a55f05f8ae72c0--

--===============3744413871375715083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3744413871375715083==--
