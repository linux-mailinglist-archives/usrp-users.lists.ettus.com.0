Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E80AE7D057F
	for <lists+usrp-users@lfdr.de>; Fri, 20 Oct 2023 01:51:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89B55386D3C
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 19:51:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697759489; bh=67tgyocvcmEgOVc0KWAfgwIvcXwNQTUfiVEx/avpnG4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OmXpVcyd6wYlwTr0U7KMAgqvXH14KsnD5MwESjn4cZu2coX6V4U3ixe++9QMEgJwY
	 kEYinW7J6HIuWCBy+NUZIBqxmgSnaerYQ8vzKkI8gYyFKVVYDUMc6mmjDAPxWJe1hG
	 70QUir3DBClV4AGDSaN0sgKSd78SRcCbW3qlnfozDRdPAfzgpDGSFCaMB12YFmpTZN
	 9+2mj68SdmGWW7xDQlsQ0+oxMMJciBp234qycDEPW694QF7NXrgvOcFQnCChOL7Vg6
	 oEfVnrp+36CJ9aQFdnFCytf3EygFzd8uL0m3kG1ZqR16ribAZad5jHKcJ9hyy9VVOJ
	 0NKqMjcWaJNqA==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 61FF5386554
	for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 19:50:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="Fuuy1CnC";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5a7af52ee31so2041117b3.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 16:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1697759421; x=1698364221; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L/eEksUqL4Rlxr8Kq1oxznf7s8qAWr+qfVv/UpLllc8=;
        b=Fuuy1CnCHzhFNGTtl2X0wtAD+kMM/e85pfnr9GNtUIjgqzvUfEwLY9mZZY31/AWSgy
         FbzXFQIdL9M4Xd/AafS7xcCn5+Um7xennJiEx9vFuwCQoSidB3k8cISVYL2QzlbA5iDU
         VPQmXbJMtVAg/G2GnMifmlsxU5bmh4ucxJPS2u26hNEDKDgzmDabrn6gLx/ZqINeCnla
         gcOL5ctk+08q4QsdqrOjXUaqnfvqRZplgiB//DSdDGViOvJSgX8hfCV4Dj/+0AKMyvPE
         1cH0SvCVAYtSqYnU0jvhnPANQ2ggUwhXbS0pmzNHLR3tDXU0xkqDFfyBCjxpaqsAL1Bc
         qshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697759421; x=1698364221;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/eEksUqL4Rlxr8Kq1oxznf7s8qAWr+qfVv/UpLllc8=;
        b=VO2UsK1AVJCJ5gIpP3CJXa5uh8i4l1f31QrWYo5wiLl0oCMdU+O0yHnmmx+LCLNJ+f
         ZoqwBYCvaEZW2S4awT4UD0wmHf5QChmrJLAd0x90OQIs6ha9zD4nVwNlcbw+wRR89KnR
         KmpBW+b2b0Eg3l5BJxhRFhmixnpkocvbIjvZCQo57nW0wKxAhZWEPEPWj/JFphOJ/X/K
         RftYpTJUjuaA4HLVigw+h8AW7k/cMSNR9gfTkqcxloCjORFPyW8rfwDptDA4d8Rynk6S
         T7zHve3AC/KwfhAS/HmA1TR5WvIYtBqdKPbFF4KvmBBLCrP10GDyk85F42AW8pt0XftL
         mIMw==
X-Gm-Message-State: AOJu0YytqYbGm6Uio7jk08fX6R6pDK/igR/b8Mi4dL2V/iM++0Js+cvO
	AJWKgGBghX9cch6AzED7L64JqAEKzrF2fAJjqnHqljAq916C4EbctiI=
X-Google-Smtp-Source: AGHT+IGsBf9+swbUJe3adnpDKr2VsSBtF6ZT7ljACHtciG7gCzOf9PBLrhjRLDAREn1VZwLfuxUje6JFHm6A1zrFq+w=
X-Received: by 2002:a0d:dd0c:0:b0:5a7:d11c:f0ed with SMTP id
 g12-20020a0ddd0c000000b005a7d11cf0edmr411248ywe.33.1697759421543; Thu, 19 Oct
 2023 16:50:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvwvj+UiwCJ-PGSDhkTnK7dbk9-GHgfPMfn-Q132PKV_rFg@mail.gmail.com>
 <1248e585-9261-495e-ac0a-ae8f8a0d98aa@gmail.com>
In-Reply-To: <1248e585-9261-495e-ac0a-ae8f8a0d98aa@gmail.com>
From: Michael Toussaint <mtoussaint@chaosinc.com>
Date: Thu, 19 Oct 2023 16:49:58 -0700
Message-ID: <CAMhTvws__iPcj9ziJr2FJmJ_HvP67Ari13HJzLf7HAFoY5jCnw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 2SKGTJOWNRPTGBJ3BYMFHPR2YWUTJVKZ
X-Message-ID-Hash: 2SKGTJOWNRPTGBJ3BYMFHPR2YWUTJVKZ
X-MailFrom: mtoussaint@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Errors Running Cal Commands on SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SKGTJOWNRPTGBJ3BYMFHPR2YWUTJVKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1446000143837886967=="

--===============1446000143837886967==
Content-Type: multipart/alternative; boundary="0000000000003c491606081a6bfa"

--0000000000003c491606081a6bfa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for replying. I have not tried running the self calibration from the
PC host yet. My team thought it would be better to run it on the SDR itself
as part of the SDR configuration that gets done when we setup the IP
addresses and UHD version/image (currently using UHD version 4.4.0).

Our plan is to attempt running the self cals on the PC host later, if we
cannot get the self cals running on the SDR itself.

Thanks,

Michael


On Thu, Oct 19, 2023 at 4:31=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 19/10/2023 19:15, Michael Toussaint wrote:
> > Hi User Group,
> >
> > I have been having errors running the self calibration commands on the
> > N320 SDRs.
> >
> > Attached are screenshots of the errors.
> >
> > Has anyone else run into this issue?
> >
> > Thanks,
> >
> > Michael
> >
> What happens if you run it from your PC host, rather than on the N320
> itself?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003c491606081a6bfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Marcus,</div><div><br></div><div>Thanks for r=
eplying. I have not tried running the self calibration from the PC host yet=
. My team thought it would be better to run it on the SDR itself as part of=
 the SDR configuration that gets done when we setup the IP addresses and UH=
D version/image (currently using UHD version 4.4.0).</div><div><br></div><d=
iv>Our plan is to attempt running the self=C2=A0cals on the PC host later, =
if we cannot get the self cals running on the SDR itself.</div><div><br></d=
iv><div>Thanks,</div><div><br></div><div>Michael</div><div><br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
19, 2023 at 4:31=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">On 19/10/2023 19:15, Michael Toussai=
nt wrote:<br>
&gt; Hi User Group,<br>
&gt;<br>
&gt; I have been having errors running the self calibration commands on the=
 <br>
&gt; N320 SDRs.<br>
&gt;<br>
&gt; Attached are screenshots of the errors.<br>
&gt;<br>
&gt; Has anyone else run into this issue?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Michael<br>
&gt;<br>
What happens if you run it from your PC host, rather than on the N320 <br>
itself?<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div></div></div></div></div>

--0000000000003c491606081a6bfa--

--===============1446000143837886967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1446000143837886967==--
