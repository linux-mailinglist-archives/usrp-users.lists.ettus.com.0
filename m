Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74036A1DD6C
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 21:35:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 206CE385F98
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 15:35:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738010155; bh=YsuWla8U3YdFR5tCv75VoOrOxZp6DqMTKWMPNBzEzvY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AFKEDyN2r7vjVu6dmXbUtCPH5Pu2f8ZnMDDt+LbQPPb8cVEZ/Qw7B2jgR4SP/AMhf
	 sf+4VvHbFPQG2HHDHgTFVLpEqh9xyQKpbk7AEGV81GUut2Th5RmTpXqnWL/ZUpBS8H
	 nP4VefZiiMaeN27ZUewwOTq7bkPFa5YlDVSHuGZNC/6rdrSRj5eDV5InFLyyAGaJiA
	 0pe9Mw82srLTR4kOpnVcDbqklaeqrzY/3fgfXMdn7TGyod2EWLuaiMPaV9KQUkWEJr
	 Jg8cG8vkK5jaMIWqHybKAFGKpDI9v9hvZB0+i2tWGPVhNRiS2/x0IVG5wRwKQ5X/Nx
	 32+Grk+qxx6LQ==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A094385F87
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 15:35:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Poxh0ETw";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d932eac638so9559875a12.1
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 12:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1738010106; x=1738614906; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oseOeFWo0EdoBWj4mwWdsozbQwj9ePPNIWiprVfMJgI=;
        b=Poxh0ETw6u2eBVIYACc9ilioR0OX4RHysvFr5xV+zf9arylGuXecHA6ux+r4NbadAQ
         AbFe8UQmkOzgMwUcnf/F8KRp+tPT3ltfG2OTjy3Q4ByzH+2C2vdZzmYyUNZqr3RJsU74
         9el3N0aR+jkxxKFHR+jeBWb8HsVt/A5rTM0pzY5e6W8npv/Wm8+YFqzTLM0MdXULnurD
         mpg/XOkXQQmmia3wUAwEhtznYqm9fJ4mqHuEzTysDB9cIhImAHRkRFPPK/t6VAnNoAYe
         v3MPktb7a9Eq9kDYPf7Ia2YJ6+dO2fixzWe9D2/jsCLzNQ6+4bVIPlfrYn3ruiO2Zzc+
         7hvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738010106; x=1738614906;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oseOeFWo0EdoBWj4mwWdsozbQwj9ePPNIWiprVfMJgI=;
        b=oNeXS4z3sf6p0Jb5pXn7QvZ0YQIL1+CnUv74AgvzN/VDm4YFq6IxTBtKXA3L31q82Q
         x48RNM+1e5HmqCmlbwWAzcOCcC6/IKSt1vVrra92k1Pm4es6yaXedVnztLKk3X29JXIw
         V8/wZR6YOsQeljl0uHh68m95v0EHhbd1CYrr5TSCrV2ZcWzwshO2ERtYT99dBF9PEKVI
         6O3pcp+qtuLV7zk07lMN5N4L93oPVGNR1DZJ75flfzBEIb9bNRQ87Mm8QuyKcSJIzfXf
         gQfm3jQzhdSTCOUKbmxLwD4N+u5Y4aIm5OOV7cNmxnl6VJYbKe5ZC2ZlDKT0hGPt43cU
         9R0w==
X-Gm-Message-State: AOJu0YwDLgRUy58DSxnfRBEw3XSR+NyYuHy4jjIr8Fz/3NUavbg57SQT
	XMZTpBFCooS+8noLKWjUB0vAnXoKbgv2ObkVKrpIxSJxi0cKSsHyHj1gOFZmjUGj3PjpYjoTY5T
	ppao5ahiFeNU0NgZhnrRYuX0GvaT8eba7eJsi4PZb1MRQUL/qnRBNKw==
X-Gm-Gg: ASbGnctQ80n4NJzH1+E7CYXwPW06xHxe+poIEgS9pMEBMBzRGYLmsi7cNh11DOwGdy1
	EjuTZuCsl9CwQj5Olchoj++nCR1DSlUrjWR01Rshfy9COWNA7kmAq2h7mhjjqW+A2R7alDUescG
	j6W15xeoqwsqNgiGUFrw==
