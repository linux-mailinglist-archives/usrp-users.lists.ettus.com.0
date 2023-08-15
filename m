Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBFD77CFD8
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 18:05:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 359BA384B48
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 12:05:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692115519; bh=hVn+pdYznmRmzow5dHpLTQjHfbHKQ5x/8L5skpnERCg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=i4ggaJFKvzKHhg25xq2+NmJwdfi5C9YIGjKYdhh+E0NXZ8T50Y3eGZohpUb36tv6d
	 i/fAR9ArAIaQx+bp+ri6Bitahuba3uhjorKbU1MVsVV9M3R5yiAxEGVa0OO5+/TrUd
	 fm0x/4fFhVA850xQOEHzu+LwCSBS6ajohn4kvAms6XwjwNPsZHbuNlHm5fEUm1ry4B
	 Fam4v04IhDUNBf0U7yG9YmsamtFzUGSBmdUJDAA0y3OMh0LOUX5X5yMAA5oSc1N9dz
	 Mz6hE+HDQLrbjJHOqJPM2DMvET+yJDvmCTm4d1q7TLM+ztvxkl0t9z/cMu/P7hB5hq
	 K57osLAkz6y5Q==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id AB607380950
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 12:04:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="IhDFgvbK";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b9d3dacb33so86857751fa.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 09:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692115487; x=1692720287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DCq5k1hsaMSDm/a+0NFznH1IXfEIFuUtShNcxVrBVlM=;
        b=IhDFgvbKl2IkRAXtztXntE88+BHZIfzjyuTT52PGuI36etOkQyaEfRnQP0gB7pV32S
         S4hEyCCVW5A40LiafPOrGyT1HnehH54Gd7IoZv4fORQAzOfSh/mI1vN7mU8Bntmn2iBu
         cDl5h8+aTwgVaa9V2gxkJ1Qoe/baVu7SRYIJhD5KGNtv1sC4qn+PNU/aGODt787kAVsc
         5M7OQv2BJQM/fi1tLb6WdnVFEFUAKxe8J6OpXvDkQd6PdW0zgScn3HqnCmLIz52rcJfj
         jFfnVNwabQuKbG4wNNFcdxprRF4t7kr4JCbPT7CPyDHDNsUZPGZ3rbWVua1hkYeUFR+c
         taxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692115487; x=1692720287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DCq5k1hsaMSDm/a+0NFznH1IXfEIFuUtShNcxVrBVlM=;
        b=NLKso1h/sKHItQf3B3y1lsENzvn+4fJvjHtmv2IObHfAcLXPkjtcMOXZFiSOjS/otC
         +RM6cr8yBeznpYWzO3psW8hoZQ/itKpzldWZHWEk2CJEmdmLKlic7aLtcREPGWPEfNGW
         9GYKjdgJCo/SKZl5UeeEVtIUTjrrvwY3oS3FfkWDB7F1epO7PzEUlwa57mgYWP9nKwDt
         hEK9sewXIa2t+M8tHd6ijEk8Q09VMW6LitEIN+eTw4kiwzvgTVODXOTvUY8y08zmgX2I
         enO7hKm6gjvfbdKYdQ7xPHr9LrztbaRXB+CRdS8gYvt9Tf1g4PypRrUyMaEkOC5aTTnd
         V7cA==
X-Gm-Message-State: AOJu0YyhQQTA10AJ9sTNZf5ZQAubkmQCrgWzUwFSVFHxic4ff8bBDOTJ
	xI4yJZqgBilokDJKzELLWbd5oz3Gl7Q0+xsaQW/UO4YSZb8DvnwrJco=
X-Google-Smtp-Source: AGHT+IGXU/OCzltpr8McLDpN4gSyXGXht0TPkjXbel+8NlT9+XVGxi0KR4Cub9kdqPWN7X1sPI6Z/3dM4ZGWIZygv8Y=
X-Received: by 2002:a2e:a315:0:b0:2b9:eb9d:cc51 with SMTP id
 l21-20020a2ea315000000b002b9eb9dcc51mr8564913lje.49.1692115487208; Tue, 15
 Aug 2023 09:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <169210908966.4399.17623193205238971994@mm2.emwd.com>
In-Reply-To: <169210908966.4399.17623193205238971994@mm2.emwd.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 15 Aug 2023 11:04:31 -0500
Message-ID: <CAFche=gKRrFXfTcPMWKK-=byjbn7Rt+53ue7TRUF6tJOV3Oocw@mail.gmail.com>
To: "Austin, LauraLee (US)" <lauralee.austin@baesystems.com>
Message-ID-Hash: S7VMVOFXXKRYDJOLVISNGW4RTQYUCI25
X-Message-ID-Hash: S7VMVOFXXKRYDJOLVISNGW4RTQYUCI25
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use Questa for simulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S7VMVOFXXKRYDJOLVISNGW4RTQYUCI25/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4381957786617530702=="

--===============4381957786617530702==
Content-Type: multipart/alternative; boundary="00000000000088ced50602f856e8"

--00000000000088ced50602f856e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What gives an error? What are you trying to simulate and how are you
running the simulation?

The last time I used Questa, I think I just added it to my path instead of
ModelSim and it worked the same. Some additional changes might be needed if
you want to use Visualizer with our Makefiles instead of the legacy GUI. If
setupenv.sh gives an error regarding ModelSim not being found, I think you
can ignore it as long as Questa is in the path.

Wade

On Tue, Aug 15, 2023 at 9:18=E2=80=AFAM Austin, LauraLee (US) via USRP-user=
s <
usrp-users@lists.ettus.com> wrote:

> Questa and Modelsim are basically the same, Questa just has more features=
.
> But when I define the modelsim_path to the bin directory for Questa, I ge=
t
> an error, Modelsim not found.
>
>
>
> How do I use Questa for simulations?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000088ced50602f856e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What gives an error? What are you trying to simulate =
and how are you running the simulation?</div><div><br></div><div>The last t=
ime I used Questa, I think I just added it to my path instead of ModelSim a=
nd it worked the same. Some additional changes might be needed if you want =
to use Visualizer with our Makefiles instead of the legacy GUI. If setupenv=
.sh gives an error regarding ModelSim not being found, I think you can igno=
re it as long as Questa is in the path.<br></div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Aug 15, 2023 at 9:18=E2=80=AFAM Austin, LauraLee   (US) via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div class=3D"msg7991684550141580573">





<div lang=3D"EN-US">
<div class=3D"m_7991684550141580573WordSection1">
<p class=3D"MsoNormal">Questa and Modelsim are basically the same, Questa j=
ust has more features. But when I define the modelsim_path to the bin direc=
tory for Questa, I get an error, Modelsim not found.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">How do I use Questa for simulations?<u></u><u></u></=
p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000088ced50602f856e8--

--===============4381957786617530702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4381957786617530702==--
