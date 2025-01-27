Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 075B4A1D7C5
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 15:08:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46C66385D77
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 09:08:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737986902; bh=lNGXSHX54tyRwvHe8I2OTmv0r1y+PPu/yIk8nW7wlnM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lvsultjdd1v044poc0w0JOl/iXHEVHnDnl2gC2GgdV3V/0KhVfdHUCJ7E5cPSrhps
	 uOOYwSJD/6KCSO95sr5r+dbzfXKFebpazoxm8NdGpZEySOxNYo+qgBkDt9OjcQOt1r
	 J8mT+ETSXFRNibjPyXnTc+Qh4EQ67geSsANuwIJlvXHXIXTdwE5u3cpp1DfX8UJg0J
	 njxXtY41CqpzCAulsRxb6VvWZzol7/Jf1/MD03UHeIzpGm3XSRDWgE3+xr1nuZCGyf
	 YvgQBIfLd0NBMjkMKJcKXLSEX3KpI9btZ4ofvROCGDjdKrfNdy6RgD6JhwqHbc6Cjs
	 AJW4oZKvmGCsA==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 391BE385103
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 09:07:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YEbrt7Gl";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa6647a7556so90715066b.2
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 06:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737986865; x=1738591665; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B7KnjivsxaeYsWYlduHmzT7ei+bmlRghz9GOSkGPWnQ=;
        b=YEbrt7GlxDfryYQ8Hi+htn4kwZWC6G9cF1Hh/lsgZltgkXJbb51pABo6sWPTzs6H28
         RjO0YXcEnks9oL/nWoxjfzbSpn/ylW3jBaO04AO4A833OEnZEcd5WXl9y2TaUmSkRCf6
         5KqK80S3xPfjwdyBtErzCLS1gKZkcvM+NpN8wZhfwSQJOB3+PlHf91KjLMKNhJSSqOee
         0Quf4LFFy100+bOmHE7yLlzHhmvq0+uNQOw2g5rCQPdm/rPIdM45uRzsEGDKiwSFNVMb
         Ma51INFjlph6ie6eTwgKbxrSqfjK3q/75riyjt59a3VzOyspcDaVKJmzBtGvMhf1daKc
         nNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737986865; x=1738591665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7KnjivsxaeYsWYlduHmzT7ei+bmlRghz9GOSkGPWnQ=;
        b=WqxMrPgSuAPEFD6Gi4GHl/E9GVSTspmOnX+CI2bsTmqa29wV1EuifDNAuyE2ciLjlC
         tzABoRwX8e94PyTeBmHJZchRr1/zcc6AJy/R87kIDIadMTicCZP2kTTMoHLVTJgLdf9S
         ilU0WdbBrQ1LCHeYdqbgxt4GduldkriTE4mvx/3p165zEkErCXJhv++L7NM27vRzDsaX
         XV1UShVDnDve5jgm2mtDlDEpAQCR5RPUhWU+I5udea9xkY6RmQLM5yexakL0+4JblbOC
         CpNQ8k21djIQPlPHrgHHDQaDH7VaFTV3aqlECzwQlhZc/cb+Poq4BKa9Orapr3sRWmYh
         XvRw==
X-Gm-Message-State: AOJu0Yz9txuPkF0mgZPdOWLJHwofBaAFqtKRPnGFfOGAI484WCvCONUZ
	H6pqtUSZD6zxIiISMTUjm5nDjmOKYBi2TsN0BhtXoxpqMhIG6HthuSC0nCw9cLIZvAzLQh2nm+k
	4IlHroJCNHTV4gQVkcMafPkUN1/QdiA==
X-Gm-Gg: ASbGncughiAIKnXmpCSIW7gbI7zv4xA5rSyPHARNZp8bqgMU4R8OX4CVnOxvlxzLwKp
	RtjwMM5/L3qv8IbzEQ/DgupXzjRuPkfHF4l6wW8XvJgY/o++VF65YPF5Co1dFizH43PtnKqwh4B
	9NX43AsaNvu4lLBy1S2w==
X-Google-Smtp-Source: AGHT+IGlp3igNeiKffMa8k6wf29we+4bmeTg8XM3gihdJmrT6OPCN+cITz3u7rLG2a/3mtpX/GL76tpzS417KbIKlDk=
X-Received: by 2002:a17:907:86a8:b0:ab3:4d22:c450 with SMTP id
 a640c23a62f3a-ab65167b810mr781029266b.12.1737986864600; Mon, 27 Jan 2025
 06:07:44 -0800 (PST)
MIME-Version: 1.0
References: <b34d9c34298fbfffa03375a026d5a5ef@atindriya.co.in>
In-Reply-To: <b34d9c34298fbfffa03375a026d5a5ef@atindriya.co.in>
From: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Mon, 27 Jan 2025 14:07:33 +0000
X-Gm-Features: AWEUYZkjoCNyxlkcWGmvls77YFNXKBmdmR2xh8p-_fIr9LVq2fq7VMqDAEf3q54
Message-ID: <CACDPEcMT4png+YYoYK5QkjiWkm1pvKCkd=FzjMEdcgRP=KrKpQ@mail.gmail.com>
To: kavinraj@atindriya.co.in
Message-ID-Hash: C7DLA4IKATWQIAXZFAPRQP2UWYJLUCQH
X-Message-ID-Hash: C7DLA4IKATWQIAXZFAPRQP2UWYJLUCQH
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GNU RADIO in USRP B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C7DLA4IKATWQIAXZFAPRQP2UWYJLUCQH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5728797735068839082=="

--===============5728797735068839082==
Content-Type: multipart/alternative; boundary="000000000000b06152062cb099bc"

--000000000000b06152062cb099bc
Content-Type: text/plain; charset="UTF-8"

Hi

You need to change the environment variable

On Mon, 27 Jan 2025 at 13:43, <kavinraj@atindriya.co.in> wrote:

> Hi,
>
>     I have created a block in GNU RADIO-companion. when I am running it
> is showing runtime error. I have attached a image file for your
> reference.
>     I am using UHD version 4.7 only.
>     What may be the issue?
>
> With regards,
> Kavinraj._______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b06152062cb099bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div>You need to change the environment=
=C2=A0variable</div></div><br><div class=3D"gmail_quote gmail_quote_contain=
er"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 27 Jan 2025 at 13:43, &lt=
;<a href=3D"mailto:kavinraj@atindriya.co.in">kavinraj@atindriya.co.in</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br=
>
<br>
=C2=A0 =C2=A0 I have created a block in GNU RADIO-companion. when I am runn=
ing it <br>
is showing runtime error. I have attached a image file for your <br>
reference.<br>
=C2=A0 =C2=A0 I am using UHD version 4.7 only.<br>
=C2=A0 =C2=A0 What may be the issue?<br>
<br>
With regards,<br>
Kavinraj._______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b06152062cb099bc--

--===============5728797735068839082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5728797735068839082==--
