Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE83AE6028
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 11:05:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FA7E385952
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 05:05:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750755916; bh=EBkEbNAfxo6+rMH8xaSm234XXEjQXoQY731CR/mBxq8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PIFZi1wgvUqEn1OUUfamV2vtohxMmE2KJnRWsQv3lMe4dyAjhEiQpnw84wXrDXySf
	 HfplQCUF5PSJdDw+6hbH7z1PN+Geb5iWw4fdfCTGhEoTG3pvbBab0ZHAIT4SPpZpsT
	 qKRFzJ0JQay5vaKI9+yhB8x5WXZM72O1/Wr2zK+hdmvxZkaL4MDQITCZmg1Q9xaLTn
	 mRFffXsSnSVOE6KOrUBm6p4XGWx+e1yG+7qxoNW5TOCooIxqB/O5cnYo0XEzYb6LgH
	 pFN031rlwStabfFgrTAgeIeAf96j1o/OjlvRiPkOFeVaRJoRUCvv5H9Qst36p/gZ+C
	 nw3dGPOOkAN4A==
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D35C6385809
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 05:04:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZSenxbBj";
	dkim-atps=neutral
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-874a68f6516so17285439f.2
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 02:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750755858; x=1751360658; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VoCpSQ4aEytK70XuOozLhK6MgLJOZwZuJs4iKyO2iFM=;
        b=ZSenxbBjq1PMS8maaNa/yzkpl5QD9NH+RVn0WOuLJkq2DXVQgz5uWU0wRtFiTQ5hMF
         eQtJSe1m+MFOvVauXpmJUoRhf1eZgfNrlqkIV6bWydY7L8BG3w9oL0UG9ZpdonuXxpXD
         eHjc1nATWVi2FijQ18Q8Xr8lACyHajfpqctj47GBjByNQpPOaANVX9rul2KVXAxkmvfB
         Mj9vLDDDXDZ4UCTMUp71jr4FSonB1TVAcInFJVLc+UimvcU/NZ8/q2zMQeORaDzjt5cH
         zz+5fL+R7b4xkDjzjYR4KsJb7JRRpUmiQY1KrsercQDmPfZqUMno9qyehFa3e+gFSxwJ
         quBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750755858; x=1751360658;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VoCpSQ4aEytK70XuOozLhK6MgLJOZwZuJs4iKyO2iFM=;
        b=CtsLlkADqXeVcaWNK/nMX75SxTNWBiL+Qut1WqMobXSRuPp/WttIs3I/uW1fh9Aj3P
         ++26KwIDy1leDIwe1thN0Z6qfIfi+KctUxu6OX9tQNYs9ABdZbCBewnnBB9aTzcAdkxK
         gNKOh0rsfDM5UJXPlpxUWqo6a/Pi9mQuNojnd3+lN1Pp0hYGNko3S8eCG/ELo+HGJW1c
         fvli3cD8c9kJypcVmC1PysnSJ5SutgemD2ubhnWMtY0GcsMn2RZ4s87oSmY/EJZgagUG
         i1leOVc5v6xGzfbnCQniO5fvZvbUl0zHARFgQbM7GRf6AxQYJuquTAowDW9QxB+E7lt4
         DQaw==
X-Gm-Message-State: AOJu0YyoKyxUdSXAuIkbEhHqoyFcR6tZXTLJuqhxeKVEZnRF/GIMrVvi
	WqHMpynUo/Hu/axp6jccL+iCBz9eUCsnkZ7WB/1UuBPZO5BxFqqr7+eEXdnOKQxlQ3kmV44eZ7k
	3TocIodhlWRqm+0SHX4/Ox9unRCnjbbI=
X-Gm-Gg: ASbGncspPrRpoJ1TwvaqL+1M7NHbahuepoTYBZjD+Bmb8fikkTV7j5rgm4U/RqTmQH9
	M0ij0omI5nvXAyy0sO+a/Gfih9GfKqkM7AlFUbGtyIP8n/jtPBFnn6sR4HvXGyjWalysEyKlB4X
	ihXufMUtg9hWCqO/tgaM5HgdZ5ZTx57pLcLM+Juccvx6lq2ier
