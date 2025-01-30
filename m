Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0447A2355C
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 21:48:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1982385F6D
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 15:48:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738270106; bh=a34OFMc+lNaxuwiZbDU+7Hp6JizE5gT22elMHFQAXac=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QwYhuWCRsjkWskMhH/cM5kSvstjQ07ZcC32Rn+cRiFiCZ5VyDG3c6MKpY5KFNc7MN
	 pgU5dRbgPArd7Wyqj19H+o8urMyk/abC8Iy3G+40YYpSqp495WLbsCHkzSCCUyKmbQ
	 knkY0lcJXNWLPg00UWb2sVNZswo2Uu9ocCO7meYHAxX0XPGR7qUF+GIRAeibKKx1Io
	 caI0cUeVhVzra+fhCxZjJSAeLwjODdq8oIZ2QRtSkeSLj+LTGBBdPi6cx5XzQajspG
	 LuTY3+EltZhG6nkKb7doy+/zBM3NNxLNE387ehfofXYTisbFPLKt522TJZrM7k6xT5
	 DXAwVh2GFaMGg==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 487C5385521
	for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 15:47:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UHuDT7XB";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso270403766b.1
        for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 12:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738270065; x=1738874865; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T3inOkLDUXPXruGwsQblmk34iN64VOLMRwbkZ7tPrf8=;
        b=UHuDT7XB4S8VoyrD/0ySQeygGEL0/IcLD/JJQJajyRAVyLk3ZEgpbGEIg1g5N256i8
         SPYq1rsfQvlSbv1uNgEfntpYHXSTxff1PkF52bbqyildmlyrQsnTEfrW3LHCTQyyFb0S
         VIEJNHNlXpb7Ym/QI8fJuInD55hv8A3lyGMbuqwXO8iwcJUMHcgvHovFzppTY7OUWek4
         ZFHNvl37yC6s3hEVYlPr3kcYtRs/WkjlLvWDXCBcBlGgmDGNXIwoIlGcozPPgXRDuzZ3
         z1hT5qR25MsRy+0ySZIIbTCZIf6X6ep/oqIdNLeR/qjvKU5jJZSsdsN6nNhM9V1fY7O+
         ynDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738270065; x=1738874865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3inOkLDUXPXruGwsQblmk34iN64VOLMRwbkZ7tPrf8=;
        b=VqXt8GjJhlpPqB+d7u+IzaJn0hCFjSMXq4bIZyRQOf1UqfApbKKjS+Jl+JangNeWtW
         wLPSmJzRzj6qoGF2Q97gWQ5UeqWLcdvlvDq5GE3TJNK1txIIND48QOgzRpJ664imf8zM
         TEIoZsdN2ZS5GNcTlWgzWJjvzUqZHtXPOnznK5Pwc5ZnL20jgkj10y9f636V6tnsBiyB
         vsDrSzuJLL6Gu9OkaBzQfEWxgc0pD8psKkQEIQe9CcRxZCOlZD3Uq7lfJWRJc/6c1gZO
         yumr/UiSi4sUNd7nJ3OHSS3y3NLd9b+3ahr/u+rMZp8uM7X/G3YpPwojXXbh6eaKzSeV
         ZLPw==
X-Gm-Message-State: AOJu0YwGGmFh92zUrx9A4F9MVCcI12k+YH6u3bBiLq37cCoaNpY6A0Fh
	Sg2wfIkZSAc9QrVdvPZcNk7rPjB3F3a4zYI1dwgq7fm/OOlH8u164ABSS0F/6mF5pmNv/SBlDNE
	XLpCGn4ZaX6uqWMaU2ZakMdylpsU=
X-Gm-Gg: ASbGncuIT4QlcPaqPCwR+ae+D+l5Wtx0/2yVLPkwA8MxL7hFaSuZvivvkEjKblQtdWF
	2VlLNfcFdtxdXTC4b/TGy1rCr88cfqQS9xxALBMx6gj2dEmRp5Vjx5WtpXVgYLzMTYbrSDSFB
X-Google-Smtp-Source: AGHT+IGoR0mO9kYumw3uWiRfMSC070AuDcrzPJXluX2K8ecQilMrGpkyOq/Kn9Zp43psXI721g1LShB5d0kYtlyrkEg=
X-Received: by 2002:a17:907:2d28:b0:ab6:37c5:12b6 with SMTP id
 a640c23a62f3a-ab6cfcc9f3emr781063766b.7.1738270064760; Thu, 30 Jan 2025
 12:47:44 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK7_wenz1X-D0+nGU+W6ewbErwopBbHpNTs1jBU0Gf-qUg@mail.gmail.com>
 <CAE=q3UOeKLv8ZN-6X8O0FV9B5Gha0_wkSb_TRA+OxQbrLM048g@mail.gmail.com>
In-Reply-To: <CAE=q3UOeKLv8ZN-6X8O0FV9B5Gha0_wkSb_TRA+OxQbrLM048g@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 30 Jan 2025 15:47:33 -0500
X-Gm-Features: AWEUYZkACNR_wwZjDEkTf9HmSd8M3NayQpN8aKxHI4nY3LFKxp-EdPDMBOiJcV0
Message-ID: <CAEXYVK7LYbZePFHG9EkXxxFH3yVmeGmt1F6GjYyvYgUL=J7aEw@mail.gmail.com>
To: David <vitishlsfan21@gmail.com>
Message-ID-Hash: GM4W657VKKJMSPRCI6GGWFLSWHTPXWER
X-Message-ID-Hash: GM4W657VKKJMSPRCI6GGWFLSWHTPXWER
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Updated rfnoc_modtool from v4.8.0.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GM4W657VKKJMSPRCI6GGWFLSWHTPXWER/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7123040789015444927=="

