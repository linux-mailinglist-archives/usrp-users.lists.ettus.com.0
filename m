Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8775CFE8E7
	for <lists+usrp-users@lfdr.de>; Wed, 07 Jan 2026 16:25:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3123386378
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jan 2026 10:25:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767799522; bh=EKaVBrhsAj3FK1lXlmWrsE/7i4ocMIEu3WPizN1W1+0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=S9taJ6w8C7qG4o2uMP7RRwhCcKqs+gE3T+HesZkJu1nEktRx60RfgdQzCX1oioRzy
	 IN+xrSI9nJAukY9rKLhbC70CrCwCjQjsJmh0z1Ri53W8lTz0YLhxsrVwNFJY6aw0rq
	 NdugmFc/VGzPOpWOnudCl2lBquvKDMeq2FxegyrtvkgEdIkWUIkn8yZ6LqJckMrdMA
	 DkwRzaY6Sru7AbHx7rOmP6ubKbbWVga/1qDxQTjW4rxUSJ0hbqqs0+4b8Obbt9gdwV
	 kPpUVCiXjlqpx/aygnGptyzKpR2lbOQpzVQKLhQ+qcWCGD08ZDpb5hGoltWLdL9x9t
	 mwt/4FV+9rU9g==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 8253E386373
	for <usrp-users@lists.ettus.com>; Wed,  7 Jan 2026 10:25:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bn3xBqhG";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-78fba1a1b1eso15903917b3.1
        for <usrp-users@lists.ettus.com>; Wed, 07 Jan 2026 07:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1767799512; x=1768404312; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lMw5epTbnyKiAKud0kZ6peAlF1FkCKqMw9JWoTlKQQg=;
        b=bn3xBqhG30lDBfyi46JpJC1EQPnZtBj1vDgQxzq5q0YB8y8gAYPknjIdo5tlQ+ppwD
         1H8FMWmIcy3hyWTWoMhXzut9MOMoDwUgazgOuvfLis2rlLBiWmilMkspTHuerUMVA4Nf
         951oleJ8gtAESdD9poybSDR4GcBY1TnivJMT0WVnTRCaVfOMLhHxhTf/4df4SDHsFshe
         sSVZDsfnwTCQicWcu982jgraINQPLGJhMPQcLFMrJXHKqOWgA6ShfS1qu1UwYUfBnZTn
         fclrhlwUYRjmE1NjG8bE/DdIFT3ecMANPF0UVm9nIpMoySuwvrZsuV9SrHrox40Dmr9p
         vmKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767799512; x=1768404312;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMw5epTbnyKiAKud0kZ6peAlF1FkCKqMw9JWoTlKQQg=;
        b=dGQ8dfqwGtvox9SzP2xHdiTfdk/jqtIOctqGX36nNM9FdOtlHVyrRmpHRkvWC/J8UJ
         nU0Eo6KS012js3i7FQzV5edIU4XMmSRXVtccw/WKlq4Umwl0ljg8CPcAxyytflr6EwXN
         jQretelGigFxJUO6JnRRZZVDGTb+7kmkOcyEAJHcswIS26xdecjhK3/xLb0dvAgQio52
         Lf0sm4t4ONz6miE9a9UqJqJ6sFkIonm2U/KT4b4N5sZmqjIhgC18Il5I+MCdyDSkdtuY
         J97G4KYOdOPZmu8k6bWwUCiIP+lAvNhHgOFaxOCskQUEzAmOzBRsFkyCRfuHEYb/DYq6
         Lq1Q==
X-Gm-Message-State: AOJu0YzaWozMvwoenlu/D0XqMj5eMdlRk3pJwQjXj1hgrrN8YzEcpmLU
	kN3JL/uE/o1ARWicYgTZYxklhvgD82EXcOvzLw1s3yUW1VlYR6ED1bbUSlp11acKgcEOmmP+O7q
	Fny933JkUgmw8ygPFEJGEjgOsSVk8cJr2U3t3pQoV