X-Google-Smtp-Source: AGHT+IF+zTmkfO+UmG6NtBEqmFCZhs2iO4PVQl69Jm3dfuNEPZLHRZN21ySRGPgmmxi3rK5X+hMNcxpPz/Pdm8OlxbI=
X-Received: by 2002:a05:6602:1544:b0:875:bc13:3c26 with SMTP id
 ca18e2360f4ac-8762cf66ca8mr1995490339f.4.1750755857977; Tue, 24 Jun 2025
 02:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <eaDEAehchKqpOqhApIQQDG7XTqrUnrxREVN7oEM@lists.ettus.com>
In-Reply-To: <eaDEAehchKqpOqhApIQQDG7XTqrUnrxREVN7oEM@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Tue, 24 Jun 2025 12:04:06 +0300
X-Gm-Features: AX0GCFvSu81A28k8-4_juAxu-7ZoDAY2CLCY45i-HEWvXLeBOMty7Xkn98_0fmY
Message-ID: <CAAxXO2HNVACT5Dze19oDCuNAYBZPkHiBWO2xs24CmyR6bnmmQw@mail.gmail.com>
To: zhiwen_zhou@seu.edu.cn
Message-ID-Hash: GO7MQWCVVOPHS6UCL5OA3EE4PTGYBVSN
X-Message-ID-Hash: GO7MQWCVVOPHS6UCL5OA3EE4PTGYBVSN
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GO7MQWCVVOPHS6UCL5OA3EE4PTGYBVSN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7080314272341601742=="

--===============7080314272341601742==
Content-Type: multipart/alternative; boundary="00000000000000d88306384d9de8"

--00000000000000d88306384d9de8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zhou,

Glad you were able to resolve your issue.
Interesting...spp =3D 1024, has nothing to do with fosphor, but instead
adjusts all I/O to the streamer.
It is used to set maxsps (maximun samples per second) for your streamer.
Errors to that generate
a crash in your convert functions. What is your connection MTU? With 9000
MTU you should get 1991 maxsps...
Is your hardware, cable, card OK? Check uhd_rx_streamer_max_num_samps for
more details.

HTH
Nikios


On Tue, Jun 24, 2025 at 11:03=E2=80=AFAM <zhiwen_zhou@seu.edu.cn> wrote:

> I=E2=80=99ve resolved this issue. As it turns out, 'spp=3D1024' is necess=
ary for the
> =E2=80=98RFNoC RX Radio=E2=80=99 block. The correct yml and grc file are =
attached for
> reference.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000000d88306384d9de8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Zhou,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small">Glad you were able =
to resolve your issue.</div><div class=3D"gmail_default" style=3D"font-size=
:small">Interesting...spp =3D 1024, has nothing to do with fosphor, but ins=
tead adjusts all I/O to the streamer.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">It is used to set maxsps (maximun samples per second=
) for your streamer. Errors to that generate</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">a crash in your convert functions. What is yo=
ur connection MTU? With 9000 MTU you should get 1991 maxsps...</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Is your hardware, cable, ca=
rd OK? Check=C2=A0uhd_rx_streamer_max_num_samps for more details.</div><div=
 class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"=
gmail_default" style=3D"font-size:small">HTH</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Nikios</div><div class=3D"gmail_default" styl=
e=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 24, 2025 =
at 11:03=E2=80=AFAM &lt;<a href=3D"mailto:zhiwen_zhou@seu.edu.cn">zhiwen_zh=
ou@seu.edu.cn</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>I=E2=80=99ve resolved this issue. As it turns out, &#39;spp=
=3D1024&#39; is necessary for the =E2=80=98RFNoC RX Radio=E2=80=99 block. T=
he correct yml and grc file are attached for reference.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000000d88306384d9de8--

--===============7080314272341601742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7080314272341601742==--
