Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 698BF7DE5BD
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 19:05:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B210385A17
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 14:05:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698861928; bh=akqIC0u7gUZ9W8GBV7veIBkZjEMz9Dsyao4H2pf5JIY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PA8nJNTF8ncleUsT0nfkv6nWNL6vBRs/LhZ82/3LGfTdTythf/3QEYsWujoS108OZ
	 cRttjs73fnxO/E1IkQ6NbLL6Yk/Jpo3BRT7rJW/Nin5d/DOyrf9a2o3XYb0nnlHo8u
	 uxcoN9p00TsdATUMyeuthly2bUICj9QgUstTm4yGUppxtJNu9/8RhauWdL9kL5Ae23
	 eB4JdHoPZIIW42VUdLf+Fa7ugSbrCYAkp7vcFP6G8wk3RSMkdWXzJjVP2+RYFMSNcP
	 YDpsIgNMRZilG+H+DmH7q60hH7A8QyJomw1YzlS+VCnajAMRN75X7o8prodguwsZsl
	 Bal+HbwbWPc8w==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A2C9F3858B7
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 14:04:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="G4qleP/q";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-d9ace5370a0so37981276.0
        for <usrp-users@lists.ettus.com>; Wed, 01 Nov 2023 11:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1698861873; x=1699466673; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=57vcS8F+DgB88AE32WQ4Cnm4QUkoXnqSRbaaHYSyeWs=;
        b=G4qleP/qNOKwTiboPOY/O9FYtA0rqoF+WakHFnSepvIrXPJaNueq/jwtR3aQUYcwOi
         P1uppGflr1UUD2/HGX/QpvTYMr2Kmk2hoDFfEy9fLVpJSbif9VaGVBBsj/TOvTOscDEP
         +tHuI+zmYlRkjkxPahnxGsuFomajNGLr7C4tc/Y9gAqKKKZntKdy/jd7/HJZtJEcN2Ep
         539CIkIlXhD0iga1F/KbwYHv6+X95BV17kz5qcxYCP0cOG4O/hcSIacaLXMUrW5Z61jl
         05JJH4upDlcPokfh/LqI8GimIwNzf+quK904ad9Ox5XKjfiV11I07jsVMVzXKfDTMsuV
         7KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698861873; x=1699466673;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=57vcS8F+DgB88AE32WQ4Cnm4QUkoXnqSRbaaHYSyeWs=;
        b=Yp6T6q/AQuXEHA9kv36FG5gzxdUY1AyQrrLLZNB6EqS0OHiB/POKVd6VN6+ipcamcZ
         48aMJQ46kgNjEzEvO49TJfnOWsmChP+3rqHMkTRrYjIQie88FuGGTQovxKYTLPE284Dx
         Hc2OGNC/A3a6of/R5xKnxxDo1gMiO/1xWidaJQkz+VnPfs286EEQ+uhZPobkVy3SrPu4
         VsQjcEs1at4L4Vb2eAx1jqjHaxlavFN36DfBs9FU4e8zrz0q6jlW4pDZiDeNIhFa+7gD
         bYDe9cqC8ehL3mT3RzBVIXyPVV/9NOKgNf0ZTRvQPeEQKB113B+HMjYQqehIoCyxJvX9
         kAIw==
X-Gm-Message-State: AOJu0YxUCRm0wd15NRATuL7gm0ZVa/A8rReqqbSL66ZaS07sfS+F5fmg
	WyiXzcrNVwsOHPOiD+pGv0tqSqIz1ER21GI/09hSKA==
X-Google-Smtp-Source: AGHT+IEh2Zc2UgWcKf8ni9+TiUHblWl4ONtLXcRiUKrO3u+yGX7Jb6Y6oWN3O9zT0yvRMnLeoScdT/m0ShiOOqk/iPw=
X-Received: by 2002:a25:874a:0:b0:da0:48e0:ca with SMTP id e10-20020a25874a000000b00da048e000camr13986673ybn.29.1698861872988;
 Wed, 01 Nov 2023 11:04:32 -0700 (PDT)
MIME-Version: 1.0
From: Bill Dower <bill@chaosinc.com>
Date: Wed, 1 Nov 2023 11:04:22 -0700
Message-ID: <CAPiksU=3anXULG=CWy-D9ELrYNyxArWzQmWbZyH67k0-GcOLnw@mail.gmail.com>
To: Michael Dickens <michael.dickens@ni.com>, usrp-users@lists.ettus.com,
	Bo Marr <bo@chaosinc.com>, Daniel Thompson <daniel@chaosinc.com>,
	Michael Toussaint <mtoussaint@chaosinc.com>, Mena Ghebranious <mena@chaosinc.com>