X-Gm-Gg: AY/fxX4sovPL7DSvoAtyYn9EHFMCpLPPFRGeieqHnVfdmDNgS1wTA4a0cvo5L6UexTj
	yo11/izHOfz89jR3c8I0urJaxvgX05Kr+Jgz05zyDiv/r8etuyp6nmCQ3DbeABXfNtxUTVIMbfB
	z+X3+Wctt/HVVRtD84F5GxLjeDmi0yq7swIoF0kSS2Hx4HCGbewcP5yKB7ttl/2QsGtSlrQcynA
	hmU+tXyYFkDOuhHLAHzjAkqqo/YDf0Mv4LCD5CeyYVo8VdOrv9F02P7Ots0wFljvDLcx902PRKg
	6/Uti9jtMiUp+GrVthu4ZT46bUc=
X-Google-Smtp-Source: AGHT+IEPdRfznMVNTmBKIxQtRMuRbTTEYAQS5tXjFR64WUSI/eKafJZ9AAinnjnscas0obty7DlusF4IDJGozBNgM5Y=
X-Received: by 2002:a05:690e:b4c:b0:63f:b2b3:8c2d with SMTP id
 956f58d0204a3-6470d2819cfmr5259508d50.17.1767799511609; Wed, 07 Jan 2026
 07:25:11 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR6tpMLh6P+zb0nog2hOL8_ksJDUb0vPJOGr0SgLOcG=w@mail.gmail.com>
 <CAB__hTSE_GpkrXsh0KvGw7BjmcduM=gNJmxBD3FivxUhLMyeHA@mail.gmail.com> <CH0PR10MB51792B88EDD077E81262770E9984A@CH0PR10MB5179.namprd10.prod.outlook.com>
In-Reply-To: <CH0PR10MB51792B88EDD077E81262770E9984A@CH0PR10MB5179.namprd10.prod.outlook.com>
Date: Wed, 7 Jan 2026 10:25:02 -0500
X-Gm-Features: AQt7F2pAr9WzjW1cxci_FrHJYnD3YKu5NB3xXWJYYvzG9Su1LD4cL1ZdXq9mLik
Message-ID: <CAB__hTSv=XRwEkRuvpwPgkcBVo=G0O3xLMvsocAxD1bXLdMOvA@mail.gmail.com>
To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Message-ID-Hash: WOFVFSWKUH7557AHR4CTVVO7GKB4UBLD
X-Message-ID-Hash: WOFVFSWKUH7557AHR4CTVVO7GKB4UBLD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using extension interface with RFNoC API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOFVFSWKUH7557AHR4CTVVO7GKB4UBLD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1338156437528957395=="

--===============1338156437528957395==
Content-Type: multipart/alternative; boundary="000000000000ec93510647cde525"

