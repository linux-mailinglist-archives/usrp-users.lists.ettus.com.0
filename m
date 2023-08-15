Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E08E77C701
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 07:20:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 813B038498E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 01:20:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692076830; bh=IoaLahRyb1WkxnPVMNpAYw2aTqK0pjgO74S92p3z5a8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ipl8J2hof9qzNgYVu0dYsjKker7JUvoM7sPkwyQpDEzXodnAzXf0cWBpTmNx90IXw
	 EaBnxXX5IbUmQDNIpwYNUnPLkHSp7ayPmNY+TWte6yKn3XcjfQGizMl16PlBNvl1YW
	 HIxxvscg0UwZ4gIy5TyhyNBN9r6PaHYIbQdc2eSWT3FlCaaVR9Er5yopuPFmt7g10I
	 h43DcFS+MM0UQkl5GQ3Gb0saS1nIa/9hdung9DpF/CEdWB41MXKRa5JdD2l91tXYag
	 o0c6wvLWSjhPM/48upyKULpAYSBpjB2HTy9rd8XTSMUt1ymQIhEPv2DC32MeEzyDV7
	 PuN2l1KA3i8Vg==
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E08FC383FE3
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 01:19:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a5PMYu/W";
	dkim-atps=neutral
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-4881ac152b5so64079e0c.2
        for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 22:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692076799; x=1692681599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=923cx3yzbYI2kF5Du79LTM1OEdYaR2dS9I2qWgCjgO0=;
        b=a5PMYu/WLiacA3jyEmtq2DKqvE4+Gr12uGXME58whkccPHv1Ke1P/Hw5WvJdwFKOsf
         DVfMpsONJ9UfMJ2x4FPhFdK7HoVyLFXdFrzmCgoc534NfnR8WoqW+H0YeZJ097rjg11t
         A2wbFVBsx4iblw26xsrmcGa3TI30vo2n1VF78j2kDrKwDiy4sSdlz6izF8ayC/RKOK6q
         t/Iw5vpJZ1Z8Kdfd0hDD1UjLpzgGvnPjrJxvnvGFw9LauWjsph+fbtCDBynYN27cJ2aE
         lQeRlsnZmelWzoHXNyzP3q60WNvizBPHnJeCKkUcdSLt5Xhq8llJzrtPeWE4+L45n0NR
         Pskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692076799; x=1692681599;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=923cx3yzbYI2kF5Du79LTM1OEdYaR2dS9I2qWgCjgO0=;
        b=b2rNId0btu+m0FKAhCzS3oAs0S5PjjBfDdYXL+2I5+4Y0RPYh9CgNd6lIcilmj2l9r
         LOXpdrLggLCodTDJMd0lHjRLKRXBHeHXW47YMUDnL6GmozCYqSq5IHjYc8biL++9tntS
         Qbox4mcCgZhLGAZUKBmVYDTn4PNCwx3pG4aoziOfmvis4YQUeq9ErXhYTXZ2aG5FH920
         H0FoFV6ctuqFHDLnqrM0pfucCWr50B9bNfExdvgNPM9uokVBs2htwoM1C8gUxLXLpK31
         eGurE5+i1lDM4AUJOJpc75RgqGudhKnZEeTEAntzhrIGQYIzxsQkmFzMW90dHlN+0OAR
         /p5g==
X-Gm-Message-State: AOJu0YzHHjotHEABKimeFMKMaa6gBL9XHG8mVVvwfsKATaDtsaK6A2QH
	lZyp0jof/MNVCs2BRXI3xMnNeCVxHMrvUwuDjvw=
X-Google-Smtp-Source: AGHT+IHFz7jjhtxPc509+unfdflcmnyMiY+sl4CNH8tlu8/h42zbHQG5+W29o/INImgQEwmX805MQgWfoUlYQTGxzgE=
X-Received: by 2002:a1f:c197:0:b0:487:dd20:4110 with SMTP id
 r145-20020a1fc197000000b00487dd204110mr9338310vkf.3.1692076797690; Mon, 14
 Aug 2023 22:19:57 -0700 (PDT)
MIME-Version: 1.0
References: <F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY@lists.ettus.com>
In-Reply-To: <F3ACqH5XUkCsiJBijfNp67N3noRZBoHXYtNXs819iY@lists.ettus.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 15 Aug 2023 09:49:46 +0430
Message-ID: <CAA=S3PuhEdtBEzao8+tHXOwEUGuydFMhbgbYFef+rL30rU9=Kw@mail.gmail.com>
To: edenmclaughlin123@gmail.com
Message-ID-Hash: NQFZR7EBE2TVMFGNTQRTYUEFPWDRHJVO
X-Message-ID-Hash: NQFZR7EBE2TVMFGNTQRTYUEFPWDRHJVO
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can add some verilog dir file to rfnoc block make file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQFZR7EBE2TVMFGNTQRTYUEFPWDRHJVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5227780382572801554=="

