Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FF89B4BA4
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 15:02:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B35AB3865A2
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 10:02:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730210536; bh=AQcAgIiQxGmuShu3ay9BDkGL7uEiuMoNwOTlmiSy/p8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bBUF7F7t6Z0pYDJZdjrXmaYItgbsu06Ov4PZBpaXVV4pZM08PsI1OliZV+F5UMBwJ
	 l24HNZ7g7g/+p/hqeiJPJc/nDS8vfwm31v91998TKUB+Q4GH56NIXIuFCeBYksCe5q
	 nw4HAJo3TmzNYe8o0qUt1mNUkXmU8IxWnKNECqJtl3EVM+ruTUpH74Vr7NpMkJh+rp
	 ojxW6kkzSWqJcvDgNg9g98V3TVFmu+nJOMSM9UHxwvpvr76H/6NAqIP95Uuh94MOJS
	 KrTkLirkrWF7fU+U4IkPxVBHYWFNNr1+PxXOL/WoVnPXGf6rQFvnDlvzBaVODM64a0
	 NtKzvEAMIJWeQ==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 81278385F3A
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 10:01:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MJo8RvCO";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f2b95775so6350073e87.1
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 07:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730210495; x=1730815295; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jBIM+gQAFvI7jOEyWJgowkpkcNCfFlLDmIKQ7lAelTE=;
        b=MJo8RvCOAMFB0fKSzrBcx83LyJ9haT1Rk1S+HRClXgRsc2imvBi+lq+Rawu5CJHh2K
         nssN0HeO6ruioWqI39LGQOqPy4JIrTfnvMshWAzvrKMZtskJcL2TihxWR74gqCaYzcYC
         tlIZHYRy0XW3JxLC8OYfBUhB1soXsWBzkWMjslXwTyikiOSBUy06wQaQdQ/rC3ttRUza
         OzqNFjcqvtO2NMSbc6Dj+SYG6CJP9QHuypsT99uIAwX2iicutwlF/8WG9XIRpFHBb3UC
         PITq2fbJeE42N0gDbH+sJ6cTyyhk1vf6x8zxNJEQpUaBN5gVNUCHSAC0DyjUnKwLtzIJ
         23bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730210495; x=1730815295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBIM+gQAFvI7jOEyWJgowkpkcNCfFlLDmIKQ7lAelTE=;
        b=MxMJcOGt8bmF+/IdNJAjbOfUyIX9YIkdBiyr/x6Uzgl4WlpED9kSBVzE4Us6mefXb9
         OPXbZHy+S56fVsobeTxPq/K6Mvb/g6+oDDFCFzRq6Gi0UKqbyYkcGFytaPRP3YRoHJbn
         et+wEQY79Q4rtU01Jx2wJA1Wg6GKRvdBTKRzfTuH/tY62T295UO7O6Hf/MIdynY2qwHj
         7PReH3n/f5VQNkariUhvOpN87F4g0D08CckR2YSwPlwWe11kTNRrbyc3A98kx72MTXDl
         8zJA/T23YA3dlZY7ev0aPiHJqcQvdYOX7yhAKCj5WZstkQeoVzJsm4Geyq3FNdz0RPTu
         +duQ==
X-Gm-Message-State: AOJu0YxSUSZ9cqQWNdJawemE1BA+hUXylOzqzAV8gFETNzmsCx9a5WOp
	+e/zAbi3DaXR25Ih/p3+tSbigJbGtgjyqC+BcWOc8zQZKkpPl1ZLDATYeLHjNahkR+Fl7N+Bt2I
	Cj5uiFNsw5+K0dEVS6FY/cQO63P0=
X-Google-Smtp-Source: AGHT+IHPHOyFxqDzYkKUQUFrsHNfO1mW/lZkqDK0BYRg5blUDq0airRPnTfS3qNDzqpy2b+8RI8fv0b7yCvMrSf0Cco=
X-Received: by 2002:a05:6512:3d06:b0:52c:deb9:904b with SMTP id
 2adb3069b0e04-53b3491e062mr9260315e87.38.1730210494577; Tue, 29 Oct 2024
 07:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4@lists.ettus.com>
In-Reply-To: <rjuDdPjnyKwm6VcusAJOwCsQfHrfulMaPLadvVGW0b4@lists.ettus.com>
From: hui cj <cjh416593819@gmail.com>
Date: Tue, 29 Oct 2024 22:01:22 +0800
Message-ID: <CAEL-RA03RO22DzvQyKp-HJAvV1tdo7MD4HpW2XiVRuuXuNr50A@mail.gmail.com>
To: rubenthill@ymail.com
Message-ID-Hash: M3AMO7ROMFW4MOMVE5FMP5YYDW4XAJOS
X-Message-ID-Hash: M3AMO7ROMFW4MOMVE5FMP5YYDW4XAJOS
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3AMO7ROMFW4MOMVE5FMP5YYDW4XAJOS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9054960581880005331=="

--===============9054960581880005331==
Content-Type: multipart/alternative; boundary="000000000000ea89b306259e0505"

--000000000000ea89b306259e0505
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The answer is yes.

You can refer to uhd/host/examples/python/replay_capture.py for more detail=
.

It=E2=80=99s the play-and-record example from Ettus, using the Replay Modul=
e.


rubenthill--- via USRP-users <usrp-users@lists.ettus.com> =E4=BA=8E2024=E5=
=B9=B410=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C
21:50=E5=86=99=E9=81=93=EF=BC=9A

> Hello Hui could you solve this Issue? I am trying sth very similar. Since
> the hints you got from wade, more precisely the two examples you were
> pointed at are python and C++ my question is, can this be done using pyth=
on
> only? Say transmit num_x (say 500k-2mio samples) and receive num_x + marg=
in
> at the same time. So that Tx and Rx are triggered exactly at the same tim=
e
> (regarding the precision the USRP can give)=E2=80=A6
>
> Since I already have a lot of Signal processing already done in Python.
> Otherwise I=E2=80=99ll have to figure go deeper into C++
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ea89b306259e0505
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The answer is yes.</div><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">You can refer to <code>uhd/host/examples/python/replay_captu=
re.py</code> for more detail.</div><div dir=3D"ltr"><p>It=E2=80=99s the pla=
y-and-record example from Ettus, using the Replay Module.</p><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>rubenthill--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; =E4=BA=8E2024=E5=B9=B410=E6=9C=8829=
=E6=97=A5=E5=91=A8=E4=BA=8C 21:50=E5=86=99=E9=81=93=EF=BC=9A<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p>Hello Hui could you solve t=
his Issue? I am trying sth very similar. Since the hints you got from wade,=
 more precisely the two examples you were pointed at are python and C++ my =
question is, can this be done using python only? Say transmit num_x (say 50=
0k-2mio samples)  and receive num_x + margin at the same time. So that Tx a=
nd Rx are triggered exactly at the same time (regarding the precision the U=
SRP can give)=E2=80=A6 </p><p>Since I already have a lot of Signal processi=
ng already done in Python. Otherwise I=E2=80=99ll have to figure go deeper =
into C++</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ea89b306259e0505--

--===============9054960581880005331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9054960581880005331==--