--000000000000ec93510647cde525
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Martin,
One more opinion I'll mention that is more of a conceptual issue related to
multi_usrp (something I've mentioned in a post several years back)...
There should be no reason for the MultiUSRP implementation for RFNoC
devices (multi_usrp_rfnoc.cpp) to require private functionality (i.e.,
#include <uhdlib/...>).  It should be possible to implement multi_usrp with
only public API functions.

Why do I think this?  As you mentioned, "multi_usrp is meant to wrap RFNoC
for typical use cases".  It stands to reason that for all use cases
(typical and atypical), the same functionality would be required. When
implementing just slightly atypical RFNoC graphs, I have run into several
cases where I need the same functionality from "multi_usrp_rfnoc.cpp" such
that I must include the corresponding "<uhdlib/...>" files and thus play
games so that the compiler and linker can find the appropriate files that
are not part of the public API.
Rob

On Wed, Jan 7, 2026 at 8:33=E2=80=AFAM Anderseck, Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
>
>
> We only have the extension API available for MultiUSRP because that is th=
e
> API that is meant to wrap away the complexity of RFNoC for typical use
> cases. If you start with RFNoC you know that you=E2=80=99ll have to work =
on a much
> lower level. I currently cannot tell if making `get_extension_factor()`
> could potentially have any bad impact.
>
> Can you please put this and the antenna mixin issue into our issue
> tracker? https://github.com/EttusResearch/uhd/issues
>
> I can=E2=80=99t promise a quick resolution, unfortunately, but at least w=
e will be
> aware when planning our tasks.
>
>
>
> Thanks,
>
> Martin
>
>
>
> *From:* Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Tuesday, January 6, 2026 7:22 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] Using extension interface with RFNoC
> API
>
>
>
> Hi,
>
> When using the multi_usrp API, it is relatively clear how to use the
> extensions interface. However, for an arbitrary RFNoC graph using the RFN=
oC
> API, it does not seem possible (without some cheating).  Specifically, th=
e
> function "get_extension_factory", which is needed to get an extension is
> not a public function.  This function is called internally from
> multi_usrp_rfnoc, which is possible because this class uses include files
> from <uhdlib/...>.  Is there a reason that extensions shouldn't be used
> without the multi_usrp API?  Or, perhaps I am doing something wrong?
>
> Rob
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ec93510647cde525
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Martin,<div>One more opinion I&#39;ll mention that =
is=C2=A0more of a conceptual issue related to multi_usrp (something I&#39;v=
e mentioned in a post several years back)...=C2=A0 There should be no reaso=
n for the MultiUSRP implementation for RFNoC devices (multi_usrp_rfnoc.cpp)=
 to require private functionality (i.e., #include &lt;uhdlib/...&gt;).=C2=
=A0 It should be possible to implement multi_usrp with only public API func=
tions.=C2=A0=C2=A0</div><div><br></div><div>Why do I think this?=C2=A0 As y=
ou mentioned, &quot;multi_usrp is meant to wrap RFNoC for typical use cases=
&quot;.=C2=A0 It stands to reason that for all use cases (typical and atypi=
cal), the same functionality would be required. When implementing just slig=
htly atypical RFNoC graphs, I have run into several cases where I need the =
same functionality from &quot;multi_usrp_rfnoc.cpp&quot; such that I must i=
nclude the corresponding &quot;&lt;uhdlib/...&gt;&quot; files and thus play=
 games so that the compiler and linker can find the appropriate files that =
are not part of the public API.</div><div>Rob</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Jan 7, 2026 at 8:33=E2=80=AFAM Anderseck, Martin via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 class=3D"msg6847980950115084760">





<div lang=3D"DE" style=3D"overflow-wrap: break-word;">
<div class=3D"m_6847980950115084760WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Rob,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We only have the extension API =
available for MultiUSRP because that is the API that is meant to wrap away =
the complexity of RFNoC for typical use cases. If you start with RFNoC you =
know
 that you=E2=80=99ll have to work on a much lower level. I currently cannot=
 tell if making `get_extension_factor()` could potentially have any bad imp=
act.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can you please put this and the=
 antenna mixin issue into our issue tracker?
<a href=3D"https://github.com/EttusResearch/uhd/issues" target=3D"_blank">h=
ttps://github.com/EttusResearch/uhd/issues</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I can=E2=80=99t promise a quick=
 resolution, unfortunately, but at least we will be aware when planning our=
 tasks.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Martin<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">From:</span></b><span lang=3D"EN-US" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif"> Rob Kossler via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, January 6, 2026 7:22 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Using extension interface with RFNo=
C API<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:1pt;font-fam=
ily:Arial,sans-serif;color:white"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white"><u></u><u>=
</u></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When using the multi_usrp API, =
it is relatively clear how to use the extensions interface. However, for an=
 arbitrary RFNoC graph using the RFNoC API, it does not seem possible (with=
out some cheating).=C2=A0 Specifically, the
 function &quot;get_extension_factory&quot;, which is needed to get an exte=
nsion is not a public function.=C2=A0 This function is called internally fr=
om multi_usrp_rfnoc, which is possible because this class uses include file=
s from &lt;uhdlib/...&gt;.=C2=A0 Is there a reason that extensions
 shouldn&#39;t be used without the multi_usrp API?=C2=A0 </span>Or, perhaps=
 I am doing something wrong?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000ec93510647cde525--

--===============1338156437528957395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1338156437528957395==--
