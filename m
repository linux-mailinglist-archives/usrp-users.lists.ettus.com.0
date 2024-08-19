Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D574956D04
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 16:19:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA92F3853CC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 10:19:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724077148; bh=BcQtHl0Hj50l+m4jQODVEkVBZPxxpXw/eQ7rcQ3bquE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RJ6Zlb5gvFZiqwLflyZZ5CF5p3qQ/jPAo1wFjQgi+BX4waAzGLcQ6jbIOZmadvF8b
	 w+E+AKOlq0ZNEUErGBmxmkY/Lc+1bXbqGRkv8KVSz3agMTs8LgJMRh2hG1XkfFPvBd
	 ZqVUE32TBqc6bY/56V6sqpd+ereIZjVz73F1Cnfd+0nL1bXzJCtSy9Q2qn8RDtyQ0U
	 VL1CSKK8etWhfE/48vTX92jUHeUj1akXPZQIeUASCWSYiETC/T8wVwuUdouoSW5KXU
	 ywZZ9x0JczsYE+X65p2pelMWHDn5Pm1KaFCeaWQsTWLvmn/x/ehZSGtzszq5dCEPlJ
	 pj8oSlH9v9NRA==
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id F025F3808C9
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 10:18:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dygBCZOL";
	dkim-atps=neutral
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52f04b3cb33so517571e87.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 07:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724077128; x=1724681928; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YxsSMs1Qa3eO+Ke4zZJMyN28mcE8DaC9LXHH6UwlCQs=;
        b=dygBCZOLLLno9OZFZiC22o2vlrC4qU9d2O1NI+fgfuQKxae26t1VxzpN04BjtzxYsL
         WBMGnwTiQUzFtFm9wSuLGssez675J54PiXThQyILYi+WfDCQKWri1jrDQ2kCvHSHgfS+
         PnEylIaLTcF5Y2lzyGkabvLcclFs5UzQvTwjEKMymddocWWzb+6mMqdkYK/r8320ETzJ
         WvrKft7HuhxbebOAEAZCRvOftXHn3dwMap3bLgXyZfTjaEW5G4f7aVjwyEk3b1e1cshJ
         /rYOD0XxpHJGBJhGUcxSLGUj7ThgCrjgRDvCsbATcTac7NhJMp+gOu3KpHX/oZZHR5sS
         Nv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724077128; x=1724681928;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YxsSMs1Qa3eO+Ke4zZJMyN28mcE8DaC9LXHH6UwlCQs=;
        b=P1XhvjsIFzxRDIj7ryhjnqY4vmhMltWEy3UyHXuPbYFsTMd1R6Gv28R1a/2PKHDX2H
         OeOWMfa31b6/jXoHP4a6EdTYbDCaoXgoZSRHROx9FhbsRr89YdA7CDKuYgSLdbQrePgy
         9xrn+V56rPTxWIZr1vcNNqAigzfweIy6tM4B7UnJu3yOezJ5mk+KOo5spUS4aaUNkjGB
         guUmABjsGkQt9OrE1BGy4U5pzEGvz5opF1jVX4ZJqV1sbgLlCYnv0qv5rldMoR6RDVUS
         jOGF0Y7lH9OzvMdwHhQ5+jOTyeozRwYkHwn1jdaOCKSCcufNzdM/6BMHOiRMJDUHntEB
         B1Mw==
X-Gm-Message-State: AOJu0YwHKawNEkymhtBFoJnx80A1Jk6LUczoSM648E1yK8K79MA+btzc
	Oqr3ZlRjSO4/jKK/PHWy5kcjFD6xfZa4eznUrbLT4V8Yzgb1nreAhvEXW7kwo1rUZip5b4T0/nD
	lBXSw3mMNxRBoyggVwMYJGwUNZ34DSc97J9vidkpanHHsMcsPxc4=
