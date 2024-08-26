Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CF695F4A0
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 17:09:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CE28381806
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 11:09:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724684948; bh=kLr+zP6oHx09QhEzKghIGHHorM/QKyQSBSMUzJMqblQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XC6mC0ulFbNvG4cMBLI+w2A++23pioTvVr00//RyMv7khgaYcaTpFO30iTdd97AjR
	 xAaBWT3JY9VvgH0PYLgwGEWxuhPVs8Ij+gOAO4bnCfza+mhZ3sljKd5ynuIHxWwRkZ
	 Y0FK//SLvMWnUDJVRhPg4LccmeE8w9OtZTCyhPm9WTNwTKVuSnzt7HCcxEu4p5ZJFv
	 xWQ2D95duASekJP854+QylCYQqfLdvZcGCFqBncR/vjk3nSMzVDRTVu+WVacEi+P0h
	 Nb/91QW2FT+nD7ZFMLIQruwi7xXJ3+GNfm/xPYXlKu/Qc0fsC5CIgiVdii4X1SgQ5J
	 ghf3LpjswG2CQ==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 95A49381097
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 11:08:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G9SMKbXf";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a7a843bef98so423193566b.2
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 08:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724684907; x=1725289707; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xLqs0YOAlE0UFRF7QTefjyihVnPI7ABYKE0HhQTrniY=;
        b=G9SMKbXfu1CLTaKUT23zfyLsPi6uYlEJHviROb+0+ceoXHkOUbxciedjTliC84YsBp
         BP+tiQ81zOiE6ceGuJCpcZzDNf6N5FmKsNNHWkMojJShXyVpBuaZAXBmSU8D3VXzPLT9
         N+JM6z9U/bQfFIZ4Tm22Cu8edBZjxJSfQZdJD6emIbjzBS2qWP07WIPxyPAdRMqP7ev/
         z0AvoNTfmRtzDxXu72tUXMJHyRJKVI4bL4s5DX4WjX0crKVjT1tPu9LDvmYcTMfvM+P2
         uuWCJryREAxDoGbsxkVtI6agj0r3pixo6giSXRqEQjUBgbZRTxwYZDtpaK/dqpjrb5NU
         ltBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724684907; x=1725289707;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xLqs0YOAlE0UFRF7QTefjyihVnPI7ABYKE0HhQTrniY=;
        b=vDCxcoWqc8n3J6lzT1nr2R/LqTln4RLib908I9/zOTzMmfmJphFdFsTVIcwrzzkCFB
         bES98gJcpGrcQCAUqqV00ORwHisIGKgD+dZ3YBSpIJb7lcJ8FL+pXh1ICK1HGV6CYtwc
         ow2GEgufPUBGbYdNUUCa7w5xNs103KU+JCVebFa7MHFIzo84XPKn5Vq1k+DZlb0DiMfY
         Zv9L5D+TxqjE6SjKHnNt37iI47UsipDpXzFa+bcd0pbZ85CM/ZZgaPngXS5JfCjxhfs5
         2lUEJB09BfyQuSCvD6c035ufN10gcHb4+0lnf8mADrmYIE9LBl6K3icJZo/A03MrNajy
         ZtaA==
X-Gm-Message-State: AOJu0YxpHaYLwv6uvYX59r+6eSr/2maRXzDQGKzEoVBcgfGOzVZSDTdq
	1KooD3qplWSKhsEgf81Sz4Ne0ovYUPESnZG5fUAi9hzastkR/Blqs89M0TZtJhat5r1nTSWrsFg
	TDsk/jccOve/1P5HjEPBxto0YqCY=
X-Google-Smtp-Source: AGHT+IEZdA0fFe1GIHjW7O1FuukMgLUdVEBRQBYbsF0pSztY4YjnXRmNfDxayvZW+XA4Liytnq3I/cpf8PHb+3QMTvo=
X-Received: by 2002:a17:907:e6ce:b0:a86:79a2:ab15 with SMTP id
 a640c23a62f3a-a86a52cce06mr727831066b.40.1724684907074; Mon, 26 Aug 2024
 08:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <f76157b9-f0a5-4633-9476-7558b3fd9a46@gmail.com>
