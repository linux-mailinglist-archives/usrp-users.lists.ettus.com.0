Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CBF7432CE
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 04:41:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0F98383EC6
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 22:41:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688092878; bh=d2Pd93d6NMCWzbYNDSC0jsb6cZ0PhhjGIjJdOfpMC9I=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IR90DVCZc+p2zW67Gt7PhuwveEO+Ap7j0WOjYdC1AokYeb9zi3s3qj6uPRrdJAQGb
	 CPGGGIl2qkSOiPmLFNWz5Uf/aIN1lf//HUJgD2u21HjQE5KCVB7O20hqhrzvviZPV3
	 M5w4KeaHBSZ2LjXnCdRIC/MBFAPGkL7rHEzz3bKPrd1gm5Fr0kTnOo14UPZLHbRkdW
	 a7AIzJO73Q5VuxBIXYc0tBXFg33NI013FjrUAYuvDkMg6NMz0UJUYgihzCCRqviyVS
	 WxZiuE8Ar418JCTKXpETUNfvbvnNzP85/96O0/pzx2L2oVA8htZDimzwgPaVjTPzEk
	 81qLBSC27X5JA==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 0AE1738367B
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 22:40:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OnKNP1Ih";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-76731802203so124317285a.3
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 19:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688092825; x=1690684825;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V7a7KUzr/GqHfQfgp/sWcJJop8gfyXVezEHKZcdg8Z0=;
        b=OnKNP1IhNekTrSCwbgHcY54COKpl96Sw7yBs+wneYShF+r2t7D2RIejiQoZ7cwRppF
         LEd24cG7ODKyPeK8cpUgoVoaxps2jtSFNZ+IsUfrVD+loDzNwXkt6W9Z/uctURj3gKFR
         ESy2B1ZYeeRxta/BOyCmVcakO0DkIRfUyw29/u9gJYgXyZxJSTki0QD8PIVrLSAz9hr5
         Z4mnGqFI3TfVahAFEGjEIx9A0gHoCcJRzHRd7dR6L2sYe45DJrlDpGaldFNAe158bGWr
         Ib8xvpFaq5ubW1jrS3nJOr3+N163rw8/viTSWGEWjigPmsUaRrjYWI/eRtRmaz+ijn/U
         gBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688092825; x=1690684825;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7a7KUzr/GqHfQfgp/sWcJJop8gfyXVezEHKZcdg8Z0=;
        b=DJZGG6ZWbiPyrZWtxPzIOXBXCEIyRYVg0W3Qu/K11U59puL0XtomrGO7+KZIHuuvVZ
         9CpAxLMFraw3esWa0p90Ok07JWkuEzbPx4ixpEFjbjE+ZkdU7UPs/2G9vpdwIYDL1bVO
         8E7lbDaFH7tmY8ZXr2EhVOW7rgrZY4+dTv9SlR/XEa8YvUx/v6qFgYJVP2PM/8TLCzJb
         6wOuHfldJ/f8JaN+gTUfB6H3xo6ayWyIfXfyXyS1z37uxtBJfmm0RnyYJzVlCgUEaMz3
         EZCj2dOys5T2aiPUrIb03T7vO0R63eJ/mSv/tzfq52eMPWUbF0Bsf/358Xsb4HlptZ+I
         rmPw==
X-Gm-Message-State: ABy/qLYp5FdBDFe2N1duT6A08wte0r1GTF/fLI9Q1Xt9c2KN4vo6387C
	Vejaby2D98smu718wRVxvBw=
X-Google-Smtp-Source: APBJJlGablRFD/W880dNs7IeCuT6jIrTfvbA3rlhtvL01ZWc2uWssTk/0kZm9/buVRSfAyKKITRHQg==
X-Received: by 2002:a05:620a:24d:b0:767:4538:d756 with SMTP id q13-20020a05620a024d00b007674538d756mr835362qkn.4.1688092825236;
        Thu, 29 Jun 2023 19:40:25 -0700 (PDT)
Received: from smtpclient.apple (pool-173-72-147-192.clppva.fios.verizon.net. [173.72.147.192])
        by smtp.gmail.com with ESMTPSA id i11-20020a05620a150b00b00761ff1e23e1sm3505162qkk.109.2023.06.29.19.40.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 19:40:24 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Jun 2023 22:40:14 -0400
