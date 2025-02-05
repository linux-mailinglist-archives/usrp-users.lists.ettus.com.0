Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC4DA28BC2
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 14:35:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2714D385B75
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 08:35:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738762510; bh=UJYTFt5YDKPo2uSzjoIGzGOcry8ksZ0kbyUa3KB9jI8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0vnW471PlzEAwNOV8qiY4RVT53cQ3lpNbTDka68R+LOcwSxWAXkV/Zkkug32ls0JY
	 NespDdcnTxnbvJR+ligV1eEQCUIwxHVWje27nqI9TFiSd67y9XZQjcHA6SMiNF3jv5
	 zdvw160TqFgB2s8qyHbfv3fK+6Di7ggYuxRcaUX1haUC79KAiHmVLRzSZHzPbSbxVW
	 GIcltUnVxTTo7MuM/RenaUs7R0ye3KrMtmaYRgUgDTZBcdeAbnPzWXaIxpzRAjshxq
	 Oo/+MIn2lmavhe4xVW+lcABdUtZuJ8EOeEkbzPZBR7RjbvnqjZ6MYjgQd3eTAd3krw
	 Rbfp2naWs7w6Q==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A2432385809
	for <usrp-users@lists.ettus.com>; Wed,  5 Feb 2025 08:34:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="d+MasTED";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5dcc38c7c6bso4007767a12.1
        for <usrp-users@lists.ettus.com>; Wed, 05 Feb 2025 05:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1738762497; x=1739367297; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vV0Gjcr4T3VBgKORalmilQwkBm+Q/7fup/Fw5jEjirM=;
        b=d+MasTEDdWJnjNJXgUvJ3VlZfyPmhEd25VUcT7y5zyK/DG9VuNlyfHcNcGiyROvMS4
         TwRtjdsPD0REGSbvo/WpAncRZTm4awoS04TuLpcBek3BaYKv9DpEXfFOroQtHN2cmHtA
         eIetMG6NFIY1uO9oglZDjOOyfIQxOP66cUsPsd7PPo8hb5quTyrVAlGNuAWPMMvuAUqc
         GTIG25nooxsC7Bh6UvSTbZ0wRzqyNUOXdVYUynV4Ldp9ZDqhLdBg1fxsVYxc/KEJGY4e
         8EYenvvhrDn6b5BlxtMtGfrIxS6bVh58w1tlVdHvpL+3spvD+VD0tzNkCGwd9CAHGvQv
         wZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738762497; x=1739367297;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vV0Gjcr4T3VBgKORalmilQwkBm+Q/7fup/Fw5jEjirM=;
        b=OO6FDRttrXvoRu2lRJ/6Qyhv2N4UwTn+ZIsB35L3NO3TKuPzZHjbx+W5A6ySMvE/9Z
         zX6JMQky0ATgXyyD2W7XuI6fOQUQgYsUaRXGOCU1x7i8/K0++WaOUX12M5cRIPNl/cgV
         z/hHokfkB4pSYFYEDTI9Ie3MY3WqO8PM2wnfylqVXI/fUabd58TA9RoBitT8RiLyi69z
         wfwxgpGe51QgdUsHaIGlcsHUsXq9oO0410JrpnuQ74ZjRQD7/CH01yfOMKKTyoKb29Q1
         NzSaGMzX5CE3Yc9By/8iag8YN1fi80NRxux4GAlGRTLR+29TrJAWt8XsAuVhVzgabUVw
         adkA==
X-Gm-Message-State: AOJu0YwrvPP2DFGzYPYwilayjndFMEre9Yd3rouV/FYUlV0zpVNgmxMF
	d8xFPiafinP9VXtQTwv7zkcDOcZSgnHlqkV4SHbWO6oUbC3UJ68hIy21xUKLSlyXlH24BLDk25g
	PHIkVgqOzi1oVx7siMhZy7IHQ12vfzK6qtmlx0ESN9T4uPzYi+UI=
X-Gm-Gg: ASbGncspwhDr/9CtH06Ufb+TL/A8KcZ8iRAZb72jhOqSBh+5irm2KMXmL3HDQ1YVXQq
	dEzB41VHIE8g1EES0aE9lOnB7J22zNAnJuEgXhIAlesrKRI+273HaWsObzT1ogxydl9/P3v4=
X-Google-Smtp-Source: AGHT+IEGAMJ1vGjuPAxTPiLNWWdOxPFN1x7YkkC6ES5bwjq6i1lHvRskKoDchgeNBU8dsrWrz4ucaEvzVcRH0AHu5NY=
X-Received: by 2002:a05:6402:388c:b0:5dc:d913:f89e with SMTP id
 4fb4d7f45d1cf-5dcdb778ca5mr3078746a12.22.1738762496812; Wed, 05 Feb 2025
 05:34:56 -0800 (PST)
MIME-Version: 1.0
References: <b9e28d2aa6badcc44f0fa3cbbf07055c@atindriya.co.in>
In-Reply-To: <b9e28d2aa6badcc44f0fa3cbbf07055c@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 5 Feb 2025 14:34:45 +0100
X-Gm-Features: AWEUYZldK44UnvjihWiQJOCGOMv3Agk1yc60J3eZ0yzxCkaf27ELmFqiFfHko74
Message-ID: <CAFOi1A64CvJYq0m5WzzextDhtbeNDiK+RBC+bmDzjstH_+4uew@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 6UU2YDAKWWFWKL3VD2KP4A52JNAWC6FJ
X-Message-ID-Hash: 6UU2YDAKWWFWKL3VD2KP4A52JNAWC6FJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG:GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UU2YDAKWWFWKL3VD2KP4A52JNAWC6FJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0067386406713513316=="

--===============0067386406713513316==
Content-Type: multipart/alternative; boundary="000000000000f8cdf1062d6530c0"

--000000000000f8cdf1062d6530c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you don't get any responses here, maybe try the discuss-gnuradio mailing
list.

--M

On Sat, Feb 1, 2025 at 5:20=E2=80=AFAM <kavinraj@atindriya.co.in> wrote:

> Hi,
>     I want to generate LoRa burst signal in USRP B205Mini. For that i am
> using GNU Radio. By default, there is no LoRa Tx and Rx blocks in that
> tool. So, I downloaded from https://github.com/tapparelj/gr-lora_sdr and
> I followed the steps in the readme file to add the LoRa Rx and Tx
> blocks. After doing all steps, I am unable to add it the GNU
> Radio(3.10).
>     What may be the problem?
>
> Thanks,
> Kavinraj.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f8cdf1062d6530c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you don&#39;t get any responses here, maybe try th=
e discuss-gnuradio mailing list.</div><div><br></div><div>--M<br></div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, Feb 1, 2025 at 5:20=E2=80=AFAM &lt;<a href=3D"mai=
lto:kavinraj@atindriya.co.in">kavinraj@atindriya.co.in</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0 I want to generate LoRa burst signal in USRP B205Mini. For th=
at i am <br>
using GNU Radio. By default, there is no LoRa Tx and Rx blocks in that <br>
tool. So, I downloaded from <a href=3D"https://github.com/tapparelj/gr-lora=
_sdr" rel=3D"noreferrer" target=3D"_blank">https://github.com/tapparelj/gr-=
lora_sdr</a> and <br>
I followed the steps in the readme file to add the LoRa Rx and Tx <br>
blocks. After doing all steps, I am unable to add it the GNU <br>
Radio(3.10).<br>
=C2=A0 =C2=A0 What may be the problem?<br>
<br>
Thanks,<br>
Kavinraj.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f8cdf1062d6530c0--

--===============0067386406713513316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0067386406713513316==--