In-Reply-To: <f76157b9-f0a5-4633-9476-7558b3fd9a46@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 26 Aug 2024 11:08:15 -0400
Message-ID: <CAEXYVK5YDYNaLp=t0Da3ZW+jLpAPmc9qdOHsJ07ox__dL51Leg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WDETDZ6VB6S6PAYNHXKDLFHK6VDHOSMR
X-Message-ID-Hash: WDETDZ6VB6S6PAYNHXKDLFHK6VDHOSMR
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDETDZ6VB6S6PAYNHXKDLFHK6VDHOSMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3702055309885652809=="

--===============3702055309885652809==
Content-Type: multipart/alternative; boundary="0000000000003c5cec0620977fdd"

--0000000000003c5cec0620977fdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 10:25=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/08/2024 07:40, Olo via USRP-users wrote:
>
>
>
>    1. *TwinRX Channel Configuration:* Is it feasible to use the second
>    channel on the second TwinRX to receive on a static frequency while th=
e
>    first channel sweeps, and vice versa, can the second channel on the fi=
rst
>    TwinRX sweep a portion of the spectrum while the first channel remains=
 on a
>    static frequency?
>
>
> The TwinRX cards have independent LOs on each channel, so, in principle,
> each channel can be doing something different,
>   on different frequencies.
>

Note that I don't think this issue ever got resolved:

  https://lists.ettus.com/empathy/thread/O3A27BGE4ZO3MXQRTBYYDSXBBUISLHO7

So while it works, changing one channel causes some schmutz on the other
channel during the retune.  Timed commands with some type of blank-out
period should be used if you want to get rid of those artifacts.

Also note that large signals on one channel will leak into the other at
baseband, I believe. I think it's just the nature of the 2-channel design
using the single ADC and everything being so close.

Brian

--0000000000003c5cec0620977fdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 26, 2024 at 10:25=E2=80=AFAM =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/08/2024 07:40, Olo via USRP-users
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Arial,sans-serif;font-size:14px;color:rgb(0=
,0,0);background-color:rgb(255,255,255)"><br>
        <ol>
          <li><strong>TwinRX Channel Configuration:</strong> Is it
            feasible to use the second channel on the second TwinRX to
            receive on a static frequency while the first channel
            sweeps, and vice versa, can the second channel on the first
            TwinRX sweep a portion of the spectrum while the first
            channel remains on a static frequency?</li>
        </ol>
        <br>
      </div>
    </blockquote>
    The TwinRX cards have independent LOs on each channel, so, in
    principle, each channel can be doing something different,<br>
    =C2=A0 on different frequencies.<br></div></blockquote><div><br></div><=
div>Note that I don&#39;t think this issue ever got resolved:</div><div><br=
></div><div>=C2=A0=C2=A0<a href=3D"https://lists.ettus.com/empathy/thread/O=
3A27BGE4ZO3MXQRTBYYDSXBBUISLHO7">https://lists.ettus.com/empathy/thread/O3A=
27BGE4ZO3MXQRTBYYDSXBBUISLHO7</a></div><div><br></div><div>So while it work=
s, changing one channel causes some schmutz on the other channel during the=
 retune.=C2=A0 Timed commands with some type of blank-out period should be =
used if you want to get rid of those artifacts.</div><div><br></div><div>Al=
so note that large signals on one channel will leak into the other at baseb=
and,=C2=A0I believe. I think it&#39;s just the nature of the 2-channel desi=
gn using the single ADC and everything being so close.</div><div><br></div>=
<div>Brian</div></div></div>

--0000000000003c5cec0620977fdd--

--===============3702055309885652809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3702055309885652809==--
