Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4648953FD1
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2024 04:46:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3A60385067
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 22:46:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723776403; bh=EY5QveT83VKRgY+AEKNxbt5Q/+kDQG1z/P0DakWyiqY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IiMP+9mDSg9Uo6YpRgD//NswnvpPVnIDBxm/r1YToBXTbFtvXLcrXpjdmSzEKzXRE
	 7N+vxt1lDscT+oHvlF80vtbvokiXTLSD7VVuzrqUqhljGbVaTIZlEIXrBYTySxj8Ol
	 t2jQPetqlGvEw2ikkm/Zh3wtfOBcWxjEnKkmB8MnsatktRz5EgIuDw+cMHw1OgLsgY
	 dR7lbSJERh7QQg61HHySx2zOx5O3E7GAnCGadQ3zRFgGzPj0QeQ8i20qNQGQLUsPWF
	 Fu0kwWC+/Sv6s9NYCMjqaGaOOtPFfueoMNcAeqRivKTpLU5d302CsF13+QTl/Md0kL
	 +wZRIPx8xlZmw==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B3F0D383B31
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 22:46:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2RD41QPY";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a7a9cf7d3f3so202030566b.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 19:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1723776361; x=1724381161; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SLZ7i3G1WjLYBW/4SQRyqI7//IjSRFSkkfUkGFBvHbo=;
        b=2RD41QPYtEZY2m4TS+YUsgu8q2jWKOj5grTVG4u3slaDOV2efvyBZ12C4BShS8E5iW
         0n3ShbHtMhGWcpavPpcyhhg5/NTpaHO5Rfuwp2Hp+H1VxK6fz9Xy3kB/mCzAIR1RfYDO
         FdWVHI8vTCVvJYf1cR1qR6yU7iFOS6cY6qmgiQ+tXb1stQIvSIKmWzl6LptQxCHDrbNE
         9o8yRB+8xuvPVAeAOcBWEJkv1Jn2LPklnbIo/yZBOjSA2X165zoH95c1Xiy9exxbVBCZ
         Svf+pJ1quQy9HRggk4lTXDFJQiKxfRY1fYpFvUSSjrzSVzEt9zwV8hmDCP4lypISVRgy
         Whkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723776361; x=1724381161;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SLZ7i3G1WjLYBW/4SQRyqI7//IjSRFSkkfUkGFBvHbo=;
        b=fQ7ax8z45a0HIxuOAVYc0WhBSlIYwbI43DuTfud7Zwu3O1spUhz1acaehtb7m6ePW5
         jfRhQVOlWdC1tN/z7omG1w618o/ZZPRLQ4VxZi4EHQq7RVdg/2NSyvnKTmIQDscks82+
         CnCQqmMdCEMbEYVU564sN88RHV8PAKhC+CP08qfKC18fcU6MENik5GSzBMT6LUqem8aq
         nmozxghA3dh0INxLNBZHFamAgmvF950Po9TvRom8ZeJwZhLztWa9lCN4dJVzvc4lwMxX
         8WzVOSgLk/3I7lqhQl4LvBBPWR50kwO9SKi0KFSUZ7NLkNsCUq1wqye2o2wpBvcHPaCP
         DJMQ==
X-Gm-Message-State: AOJu0Yw1bjrOzlO3ILM2XdOdD6p3wh2Vr2CyMtbF/9m9NJFvMMtU/PPo
	U4ex+6omnFId+o9BPeLm5ibtagtYPhAN8LWE+u3C0tLusu4JwyCY7egyYukoeZQybMo6iuSuKF/
	QRI6FksQDUEsn1x9FWKoIdXfoplAtxhG3lst1CBKY
X-Google-Smtp-Source: AGHT+IGcSMUQAHwJ4CZaP70ygJuAxErVI0GU66Y65R00TZJP1HKwCN6VM6pnrWeVnKCpTchQaRBE4u929jUDZc9MdrQ=
X-Received: by 2002:a17:907:9726:b0:a7a:9d1e:3b25 with SMTP id
 a640c23a62f3a-a8392953c48mr92090666b.30.1723776361126; Thu, 15 Aug 2024
 19:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR05MB7768BDFDB65F74626766C36CD1872@PH0PR05MB7768.namprd05.prod.outlook.com>
In-Reply-To: <PH0PR05MB7768BDFDB65F74626766C36CD1872@PH0PR05MB7768.namprd05.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 15 Aug 2024 21:45:45 -0500
Message-ID: <CAFche=heZcLrygtvYLEBfYbJtQbUiYrgSWu_6yMBU9K=_9j+CQ@mail.gmail.com>
To: "Sathish, Aditya" <saditya@vt.edu>
Message-ID-Hash: 4TG6MIOMPMUC5WSNBWLAUBXJWT4JND7U
X-Message-ID-Hash: 4TG6MIOMPMUC5WSNBWLAUBXJWT4JND7U
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SPP, Burst Transmission and RFNoC AXI Data Signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4TG6MIOMPMUC5WSNBWLAUBXJWT4JND7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4614326720297436797=="

--===============4614326720297436797==
Content-Type: multipart/alternative; boundary="000000000000ad70bc061fc3f56c"

--000000000000ad70bc061fc3f56c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Aditya,

Each CHDR packet will be given to the block as an AXI packet, so TLAST
asserts every S samples. At the end of a burst, the EOB flag in the header
of the CHDR packet is asserted to indicate it's the last packet of the
burst.

Wade

On Tue, Aug 13, 2024 at 8:08=E2=80=AFPM Sathish, Aditya <saditya@vt.edu> wr=
ote:

> Hi,
>
>
>
> I have setup an application that is constantly reading a Tx FIFO and
> sending burst transmissions with a SPP of *S* samples per packet. I want
> to modify my incoming signals in my RFNoC block, but I am having a hard
> time understanding how the samples will enter my RFNoC block through the
> AXI data wires. Will the tlast be asserted after S samples or will it be
> asserted after the entire burst is completed?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ad70bc061fc3f56c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Aditya,</div><div><br></div><div>Each CHDR packet =
will be given to the block as an AXI packet, so TLAST asserts every S sampl=
es. At the end of a burst, the EOB flag in the header of the CHDR packet is=
 asserted to indicate it&#39;s the last packet of the burst.<br></div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2024 at 8:08=E2=80=AFPM Sathi=
sh, Aditya &lt;<a href=3D"mailto:saditya@vt.edu">saditya@vt.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg4896720789913014103">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_4896720789913014103WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have setup an application that is constantly readi=
ng a Tx FIFO and sending burst transmissions with a SPP of
<i>S</i> samples per packet. I want to modify my incoming signals in my RFN=
oC block, but I am having a hard time understanding how the samples will en=
ter my RFNoC block through the AXI data wires. Will the tlast be asserted a=
fter S samples or will it be asserted
 after the entire burst is completed?<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000ad70bc061fc3f56c--

--===============4614326720297436797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4614326720297436797==--