X-Google-Smtp-Source: AGHT+IFX57mm2EO6n+Co8yM7If4bGCaHLMeaecE+qcxk5JrgTQpL9if189Zyj3mG/l5Wkl3IqrzPxukdo9LvdkG2DXw=
X-Received: by 2002:a05:6402:268e:b0:5da:a78:4c8b with SMTP id
 4fb4d7f45d1cf-5db7d2d2e1cmr37273527a12.2.1738010105845; Mon, 27 Jan 2025
 12:35:05 -0800 (PST)
MIME-Version: 1.0
References: <b34d9c34298fbfffa03375a026d5a5ef@atindriya.co.in>
 <CACDPEcMT4png+YYoYK5QkjiWkm1pvKCkd=FzjMEdcgRP=KrKpQ@mail.gmail.com> <886e1e77251bdcaf38e55321b09c0cc5@atindriya.co.in>
In-Reply-To: <886e1e77251bdcaf38e55321b09c0cc5@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 27 Jan 2025 21:34:55 +0100
X-Gm-Features: AWEUYZmS_PTh6mXeA95xO2S1qIBYKFrbTuOLwHd1Naw4H7IGx_EMbZ51F5I67GE
Message-ID: <CAFOi1A4xB=JUgE5J5LH7aBAGjvUy+JkuV4XFdm41JiHTd3K4ww@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: SSV7BNF7XMBYPBPHR3M3PJG4ZLCOIITY
X-Message-ID-Hash: SSV7BNF7XMBYPBPHR3M3PJG4ZLCOIITY
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GNU RADIO in USRP B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSV7BNF7XMBYPBPHR3M3PJG4ZLCOIITY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0573320800182498112=="

--===============0573320800182498112==
Content-Type: multipart/alternative; boundary="000000000000f9b39b062cb602b1"

--000000000000f9b39b062cb602b1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Follow these instructions:
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Downloading_the_UHD_FPGA_Images

Then these:
https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#uhd_image_loader_t=
ool

--M

On Mon, Jan 27, 2025 at 3:57=E2=80=AFPM <kavinraj@atindriya.co.in> wrote:

> Hi,
>    How to change this?
>
> Thanks,
> Kavinraj.
>
>
> On 2025-01-27 09:07, Muhammad Hassan wrote:
> > Hi
> >
> > You need to change the environment variable
> >
> > On Mon, 27 Jan 2025 at 13:43, <kavinraj@atindriya.co.in> wrote:
> >
> >> Hi,
> >>
> >> I have created a block in GNU RADIO-companion. when I am running
> >> it
> >> is showing runtime error. I have attached a image file for your
> >> reference.
> >> I am using UHD version 4.7 only.
> >> What may be the issue?
> >>
> >> With regards,
> >> Kavinraj._______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f9b39b062cb602b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Follow these instructions: <a href=3D"https://kb.ettu=
s.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_R=
adio)_on_Linux#Downloading_the_UHD_FPGA_Images">https://kb.ettus.com/Buildi=
ng_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Lin=
ux#Downloading_the_UHD_FPGA_Images</a></div><div><br></div><div>Then these:=
 <a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#uhd_im=
age_loader_tool">https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#u=
hd_image_loader_tool</a></div><div><br></div><div>--M<br></div></div><br><d=
iv class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Jan 27, 2025 at 3:57=E2=80=AFPM &lt;<a href=3D"mailto:kav=
inraj@atindriya.co.in">kavinraj@atindriya.co.in</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0How to change this?<br>
<br>
Thanks,<br>
Kavinraj.<br>
<br>
<br>
On 2025-01-27 09:07, Muhammad Hassan wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; You need to change the environment variable<br>
&gt; <br>
&gt; On Mon, 27 Jan 2025 at 13:43, &lt;<a href=3D"mailto:kavinraj@atindriya=
.co.in" target=3D"_blank">kavinraj@atindriya.co.in</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Hi,<br>
&gt;&gt; <br>
&gt;&gt; I have created a block in GNU RADIO-companion. when I am running<b=
r>
&gt;&gt; it<br>
&gt;&gt; is showing runtime error. I have attached a image file for your<br=
>
&gt;&gt; reference.<br>
&gt;&gt; I am using UHD version 4.7 only.<br>
&gt;&gt; What may be the issue?<br>
&gt;&gt; <br>
&gt;&gt; With regards,<br>
&gt;&gt; Kavinraj._______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f9b39b062cb602b1--

--===============0573320800182498112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0573320800182498112==--