--===============5227780382572801554==
Content-Type: multipart/alternative; boundary="0000000000007589b50602ef54ad"

--0000000000007589b50602ef54ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But sine_tone module is not ip core there is some build-in define module
that defines in lib folder USRP in this path
uhd-4.1.0.5/fpga/usrp3/lib/rfnoc
sine_tone is used in rfnoc_block_siggen  block but for my custom block I
faced with

RROR: [VRFC 10-2063] Module <sine_tone> not found while processing module
instance <sine_tone_i> [/home/sp/rfnoc-test/rfnoc
/fpga/rfnoc_block_gain/correlate.v:132]
ERROR: [VRFC 10-2063] Module <rng> not found while processing module
instance <rng_i> [/home/sp/rfnoc-test/rfnoc
/fpga/rfnoc_block_gain/correlate.v:164]

How am I adding non-ip core to my custom module.....  I added a make
file and make srcs files. For the building, I had not problem But
with the simulation I have errors .....
thanks in advance

On Sat, Aug 12, 2023 at 2:29=E2=80=AFPM <edenmclaughlin123@gmail.com> wrote=
:

> Greetings,
>
> I find the easiest way to include components to be by mimicing the
> rfnoc-example found under the uhd/host/examples/rfnoc-example.
>
> I would recommend you to wrap your ip into a module
> <https://youtu.be/uhEsG4i9dvc>, instantiate that module wherever you
> please and create your makefile.inc (use the file as follows as a templat=
e)
> like in here
> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-exa=
mple/fpga/ip/cmplx_mul/cmplx_mul.xci>,
> and add references to the building tool file (such as cmakelist.txt)
> whatever you are building the project with.
>
> Regards,
>
> Eden.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007589b50602ef54ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But sine_tone module is not ip core there is some build-in=
 define module that defines in lib folder USRP in this path=C2=A0 uhd-4.1.0=
.5/fpga/usrp3/lib/rfnoc<div>sine_tone is used in=C2=A0rfnoc_block_siggen=C2=
=A0 block but for my custom block I faced with=C2=A0</div><div><br></div><d=
iv>RROR: [VRFC 10-2063] Module &lt;sine_tone&gt; not found while processing=
 module instance &lt;sine_tone_i&gt; [/home/sp/<span class=3D"gmail-il">rfn=
oc</span>-test/<span class=3D"gmail-il">rfnoc</span>/fpga/rfnoc_block_gain/=
correlate.v:132]<br>ERROR: [VRFC 10-2063] Module &lt;rng&gt; not found whil=
e processing module instance &lt;rng_i&gt; [/home/sp/<span class=3D"gmail-i=
l">rfnoc</span>-test/<span class=3D"gmail-il">rfnoc</span>/fpga/rfnoc_block=
_gain/correlate.v:164]<br></div><div><br></div><div>How am I adding non-ip =
core to my custom module.....=C2=A0 I added=C2=A0a=C2=A0make file=C2=A0and =
make srcs files. For the=C2=A0building, I had not problem But with=C2=A0the=
=C2=A0simulation I have errors .....</div><div>thanks in advance</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sa=
t, Aug 12, 2023 at 2:29=E2=80=AFPM &lt;<a href=3D"mailto:edenmclaughlin123@=
gmail.com">edenmclaughlin123@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><p>Greetings,<br><br></p><p>I find th=
e easiest way to include components to be by mimicing the rfnoc-example fou=
nd under the uhd/host/examples/rfnoc-example.</p><p>I would recommend you t=
o wrap your ip into a <a href=3D"https://youtu.be/uhEsG4i9dvc" title=3D"htt=
ps://youtu.be/uhEsG4i9dvc" target=3D"_blank">module</a>, instantiate that m=
odule wherever you please and create your makefile.inc (use the file as fol=
lows as a template) like in <a href=3D"https://github.com/EttusResearch/uhd=
/blob/master/host/examples/rfnoc-example/fpga/ip/cmplx_mul/cmplx_mul.xci" t=
itle=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rfno=
c-example/fpga/ip/cmplx_mul/cmplx_mul.xci" target=3D"_blank">here</a>, and =
add references to the building tool file (such as cmakelist.txt) whatever y=
ou are building the project with.</p><p>Regards,</p><p>Eden.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007589b50602ef54ad--

--===============5227780382572801554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5227780382572801554==--
