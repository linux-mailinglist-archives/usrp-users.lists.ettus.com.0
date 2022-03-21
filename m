Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F404E2B12
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 15:43:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 646113853FA
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:43:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aFkgl7m5";
	dkim-atps=neutral
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id CBF243850C3
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 10:42:01 -0400 (EDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-2db2add4516so158308137b3.1
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 07:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=h9RXZE+dcfBy+barsMnJYB3lI2ZaNI8k2Ef5Q0QrxmA=;
        b=aFkgl7m5F0FzYuxLNRN6fCKsM/nDBYxeIg80AgqL+7/iCfNO1/HjIHEtudpwcv3nu4
         g80po4l5QzUJv1WsYGTbZ5B8XlUzFC3ijWgGbAtiPAsJhwCnRUKEySF2F3TSl4SAB1qe
         8Rl9ercyvItW68XpM5WBoEahcOzgZ/UpQ1zAuPzg+jKwloSv7wz+qXoT8+Ouwus03Fbg
         25L+m3Utt6tkosVOrU5KqZMaPiTYJdLgPAqmexZy/oIAuk7NGHcSXtrDDUN5WeM2wVri
         unFU0Ec47JVHYWY8e3SrbwA2HnUIp23X1vmbjJI8Em2+RypqEQDLVzV+1wgjAJrtaoK/
         cQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=h9RXZE+dcfBy+barsMnJYB3lI2ZaNI8k2Ef5Q0QrxmA=;
        b=U2p51zW6vxxVYmZtf95LO+7o8vo1m/euE13Jz45D1ASILBKphH0GxNn1BGgL010Lab
         42pYr2HNbNPQDLTK0b4jQHlefXeb8f3E5IUk4mL6fyYO2iqTpoDo8dkjKj6Evn7dpGIQ
         C3Jgv9vqmJOZ9mSvDnJSBRjZgB59CuHMcVbYpvOm2SJe9p0r0tmyqZnEAMsfekGVZSnA
         Gv7FOv/z1Ly289XpYvSU0hEr8mQcIOXgidmTLuGD8TRj5USMP07JyA2Bl6xJ2X2D+owp
         9Ybr+zPm1MNfwy70CXfyDvK4LOYJb/aGqc86CbGS2qENYC4e5Lc9Eu6w20gmVxrwP1ct
         39rQ==
X-Gm-Message-State: AOAM531W3SOuXGRJrrmElXbYMS3vj6Oh6/IEuDqAxqZL2GweG/IEat2q
	dOTsCxdcv5AJgcZsPWzi48k7EaBfWM1lx3xDHqQT/+qqPB6v+TtJSDM=
X-Google-Smtp-Source: ABdhPJwwDTYHAxYfMibrbcsuKlI/XtOAmyCpxsOgsAI15hZGURCH8EI9ysC7ha9W4Wswx60CEjkV6E1wtmnmX0v3oD8=
X-Received: by 2002:a81:140b:0:b0:2e6:650c:dd7b with SMTP id
 11-20020a81140b000000b002e6650cdd7bmr834596ywu.365.1647873717676; Mon, 21 Mar
 2022 07:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
 <8d8335b8-bf02-af1e-3493-b0f4063409c4@ettus.com> <CAA=S3PuRq4X17Ba0xKSoNZnheQ_YFsXGE7K4iFdm3yBM9AsMLA@mail.gmail.com>
In-Reply-To: <CAA=S3PuRq4X17Ba0xKSoNZnheQ_YFsXGE7K4iFdm3yBM9AsMLA@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 21 Mar 2022 18:11:45 +0330
Message-ID: <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XVUQX6M3T4OX6BIZEV46FSWF4GFY743T
X-Message-ID-Hash: XVUQX6M3T4OX6BIZEV46FSWF4GFY743T
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XVUQX6M3T4OX6BIZEV46FSWF4GFY743T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7802634275067969129=="

--===============7802634275067969129==
Content-Type: multipart/alternative; boundary="00000000000093b52105dabb7f26"

--00000000000093b52105dabb7f26
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But I need to add samples to a buffer. when 4096 sample is received for
block, do an operation like correlate and convolution, and so on.

Can we use RAM in an RFNOC block that enables us to work with specific
count samples??
It is possible?

any example or guide thanks


On Mon, Mar 21, 2022 at 6:01 PM sp h <stackprogramer@gmail.com> wrote:

> But I need to add samples to a buffer. when 4096 sample is received for
> block, do an operation like correlate and convolution, and so on.
>
> Can we use RAM in an RFNOC block that enables us to work with specific
> count samples??
> It is possible?
>
> any example or guide thanks
>
> On Mon, Mar 21, 2022 at 1:16 PM Marcus M=C3=BCller <marcus.mueller@ettus.=
com>
> wrote:
>
>> Hi!
>>
>> > In Gnuradio when we want to work with samples buffer samples is 4096 .=
..
>>
>> No, it's not! GNU Radio has a variable workload length approach, so you
>> **must not**
>> assume any fixed length buffer. Especially not 4096.
>>
>> > but for RFNOC we faced 32 samples........
>> > How can increased samples buffer in RFNOC block to 4096...?
>>
>> You don't!
>>
>> Best regards,
>>
>> Marcus
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000093b52105dabb7f26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div>But I need to add samples to a =
buffer. when 4096 sample is received for block, do an operation like correl=
ate and convolution, and so on.<div><br></div><div>Can we use RAM in an RFN=
OC block that enables us to work with specific count samples??</div><div>It=
 is possible?</div><div><br></div><div>any example or guide thanks</div><di=
v><br></div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Mar 21, 2022 at 6:01 PM sp h &lt;<a href=3D"mailto=
:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">But I n=
eed to add samples to a buffer. when 4096 sample is received for block, do =
an operation like correlate and convolution, and so on.<div><br></div><div>=
Can we use RAM in an RFNOC block that enables us to work with specific coun=
t samples??</div><div>It is possible?</div><div><br></div><div>any example =
or guide thanks</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Mar 21, 2022 at 1:16 PM Marcus M=C3=BCller &lt=
;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">marcus.muell=
er@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi!<br>
<br>
&gt; In Gnuradio when we want to work with samples buffer samples is 4096 .=
..<br>
<br>
No, it&#39;s not! GNU Radio has a variable workload length approach, so you=
 **must not** <br>
assume any fixed length buffer. Especially not 4096.<br>
<br>
&gt; but for RFNOC we faced=C2=A032 samples........<br>
&gt; How can increased samples=C2=A0buffer in RFNOC block to 4096...?<br>
<br>
You don&#39;t!<br>
<br>
Best regards,<br>
<br>
Marcus<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000093b52105dabb7f26--

--===============7802634275067969129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7802634275067969129==--
