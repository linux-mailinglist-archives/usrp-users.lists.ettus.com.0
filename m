Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F49B0543E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 10:13:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0C9838609F
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 04:13:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752567204; bh=O56WWEyBvYdbntfJHiaZsX2fNKnZfHtQU6wNSjVtpRM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=n18LvE07ZN9jHoqYcIABPVMaCxo7Y7lp/XCoYVZA4Rvbje0dfQL8Y6jIbLIGPMEho
	 x8Y7g/jaQXBdsAqZoAxUZ0CgsdINnkc+7nVXMUGRrzVlHB9y2bwNQB8y44ImjcVRGf
	 1cMS0FZYM3tBxUs8dNOu2Fy51IERzxWfH4J77vtkauUeQGsFwq6PMUNYX15U3xOEFC
	 52hZUPwfrvZntoKoGFzreaLo1Ci++YKDKty6pIaz8S9SV8AwsFI9rgZJRA9pM4+1xx
	 iOJam15wscsdtQJeZY5RCt2WFbQsKwSrIG8aR3eUoTwj2KEwMgR71Jtt5a/S4ZwTcd
	 ziAGmLvMfmvLg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A6ED385FF2
	for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 04:13:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="pQJXECZI";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae0df6f5758so897251466b.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 01:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752567188; x=1753171988; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sDZnrfcNijsZznvOvO8CiyMQKzc/TH3OMNvnd+NJCJY=;
        b=pQJXECZI3P3r7A4XNWtAWQ6quCP3WNkIt4hkIt/BIBkyhUMpE1iFnxbVfHBH9CN4m6
         FGbutf6HL9syYFfdqFlzsE74VWyG4cVhBHfhAnQ7RUG8VR1qUt//I29HdfA8TfgQDBgj
         ItARah19bQmWF9VQRyrkLoHGk+C1g3OY9BIT7JClyHs9qNDo34D8yOFM41Bw488HBvJn
         UDNZ0gapq2NgxRe1Yr3lZHyRQ5WWzJRBvRiTGnL+UMjaigdaTGkWz8PzB5SuXnHBODo5
         9nJttcdC2lGg4wzFuSIPGiRY7vFcC1GYEVEMsOiTVXDyd0F71gS4QcQAqgR+pkoDM+Xm
         Nksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752567188; x=1753171988;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sDZnrfcNijsZznvOvO8CiyMQKzc/TH3OMNvnd+NJCJY=;
        b=XbUfHrh2gkqNmamug5DvfJDQpDg9a08w3MZWLsEE3qM/ga6PSo9fwoqYDI80+xXBb1
         aewMc/1SdQb0HPZpmjjvCf4t5cw2G0ytgQ3fvq5H3t97x96cHuuoriBkbf6FDKDCV6fI
         aHdvxq/ghSYi4IwaDaEaoVWNGceFHZRIHUFRmtLKwPHoJtHVcHEy539fvspQl1dmKu6Y
         qZUbCpSlYNXJ6heJGZfLRCEc6FL9rr3aPgHdVUMINNOezmNoabpYLNwdgo7fMVm0yn9A
         ZLQBv1HqL9y6uOpbSykBZuA3po1lPtl47lksTZogbC5ztEoNFZietaA5jqb2OGOQGLt9
         WETQ==
X-Gm-Message-State: AOJu0YxEtECp6350kJtVpfQg59vIi/U44C00cR/iJFJvzGpfMKQ27NFQ
	t2C3WJquwabFtoThbnGg3zF30/mvsoFnI1MCOvvlM+zIzi1RSaQZXtgLwv69s/YTL7+AdPuobru
	Yy6WbaDKDGNRz8nScEkXgHBUo4tGwKibPTINNCE1KYDGNR79epAKU4kkDXg==
X-Gm-Gg: ASbGncuEjl7LS7zHBmZWJSjw7o715PtxxfQ7teg9ry2VllHXIg9fbYiNTaWwdu7Cgl3
	q7tWy5yPd0oRuASwbdfOvhU4gPIaGuvnT56Ngi7x+4Z8FLJdTOfpDaBWZJZGDpnfyhrDzi2at/V
	NleF381wl7sTmoewwrk3vYqkMIpUojNQ53iPSjZVZnI21U0ObzLyp5BBHdOYPH3umNW3/A/fFj1
	JDPnQ==
