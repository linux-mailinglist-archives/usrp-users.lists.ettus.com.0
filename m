Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8509879EE0
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 23:36:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5454385740
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 18:36:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710282994; bh=CBao91TAFpV3tAlUATtH3y8WaCtnPCkqoJJLOc2BaMU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=haaCDjm12xybmxYy4uRFaQcCkTMym9pbeRnM2YTlOss9Be+Ptm0vE11rC6htADyCL
	 5bveoClHuVARk8dkU67+6VCsjb3sDTFOQHUAwBnSLj7Y+V1RxswXofv+O14kXz2fg3
	 YJLH45ICBcdaRiJu41rk3K/4WMp/ugivReyMEKStwSw6/GUm0kLPVVvv3EeoBJkEqZ
	 +gzUfU05zr5QxCbMvRgl1vo8yh0ZglydExVcVaGgc/2JXu/qqAtTeqNb4DNpS/S543
	 TKrPOVajAO+Xm+qh6RQn5UAm1tnT9aQSet9m/jxBDSEGQBAAOCA7jGo1g41dAUmrqP
	 YGqoCxn4QYDDA==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id F273038568B
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 18:36:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cKA5IZCV";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c1e992f069so3082961b6e.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 15:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710282975; x=1710887775; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbid0SfNrZcJYm4jnaFSbb9pUuudsA1fjJVZ1rgMLy8=;
        b=cKA5IZCVqca2f3YRM6+haseFuJcrTcgWunipVrgHzpSn30wJIhEre1ZSYnk2vgHfVd
         CQ5cIGBmtekT4dPU7jE9Zt0aU5I9HNbiHgZcOSMqJOwZph7ZA1rkLg5uUI1RDOGltjld
         17S1NHINO3vbwtrsd6bXkcQ2NB0mIL5vspOQVMV52soRqUwFRmkoHddqjv/hLAn6MMMu
         Z7rtpUIi2b4FJBsOjksE8NlK1Eb77MVx7sbYRP8s3xhDFECjySyKMCPbN4Mx6zuMFOJy
         3xG+fmSIMdTTOJvzVGycBmxwof2V4kixWpB3rswPaA6kM5lR/z6t/BPqM5dkHw0Nh3Vv
         185w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710282975; x=1710887775;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qbid0SfNrZcJYm4jnaFSbb9pUuudsA1fjJVZ1rgMLy8=;
        b=vTdnbSfiXVGvHmPzkSzbuOs1xwJcWe6mhPgpwcM7gc6B6eeegunRNfbhGxccXGoFJ5
         EyNk209e+jxAudrs/ISe2XlTFtwnD7Qro46gWEqRM99/nBH9IBPcgMMvdjJMAXbRhfj3
         7vp+YYjMEJFMqaOJ/Nqc0k2CsjPcv1fiL1U8hHZhc6Q/A+TD5+G4sm5Fb4N4higCaCM6
         kXXuR6nVuk4M1V2Aq0y9qOohQn8xULziiRQpr+8tBY71Yt4MDd35yGP40C524AhkER5C
         s6advCbMpV8Ix2BHJ+AaAkBCpab/KPaJR98fDGjhOyI2oNom+VPuJkN6kJTvRgf9yxk5
         4ILw==
X-Gm-Message-State: AOJu0YxkewcR615OA4Bz8Uds29IrT/38LpBuA9LiWUh5nBadiOqzxcJJ
	w/WI3IEaXVGMI7NK+um3X2U7+/Azx414ZWe7uktX4FPNf1mnTHjS
X-Google-Smtp-Source: AGHT+IEXO7BY/4UuCfbnddvdsjuHpsjuQOv6pBaSNBe4eYj5WCUwgHP/pl44UVQOqQx+kCDvc7xfJg==
X-Received: by 2002:a05:6808:2189:b0:3c1:f6cc:4fd2 with SMTP id be9-20020a056808218900b003c1f6cc4fd2mr14032447oib.4.1710282975182;
        Tue, 12 Mar 2024 15:36:15 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id g2-20020ac85d42000000b0042f3fa77602sm3209152qtx.2.2024.03.12.15.36.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 15:36:14 -0700 (PDT)
Message-ID: <b6c84580-352b-4aa1-a75a-f19dac6228d4@gmail.com>
Date: Tue, 12 Mar 2024 18:36:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com>
 <d4e756e8-5874-48bd-97a6-64bc96b41ac2@gmail.com>
 <CAB__hTTbksjFybT9FEu2GahUYJoZtH3owd-zkzxDaWFVTRj2kA@mail.gmail.com>
 <CAB__hTQW4UuE9eaK5wn6eu4AbSE1ew-zrGO5JiR0kZA2hpwkaQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQW4UuE9eaK5wn6eu4AbSE1ew-zrGO5JiR0kZA2hpwkaQ@mail.gmail.com>
Message-ID-Hash: DKXS3GQJATAYJIYDJOS5EWKGNWBQBWAI
X-Message-ID-Hash: DKXS3GQJATAYJIYDJOS5EWKGNWBQBWAI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKXS3GQJATAYJIYDJOS5EWKGNWBQBWAI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6832418258377633654=="

This is a multi-part message in MIME format.
--===============6832418258377633654==
Content-Type: multipart/alternative;
 boundary="------------05Yfd0JAGLwE03nNOHBewWUL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------05Yfd0JAGLwE03nNOHBewWUL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/03/2024 17:59, Rob Kossler wrote:
