Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0530EAA42E4
	for <lists+usrp-users@lfdr.de>; Wed, 30 Apr 2025 08:08:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2739385AC1
	for <lists+usrp-users@lfdr.de>; Wed, 30 Apr 2025 02:08:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745993285; bh=rog3+reny6YYiXnTuSA+ucrQ+rNIMSsQA4VGWvfLi1A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=e0aQ09qCP7eSOcXhCi6YvOM/e4dM2ifSkJO9bMsN63HOu+apY83KBtNcqEDKerzAu
	 IRB0n5OrT7pHQgyNCrN06Xz/7dleL6Id87FpDFXFyauTllsiMdvZYGWdwCg4oogf+j
	 u3ww9hMu5rr1K8nSx8WbJb1kLg6s4Kdf6sN7cVlAjw/kBu4npRUKWk8b3S0IGyCnjv
	 21rXLzsgziwc7MhcexEwmzpOqlONVkzkpcNsYA3mhyXP8Rizqk3v7Jb4s7J4cGK2J9
	 hL55QkT2i3PRhog0uJBybgIdbGbHwvfBbFTEijohTUsP9pp4ALooG/LuDFqMAuzJ8n
	 lQtjoWJ8i+UUw==
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C8072385AC1
	for <usrp-users@lists.ettus.com>; Wed, 30 Apr 2025 02:07:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DC7RduIs";
	dkim-atps=neutral
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d46ef71b6cso64502605ab.3
        for <usrp-users@lists.ettus.com>; Tue, 29 Apr 2025 23:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745993253; x=1746598053; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZxovYCuQkE6EmvE0JGOWRvKuo4+DOMuFLyGmDywzmJs=;
        b=DC7RduIsw2PyIgVfsjfbzFT1HRnhg9Su9QabyYHXTyX5nzprG2l0ZMagpBFpX7ZGFU
         HwADhWamsZUrnJX12IAkNSRPT1iWRlRe2+Noo1xbQz5JE7K7mBKjM7nLFXeSr+hf9Suy
         preKp6bt6BWQBGsbkO71gDfbH6tyjj7q1fjmndg2AlLz8f0zamenc0BgHaXCue9x0DLy
         1SAVZIZOvPqwH7SI7xQiRMfCmH5x+lzyW+GP6M+raUvEqryg1LWiuYp+n6GFoID+kzKW
         x0idt7owO+8Jz3w6qZ21g9nMtxYZWtJpo8XdechdQs2q51fiDt1G3ecU/DhV6JLxCxmw
         6U2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745993253; x=1746598053;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxovYCuQkE6EmvE0JGOWRvKuo4+DOMuFLyGmDywzmJs=;
        b=c5aGO3jPRNRF4+6hBKpefls7ffFLS+NspnhGqzXprteNqdIQSjDNR3abSTsuGZh7Lh
         2P6EFCr8eWdfE4WKUhmnruBcfpYYbVln45l9k4lUOlrmIF3Jsm2mFJfyX9NpCAkmGc5H
         BsXmBdJsQO/7eqlGdxqsr1ViJiS0ILuCDrVDLFl4mwTX1+tXbsOXWBAJ9csHIM+BL8ta
         8TDLZMCzA+D6jfn2PnMAsW7ZyiZzeQXJZFbosuFgktC5AV1b3Ww7qmWTcvPg7aTnMT7k
         pHTrQkdNnQaVqaW+Ig4f7UKFWu5Tsof8xItwmA32WRXeQlwEEOO9i+YnNUgqRoU5rYMk
         5heQ==
X-Gm-Message-State: AOJu0Yw/mBjUhVwAcabrvGSdYwbp8GncJc55UbcPAFbfXmu/OZvhk152
	9ZebTmw9yeFL+g+Q65gXiJhzZAt5HbZtB1029xE47leQ8mxOib1FfmcnqxX5etV7VMw5R6BZQC3
	AZRU7A3zcaZYJ30EzVR/Aflc8UGVAzF3MvdU=
X-Gm-Gg: ASbGncuO9KHa2J5vhyuaK2f/xvmx6QthGVulCp89wUaL6nmktkfBV2Qd0ccuglzQyED
	MsmvHoxJqg9+b0eqXoVifdZeh24DGzeMo0SfYL4I1XijcUgHrwvVPSH30hcOlSigA6igKI884uy
	QvAF/4RDw7aO9uRdsH
X-Google-Smtp-Source: AGHT+IGpg3tVcER09e1qfjRN4J7JO8DZowivtJ2twxd2hZspjruyU6nHO0zsCAQ2zDzmWCWfLp9MLXtLASGRu5XhrVo=
X-Received: by 2002:a05:6e02:3311:b0:3a7:88f2:cfa9 with SMTP id
 e9e14a558f8ab-3d9676e3f7bmr19978315ab.11.1745993253067; Tue, 29 Apr 2025
 23:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2F=XeLvdfTdZzReTbzQwtubf6g9ayB255ZASHj5ORPvVg@mail.gmail.com>
In-Reply-To: <CAAxXO2F=XeLvdfTdZzReTbzQwtubf6g9ayB255ZASHj5ORPvVg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 30 Apr 2025 09:07:21 +0300
X-Gm-Features: ATxdqUF7Ty-44DFKE4RmxnlMCJl1Cl3N1og4cidqwDdOQHz_8F5LY6mbT84Tw5k
Message-ID: <CAAxXO2Hs4MdbBjgfErainnYA7NnPaCJjQ0nzbfqjUNu5c+zJow@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3C7Y7BWXADLQDKDA4RYHT2UUXUU7MIXB
X-Message-ID-Hash: 3C7Y7BWXADLQDKDA4RYHT2UUXUU7MIXB
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Restarting the streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3C7Y7BWXADLQDKDA4RYHT2UUXUU7MIXB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5773762968024116924=="

--===============5773762968024116924==
Content-Type: multipart/alternative; boundary="000000000000a1210b0633f8bbaf"

--000000000000a1210b0633f8bbaf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Np. Found out: uhd_rx_streamer_issue_stream_cmd:)

On Tue, Apr 29, 2025 at 11:42=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.co=
m> wrote:

> Dear all,
>
> Can i restart a streamer with  UHD_STREAM_MODE_NUM_SAMPS_AND_DONE after i=
t
> is done?
>
> TIA
> Nikos
>

--000000000000a1210b0633f8bbaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Np.=
 Found out: uhd_rx_streamer_issue_stream_cmd:)</div></div><br><div class=3D=
"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Apr 29, 2025 at 11:42=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailt=
o:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gm=
ail_default" style=3D"font-size:small">Dear all,</div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Can i restart a streamer with=C2=A0=C2=A0UHD_STREAM=
_MODE_NUM_SAMPS_AND_DONE after it is done?</div><div class=3D"gmail_default=
" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D=
"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:=
small">Nikos</div></div>
</blockquote></div>

--000000000000a1210b0633f8bbaf--

--===============5773762968024116924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5773762968024116924==--
