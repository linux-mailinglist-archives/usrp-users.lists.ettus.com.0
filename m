Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9515F9525C3
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 00:31:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 581CD384BA6
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 18:31:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723674707; bh=J0W5NLfFW4RNFuvm4E9P9RaDIg7nHtme/OtaZJAA69g=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wJg1Qzhx5Wmc+Eg7aGw223qp2oD3AbLtR9qOePnhox329afT99vXGA4ilxwfLHElm
	 foOHp3saCTHa0hZMRkb77/j7sLLOwoRTnQgE8/5o26g+sza1sDRNxz3ybeofG2VBKN
	 mRkQKIMZ0coLpC30bfFQTUlFGFABvYB2Hiq6UpqYc3X2lFEbygn7cO0K3pYZtgtFyD
	 LepS/g23E1LsDALqz18oEfILEUvJHxiq4nkWnalxDy9zK09rXfUSY6/ZGTf02vUexT
	 fmCJeWKI9KH1Igdq3uIY9ZOkobhrC5DvIBMSVBbYHSaK1t96lOKLgRYAQiWd6sRjyg
	 uKdWqjENcS2OQ==
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EBEA384636
	for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 18:31:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LFlAHzn3";
	dkim-atps=neutral
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7093705c708so322896a34.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 15:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723674665; x=1724279465; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TStj0ZN+9nKVkn9BjvN8RBRMvOuXhRJrduOPodGy2Qs=;
        b=LFlAHzn3PeT2gtZh5l0yumMEMmUT6feAITST8PDSrSMnW6MlV+dLFmEm/M7+YWtpzw
         A0rSrI5hrVd38B3bbWzfra8A+ZMhJ91Fjcuu4Lh0AS0uysoSDLptINvX7ToS/tDadTG3
         vaX0hN3Z573U3sPIBf5LfY9JB6PkM5uVVFYSMWpW9wezoefMzAtnUdvdUiIs3rnh0983
         skqxI2tcOwVDM78saWp6B9eNpTianXnNSDuzEnPJfVhFF1MmLy+nMwrEVVCK6LHI9J83
         gIJlE/RniCoIWc5m4TiwD9ukFYENfVr0cpwMdEoBgBrCiFCRlrwfd/xda32g1ZUmo9v1
         3HyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723674665; x=1724279465;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TStj0ZN+9nKVkn9BjvN8RBRMvOuXhRJrduOPodGy2Qs=;
        b=blN8Sxce5ewkgEqXR00LzjZCcJFEgPhBGTG9X15yktJWaAnkPko4gTShOg1IdOedRR
         JOrg76TIxSjpXaQ6zzqzRv10PsI9RCklRjWrheke8A6h5KpoiXAthp92j1S7PzbaKA3+
         Zk+H88IzKjkH6FOklDgBC6BXjJvvYWgy/wl7ijBim2MI1b7+R6xXixQPhR2yKaHC5j1Z
         +A9KxQhGU3QmqeIV/dWMbnfsINzTlh7TmFVHQOSVp/pmsBkllqCGM/TAqPZUDV5tVOxd
         tXBVsj9k+rry0DvUkPaFMQfMInES16LWln2KuzbWncD4IXYJQ3uD/i4DjJTUeBJJCgNT
         g8PQ==
X-Gm-Message-State: AOJu0YyBvC7S8oTyx5Nj2c8vtv920pTbFhj4Wy7MFK7WL6Py1l23+aNL
	HREqAHS60W7nqX7eWXsLXLM/FXHYPEUIuPCn/2Q0TFDEY4JdhZhn
X-Google-Smtp-Source: AGHT+IGXeAwWSIsG4DIs7itHL3zcP4uIXsISj0rwjOHwRgumiOZEdTusi4nuxoXbS+Ng/bppdhehng==
X-Received: by 2002:a05:6830:4195:b0:709:3ea3:e2d1 with SMTP id 46e09a7af769-70c9d9c08f7mr4602084a34.27.1723674664628;
        Wed, 14 Aug 2024 15:31:04 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45369fd9b69sm1036531cf.11.2024.08.14.15.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 15:31:04 -0700 (PDT)
Message-ID: <e30f4c1f-447d-4e69-960b-5af0cbd6fd26@gmail.com>
Date: Wed, 14 Aug 2024 18:30:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brajesh <brajesh153@gmail.com>
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
 <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
 <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com>
 <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
 <0129e687-c21b-4090-80d3-562ef9ee1d3b@gmail.com>
 <CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmail.com>
Message-ID-Hash: 2WS3Z6I4PECXCWGELRLZ67HL23YA6T4U
X-Message-ID-Hash: 2WS3Z6I4PECXCWGELRLZ67HL23YA6T4U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2WS3Z6I4PECXCWGELRLZ67HL23YA6T4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9132974473301193780=="

This is a multi-part message in MIME format.
--===============9132974473301193780==
Content-Type: multipart/alternative;
 boundary="------------BPsHX112Q1K0fd7Cx8H6NFfC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BPsHX112Q1K0fd7Cx8H6NFfC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/08/2024 03:52, Brajesh wrote:
