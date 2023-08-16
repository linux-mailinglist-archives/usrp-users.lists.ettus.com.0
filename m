Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D8577E203
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 14:58:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A58E638498E
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 08:58:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692190686; bh=5VRDeB6noaa+mWNxwjSs1fEWAJn48SQGQqexppfleR8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=r1EAmr2agRlCVvjLac8CbtM2zrSwGpXwTmFKrXGXH1VeO6pMhGQtcQDi8audQGLKN
	 GKXiNij5wnfyjMpLMS3QUhtmmF/cLv79wHyC3yHtq86jMmLevbv9WjZ11AIuRTixMl
	 KegC48o49iLQkiBs7fXRy5z7JqY5cNaLvbLiUECVpCFQsxZFa7MDs6c8Pw2KjXqhF1
	 DQrSzQ58q/CvZHFNxDdtCHGmELLl7ahSq9bp/005MpMakyl11UdbGeIJe8T2hhxLCO
	 opmaaNJOVNwQwHTtkPir0F1YSo2ENXbRzshw3ZZxU3zkniZEASkWVsLThobPigmY42
	 +kPThJ3d3Ervg==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id A8B3D383EF7
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 08:57:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="IAFMAXPG";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so1347793266b.0
        for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 05:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692190654; x=1692795454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xW/XKKGl20HGOw1xQpcFX5wICViTsb6KOIaje0AwgyU=;
        b=IAFMAXPGst5DIvwXoo0ekCH2JrF1RsrErNzYdOEnraWc9pcdePnudMyQqSGlMLZLCn
         muF8piuhRvkn8+QwN5qM5OEq2m+IbxAElLDUccmArTCE/S8D129zZpISHolVk5QdMBxu
         fJfDRrqbCrQaophmVX+3Qcc1bRkU/n3S/72PJ2ZFy5q3HnmR3637/t2xFNIWzKjgwSgv
         6JGxIU5P/5T1gG3yCk8bVUceQoWULcg30eLf1X8L06XtFR+PM2zqmWw1aN7b+UxZCUEs
         wZsLgiohKlSC+pr9DU7sESnkizJjk1UNFBBcMnlJCVN+dhgV0i6D6dr7hGw1yGQKE5cm
         C27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692190654; x=1692795454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xW/XKKGl20HGOw1xQpcFX5wICViTsb6KOIaje0AwgyU=;
        b=afBpQeD+ruRuVTlO6PAVK/osriv9hrq1SSh3sGoeSJtiKXk8SQ3Krvck/s22yqCc0W
         AszQ/Z5eNEKf0yD+UkoEiiI4vGLoBKjUt7LKrXzpa3iWqHvzVYF5Aq1KpM0JiFp5jjV0
         nOGqzMSG37JuYwWawd1WrFQs2jS97z9cQY12t3/VLVwy6KXUkJrnHY0iVqjJlNS/vrJq
         Irh34iRaJUaAX1Yn1miO4MiB/6YSwbni8eQ0TSvUh0fi3/Cr+wwCco2t44IXnFUkBwvU
         /xcK+uLFAxJCoFkqkO5Za2ThGJELwXE5ZPoBbha0WFDwE5JG+R9T+wfBYTKDHUmEl80y
         rFSA==
X-Gm-Message-State: AOJu0Ywu5b2bKuZ7zlF7mb+xztFHsuv2Xeb4mWR597OK2ptTgDz45SxQ
	EFx7XY/+aJsSn/tURxP8pwearPkCx5vLXtAXwYAm7s74C3RsbDf9kUM=
X-Google-Smtp-Source: AGHT+IGYb4OWu5oYIVYW3KqDrvhNDHktaJuU1FnhAEFnnAZeSAooHyZn76Qw3kVPHQlY4kOqjF36UvlHC7OSW92udG8=
X-Received: by 2002:a17:906:7315:b0:98e:4f1:f987 with SMTP id
 di21-20020a170906731500b0098e04f1f987mr5862287ejc.3.1692190654273; Wed, 16
 Aug 2023 05:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4@lists.ettus.com>
In-Reply-To: <N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 16 Aug 2023 07:57:17 -0500
Message-ID: <CAFche=hfcy5f_og2NYh-9j7_Ju+WgnAMvEaLiV0uf9eDHwBSAA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: V62LE3KK73GFAOB5DMEFMPV6OAJKQJGO
X-Message-ID-Hash: V62LE3KK73GFAOB5DMEFMPV6OAJKQJGO
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V62LE3KK73GFAOB5DMEFMPV6OAJKQJGO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6034685912238791080=="

--===============6034685912238791080==
Content-Type: multipart/alternative; boundary="000000000000d72b8b060309d6fa"

--000000000000d72b8b060309d6fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are streaming data from the radio, then overflows are to be expected
since 10 GbE can't keep up with 500 Msps. But that should happen with
64-bit CHDR as well. It doesn't matter how big the buffers are.

If you are not using the radio, then overflows should not occur at all,
since there's no real-time data rate requirement.

Wade

On Tue, Aug 15, 2023 at 11:38=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> Yes, the YAML file is set to 128 chdr_width. I am using v4.4.0.0
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d72b8b060309d6fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you are streaming data from the radio, then overfl=
ows are to be expected since 10 GbE can&#39;t keep up with 500 Msps. But th=
at should happen with 64-bit CHDR as well. It doesn&#39;t matter how big th=
e buffers are.<br></div><div><br></div><div>If you are not using the radio,=
 then overflows should not occur at all, since there&#39;s no real-time dat=
a rate requirement.</div><div><br></div><div>Wade<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 15, =
2023 at 11:38=E2=80=AFAM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan=
@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Yes, the YAML file is set to 128 chdr_width. I am using v4.4.=
0.0</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d72b8b060309d6fa--

--===============6034685912238791080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6034685912238791080==--
