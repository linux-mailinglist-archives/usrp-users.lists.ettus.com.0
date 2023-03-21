Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E0D6C31C0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 13:32:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFAC7381508
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 08:32:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679401974; bh=G7a7wSRHcZp+lRMdD6NqyyWpvta+PAqN3US22vmZT0M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iCZrHIbVwJHd3T9jnBpuiorUyfBSt1dYfx4/2LwtCEpgkjq5OaLHlYtDLnLAvf9/v
	 aE0p/uWUUGwoXMErpJWgmP+Ne5wz+qd2Skl18N+BGuGjeKGS5B7hVraz5ipTB8b2M0
	 LSGOs+f7E40x89ENAYkbkTg88aEkLwXWVZl5UVC86KAYeRyt5/vqf0RBhIFeI1sE0n
	 yQREDawM8s4tNiNGPI6NBhE1pUG9T4yQpANRnjpPfGZGALGb4WRGLT3ivyfEBDlHy7
	 yLuxQs8JWfkBcwWUBhPlJCTjYj4KcmzQ3CTuit4cP+HSWikJKBHu8BDGN/IRlWjxXq
	 HFwxqtdB2hKcw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 23A70380CC3
	for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 08:32:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ln/x1uFo";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id h8so58971011ede.8
        for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 05:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679401923;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VXoMnYSMdhTeiOW+L1L76ImyQGwe1rWg6U+NMQLXKfU=;
        b=Ln/x1uFojRbYP2CnOW3O0BSRx7e48023mR8g5B5MQ6uEkJYmoP2TgHSoRSwWEPdRal
         8WCeuuIvay2odpcoRbVd29Wc7PwZ4fpWypuwOOVa8q4wQnklOafr8j0jwbZGQNG17clD
         UrL5b5LRzLwitdoaMKsUcWm1fwFe+X4BRJg4+VZMpQyrLhRPk/XlJj48XAnTpEwBclKa
         5l4tV/FLfktwrLnSYcNg3ks1BDv2C7QLiM4x/77qHwwQJ5lO97ZuB68r0A8xHfNmRmsS
         bcuBEw6xCsiV9NJR45rL3VDvDilNFZFTM6ZUQQPkgM13F3UfyRUS6ru5DVZMxgyGKjSm
         WiDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401923;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VXoMnYSMdhTeiOW+L1L76ImyQGwe1rWg6U+NMQLXKfU=;
        b=yzuJdmdUmZ4mPdOPUpi3ztNluFLO2bEhDIQRA5iFspM61qNfpylviBjWJq9iyt4VhU
         EQxsakGY/7L6BYqF1R0cM24fd8E0SGgeG2Fh02XEosVA+5+S8Ropqu2IP0EDidq7GU82
         2alqhR7ArFPuAVP0+PAjmL7mZhXXUXyAe0OE5L1xUb/7xrBNqa196Jvg/kW3YzMhj6Lm
         4tEVUiKPhYdQdrqq4RcX8JMbfjti82GwsZ3eICIpMMCW8gfk+aVcb4jRTj+l6AXbxosL
         Fv6ShYEWyoBt7zx/2j+TGWZ4BXKD3r8V2dwGqJ5x745fHb5PoO5U9yDbQjJI7AYGNCkv
         CI1A==
X-Gm-Message-State: AO0yUKXpOB9GKlGLZ+GcP2tJyUM3uJTBtm+h1kSuoBi9w56ag3ELKcvp
	kLg/LAz04yc83RpvNQqqUsthS4KpA/WONVzG04Mx2wFKdec=
X-Google-Smtp-Source: AK7set84L2zCUGXqzmcE0Ymtecgl/uKKjE1SVSvCl51qjLUUzQaYCarrQ0nZj85Y8H1jb0UIU3MTbNtq4dKSbxd7vMs=
X-Received: by 2002:a50:9fad:0:b0:4c1:6acc:ea5 with SMTP id
 c42-20020a509fad000000b004c16acc0ea5mr1541206edf.4.1679401923500; Tue, 21 Mar
 2023 05:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <3d0a4761-13d6-1a52-d5ec-ef85ddcd28b4@gmail.com> <SN6PR04MB50535C2A7E066B96DA1C9F51F3809@SN6PR04MB5053.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB50535C2A7E066B96DA1C9F51F3809@SN6PR04MB5053.namprd04.prod.outlook.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Tue, 21 Mar 2023 14:31:27 +0200
Message-ID: <CAJhOL6f2FKxAhkRq+kEGPp-m-66pwe_cvOuw5i6n9X8GbO6yWA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: PBV62W6PJZ4OEILCGRB5UDD2VRHATT7Y
X-Message-ID-Hash: PBV62W6PJZ4OEILCGRB5UDD2VRHATT7Y
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Just a test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBV62W6PJZ4OEILCGRB5UDD2VRHATT7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8677786670912754972=="

--===============8677786670912754972==
Content-Type: multipart/alternative; boundary="00000000000015dc2205f7683bb0"

--00000000000015dc2205f7683bb0
Content-Type: text/plain; charset="UTF-8"

true, but perhaps it is a good starting point for a "less formal", or
perhaps more lively USRP SIG. I have the same frustrations sometimes as
Marcus - not many people to talk to about new ideas, problems, etc.

On Mon, 20 Mar 2023 at 19:41, Haydn Nelson <haydn.nelson@ni.com> wrote:

> Test complete....
>
>
> Haydn Nelson
> Business Development Manager
> Radar, EW, & EOIR Test Solutions
> Aerospace and Defense
> +1-512-731-7251 |  ni.com
> IEEE Radar Conference 2023 Exhibits Co-Chair
>
>
> -----Original Message-----
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Monday, March 20, 2023 11:55 AM
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Just a test
>
> Am I still subscribed?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send
> an email to usrp-users-leave@lists.ettus.com
>
> INTERNAL - NI CONFIDENTIAL
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Kevin Williams

--00000000000015dc2205f7683bb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">true, but perhaps it is a good starting p=
oint for a &quot;less formal&quot;, or perhaps more lively USRP SIG. I have=
 the same frustrations sometimes as Marcus - not many people to talk to abo=
ut new ideas, problems, etc.<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 20 Mar 2023 at 19:41, Haydn N=
elson &lt;<a href=3D"mailto:haydn.nelson@ni.com">haydn.nelson@ni.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Test co=
mplete....<br>
<br>
<br>
Haydn Nelson<br>
Business Development Manager<br>
Radar, EW, &amp; EOIR Test Solutions<br>
Aerospace and Defense<br>
+1-512-731-7251 |=C2=A0 <a href=3D"http://ni.com" rel=3D"noreferrer" target=
=3D"_blank">ni.com</a><br>
IEEE Radar Conference 2023 Exhibits Co-Chair<br>
<br>
<br>
-----Original Message-----<br>
From: Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
Sent: Monday, March 20, 2023 11:55 AM<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] Just a test<br>
<br>
Am I still subscribed?<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a> To unsubscribe send an email=
 to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">u=
srp-users-leave@lists.ettus.com</a><br>
<br>
INTERNAL - NI CONFIDENTIAL<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Ke=
vin Williams</div>

--00000000000015dc2205f7683bb0--

--===============8677786670912754972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8677786670912754972==--