>
>
> That's great.
> If possible, request your time for interactive session. This request=20
> is to understand codebase (=20
> https://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f2=
67af6c4d0494f6=20
> )=C2=A0 and get starting point to start for data rate modifications.
You should go through the official support channels--the e-mail you got=20
from "support@ettus.com" will have given you a URL.

But unless you've purchased a higher-level support package, you aren't=20
going to get an engineer to sit down with you and
 =C2=A0 tell you where to put modified code, and how that code is best=20
structured, etc.

Every new purchase includes a "initial bringup" level of support, which=20
absolutely DOES NOT include detailed hand-holding
 =C2=A0 through modifying the FPGA code.

Even if you *could* get that level of support, I would *NOT* be the=20
person doing it.=C2=A0 I didn't write that FPGA code, and I'm
 =C2=A0 not primarily an FPGA developer.
>
>
>     I'm not sure what you're looking for apart from what you've
>     already found, and I've already pointed you to. The FPGA source-cod=
e
>     =C2=A0 is freely available.=C2=A0 There are documents that describe=
 the
>     work-flow for making custom mods to the N2xx FPGA images.
>     =C2=A0 The FPGA "architecture" is common between (obsolete) USRP2 a=
nd
>     N2xx hardware.=C2=A0 The follow-on architecture is referred
>     =C2=A0 to in the FPGA codebase as "usrp3", but that's just the nami=
ng
>     of the FPGA architecture.
>
>     Like I have said previously, there is no "structured walk-through"
>     document that describes, in a high-level way, the architecture
>     =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the document. Th=
e same is
>     basically true for the host-side UHD library. The architecture
>     =C2=A0 changes often-enough that by the time a "structured
>     walk-through" document could be considered "complete", the
>     architecture
>     =C2=A0 underneath it, at least the details, would have changed.=C2=A0=
 Such
>     is the nature of an evolving code-base.
>
>     Now, for the "usrp2" FPGA architecture, THAT codebase has been
>     relatively static for many years.=C2=A0 But a goodly chunk of it
>     =C2=A0 was written by people who have long-since departed the compa=
ny.=C2=A0
>     Occasional maintenance is done on it, but for the
>     =C2=A0 most part, it has been the same for many years.=C2=A0 Again,=
 though,
>     the codebase IS the documentation.
>
>
> Thanks again for shared details.
>

--------------BPsHX112Q1K0fd7Cx8H6NFfC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/08/2024 03:52, Brajesh wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>That's great.=C2=A0</div>
          <div>If possible, request your time for interactive session.
            This request is to understand codebase ( <a
href=3D"https://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8=
fd33f267af6c4d0494f6"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267af=
6c4d0494f6</a>
            )=C2=A0 and get starting point to start for data rate
            modifications.</div>
        </div>
      </div>
    </blockquote>
    You should go through the official support channels--the e-mail you
    got from <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:support@et=
tus.com">"support@ettus.com"</a> will have given you a URL.<br>
    <br>
    But unless you've purchased a higher-level support package, you
    aren't going to get an engineer to sit down with you and<br>
    =C2=A0 tell you where to put modified code, and how that code is best
    structured, etc.<br>
    <br>
    Every new purchase includes a "initial bringup" level of support,
    which absolutely DOES NOT include detailed hand-holding<br>
    =C2=A0 through modifying the FPGA code.<br>
    <br>
    Even if you *could* get that level of support, I would *NOT* be the
    person doing it.=C2=A0 I didn't write that FPGA code, and I'm<br>
    =C2=A0 not primarily an FPGA developer. =C2=A0=C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div>=C2=A0</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> <br>
              I'm not sure what you're looking for apart from what
              you've already found, and I've already pointed you to.=C2=A0=
=C2=A0
              The FPGA source-code<br>
              =C2=A0 is freely available.=C2=A0 There are documents that =
describe
              the work-flow for making custom mods to the N2xx FPGA
              images.<br>
              =C2=A0 The FPGA "architecture" is common between (obsolete)
              USRP2 and N2xx hardware.=C2=A0 The follow-on architecture i=
s
              referred<br>
              =C2=A0 to in the FPGA codebase as "usrp3", but that's just =
the
              naming of the FPGA architecture.<br>
              <br>
              Like I have said previously, there is no "structured
              walk-through" document that describes, in a high-level
              way, the architecture<br>
              =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the docu=
ment.=C2=A0
              The same is basically true for the host-side UHD library.=C2=
=A0
              The architecture<br>
              =C2=A0 changes often-enough that by the time a "structured
              walk-through" document could be considered "complete", the
              architecture<br>
              =C2=A0 underneath it, at least the details, would have
              changed.=C2=A0 Such is the nature of an evolving code-base.=
<br>
              <br>
              Now, for the "usrp2" FPGA architecture, THAT codebase has
              been relatively static for many years.=C2=A0 But a goodly c=
hunk
              of it<br>
              =C2=A0 was written by people who have long-since departed t=
he
              company.=C2=A0 Occasional maintenance is done on it, but fo=
r
              the<br>
              =C2=A0 most part, it has been the same for many years.=C2=A0=
 Again,
              though, the codebase IS the documentation.<br>
              <br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Thanks again for shared details.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------BPsHX112Q1K0fd7Cx8H6NFfC--

--===============9132974473301193780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9132974473301193780==--
