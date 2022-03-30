Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF6C4EB8AE
	for <lists+usrp-users@lfdr.de>; Wed, 30 Mar 2022 05:12:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AD323848DC
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 23:12:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648609978; bh=KNtEGJ70eLE9Ryt8VY/FlGqRZfjcjJIpp0WOmaY+vpE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OhKPbzH/IRVp9Nsz1BZYuiDYryvlZwGCQ/S0L5UH/Ge4M8WIbQNSnaCkZRhIes9/p
	 vfpDfte0olE/rdb59mf2u0c0tLvuHdhbe4SMTfKj7eW/5ITHrKaIMUEnzwdzjbcYS0
	 rJKDWNDhe/dHUddMqUUchko//zBiVHvXGbjbq6dF8Pp6mTDLDeNfvsjsi932szs5QA
	 xxeEw+i5puz9MWTUXwS8iwIgrDg+GXtPFmhJpXjUS6t0iKgNemA4Mtn1LORAGk3HV0
	 7P9LcE9YTVFo0HJON9QAUqgZp0i7mp5Sm+JJRcoFaonQRQzW4S+nqy+aQTbiqUZbBP
	 86OMfCFiH9ubw==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 281D1384278
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 23:12:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JX3THUaP";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id e81so5746349ybf.13
        for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 20:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IDXt9kdhumxnK0uTRjF1fvhKmaWgzrIeAzdgqUAipBw=;
        b=JX3THUaPHCfEhPlrodJO18KmQDnB4JCl6Y+bMvzX49ERO9Ix5mhw6cugJ8E6r7Pcje
         GEKnHumAtbOPk9hxKNQXOOLu0XutcdkzG51mviFxtw2SZQKnSEljiwev3GEfKGBzr+i0
         ROAoM9am5kNdB07AgdmlLqClUCVEU5QGqRUfT9sQ7R/1xeUX6mj7UzJ2JSXULNSe+4kj
         U0sN8q7/YfP85fDKTSR08CEfAGoz8rwGPqkn0llgRsif4uSqSM0/rNwWxWexKdN7gOsL
         pg0I2RgBoGeqefOjJ0lOGTW2L5Uoda3OsU5KWYNlZOZoM6f3CRKNd6LPU/RljTokHpGe
         tA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IDXt9kdhumxnK0uTRjF1fvhKmaWgzrIeAzdgqUAipBw=;
        b=MJvWbRtWAcSuSCHGyasBqEB9sn83JZAwlvexklgyWjGLTazbIkGcFyuCHIiSn8w9tK
         chflKbhcjW6rEKbxNzlNVU1RGk5ZCjO7YJ5YpR0gM4XaGX9+hZGc4pW5AUsPCv9ny4wn
         wH0TY0jWfWozU3UQOTA09Yp2r2ue5toj9qAubdZZ3AJ+046ox9S6mCw7b2mePt7368MU
         DneMKKAqUT4fuikrOJeth3JlcNDU73dKxCDAgy/MqglGGLS+w90YEhVPDy4RxGUW0i74
         2ox3RWGVxM2IskgIzv5RIb+3FRalAzVdC454wfThM5rkrK6/IAofxcxLeBPGVdp+guwB
         CgiA==
X-Gm-Message-State: AOAM531T6M73IjR5n9w+B+qL2UFlIaneMRzJHiM45BXvYMeH8D9FLT+q
	oPSKYWXwLJ2aJQoqmhiAz4QaP2XnQsPg5mScJUCDyuuq+yU=
X-Google-Smtp-Source: ABdhPJzJdgL9GmSMinj2Eerz8Kff0I3hlm/4/RBJAOJZaCSVh2LgWWP5M5h3qCXYHDz75lwG5Jtm35tfHFhaEhTHB/I=
X-Received: by 2002:a25:c1c6:0:b0:63d:15cd:f819 with SMTP id
 r189-20020a25c1c6000000b0063d15cdf819mr444480ybf.115.1648609923244; Tue, 29
 Mar 2022 20:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <0d5c1d3c-a2fc-e874-73a7-7afb8e6b9478@gmail.com>
In-Reply-To: <0d5c1d3c-a2fc-e874-73a7-7afb8e6b9478@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 29 Mar 2022 23:11:54 -0400
Message-ID: <CAB__hTQP5KAp5uyzpi+MFYbkg9MeLUFJSFpQ61-g5zs-7Ajbqg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: NROZBP27N33OGBDFCCE4GXKXQGARQ4IB
X-Message-ID-Hash: NROZBP27N33OGBDFCCE4GXKXQGARQ4IB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: An RFNOC-on-N310 question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NROZBP27N33OGBDFCCE4GXKXQGARQ4IB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5671800393872901300=="

--===============5671800393872901300==
Content-Type: multipart/alternative; boundary="000000000000d96a5605db66e87c"

--000000000000d96a5605db66e87c
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
I have implemented 4 channels of fft, complex window multiply, ifft with
256 point ffts. I might have removed duc but don't remember. I think your
processing would fit. Sorry for the slow reply.
Rob


On Thu, Mar 24, 2022, 11:33 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> Good morning fellow USRPistas:
>
> Some of you may know that my *other* role in life is to run this little
> outfit:
>
> http://www.ccera.ca
>
> I'm wondering about an RFNOC implementation of something for the N310
> which is basically:
>
> Radio--->DDC-->FFT-WITH-MAG**2-->IIR-FILTER--->KEEP_ONE_IN_N-->SEND_TO_HOST
>
> For all 4 channels, with an FFT length of 128.
>
> Does anyone have a feel for whether there are enough resources in the
> N310 to achieve this?
>
> This would be for the first stage of a 4-antenna FRB signal-processing
> chain.
>
> Cheers
> Marcus
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d96a5605db66e87c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Marcus,=C2=A0<div dir=3D"auto">I have implemented=
 4 channels of fft, complex window multiply, ifft with 256 point ffts. I mi=
ght have removed duc but don&#39;t remember. I think your processing would =
fit. Sorry for the slow reply.=C2=A0</div><div dir=3D"auto">Rob</div><br><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Mar 24, 2022, 11:33 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Good morning fellow USRPistas:<br>
<br>
Some of you may know that my *other* role in life is to run this little <br=
>
outfit:<br>
<br>
<a href=3D"http://www.ccera.ca" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">http://www.ccera.ca</a><br>
<br>
I&#39;m wondering about an RFNOC implementation of something for the N310 <=
br>
which is basically:<br>
<br>
Radio---&gt;DDC--&gt;FFT-WITH-MAG**2--&gt;IIR-FILTER---&gt;KEEP_ONE_IN_N--&=
gt;SEND_TO_HOST<br>
<br>
For all 4 channels, with an FFT length of 128.<br>
<br>
Does anyone have a feel for whether there are enough resources in the <br>
N310 to achieve this?<br>
<br>
This would be for the first stage of a 4-antenna FRB signal-processing <br>
chain.<br>
<br>
Cheers<br>
Marcus<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000d96a5605db66e87c--

--===============5671800393872901300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5671800393872901300==--