--===============7123040789015444927==
Content-Type: multipart/alternative; boundary="000000000000bbe4b8062cf2892c"

--000000000000bbe4b8062cf2892c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the quick response and the pointer. I indeed missed that
conversation.

Brian

On Thu, Jan 30, 2025 at 3:38=E2=80=AFPM David <vitishlsfan21@gmail.com> wro=
te:

> Brian,
>
> I wrote an email about this a couple days ago. The rfnoc_modtool doesn=E2=
=80=99t
> generate a yaml and a user can write one using the example at
>
> uhd/host/examples/rfnoc-example/blocks/gain.yml
>
> As a baseline. You may want to check that email for more info.
>
> Thanks,
>
> David
>
> On Thu, Jan 30, 2025 at 12:33 Brian Padalino <bpadalino@gmail.com> wrote:
>
>> I am trying to utilize the updated rfnoc_modtool in v4.8.0.0.
>>
>> I can create the basic directory structure with the `create` command, bu=
t
>> when I try to `add` a block I get a "No such file or directory" error
>> message.
>>
>> -- start commands --
>> $ rfnoc_modtool create test
>> $ cd rfnoc-test/
>> $ rfnoc_modtool add simple
>> Traceback (most recent call last):
>>   File "/home/bpadalino/work/uhd/env/bin/rfnoc_modtool", line 24, in
>> <module>
>>     sys.exit(rfnoc_modtool.main(get_pkg_dir()))
>>   File
>> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_uti=
ls/rfnoc_modtool.py",
>> line 125, in main
>>     executor.run(cmd["steps"])
>>   File
>> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_uti=
ls/step_executor.py",
>> line 72, in run
>>     getattr(self, step_type)(**{k: self._resolve(v) for k, v in
>> step_args.items()})
>>   File
>> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_uti=
ls/step_executor.py",
>> line 152, in parse_descriptor
>>     with open(source, "r", encoding=3D"utf-8") as f:
>> FileNotFoundError: [Errno 2] No such file or directory:
>> 'rfnoc/blocks/simple.yml'
>> -- end commands --
>>
>> Did I do it wrong?
>>
>> Thanks,
>> Brian
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000bbe4b8062cf2892c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the quick response and the pointer. I indeed mi=
ssed that conversation.<div><br></div><div>Brian</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Jan 30, 2025 at 3:38=E2=80=AFPM David &lt;<a href=3D"mailto:vitis=
hlsfan21@gmail.com">vitishlsfan21@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto">Brian,</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">I wrote an email about thi=
s a couple days ago. The rfnoc_modtool doesn=E2=80=99t generate a yaml and =
a user can write one using the example at=C2=A0</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">uhd/host/examples/rfnoc-example/blocks/gain.yml</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">As a baseline. You may want=
 to check that email for more info.=C2=A0</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">David</div></div><div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Jan 30, 2025 at 12:33 Brian Padalino &lt;<a =
href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">I am trying to utilize the updated rfnoc_modtool in v4.8.0.0=
.<div><br></div><div>I can create=C2=A0the basic directory structure with t=
he `create` command, but when I try to `add` a block I get a &quot;No such =
file or directory&quot; error message.</div><div><br></div><div>-- start co=
mmands --</div><div>$ rfnoc_modtool create test<br>$ cd rfnoc-test/<br>$ rf=
noc_modtool add simple<br>Traceback (most recent call last):<br>=C2=A0 File=
 &quot;/home/bpadalino/work/uhd/env/bin/rfnoc_modtool&quot;, line 24, in &l=
t;module&gt;<br>=C2=A0 =C2=A0 sys.exit(rfnoc_modtool.main(get_pkg_dir()))<b=
r>=C2=A0 File &quot;/home/bpadalino/work/uhd/env/lib/python3.10/site-packag=
es/uhd/rfnoc_utils/rfnoc_modtool.py&quot;, line 125, in main<br>=C2=A0 =C2=
=A0 executor.run(cmd[&quot;steps&quot;])<br>=C2=A0 File &quot;/home/bpadali=
no/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step_executor.=
py&quot;, line 72, in run<br>=C2=A0 =C2=A0 getattr(self, step_type)(**{k: s=
elf._resolve(v) for k, v in step_args.items()})<br>=C2=A0 File &quot;/home/=
bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step_ex=
ecutor.py&quot;, line 152, in parse_descriptor<br>=C2=A0 =C2=A0 with open(s=
ource, &quot;r&quot;, encoding=3D&quot;utf-8&quot;) as f:<br>FileNotFoundEr=
ror: [Errno 2] No such file or directory: &#39;rfnoc/blocks/simple.yml&#39;=
<br></div><div>-- end commands --</div><div><br></div><div>Did I do it wron=
g?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</div>
</blockquote></div>

--000000000000bbe4b8062cf2892c--

--===============7123040789015444927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7123040789015444927==--
