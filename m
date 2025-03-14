Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A85A61357
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 15:07:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB3CD385E37
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 10:07:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741961273; bh=Qq3R9GplG13i03o5YLng2QQFFk0vM92+BwSRs5xukfc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Hq3zFyocn7pTMrwYMzDBbydIxeB8gLdIaaAUNtz39S1ooiPUXycv3QeTLMUrgvUWH
	 HK1Ze2268r3SavjKg81PjHoBGlvajRiP/XpbqOp3xlMjDO+fMXyFtbEsH1i5OU0QQ6
	 YKY7t/OpIndcdRzkSTNhITnF47eGE/6i+pYv//n5CgkeQLT23j9Jp19lm+TVBQofGj
	 konRsXuAX/72ULw/HOAV4YO51AfRt1Z6L7HRMqly6kJYiF1KGyvCSfAhYDJlynJVOu
	 ZrSHkMHbQnC5yoV9xgFM1E5qjOhaJ/70538BmYQCEILMFGpbHA0bga+aLzxyyOypIJ
	 DimhuRrWMvtdQ==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A224F385B40
	for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 10:06:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IAQaBGBI";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e6194e9d2cso3768292a12.2
        for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 07:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1741961207; x=1742566007; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ts5Y1MLTUbOIOgdOE3GEla8lErP9PMt/gPliYPysE5o=;
        b=IAQaBGBILFa6j7RJqC1fAxh3/s6IBfM7mkVm8sPmBcS61pwbjM1UmxSVHC0OU4eXwP
         1QYICFNBLKACkwN2H4D+jY8kl6UiD+8cGb8Lh6HHNex3ciEVCosyi7Ij/rcBARjVxAgu
         nRLl0hguP/hmIk7oBWaKE8rQu+dIGt3BDemcbXMKFXVExkn7OAgW93vRQNTGAStJy9qr
         hgbc2BDsY79+JoCgt/4q5znsBLI2Q3B2ibjtywqc5JbSUaUQFJer6OKRm1q+M3hGema2
         4tIFIcJTZ/Sj/pVQR8seyvUyqSsW4h7ks29SodaIX4rqmAdk2Mt85PocOfR9BCJ1NlRJ
         kYvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961207; x=1742566007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ts5Y1MLTUbOIOgdOE3GEla8lErP9PMt/gPliYPysE5o=;
        b=o2hugTpNc9U6oIidLCrcQ4xke80gRY2FahC2tN/Do+CdnY5WwMjsuHsqeuIqbADz/C
         K1IawSDTuF8h6YtyofMmoSdhMeDtW8CEm7CII1NFq8x7Y9drYWNgO5iLtGP2HbOJqE2A
         wTU5+t85COU3uaPhRttWLSVZq99ya//K54aPy5n4Kk3nU0OS9Q+dznKQQf+elZUXI6Zd
         B2Q3EndBkuIPeFl+eJu6pfsB8o4F1t3XhysIopMOJILyS2rTKBn2dwoDU1tMBkV/7/zN
         /XZYoUis5AC5PxeOv5GF40aCPVjPdofA+X982o/x6xB+pV0m1bJo7z8CZ1zgH+GqiTs1
         pneg==
X-Gm-Message-State: AOJu0YwBwrhQ1cu2MjkiMi9jUmAMxfvDaE2QkV3B/HgiFsn2BcOk+r2S
	tysYq9woL8Vj9GWXa1luOcpl2tpSMA/w9VxDbleIh9F5ctASOMGb0nMJqcIs4Q5LIK4AzTpdRkz
	yAlkAptDC6+AUfhrha+676kpUfX9BWzoqxA4I
X-Gm-Gg: ASbGncvxrNMaTe+sXK9Ap1n234ZDrQ5sP48PjYLThisbp9ROtJzNXZsO93Pv2v036fQ
	/ogB6XDO/SIxXD/JKBP8MzN97bv4rB4j26TFjR5g2JYLqKWsgeLKcJrZL0fkdfQba0dJL884jNP
	mhGJmu+BRNuVciT5f/S/QcYGnOtw==
X-Google-Smtp-Source: AGHT+IHAb1JRwJqhJATTbj+ayMSRwuCha0/3KrkENC6lzqibgmlgE1RQLgN2ed1IWFjTp9TIHviV74cf7xi3crIeLrs=
X-Received: by 2002:a05:6402:42c2:b0:5e7:8501:8c86 with SMTP id
 4fb4d7f45d1cf-5e8a09fa617mr2726024a12.22.1741961207420; Fri, 14 Mar 2025
 07:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <s26VOiu87RzRmf9kGzJpjmgAvZ1hBVZ9QydqBwjIDHo@lists.ettus.com>
In-Reply-To: <s26VOiu87RzRmf9kGzJpjmgAvZ1hBVZ9QydqBwjIDHo@lists.ettus.com>
Date: Fri, 14 Mar 2025 10:06:36 -0400
X-Gm-Features: AQ5f1JoLZR2yGOs0hOaSSnB9h6W7bicXR-V0mdpBJhDkL5gMMi8xSM9Ta7iMhNQ
Message-ID: <CAB__hTTHqoia3TyCbNdBUVG6W08om_oeTUW8eMQjAKs41ZSP_w@mail.gmail.com>
To: carmixdev@gmail.com
Message-ID-Hash: QLLDRUQ4BZHZMCCB47ZW7EFYO7IIZ23Q
X-Message-ID-Hash: QLLDRUQ4BZHZMCCB47ZW7EFYO7IIZ23Q
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 transmit multi streams on single radio channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLLDRUQ4BZHZMCCB47ZW7EFYO7IIZ23Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1859588782168838231=="