X-Google-Smtp-Source: AGHT+IGah1OZpSyHtoH2u4hPXyqHoPg4eLEWWUO9xSrfX2Ch3A3KXL+zOKEUfXTn2GkenVRw8GBSvcBhyMYMC8EfyNw=
X-Received: by 2002:a17:907:3d52:b0:ae0:686a:870f with SMTP id
 a640c23a62f3a-ae6fbfa635emr1668452966b.15.1752567187491; Tue, 15 Jul 2025
 01:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAE=q3UOip8_jiUiozNZ35TcgL3MmnJxVjzAtFn01442OWUU7rA@mail.gmail.com>
In-Reply-To: <CAE=q3UOip8_jiUiozNZ35TcgL3MmnJxVjzAtFn01442OWUU7rA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 15 Jul 2025 10:12:56 +0200
X-Gm-Features: Ac12FXwiuxOxZl5KYBkivoQ5HDEuSuxyim99WKi9riJJRC9MNeovTjJ1zxZkJ_8
Message-ID: <CAFOi1A4fU+cS4aiOnhJOFN7YJGvjaNEra6_Z5CFhVLc0hoLdUQ@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: JMQFFFSMU5A436TIFNPIM6OFII5EUI47
X-Message-ID-Hash: JMQFFFSMU5A436TIFNPIM6OFII5EUI47
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OOT Python Bindings in UHD-4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMQFFFSMU5A436TIFNPIM6OFII5EUI47/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6527042225447625663=="

--===============6527042225447625663==
Content-Type: multipart/alternative; boundary="000000000000a811160639f3582d"

--000000000000a811160639f3582d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey David,

yes, we recommend you use the latest version of `rfnoc-gain` as a reference
for your Python bindings. Note that gr-ettus is also no longer required.

Also note that rfnoc-example was renamed to rfnoc-gain, and we continue to
provide incremental improvements and bugfixes. Therefore, if you're just
looking at code as a reference, I recommend looking at the version on
master branch:
https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-gain/p=
ython

--M

On Tue, Jul 15, 2025 at 12:48=E2=80=AFAM David <vitishlsfan21@gmail.com> wr=
ote:

> Hello all,
>
> I want to use my C++ RFNoC block controller in python. I am on UHD4.6 wit=
h
> Ubuntu 22.04. My goal is being able to use my setters and getters for the
> block user registers from C++ in python.
>
> I see that in the UHD-4.7 release the rfnoc-example module started to
> include the python bindings for OOT modules. Can I use that as a referenc=
e
> point for UHD-4.6, or is there another method that is preferred?
>
> I am not using GNURadio, besides having gr-ettus and GNR installed, and
> would prefer to stay away from those python libaries if possible.
>
> Thanks,
>
> David
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a811160639f3582d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey David,</div><div><br></div><div>yes, we recommend=
 you use the latest version of `rfnoc-gain` as a reference for your Python =
bindings. Note that gr-ettus is also no longer required.</div><div><br></di=
v><div>Also note that rfnoc-example was renamed to rfnoc-gain, and we conti=
nue to provide incremental improvements and bugfixes. Therefore, if you&#39=
;re just looking at code as a reference, I recommend looking at the version=
 on master branch:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/tre=
e/master/host/examples/rfnoc-gain/python">https://github.com/EttusResearch/=
uhd/tree/master/host/examples/rfnoc-gain/python</a></div><div><br></div><di=
v>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 15, 2025 at 12:48=E2=80=AFAM D=
avid &lt;<a href=3D"mailto:vitishlsfan21@gmail.com">vitishlsfan21@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I want to use my =
C++ RFNoC block controller in python. I am on UHD4.6 with Ubuntu 22.04. My =
goal is being able to use my setters and getters for the block user registe=
rs from C++ in python.</div><div><br></div><div>I see that in the UHD-4.7 r=
elease the rfnoc-example module started to include the python bindings for =
OOT modules. Can I use that as a reference point for UHD-4.6, or is there a=
nother method that is preferred?</div><div><br></div><div>I am not using GN=
URadio, besides having gr-ettus and GNR installed, and would prefer to stay=
 away from those python libaries if possible.</div><div><br></div><div>Than=
ks,</div><div><br></div><div>David</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a811160639f3582d--

--===============6527042225447625663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6527042225447625663==--