X-Google-Smtp-Source: AGHT+IGEYte1ZYIdlJ2E6uwp3wzMoNWQJ0wOYReluirSp5Z5D4yPn3CFLTHS6IKJxK3hh4/AmPehjLnM7LHVS5N0vEo=
X-Received: by 2002:a05:6512:ba3:b0:52e:8071:e89d with SMTP id
 2adb3069b0e04-5331c6dba35mr10682755e87.40.1724077128369; Mon, 19 Aug 2024
 07:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <CANwDeJYL6fQ6Uso9=xOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gmail.com>
 <a748f96e-a740-43f8-99a3-c2f29c7fd66c@gmail.com>
In-Reply-To: <a748f96e-a740-43f8-99a3-c2f29c7fd66c@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 19 Aug 2024 16:18:37 +0200
Message-ID: <CAFOi1A7ERa3-wZKF5y-E3otDnq3U_DZusn3U_WG6beqtzC=qBg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Y72737S75R4ZIEPRGXUOJ7E64W5NQ432
X-Message-ID-Hash: Y72737S75R4ZIEPRGXUOJ7E64W5NQ432
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with KeepOneInN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y72737S75R4ZIEPRGXUOJ7E64W5NQ432/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6312907712280265086=="

--===============6312907712280265086==
Content-Type: multipart/alternative; boundary="000000000000cd7070062009fc45"

--000000000000cd7070062009fc45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also, did you build a bitfile that includes the keep-one-in-N block?

--M

On Thu, Aug 15, 2024 at 10:08=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 15/08/2024 15:52, Ekin Su Sacin wrote:
>
> Hi all,
>
> I am working with USRP X310. I am trying to adjust the 'N' value for the
> KeepOneInN block but am encountering issues at the application level. I
> have defined my usrp device using uhd::usrp::multi_usrp, but I'm running
> into fatal errors related to <uhd/device3.hpp> and
> <uhd/rfnoc/block_control_base.hpp> when attempting to use sr_write. I am
> currently using UHD 4.2.0.0. Is using
> <uhd/rfnoc/keep_one_in_n_block_control.hpp> the only way to customize thi=
s
> block and is there a way to do that using a usrp device instead of
> creating the rfnoc graph object?
>
> Thanks a lot for your support.
>
> Best Regards,
> Ekin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You can't "mix metaphors".  You need to create an RFNOC graph, NOT use th=
e
> "multi_usrp" API.
>
> See the examples, like "rfnoc_rx_to_file" in the codebase.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cd7070062009fc45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also, did you build a bitfile that includes the keep-=
one-in-N block?</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 15, 2024=
 at 10:08=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 15/08/2024 15:52, Ekin Su Sacin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi all,</div>
        <div><br>
        </div>
        <div>I am working with USRP X310. I am trying to adjust the &#39;N&=
#39;
          value for the KeepOneInN block but am encountering issues at
          the application level. I have defined my usrp device using
          uhd::usrp::multi_usrp, but I&#39;m running into fatal errors
          related to &lt;uhd/device3.hpp&gt; and
          &lt;uhd/rfnoc/block_control_base.hpp&gt; when attempting to
          use sr_write. I am currently using UHD 4.2.0.0. Is=C2=A0using
          &lt;uhd/rfnoc/keep_one_in_n_block_control.hpp&gt; the only way
          to customize this block <code></code>and is there a way to do
          that using a usrp device instead of creating the rfnoc graph
          object?</div>
        <div><br>
        </div>
        <div>
          <div>Thanks a lot for your support.</div>
          <div>
            <div><br>
            </div>
            <div>Best Regards,</div>
            <div>Ekin<br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    You can&#39;t &quot;mix metaphors&quot;.=C2=A0 You need to create an RF=
NOC graph, NOT
    use the &quot;multi_usrp&quot; API.<br>
    <br>
    See the examples, like &quot;rfnoc_rx_to_file&quot; in the codebase.<br=
>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cd7070062009fc45--

--===============6312907712280265086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6312907712280265086==--