--===============1859588782168838231==
Content-Type: multipart/alternative; boundary="000000000000fb3cc706304df296"

--000000000000fb3cc706304df296
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 14, 2025 at 5:57=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Thank you for your answer,
>
> I=E2=80=99m following your directions and I=E2=80=99m creating the yaml f=
ile with the
> relevant elements in it, however since it is the first time that I create
> such a file I=E2=80=99m facing some difficulties:
>
> -The 4 port DUC will need 4 new endpoints right?
>
Yes.  But, the I later realized that the typical X310 yaml files already
include 4 DUC ports (2 ports in each of 2 DUC blocks), so you could just
use those as shown in the example
"rfnoc-gain/icores/x310_rfnoc_image_core.yaml" without having to add a
4-port DUC.

> -all the addsub blocks that are internal do not need an endpoint, so I
> imagine that i can connect them statically in the connections section (or
> it would be better to have them dinamically connected?)
>
Either way is fine.  Dynamic connections require more SEP, but allow you
more flexibility (e.g., if you wanted to only have 2 streaming sources
combined, you could reconfigure the graph to only have 1 addsub block at
the DUC outputs, whereas if you statically connect, I think you will always
need 4 streaming sources)

> -The diff ports of addsub block will not be connected, i think i should
> connect them to a Null Source Sink Block, right?
>
This seems correct, but I don't have any experience using the Null Source
Sink.

> -I noticed that on old tutorials there was a python tool that helped in
> the creation of yaml files, why it isn=E2=80=99t available anymore?
>
Not sure.  But, if you start with the example x310 icore yaml mentioned
above, it is not too hard to modify it to add three "addsub" blocks and
make the connections.

> -I=E2=80=99m using GNUradio to design a sample system, however I noticed =
that when
> I use RFNoC blocks I can only generate python and not C++, is it normal?
> that means that if I go on with the project, since I use C++ I will have =
to
> migrate to UHD and dismiss GNUradio?
>
I don't know gnuradio well.  I didn't even know that gnuradio could
generate C++. I thought that gnuradio was always Python (for the flow graph
portion).  But, I would check with the gnuradio list for this question.  I
will mention that if you want to use C++ directly with UHD for your
specific scenario, it would not be too difficult.  But, if you need to
later add things like signal processing that are available in gnuradio, you
might want to stick with gnuradio.

--000000000000fb3cc706304df296
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 14, 202=
5 at 5:57=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@gmail.com">carmixdev@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><p>Thank you for your answer,</p><p>I=E2=80=99m following your dire=
ctions and I=E2=80=99m creating the yaml file with the relevant elements in=
 it, however since it is the first time that I create such a file I=E2=80=
=99m facing some difficulties:</p><p>-The 4 port DUC will need 4 new endpoi=
nts right?</p></blockquote><div>Yes.=C2=A0 But, the I later realized that t=
he typical X310 yaml files already include 4 DUC ports (2 ports in each of =
2 DUC blocks), so you could just use those as shown in the example &quot;rf=
noc-gain/icores/x310_rfnoc_image_core.yaml&quot; without having to add a 4-=
port DUC.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>-all th=
e addsub blocks that are internal do not need an endpoint, so I imagine tha=
t i can connect them statically in the connections section (or it would be =
better to have them dinamically connected?)</p></blockquote><div>Either way=
 is fine.=C2=A0 Dynamic connections require more SEP, but allow you more fl=
exibility (e.g., if you wanted to only have 2 streaming sources combined, y=
ou could reconfigure the graph to only have 1 addsub block at the DUC outpu=
ts, whereas if you statically connect, I think you will always need 4 strea=
ming sources)</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>-Th=
e diff ports of addsub block will not be connected, i think i should connec=
t them to a Null Source Sink Block, right?</p></blockquote><div>This seems =
correct, but I don&#39;t have any experience using the Null Source Sink.=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>-I noticed th=
at on old tutorials there was a python tool that helped in the creation of =
yaml files, why it isn=E2=80=99t available anymore?</p></blockquote><div>No=
t sure.=C2=A0 But, if you start with the example x310 icore yaml mentioned =
above, it is not too hard to modify it to add three &quot;addsub&quot; bloc=
ks and make the connections.</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>-I=E2=80=99m using GNUradio to design a sample system, howeve=
r I noticed that when I use RFNoC blocks I can only generate python and not=
 C++, is it normal? that means that if I go on with the project, since I us=
e C++ I will have to migrate to UHD and dismiss GNUradio?</p></blockquote><=
div>I don&#39;t know gnuradio well.=C2=A0 I didn&#39;t even know that gnura=
dio could generate C++. I thought that gnuradio was always Python (for the =
flow graph portion).=C2=A0 But, I would check with the gnuradio list for th=
is question.=C2=A0 I will mention that if you want to use C++ directly with=
 UHD for your specific scenario, it would not be too difficult.=C2=A0 But, =
if you need to later add things like signal processing that are available i=
n gnuradio, you might want to stick with gnuradio.</div><div><br></div></di=
v></div>

--000000000000fb3cc706304df296--

--===============1859588782168838231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1859588782168838231==--
