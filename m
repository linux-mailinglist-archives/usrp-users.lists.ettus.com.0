Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C80491407
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 03:20:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D328A384F2F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 21:20:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LXPJxnuF";
	dkim-atps=neutral
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mm2.emwd.com (Postfix) with ESMTPS id AA0A9384AFC
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 21:19:26 -0500 (EST)
Received: by mail-vk1-f179.google.com with SMTP id d189so11580072vkg.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 18:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ol3myyIP8qowqO0mGeUeoEmgQ60XGfmFRp81gAIVHQw=;
        b=LXPJxnuF96/U/DimXdriJKklqhI02fWzeMUgQjyyjFdAVAtmiGmR0sEzyhW/v9wXfO
         xUKE7EuLyppxHwuLt+siBD7BTWggxujcvfhFM3mJnB1Me0rR5WW8u/YYbVm/yQHmuzPf
         xes/vGuWZokZoydDiBWLs5rKQH7BVyVvna8z+xny5z3zNiwOccEtRtobW21od9Td6HOT
         l48zngy7GyLc3sJieN4WwVqwSxshNKe25AkuejSj0KsgHrUra3ZSfWjbhHdQRcDRfpcU
         qdrjWljUty4CPg9+D94OQ/vpmuSq3QEDRuUav9D9E7epGoTtTONkIFU1sXQvUVWDECAA
         Pprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ol3myyIP8qowqO0mGeUeoEmgQ60XGfmFRp81gAIVHQw=;
        b=i7HoRf5ManXomFydY0X5FwXTBeTIjhuAdDfOi/nYqPPlQv2+XsZwYV6l4K5B395DDw
         eCno/ZcH8A+X1EQKjBKK8kS2x5G9Yyi+++7gIvEguIgIlCk3bfYeNwdjrAJIlmzN+U4F
         f1J4ZcL7T4TEpR5P2YKbdip419XkwN6cz7/YKyc/UZszRtxMlmvaKnMSkmizxmZE39jc
         msoFb/0i7UH9bWfIoXQ+yOGwft7KXYHWwZsOFvGdkznTFcTd3TnhAGCEtkyT5tnz0cE0
         xE/PjGVbe4ylzMwVfsIDdAGNK38vb1kaFmkfJicujRawYmcN+V/6V2PmhQaGU606MDaS
         jZFg==
X-Gm-Message-State: AOAM533fI4d9Lh3ycCyTA9Ih2ICXENtyG1cSQRlaMdj2Q34rFNz3rU/L
	4GyEIRSfl2nyECEHrRc4leKxSaUlMnrcN2FDcZFNdyYo
X-Google-Smtp-Source: ABdhPJyZHaUXwatX0SVsUHlLr8P+OjufhlY8+RPh1UrBLqOd6dTaEjbJefsfXkjAJxlaOxVWG1QWLKobqVUnGUHXYh0=
X-Received: by 2002:a05:6122:1698:: with SMTP id 24mr6385238vkl.30.1642472365691;
 Mon, 17 Jan 2022 18:19:25 -0800 (PST)
MIME-Version: 1.0
References: <Jxsa88OgtJOcyqjPeGhf0GpDkoWYd7q9LGLnOKO5k5w@lists.ettus.com>
In-Reply-To: <Jxsa88OgtJOcyqjPeGhf0GpDkoWYd7q9LGLnOKO5k5w@lists.ettus.com>
From: Jorge Chen <superme991@gmail.com>
Date: Tue, 18 Jan 2022 10:19:16 +0800
Message-ID: <CALbO1t3BEqzSozp-ysO70mtyP5XmhGTiJKTD+Ov0WwYbYLVr9Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 3C7QZ7OCVQINXFAZSVIEOQNZWKRVEEJ2
X-Message-ID-Hash: 3C7QZ7OCVQINXFAZSVIEOQNZWKRVEEJ2
X-MailFrom: superme991@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: For building Verilog code for FPGA x300 series which license Vivado should I necessary?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3C7QZ7OCVQINXFAZSVIEOQNZWKRVEEJ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4969479075777335066=="

--===============4969479075777335066==
Content-Type: multipart/alternative; boundary="000000000000e914b905d5d1e5a3"

--000000000000e914b905d5d1e5a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

By the way, there's a note in AN-823 indicating the required Vivado edition
for the USRP device.

https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Prerequisites

*NOTE:*

   - The edition of Xilinx Vivado that is required will depend on which
   USRP device is being used.
      - X3xx series devices: Design Edition or System Edition.
      - E3xx series devices: Design Edition, System Edition, or the free
      WebPack Edition.



<jerry.olup@g3ti.net> =E6=96=BC 2022=E5=B9=B41=E6=9C=8817=E6=97=A5 =E9=80=
=B1=E4=B8=80 =E4=B8=8B=E5=8D=888:49=E5=AF=AB=E9=81=93=EF=BC=9A

> K7-325T requires a full license.
>
>
> https://support.xilinx.com/s/question/0D52E00006hpNqF/ettus-usrp-x300-viv=
ado-license?language=3Den_US
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e914b905d5d1e5a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"margin:0.5em 0px;line-height:=
inherit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;=
Lucida Grande&quot;,sans-serif;font-size:14px">Hi,=C2=A0</p><p style=3D"mar=
gin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida=
 Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14px">By=
 the way, there&#39;s a note in AN-823 indicating the required Vivado editi=
on for the USRP device.<br></p><p style=3D"margin:0.5em 0px;line-height:inh=
erit;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Luc=
ida Grande&quot;,sans-serif;font-size:14px"><a href=3D"https://kb.ettus.com=
/Getting_Started_with_RFNoC_Development#Prerequisites">https://kb.ettus.com=
/Getting_Started_with_RFNoC_Development#Prerequisites</a><br></p><p style=
=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot=
;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:1=
4px"><b>NOTE:</b><br></p><ul style=3D"margin:0.3em 0px 0px 1.6em;padding:0p=
x;color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida=
 Grande&quot;,sans-serif;font-size:14px"><li style=3D"margin-bottom:0.1em">=
The edition of Xilinx Vivado that is required will depend on which USRP dev=
ice is being used.<ul style=3D"list-style-type:disc;margin:0.3em 0px 0px 1.=
6em;padding:0px"><li style=3D"margin-bottom:0.1em">X3xx series devices: Des=
ign Edition or System Edition.</li><li style=3D"margin-bottom:0.1em">E3xx s=
eries devices: Design Edition, System Edition, or the free WebPack Edition.=
</li></ul></li></ul></div><div><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">&lt;<a href=3D"mailto:jerry.olup@g3ti.ne=
t">jerry.olup@g3ti.net</a>&gt; =E6=96=BC 2022=E5=B9=B41=E6=9C=8817=E6=97=A5=
 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=888:49=E5=AF=AB=E9=81=93=EF=BC=9A<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>K7-325T requires a=
 full license.</p><p><a href=3D"https://support.xilinx.com/s/question/0D52E=
00006hpNqF/ettus-usrp-x300-vivado-license?language=3Den_US" target=3D"_blan=
k">https://support.xilinx.com/s/question/0D52E00006hpNqF/ettus-usrp-x300-vi=
vado-license?language=3Den_US</a></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div=
></div></div></div></div></div></div></div></div></div>

--000000000000e914b905d5d1e5a3--

--===============4969479075777335066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4969479075777335066==--
