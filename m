Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 764983E3371
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 06:47:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D2E2384B57
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 00:47:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="bCjCgxMg";
	dkim-atps=neutral
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 47CC8384543
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 00:46:32 -0400 (EDT)
Received: by mail-vk1-f170.google.com with SMTP id bb10so1115540vkb.9
        for <usrp-users@lists.ettus.com>; Fri, 06 Aug 2021 21:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YmtayIjfkydhZW8Ao6DLF34nOeryujyJS42QDiOrJK4=;
        b=bCjCgxMgmwtjxQBEZ2rz0DWtHzRZFajASujo3aNyzdhCslnw4Ou7X1zyXy+bp8bY1H
         Tn3rTTdvZQBgLNiT436E7dTzT4LWhcjGowFUnhlku1gWOJcBhnlAdY596W018/s7gmds
         1vhgxanvrSbfj84MHu1M5DVcDEhpEYBSYZJaLIye7v0eS69+StKRaXG3P38+xEqQa5zz
         UYPXq3yavucv2G6ySQBRgBB+vx3fQ4iVQxjao1kLx1Z/JxPBQhkeLnS6oz621HfDNyTd
         PdPBNXI5K7CqR0uXYlVHUmv6GccjL6mSJ8ecthcpKC18fw0ebQbqiQz7OH0DO0ZVH7se
         vrkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YmtayIjfkydhZW8Ao6DLF34nOeryujyJS42QDiOrJK4=;
        b=nlHMAt+Z6BnQLCWgVSbLve0kaErSS+7/ZD2cZA2inVdRcha3tztEEPFnvFXxEgjTyj
         6Y3xKGCN0NzV1kcoey18lS75NHAqB3J+90kTavZMq5ReFQfjNfCqjt9/FXHqED4ulm9P
         F3SLptIjNkN91QigyT7Z2aFJwFMPFzZLyE7oD6ZiVYres0T5NCdM+KnWJgvFBws96QT5
         1Wl9X/KTiiXPeAAR2Mk4JvLHIA8yIcGGTCzUuia2m39DjzEzF8En5rQibP6EtCZ9puVS
         4bDznagKndMBPYGzthQEW2PmYXAeGlDJJIEmQZWJ0RhX6A+0BErzjxDcVn0nGQPAwZPt
         xRlg==
X-Gm-Message-State: AOAM530T+WqL99gCa8FvUN87+Egh84Cy6bSdZD9usI7FpG7R6+cqnKEa
	LUc5OpiSGncaevCbOsvYhU7c9Jn65UMwdu/W8uFwX9/Y
X-Google-Smtp-Source: ABdhPJwm8b7b2Z/MmkpVwc/m80NOGfMw1XYSa85qPzvJZsX2TqR6jJNf0zf8z6AzL0PVo8kYvSEnVb6oJ8/xY4TEKhk=
X-Received: by 2002:a05:6122:639:: with SMTP id g25mr9860485vkp.19.1628311591588;
 Fri, 06 Aug 2021 21:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <VIOhSBdfi8Q5lLG3OpBJTnl16isVEuZulcHLvlUCOFQ@lists.ettus.com> <CAPRRyxsxBXiwTfifNABa60mO2ELfBCX-S1nAX=c8-DSr5DbS+A@mail.gmail.com>
In-Reply-To: <CAPRRyxsxBXiwTfifNABa60mO2ELfBCX-S1nAX=c8-DSr5DbS+A@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Sat, 7 Aug 2021 00:45:55 -0400
Message-ID: <CAL7q81uC_A3oABZtKR+Tz=bZes1stOk-d8TzDVskJCNfeFVx9w@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Message-ID-Hash: 34KNU5I2FAUXL7UQNV7UIUINURW6V7U2
X-Message-ID-Hash: 34KNU5I2FAUXL7UQNV7UIUINURW6V7U2
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: thebouleoffools@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build FPGA image USRP E310 UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34KNU5I2FAUXL7UQNV7UIUINURW6V7U2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8146907124975372466=="

--===============8146907124975372466==
Content-Type: multipart/alternative; boundary="00000000000000251805c8f0d686"

--00000000000000251805c8f0d686
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Use uhd_image_loader to update the FPGA. You can do this either on a PC or
on the device. See:
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_started_fpg=
a_update
.

Jonathon

On Tue, Aug 3, 2021 at 10:45 AM Ivan Zahartchuk <adray0001@gmail.com> wrote=
:

> And you can have an example in which to the standard firmware cutters for=
 example FFT and a window. And what is the sequence of actions when downloa=
ding the firmware to the board?
>
>
> =D0=B2=D1=82, 3 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 03:12, <thebouleo=
ffools@gmail.com>:
>
>> I followed the guide here and was able to build a few simple images:
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 . The command
>> is now =E2=80=9Crfnoc_image_builder.=E2=80=9D
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000000251805c8f0d686
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Use uhd_image_loader to update the =
FPGA. You can do this either on a PC or on the device. See:=C2=A0<a href=3D=
"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_started_fp=
ga_update">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_=
started_fpga_update</a>.</div><div><br></div><div>Jonathon</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug=
 3, 2021 at 10:45 AM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.=
com">adray0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><pre id=3D"gmail-m_-66180458326265=
90975gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=
=3D"en">And you can have an example in which to the standard firmware cutte=
rs for example FFT and a window. And what is the sequence of actions when d=
ownloading the firmware to the board?</span></pre></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 3 =D0=B0=D0=
=B2=D0=B3. 2021 =D0=B3. =D0=B2 03:12, &lt;<a href=3D"mailto:thebouleoffools=
@gmail.com" target=3D"_blank">thebouleoffools@gmail.com</a>&gt;:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>I followed the guide he=
re and was able to build a few simple images: <a href=3D"https://kb.ettus.c=
om/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettu=
s.com/Getting_Started_with_RFNoC_in_UHD_4.0</a> . The command is now =E2=80=
=9Crfnoc_image_builder.=E2=80=9D</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000000251805c8f0d686--

--===============8146907124975372466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8146907124975372466==--
