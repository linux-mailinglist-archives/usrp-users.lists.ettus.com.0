Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4F9724F92
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 00:27:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D99E6383685
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jun 2023 18:27:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686090473; bh=QWkj+7KPAU01sn+IR9dsHXmIiO1/gJ2CzSjXyFjofJk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wCMeMvU9VQxCS1u187uyFss+lanXZPvATQn6t0cWJ7lMIOtArSVED+oYabSyIIRd5
	 USZmbnK5/zt0Pg6FdIFtkAGMeo2DqbuCN7Kp7J9YaG/sBzvYgN20qEjxd9SmtYfh5O
	 pKjCRrSIg5mlGdBT1ZbJWpXOpDnvISvWZ32+dXdUpLczoAyz4jg5g87fEtSoNred8H
	 QzZ7AZtCYozbhNuvd9VKOCWTETKYTlbslS0t1m8LUItQDD54Vt6jAaAvvg3pG8JpuX
	 tuCmaCwKYurAQAvGmlyNoqu3o5S0w5e6708Ls/k6xQYzMFlOVUe6+Fau5ndwEoR4H1
	 k0eXnnyq7icjA==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DCC7380B52
	for <usrp-users@lists.ettus.com>; Tue,  6 Jun 2023 18:26:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="EBEQyIxO";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-977d0288fd2so524519466b.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Jun 2023 15:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686090412; x=1688682412;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a8zad7scSsI5+4I+F57FbkI6G46GWHYAFLmwbhQxK6A=;
        b=EBEQyIxO8fXmNZ/KgxyJU/cvoaOr+LhOZ7Q+G/fTqXRGGPAW+aVA74vwNHLW3TIwEv
         q6mb0HVjaKwdebgu1y+0kUhvlHa49HsIuPpoU3SUyE6qG0tO8SZSm3Ex+EwjZ2Oah+t/
         GFqH2G2pEx9PnrC0DunjqqND6zfVX45Vosdzn2Mz2bXdLNi95ZZGZbHfEdFI07uGKQn4
         VZktXP7BelqHIpzoijkTgaU+foRRz2mKPD79D8nJWY5FVg5Tsg3ehaLGythGnj+cjLWn
         zIQ1F14wtNZN7xGQsj97N7NNhMM8YQuEw6GHWa8lT1HkGD00MtotSlbcZaqC9/5D38TR
         nXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686090412; x=1688682412;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8zad7scSsI5+4I+F57FbkI6G46GWHYAFLmwbhQxK6A=;
        b=Mz4f6C6OFOlxMcjIxoGLlewxlIAEz5MtnEZiV7ZseMmMWVm+08ymfydnkqfdiuiXG3
         NZdAfQYDAK87KgQ5MDmQTECgs/W+Vpym+VllfREFFlIQ3DRNvXU8lCj3wYyZ+VSX9oM5
         GO12kX3ERZzPU5rIWIcHlkMMgfEAbBVqIZxqj1nAi9s59TeMTCqxMSCR+ga0jBfIgfAw
         ezMTMWQZtz+leXcKmN17bipOAo/8fVG7ExHqCCqcDUhJxFb/rR/1jyrSTqOsZ1vAcN/X
         ebZQVzeVmlSF+LH9HIqgb4/aVnHQP6oxAxLU30hmd4NPNlODvP4YYoKD3MgLvModMIDc
         TMKg==
X-Gm-Message-State: AC+VfDwEWb4xTXC801RzeNBQC8LFRGd9GzVd2hAWZzD9yXdO+dH+OyVG
	iwHvsSzgGyn/9x/GvmcVlUNKsKPtY9Lvls0K2FJwxrI1UeqVRfYNrIQYvg==
X-Google-Smtp-Source: ACHHUZ4Jl599MkZsvhNlzGEAmc0OvJJsdmFGuCs+QZmFUQ9mVvDyF+yR8/Q0M6cgBoNvo8rSMEP/fyT1oRdf3KsGto4=
X-Received: by 2002:a17:907:1693:b0:960:ddba:e5c3 with SMTP id
 hc19-20020a170907169300b00960ddbae5c3mr4451972ejc.32.1686090412157; Tue, 06
 Jun 2023 15:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0@lists.ettus.com>
In-Reply-To: <8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 6 Jun 2023 17:26:36 -0500
Message-ID: <CAFche=h3k-5+_uXbC5jsyFpzRYZLOyFb4OPfnHmov6hXxEtuYQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: CO6ACB7FKPJY77UMKMPYJM43WPFWEJE5
X-Message-ID-Hash: CO6ACB7FKPJY77UMKMPYJM43WPFWEJE5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CO6ACB7FKPJY77UMKMPYJM43WPFWEJE5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8362308603228354191=="

--===============8362308603228354191==
Content-Type: multipart/alternative; boundary="00000000000013792605fd7d84df"

--00000000000013792605fd7d84df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Did you test your code one one of the default images? That'd be a good way
to confirm that you're using the replay block correctly. It could also be a
simple mistake in the YAML. Maybe you could share your custom YAML to get
another set of eyes on it? Did you add any custom logic that data is
supposed to flow through? If so, I would try to rule that out as a problem.

Wade

On Tue, Jun 6, 2023 at 4:04=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently running a custom image, however, I am having trouble
> transmitting data from the replay block to the TX antenna.
>
> When I created my project, I used a similar RFNOC structure to the one
> found in =E2=80=9Cx410_400_128_rfnoc_image.yml=E2=80=9D - I use the same =
connections for my
> radio blocks and replay blocks, and I do not have static connections.
>
> However, the generated image does not seem to work with transmit. I don=
=E2=80=99t
> get any warnings, but the red light next to the port does not turn on
> either, nor does any voltage come out. RX works just fine.
>
> I am wondering if anyone else has come across this issue or if anyone
> knows how to debug this.
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000013792605fd7d84df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
Did you test your code one one of the default images? That&#39;d be
 a good way to confirm that you&#39;re using the replay block correctly. It=
 could also be a simple mistake in the YAML. Maybe you could share your cus=
tom YAML to get another set of eyes on it? Did you add any custom logic tha=
t data is supposed to flow through? If so, I would try to rule that out as =
a problem.<br><div><br></div><div>Wade<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 6, 2023 at 4:04=
=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Hello,</p><p>I am currently running a custom image, however, I am having tr=
ouble transmitting data from the replay block to the TX antenna.</p><p>When=
 I created my project, I used a similar RFNOC structure to the one found in=
 =E2=80=9Cx410_400_128_rfnoc_image.yml=E2=80=9D - I use the same connection=
s for my radio blocks and replay blocks, and I do not have static connectio=
ns.</p><p>However, the generated image does not seem to work with transmit.=
 I don=E2=80=99t get any warnings, but the red light next to the port does =
not turn on either, nor does any voltage come out. RX works just fine.</p><=
p>I am wondering if anyone else has come across this issue or if anyone kno=
ws how to debug this.</p><p>Thanks</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000013792605fd7d84df--

--===============8362308603228354191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8362308603228354191==--