Message-Id: <A320BA15-182E-45EE-8B66-156456D9A5BC@gmail.com>
References: <CAEXYVK7vjfMwF_kEJT+DLDhwbuoqvxBkkrC9OPh-iHjufaWxWA@mail.gmail.com>
In-Reply-To: <CAEXYVK7vjfMwF_kEJT+DLDhwbuoqvxBkkrC9OPh-iHjufaWxWA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
X-Mailer: iPhone Mail (20F75)
Message-ID-Hash: LSBXCLSMJHXKUPCIVSS5DDPESPFACUGM
X-Message-ID-Hash: LSBXCLSMJHXKUPCIVSS5DDPESPFACUGM
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSBXCLSMJHXKUPCIVSS5DDPESPFACUGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3291228577377181142=="


--===============3291228577377181142==
Content-Type: multipart/alternative; boundary=Apple-Mail-397B03D9-72E0-4CF5-86F6-E33F15288804
Content-Transfer-Encoding: 7bit


--Apple-Mail-397B03D9-72E0-4CF5-86F6-E33F15288804
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I had used a build script to install some o=
ther software that was supposed to use conda. Pretty sure that went sideways=
 cause my PYTHONPATH included python3.9, which isn=E2=80=99t anywhere on my s=
ystem.<div>Most likely a layer 0 issue :)<br><br><div dir=3D"ltr">&lt;<span c=
lass=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 26,=
 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.230469=
); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end tran=
smission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On J=
un 29, 2023, at 19:31, Brian Padalino &lt;bpadalino@gmail.com&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<=
div dir=3D"ltr">Strange - was it split between two different UHD installatio=
ns possibly?<div><br></div><div>Is the main UHD installation in one place wh=
ereas the image_builder was placed somewhere else?</div><div><br></div><div>=
I install to alternative locations so&nbsp;I don't install to /usr, so could=
 there be a UHD install issue where it installs to the system in two differe=
nt locations?</div><div><br></div><div>Brian</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 29, 2023 at 5:1=
7=E2=80=AFPM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">mau=
d.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Thanks Brian, figured it out. Was a P=
YTHONPATH issue. For some reason my img_builder was in /usr/local/lib/python=
3.10/site-packages. <br></div><div>Seems to be working now.</div><div><br></=
div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Jun 29, 2023 at 2:41=E2=80=AFPM Brian Padalino &lt=
;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">UHD seems to want to install to local/lib/python3.10-dist-pa=
ckages/uhd - do you have that as part of your installation?<div><br></div><d=
iv>I have an imgbuilder directory and image_builder.py inside there.</div><d=
iv><br></div><div>You have an issue with, specifically, from uhd.imgbuilder i=
mport image_builder?</div><div><br></div><div>Brian</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 29, 2023=
 at 2:34=E2=80=AFPM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.c=
om" target=3D"_blank">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Yea, I=E2=80=99m an intermittent R=
FNoC user.&nbsp; no issues building UHD, just wondering if the image builder=
 module isn=E2=80=99t getting included in the source build. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Jun 29, 2023, at 11:51, Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<=
br>
&gt; <br>
&gt; =EF=BB=BFOn 29/06/2023 11:44, <a href=3D"mailto:jmaloyan@umass.edu" tar=
get=3D"_blank">jmaloyan@umass.edu</a> wrote:<br>
&gt;&gt; <br>
&gt;&gt; In my experience, getting UHD to run on Ubuntu 22 is a huge hassle.=
 If you can, I recommend downgrading to 20.04(but no lower) and it should in=
stall fairly easily.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; I built UHD 4.4.0.0 on 22.04 just the other night, and installed it alo=
ngside the version that comes with Ubuntu 22.04<br>
&gt;&nbsp; &nbsp;(UHD 4.1.0.5).&nbsp; I haven't tested it extensively (becau=
se the issue was about building it).<br>
&gt; <br>
&gt; Now, I'm not an RFNOC guy, so I didn't exercise any of that stuff...<br=
>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-397B03D9-72E0-4CF5-86F6-E33F15288804--

--===============3291228577377181142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3291228577377181142==--
