Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCE5AC3011
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 17:04:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40522385434
	for <lists+usrp-users@lfdr.de>; Sat, 24 May 2025 11:04:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748099090; bh=fCABu0qtEQpF8Qr96nySTMAmt4xO+81hFd0MdeJNKMc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jrtpDEuf08SXuzFMoX/OujOQqciEx3MPBS1yDa7dLIrl7Uyg/oHCjg43XulnU46cM
	 D/Hg10RnbUlbDDBXHQU2BhthL6UooOxrhtuFP0O3/u4C047j5CAhohw4zxVn3tCdpY
	 53Rr/5QiVmn1WaMnatyVtb0ay0bq6cWzNL/kv83EkbPV8T9n51bw6lKAGjgKmaciN/
	 BbBppLQ3FZZOyTT8vg7edLTnU9MqS5Q/k/pwHixmjbvtFw5klXaPKAEKWa0o2GDAs0
	 PYPBevP7T1N7ZvHQghKNv/lJtmrHBbOSohFR+AHLROTfyPRnsHYLiYMh6MQpaYDRpU
	 QntTydYn/esdQ==
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id C74FF380B95
	for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 11:03:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ld9AF5Ke";
	dkim-atps=neutral
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d817bc6eb0so4511775ab.1
        for <usrp-users@lists.ettus.com>; Sat, 24 May 2025 08:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748099035; x=1748703835; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2NcqHlDpptUvloZd3AwJtDRuASSldb/vdoPnhhZ7bpM=;
        b=ld9AF5KepvvEqVJadkG2ji/w2H+UqC8g7Al+jde54J4IqFGQkZ1YT9klQbJvJW0Dw/
         4a6jYjCInFSFh0Bg97ACE8UEiog2KjzJYi6BiECC8EAugYPQfCd9PAXQmOzQ2KoeeRDT
         g7N17Ab80rsdcYR4boSZSJpwfbPT8QZaQ8yXO6v7F9STS6HhbiJwiJ3h8rMRHNUFulRJ
         bmVRFnWJxHSs43hFBz2BV9t1U+yr1Gb9Zs7UUeyYMY1OBjELKoOFYF2oHNEi+GERsc+f
         0aQsViJFF/+pq2GCK3+VMlLvufLic+7+DcsgqOl0i7oqRW4NGO2vptZiCyrmnFMcUkzH
         uuRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748099035; x=1748703835;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NcqHlDpptUvloZd3AwJtDRuASSldb/vdoPnhhZ7bpM=;
        b=OogrWHM7uvhNsx1vISq+E/F+6kjhfG5cKZBHrx1OGMfCxRalugIpcG0+rJMpwV69qu
         NiK43N0V1OYaR+Tk+6ieaPhzFsbo6mdqBXMt87Jbq77l6VpGbXMqizWi0uQBin+xWdKY
         cVF/mV6sr8dVJvd/BzaRo7LM0E/lxdemaxVcHCH+GDZ9C8WHOclQxi+9hIZjsiecIILq
         TqB9i6iJjdl+1NsEapjOAb7extI+ohfzANZkb5mCZ3JRforBo21TJAamhvCeWFDY1+bA
         asspEJaZGWH8Ow/Wx4TlWYWWd8dTyX25EY6Oz3kMX9cLZbCJIsflHKuVG77QbLCnskR+
         Aorg==
X-Gm-Message-State: AOJu0YzpnAzNkyd6I6i42IkWktfOqNZCRABzY7SMWV0oFwNGYpzHqlb7
	LA33LJiaxK2Zq9Kkm4/R0gmJIbAEGWWUEpVH//72OWxAA/iy464d4XDgKSWqSsXQHJUI1tYQPHO
	pmRmhcJse3+P7rxPNLzo8O3rXYrNYoV8=
X-Gm-Gg: ASbGncuLAexDT+IjLgCd5Rf+9JhwGFAXfWLojgvVE0F7j60ziXRPHTTGR16rmRVjF2c
	8Q9nELUWPNGMsEY5ZLsGKRLbY7JuIAhOeVcovp4mJDBwKixRLEakAOZRmuknxfehzzpPhN8XtsF
	sHyLq7ui2f6Q1okKYDIrPfOnNxkqRLEN0=
