Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA2F879D95
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 22:41:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43EE53851B5
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 17:41:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710279669; bh=unhFvO7KvRm8XIFFyrHsjG5vLRaGmUh1zLeBotWlklM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=GeD/qD0qr2mIRGAmC2fIXYol1x2Z8SWCNA7zEkN6xCC+MwkZUJgRSy2ymI5HNketU
	 OSXPxzQ82FwZfZU7itA9Oi8hYStQRO2WgnCTAihvdVT04Th3R0H456Wu42RBTNwNwJ
	 chOD8hYfY+niloiIEYWY9gFykzPgP4g0FkhOaTI+kHm9ajZEfMKCXPf/rvbGoWJ3TM
	 m3g8RdFO6gE4GVmvZIHkDOCjYcCLUG+4dFm8BWxddh3VB7ajmvAMH2TTIg16JxCQAX
	 ng5pyqv/NvPyGzMK4n6/jLtu4htdAzcj8TL1tfhRfyVv//HYvpu4NTO0PFXhpJAtcY
	 S1V+fXs0MVUJA==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 7728B385033
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 17:40:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="cHqEZ59r";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5687feeb1feso480985a12.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 14:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1710279648; x=1710884448; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xfcSwq6j2cE27CV35zcbVBZ/G6iAA0DZ6rEt5eIEWCs=;
        b=cHqEZ59rZNSHjGFjYpbuavWk4Q8tiCax8gAneg2ieya/aZUYp5zZQnoYOnSMJW0ii9
         dnrMkXyN0z8zzh349TYJ/BGPFPH++nW8i1t32vlCTcdQmbobcPw391Gd517e9ieFGiLL
         2tQimdq4xVNROjkvXuHNOlCMbnHUj3ZXEZqlbzhBNJ+A+oXKPFG5maJpgLEzt7dshtrv
         YwbeD9PUbmYcjEWIgBO/OE/QymT+7qZw4FM5yCxD5h8yWrfqxDark0iReECQbHII1CFB
         7W/qnX1Aw033v+du5QUKZ+EGJa1/zEYjsGgiCzHXSixAN5kgq7k7nF2LYL5XiHvSCy/m
         27mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710279648; x=1710884448;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfcSwq6j2cE27CV35zcbVBZ/G6iAA0DZ6rEt5eIEWCs=;
        b=Ulcc/RM+VyaBEIaqMe6XDVNDYd4wD658cBl1v20ta7M6k5uuRWKdsI7i5CSZPUt+mm
         FnRh7UfZSLHlUciihyw6+ckgpA9MnotoGHsja8JdFk8vZqG5I03+AdsRqDWne2AXM7nP
         hgJB+/lHok1nT6yGeQY6megc+qR5uFOXsjOEN0jYjmCK8hcGV1xRU3Bs/gSc/ldv6ue1
         A/Jlu1wU1XCD6fC/w+Y/ItrrIZl0W0htnfLQ3g7EPjuRGKd/6HeErsJV46jX3VXUVReL
         iJAv7QD7whflmKFdaXcTANMA4jdhvol9PRX/S7s39QcRK8p5eOiQBCcyGxl8MLRLTt24
         nwGg==
X-Gm-Message-State: AOJu0YwLLK6qleEFGZmJbKUkzYsWS68RcF9JjDHh4FQ8OFM80u2DYvVN
	HjBRAUtTROWpw1ddiQmg0MhDltUmZt4w4CBIV6pLTug4+Pzr6gPtPXKpl5eQO2QwOnGd3c1r5NE
	wV9do4Nv9gEVUHVAqRA8pL6iJJKrXok/PxbPi
X-Google-Smtp-Source: AGHT+IEX94/xNqUYl65Zd+4oE5KxKeWHYAG5cauUUMkm+xndDZsie3d2oHky2Cvz5e2M8JtTyP/4i1X/50Ze8yd3tx8=
X-Received: by 2002:a50:9fc1:0:b0:566:b0fc:1107 with SMTP id
 c59-20020a509fc1000000b00566b0fc1107mr8247156edf.24.1710279648197; Tue, 12
 Mar 2024 14:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com> <d4e756e8-5874-48bd-97a6-64bc96b41ac2@gmail.com>