> I think I am mistaken. If you are only streaming a single channel, the=20
> --multi_streamer option will likely not change a thing. I was assuming=20
> you had multiple channels.
> Rob
Indeed, the problem doesn't appear to be "getting samples off the wire=20
and into the application" (as evidenced by
 =C2=A0 the benchmark_rate runs), but rather "doing things with those sam=
ples=20
after that".

Writing 2Gbyte/second through the filesystem interface to the kernel=20
is....challenging.


>
> On Tue, Mar 12, 2024 at 5:40=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>
>     Your mount command with tmpfs looks correct. Here is what mine is
>     in my /etc/fstab file (with 264GB avail RAM)
>     tmpfs =C2=A0/media/ramfolder/ =C2=A0tmpfs =C2=A0rw,nosuid,nodev,siz=
e=3D200G =C2=A0 0 =C2=A00
>
>     You might want to try rx_samples_to_file with the --multi_streamer
>     option. I expect you will get better performance.=C2=A0 Also, you c=
an
>     take your RAM FS size higher from 8G to probably 60G if you want
>     to try bigger recording depths.
>     Rob
>
>     On Tue, Mar 12, 2024 at 5:13=E2=80=AFPM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 12/03/2024 16:11, zackkomo@utexas.edu wrote:
>>
>>         Hey Rob and Marcus,
>>
>>         Thanks for the responses! I have a basic understanding of
>>         linux, but am not very experienced. I tried the following to
>>         create the RAM filesystem:
>>
>>         |sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/|
>>         |sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/ |
>>
>>         And ran the rx_samples_to_file, once with --file
>>         /mnt/tmpfs/test.bin, and once with --file
>>         /mnt/ramfs/test.bin, both times still getting o=E2=80=99s for =
overruns.
>>
>>         By my calculations, at ~500 M complex samples per second,
>>         each complex sample 4 bytes (defaulting to short for I and
>>         Q), that means just 1 second of capturing equates to 2 GB of
>>         data. My system has 64 GB of RAM. Am I creating the RAM
>>         filesystem correctly? Am I using it correctly?
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.co=
m
>         Assuming that you did a "sudo mkdir of /mnt/ramfs"
>         beforehand,=C2=A0 this should work.
>
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------05Yfd0JAGLwE03nNOHBewWUL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/03/2024 17:59, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQW4UuE9eaK5wn6eu4AbSE1ew-zrGO5JiR0kZA2hpwkaQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I think I am mistaken. If you are only streaming a
        single channel, the --multi_streamer option will likely not
        change a thing. I was assuming you had multiple channels.=C2=A0
        <div>Rob</div>
      </div>
    </blockquote>
    Indeed, the problem doesn't appear to be "getting samples off the
    wire and into the application" (as evidenced by<br>
    =C2=A0 the benchmark_rate runs), but rather "doing things with those
    samples after that".<br>
    <br>
    Writing 2Gbyte/second through the filesystem interface to the kernel
    is....challenging.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQW4UuE9eaK5wn6eu4AbSE1ew-zrGO5JiR0kZA2hpwkaQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2024 at
          5:40=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.e=
du"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div>Your mount command with tmpfs looks correct. Here is
              what mine is in my /etc/fstab file (with 264GB avail RAM)</=
div>
            <div>tmpfs =C2=A0/media/ramfolder/ =C2=A0tmpfs
              =C2=A0rw,nosuid,nodev,size=3D200G =C2=A0 0 =C2=A00<br>
            </div>
            <div><br>
            </div>
            <div>You might want to try rx_samples_to_file with the
              --multi_streamer option. I expect you will get better
              performance.=C2=A0 Also, you can take your RAM FS size high=
er
              from 8G to probably 60G if you want to try bigger
              recording depths.</div>
            <div>Rob</div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2024 =
at
                5:13=E2=80=AFPM Marcus D. Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                <div>
                  <div>On 12/03/2024 16:11, <a
                      href=3D"mailto:zackkomo@utexas.edu" target=3D"_blan=
k"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">zackkomo@utexas.edu=
</a>
                    wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <p>Hey Rob and Marcus,</p>
                    <p>Thanks for the responses! I have a basic
                      understanding of linux, but am not very
                      experienced. I tried the following to create the
                      RAM filesystem:</p>
                    <pre><code>sudo mount -t tmpfs -o size=3D8G tmpfs /mn=
t/tmpfs/</code></pre>
                    <pre><code>sudo mount -t ramfs -o size=3D8G ramfs /mn=
t/ramfs/

</code></pre>
                    <p>And ran the rx_samples_to_file, once with --file
                      /mnt/tmpfs/test.bin, and once with --file
                      /mnt/ramfs/test.bin, both times still getting o=E2=80=
=99s
                      for overruns.</p>
                    <p>By my calculations, at ~500 M complex samples per
                      second, each complex sample 4 bytes (defaulting to
                      short for I and Q), that means just 1 second of
                      capturing equates to 2 GB of data. My system has
                      64 GB of RAM. Am I creating the RAM filesystem
                      correctly? Am I using it correctly?</p>
                    <p><br>
                    </p>
                    <br>
                    <fieldset></fieldset>
                    <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a>
To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a>
</pre>
                  </blockquote>
                  Assuming that you did a "sudo mkdir of /mnt/ramfs"
                  beforehand,=C2=A0 this should work.<br>
                  <br>
                  <br>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------05Yfd0JAGLwE03nNOHBewWUL--

--===============6832418258377633654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6832418258377633654==--