X-Google-Smtp-Source: AGHT+IGvA0nhcCE3TrS4hAaImGoQzMHIlWxadsmdWW5rP+568C6ai27kkd2ViKgGIxHcxMp7zqPev31lAgxIFD/4IuU=
X-Received: by 2002:a05:6e02:13:b0:3dc:7df8:c817 with SMTP id
 e9e14a558f8ab-3dc9b6ad3bdmr25023535ab.5.1748099035012; Sat, 24 May 2025
 08:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2GUE4A3Et1f9AYcgDOYJKdaBbVrwFbhuQrhvg84A-u8xA@mail.gmail.com>
 <772e9a09-2f46-4707-add7-c4459d902f43@gmail.com>
In-Reply-To: <772e9a09-2f46-4707-add7-c4459d902f43@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 24 May 2025 18:03:43 +0300
X-Gm-Features: AX0GCFsp1-M_V4SKXeZHwXGM9_Itc26qUqYZ2kYTbnoABR8PKP2x_vJHQwguyic
Message-ID: <CAAxXO2EOztPGEP+fXVMhgX-Xwon1fc9djCLCs8h2PH3Uefducg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NSJDDOGYDCZWVDJXHTAVDQZDEPXTU3T7
X-Message-ID-Hash: NSJDDOGYDCZWVDJXHTAVDQZDEPXTU3T7
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Manual Tuning advise
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSJDDOGYDCZWVDJXHTAVDQZDEPXTU3T7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2249675649499795501=="

--===============2249675649499795501==
Content-Type: multipart/alternative; boundary="00000000000003a61b0635e3064d"

--00000000000003a61b0635e3064d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ty so much:)

Nikos

On Sat, May 24, 2025 at 5:56=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2025-05-24 09:48, Nikos Balkanas wrote:
>
> Hello,
>
> I was reading the 2016 paper by Ibrahim & Galal (ETRI journal 38, 3, 2016=
)
> about tuning hops.
> The authors present a tuning algorithm with a sequence of none-manual and
> manual-manual tunings. Are their results still valid after 10 yrs or is
> there a faster algo?
>
> Is there a way to detect the state of the PLL during tuning?
> What are the frequency limits of the SBX-120 LO?
>
> TIA
> Nikos
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> There's an "lo_locked" sensor on many of the RF daughterboards:
>
> https://files.ettus.com/manual/page_general.html#general_tuning_dsp_sign
>
> The SBX uses the ADF4350 PLL synthesizer, so the LO limits would be
> dictated by that chip, and the capabilities of the mixer chip, the ADL538=
0.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000003a61b0635e3064d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Ty =
so much:)</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, May 24, 2025 at 5:56=E2=80=AFPM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u=
>

 =20
   =20
 =20
  <div>
    <div>On 2025-05-24 09:48, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Hello,</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">I was readin=
g
          the 2016 paper by Ibrahim &amp; Galal (ETRI journal 38, 3,
          2016) about tuning hops.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">The authors
          present a tuning algorithm with a sequence of none-manual and
          manual-manual tunings. Are their results still valid after 10
          yrs or is there a faster algo?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">Is there a
          way to detect the state of the PLL during tuning?</div>
        <div class=3D"gmail_default" style=3D"font-size:small">What are the
          frequency limits of the SBX-120 LO?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">TIA</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>
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
    There&#39;s an &quot;lo_locked&quot; sensor on many of the RF daughterb=
oards:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/page_general.html#general_tuning_=
dsp_sign" target=3D"_blank">https://files.ettus.com/manual/page_general.htm=
l#general_tuning_dsp_sign</a><br>
    <br>
    The SBX uses the ADF4350 PLL synthesizer, so the LO limits would be
    dictated by that chip, and the capabilities of the mixer chip, the
    ADL5380.<br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000003a61b0635e3064d--

--===============2249675649499795501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2249675649499795501==--