In-Reply-To: <d4e756e8-5874-48bd-97a6-64bc96b41ac2@gmail.com>
Date: Tue, 12 Mar 2024 17:40:37 -0400
Message-ID: <CAB__hTTbksjFybT9FEu2GahUYJoZtH3owd-zkzxDaWFVTRj2kA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: C7RRISSGIY4MXEGLLW33M63Q2DKMCA5D
X-Message-ID-Hash: C7RRISSGIY4MXEGLLW33M63Q2DKMCA5D
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C7RRISSGIY4MXEGLLW33M63Q2DKMCA5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6019159965467960070=="

--===============6019159965467960070==
Content-Type: multipart/alternative; boundary="000000000000e5f26106137d8205"

--000000000000e5f26106137d8205
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your mount command with tmpfs looks correct. Here is what mine is in my
/etc/fstab file (with 264GB avail RAM)
tmpfs  /media/ramfolder/  tmpfs  rw,nosuid,nodev,size=3D200G   0  0

You might want to try rx_samples_to_file with the --multi_streamer option.
I expect you will get better performance.  Also, you can take your RAM FS
size higher from 8G to probably 60G if you want to try bigger recording
depths.
Rob

On Tue, Mar 12, 2024 at 5:13=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 12/03/2024 16:11, zackkomo@utexas.edu wrote:
>
> Hey Rob and Marcus,
>
> Thanks for the responses! I have a basic understanding of linux, but am
> not very experienced. I tried the following to create the RAM filesystem:
>
> sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/
>
> sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/
>
>
> And ran the rx_samples_to_file, once with --file /mnt/tmpfs/test.bin, and
> once with --file /mnt/ramfs/test.bin, both times still getting o=E2=80=99=
s for
> overruns.
>
> By my calculations, at ~500 M complex samples per second, each complex
> sample 4 bytes (defaulting to short for I and Q), that means just 1 secon=
d
> of capturing equates to 2 GB of data. My system has 64 GB of RAM. Am I
> creating the RAM filesystem correctly? Am I using it correctly?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Assuming that you did a "sudo mkdir of /mnt/ramfs" beforehand,  this
> should work.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e5f26106137d8205
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Your mount command with tmpfs looks correct. Here is =
what mine is in my /etc/fstab file (with 264GB avail RAM)</div><div>tmpfs =
=C2=A0/media/ramfolder/ =C2=A0tmpfs =C2=A0rw,nosuid,nodev,size=3D200G =C2=
=A0 0 =C2=A00<br></div><div><br></div><div>You might want to try rx_samples=
_to_file with the --multi_streamer option. I expect you will get better per=
formance.=C2=A0 Also, you can take your RAM FS size higher from 8G to proba=
bly 60G if you want to try bigger recording depths.</div><div>Rob</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ma=
r 12, 2024 at 5:13=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 12/03/2024 16:11,
      <a href=3D"mailto:zackkomo@utexas.edu" target=3D"_blank">zackkomo@ute=
xas.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hey Rob and Marcus,</p>
      <p>Thanks for the responses! I have a basic understanding of
        linux, but am not very experienced. I tried the following to
        create the RAM filesystem:</p>
      <pre><code>sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/</code><=
/pre>
      <pre><code>sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/

</code></pre>
      <p>And ran the rx_samples_to_file, once with --file
        /mnt/tmpfs/test.bin, and once with --file /mnt/ramfs/test.bin,
        both times still getting o=E2=80=99s for overruns.</p>
      <p>By my calculations, at ~500 M complex samples per second, each
        complex sample 4 bytes (defaulting to short for I and Q), that
        means just 1 second of capturing equates to 2 GB of data. My
        system has 64 GB of RAM. Am I creating the RAM filesystem
        correctly? Am I using it correctly?</p>
      <p><br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Assuming that you did a &quot;sudo mkdir of /mnt/ramfs&quot; beforehand=
,=C2=A0 this
    should work.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000e5f26106137d8205--

--===============6019159965467960070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6019159965467960070==--