Message-ID-Hash: DM2RS4RCLHNZQEVK2HBVWPCKTOFDQC2L
X-Message-ID-Hash: DM2RS4RCLHNZQEVK2HBVWPCKTOFDQC2L
X-MailFrom: bill@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 and N321 IQ calibrations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DM2RS4RCLHNZQEVK2HBVWPCKTOFDQC2L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6766467869527234031=="

--===============6766467869527234031==
Content-Type: multipart/alternative; boundary="000000000000765d3306091b1a8d"

--000000000000765d3306091b1a8d
Content-Type: text/plain; charset="UTF-8"

Hi Dr. Dickens,

Reviewing the IQ calibration procedures, linked below, I came across this
section which generated a few questions which are below the copy and pasted
sections.

https://files.ettus.com/manual/page_calibration.html
---Frontend Corrections

The calibrations for IQ imbalance and DC offset compensation rely on
frontend correction logic that is located in the FPGA.

Note that USRP E310, E320, N320, and B200-Series use a dedicated RFIC which
does its own calibration. For those, any calibrations are very
device-specific and are not covered in this section.
---

First I would assume this statement is true for the N321 if it is true for
the N320.  Is that correct?  Or is this incorrectly stated about the N320
because the schematic does not appear to have an RFIC?

If the first question is true for the N320 and N321, then:

Where do I find more information about the N320 and N321's dedicated RFIC
IQ calibrations and DC offset?

If I ran the calibrations mentioned in the linked page for the N320 and
N321 what would be the effect on the SDR if they were applied?  Would these
SDR's ignore the calibration file?

Thank you,

Bill

--000000000000765d3306091b1a8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dr. Dickens,<br><br>Reviewing the=C2=A0IQ calibration p=
rocedures, linked below, I came across this section which generated a few q=
uestions which are below the copy and pasted sections.=C2=A0<div><br></div>=
<div><a href=3D"https://files.ettus.com/manual/page_calibration.html">https=
://files.ettus.com/manual/page_calibration.html</a></div><div><h1 style=3D"=
margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans-serif">---</h1><=
h1 style=3D"margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans-seri=
f">Frontend Corrections</h1><p style=3D"font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-variant-alternates:normal;font-kerning:auto;fo=
nt-feature-settings:normal;font-stretch:normal;font-size:14px;line-height:2=
2px;font-family:Roboto,sans-serif;color:rgb(0,0,0)">The calibrations for IQ=
 imbalance and DC offset compensation rely on frontend correction logic tha=
t is located in the FPGA.</p><p style=3D"font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-variant-alternates:normal;font-kerning:auto;f=
ont-feature-settings:normal;font-stretch:normal;font-size:14px;line-height:=
22px;font-family:Roboto,sans-serif;color:rgb(0,0,0)">Note that USRP E310, E=
320, N320, and B200-Series use a dedicated RFIC which does its own calibrat=
ion. For those, any calibrations are very device-specific and are not cover=
ed in this section.</p><h1 style=3D"margin-right:15px;color:rgb(0,0,0);font=
-family:Roboto,sans-serif">---</h1><div><br></div><div>First I would assume=
 this statement is true for the N321 if it is true for the N320.=C2=A0 Is t=
hat correct?=C2=A0 Or is this incorrectly stated about the N320 because the=
 schematic does not appear to have an RFIC?</div><div><br></div><div>If the=
 first question is true for the N320 and N321, then:</div><div><br></div><d=
iv>Where do I find more information about the N320 and N321&#39;s dedicated=
 RFIC IQ calibrations and DC offset?</div><div><br></div><div>If I ran the =
calibrations mentioned in the linked page for the N320 and N321 what would =
be the effect on the SDR if they were applied?=C2=A0 Would these SDR&#39;s =
ignore the calibration file?</div><div><br></div><div>Thank=C2=A0you,<br><b=
r>Bill</div><p style=3D"font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;font-kerning:auto;font-feature-setti=
ngs:normal;font-stretch:normal;font-size:14px;line-height:22px;font-family:=
Roboto,sans-serif;color:rgb(0,0,0)"><br></p></div></div>

--000000000000765d3306091b1a8d--

--===============6766467869527234031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6766467869527234031==--
