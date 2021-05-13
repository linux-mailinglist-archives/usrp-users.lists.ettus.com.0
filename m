Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F1537F8F3
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 15:41:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D10ED383EC8
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 09:41:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="z4KxBOdc";
	dkim-atps=neutral
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id EAE53383FBB
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 09:40:32 -0400 (EDT)
Received: by mail-ej1-f43.google.com with SMTP id w3so39933880ejc.4
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 06:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0mYWOjMn2mmQrlLh+7sDC6eZLQ8Sq6bqAroqtefxvQ8=;
        b=z4KxBOdcXozvFHvr3v/GBOnL4cuTgT9ocm5VM31Gx+5MnzabtkP9VVq2qFBuHLGj9o
         zH4SscVoa7BCc8UO8cdrKUMGnshXbX+WkvAFlA2ZgkawLLF16IJlOvLf6l1zJWO4rvnV
         R7bpjPTkWsB7fpEFb07r944CRBcbGJYUjeqxPSkpf6O7eBFXQXoen9rPB/Nrb1f1OVkE
         UPtx2n++4W3CBjCNBGloeBUBfzJLHsdjdDx0tFzvF54eRY24Zre+h6qLHGXU6ktHMKS+
         AQoAMYaKMdYM1fSqGntV5H/THH4akQbAJxtLs2zhFX4XxFmkPda9aiUX7SKoGGM/Qd1x
         MOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0mYWOjMn2mmQrlLh+7sDC6eZLQ8Sq6bqAroqtefxvQ8=;
        b=a53tI/33uv63N9UGS64h2K65XjYQ+suvPpbu3JOa/RhVXSC2jxQqtqTc6VCLDiTArQ
         MIO5en3V3Z2BqapKdaViyQpjWj8Lpn7F/AkgacZW707EfTE8x6Ife6yDErGySvlDPRwD
         INCVOjHYVkd0eQJdwo8gX4xnIFnL2MQ4EfBSzLEEx4t2ViqFHnM6fIqG3a0wJOcCRIyt
         lkdlqgu2YcQkFmRBq6O7AvwGSVUtNdgiZwWgxCYYBijGsU6c7Y1th2+chFEksTiJN7D3
         z5hGIZis1QAOOmqv61y/bxSs6YOqHN9DZJO1t5qf/0oiMrBafzO/Skvce/1vu+jSDpvq
         VD3A==
X-Gm-Message-State: AOAM530umizVjZVWZso8kilHziLIrVGDXz7KKsh/pXnf6bUAL1aOV79d
	ZlwbYDoUZQeKSz7pK3TjCCYhwPcHsY3l/Dn0OBc9+AVx9IvKkw==
X-Google-Smtp-Source: ABdhPJyf/+uFuFqZAZaFmK1uH7Xb7r3Ccn32pVH/T0LsNGrzgh5Hn1V1KFrJHixMouwyjntj1KMguXmlV0ONubtPvPU=
X-Received: by 2002:a17:906:3952:: with SMTP id g18mr9185537eje.138.1620913231938;
 Thu, 13 May 2021 06:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it> <6ef711fc-1995-b2d7-9b63-d7cdae857d3c@itsystems.it>
In-Reply-To: <6ef711fc-1995-b2d7-9b63-d7cdae857d3c@itsystems.it>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 13 May 2021 09:40:21 -0400
Message-ID: <CAGNhwTPJcX0D-O4J8zbnxtK_OpE8F4PDobaEX_dgiW4OB3VOFQ@mail.gmail.com>
To: Paolo Palana <p.palana@itsystems.it>
Message-ID-Hash: XJWORNEY25R4YE475ZTBYU4X4TVM2E74
X-Message-ID-Hash: XJWORNEY25R4YE475ZTBYU4X4TVM2E74
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJWORNEY25R4YE475ZTBYU4X4TVM2E74/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4778885100164986357=="

--===============4778885100164986357==
Content-Type: multipart/alternative; boundary="00000000000066dd0505c2364565"

--00000000000066dd0505c2364565
Content-Type: text/plain; charset="UTF-8"

Hi Paolo - Sounds like you've had some success getting the static build
working under UHD 3.15 for your specific needs. If the details to get this
working are relatively simple then please go ahead and post them here, and
that might be useful for others. If they are somewhat involved then please
just send them to me directly. Either way: We'll see what we can do to help
get them documented and/or tweaked in UHD 3.15-LTS. - MLD

On Thu, May 13, 2021 at 8:36 AM Paolo Palana <p.palana@itsystems.it> wrote:

> The problem was, of course, mine
>
> I had  wrong line in my cmake. With libuhd 3.10.3 I had the line
>
> set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC} -Wl,--no-whole-archive
> ${DL_STATIC})
>
> while for libuhd 3.15
>
> set(MY_STATIC_LIB -Wl,--whole-archive ${UHD_STATIC} -Wl,-no-whole-archive)
>
> However I have proposal for a fix for the CMkeFiles of libuhd 3.15. I
> don't know if it is the case to discuss it here, or directly with
> developer.
>
> If  developer or a moderator will read this mail, please let me know.
>
> Thank you in advance
>
> Paolo
>
>
> On 5/12/21 10:38 AM, Paolo Palana wrote:
>
> Hi to all the mailing list.
>
> I'm trying to compile libuhd-3.15 in order to get the static version of
> this library, but I've problems. The platform I'm using in ubuntu 18.04
> x86_64
>
> the cmake command I use is: cmake -DENABLE_STATIC_LIBS=ON
> -DENABLE_LIBERIO=OFF -DENABLE_USB=OFF -DENABLE_B100=OFF -DENABLE_B200=OFF
> -DENABLE_E300=OFF -DENABLE_USRP1=OFF -DENABLE_USRP2=OFF -DENABLE_N230=OFF
> -DENABLE_MPMD=OFF -DENABLE_E320=OFF -DENABLE_OCTOCLOCK=OFF
> -DENABLE_DPDK=OFF ../
>
> The compilation process seems to be ok, but I get from the linker the
> error: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a(operations.o):
> relocation R_X86_64_PC32 against symbol ......
>
> If I run the command VERBOSE=1 make I can see that the linker command
> issued to  generate of libuhd.so try to link libbost_*.a files in order to
> genertate the libuhd.so file. To be plain I'm not very familiar with this
> kind of problems, but I think this is not correct. I did many try and guess
> to solve the issue and I found that commenting the line
> set(Boost_USE_STATIC_LIBS ${ENABLE_STATIC_LIBS}) in
> cmake/Modules/UHDBoost.cmake seems to solve the problem, both libuhd.so and
> libuhd.a are generated.
>
> But now another problem arise, when I compile my static application I get
> other link errors like:
>
> usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-linux-gnu/libdl.a(dlerror.o):
> In function `dlerror':
> (.text+0x1): undefined reference to `__dlerror'
>
> Because the same application is succesfully compiled on the same system
> (so system libraries are exactly the same) using libuhd 3.10.3 I think
> these errors could be related with something wrong I did in compiling
> libuhd-3.15. Of course every time I need to change libuhd version I
> uninstall (through make uninstall) the undesired library.
>
> So my question is, what is wrong with libuhd-3.15 or, better, what I did
> wrong?
>
> Thank you for your kindness.
>
> Paolo
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000066dd0505c2364565
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Paolo - Sounds like you&#39;ve had some success ge=
tting the static build working under UHD 3.15 for your specific needs. If t=
he details to get this working are relatively=C2=A0simple then please go ah=
ead and post them here, and that might be useful for others. If they are so=
mewhat involved then please just send them to me directly. Either way: We&#=
39;ll see what we can do to help get them documented and/or tweaked in UHD =
3.15-LTS. - MLD<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, May 13, 2021 at 8:36 AM Paolo Palana &lt;<a href=
=3D"mailto:p.palana@itsystems.it">p.palana@itsystems.it</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>The problem was, of course, mine</div>
    <div><br>
    </div>
    <div>I had=C2=A0 wrong line in my cmake. With
      libuhd 3.10.3 I had the line</div>
    <div><br>
    </div>
    <div>set(MY_STATIC_LIB -Wl,--whole-archive
      ${UHD_STATIC} -Wl,--no-whole-archive ${DL_STATIC})</div>
    <div><br>
    </div>
    <div>while for libuhd 3.15 <br>
    </div>
    <div><br>
    </div>
    <div>set(MY_STATIC_LIB -Wl,--whole-archive
      ${UHD_STATIC} -Wl,-no-whole-archive)</div>
    <div><br>
    </div>
    <div>However I have proposal for a fix for
      the CMkeFiles of libuhd 3.15. I don&#39;t know if it is the case to
      discuss it here, or directly with=C2=A0 developer.</div>
    <div><br>
    </div>
    <div>If=C2=A0 developer or a moderator will read
      this mail, please let me know.</div>
    <div><br>
    </div>
    <div>Thank you in advance</div>
    <div><br>
    </div>
    <div>Paolo<br>
    </div>
    <div><br>
    </div>
    <div><br>
    </div>
    <div>On 5/12/21 10:38 AM, Paolo Palana
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi to all the mailing list.</p>
      <p>I&#39;m trying to compile libuhd-3.15 in order to get the static
        version of this library, but I&#39;ve problems. The platform I&#39;=
m
        using in ubuntu 18.04 x86_64<br>
      </p>
      <p>the cmake command I use is: <font size=3D"-1">cmake
          -DENABLE_STATIC_LIBS=3DON -DENABLE_LIBERIO=3DOFF -DENABLE_USB=3DO=
FF
          -DENABLE_B100=3DOFF -DENABLE_B200=3DOFF -DENABLE_E300=3DOFF
          -DENABLE_USRP1=3DOFF -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF
          -DENABLE_MPMD=3DOFF -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOFF
          -DENABLE_DPDK=3DOFF ../</font></p>
      <p>The compilation process seems to be ok, but I get from the
        linker the error: <font size=3D"-1">/usr/lib/x86_64-linux-gnu/libbo=
ost_filesystem.a(operations.o):
          relocation R_X86_64_PC32 against symbol ......</font></p>
      <p>If I run the command VERBOSE=3D1 make I can see that the linker
        command issued to=C2=A0 generate of libuhd.so try to link libbost_*=
.a
        files in order to genertate the libuhd.so file. To be plain I&#39;m
        not very familiar with this kind of problems, but I think this
        is not correct. I did many try and guess to solve the issue and
        I found that commenting the line set(Boost_USE_STATIC_LIBS
        ${ENABLE_STATIC_LIBS}) in cmake/Modules/UHDBoost.cmake seems to
        solve the problem, both libuhd.so and libuhd.a are generated.</p>
      <p>But now another problem arise, when I compile my static
        application I get other link errors like:</p>
      <p><font size=3D"-1">usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-l=
inux-gnu/libdl.a(dlerror.o):
          In function `dlerror&#39;:<br>
          (.text+0x1): undefined reference to `__dlerror&#39;</font></p>
      <p>Because the same application is succesfully compiled on the
        same system (so system libraries are exactly the same) using
        libuhd 3.10.3 I think these errors could be related with
        something wrong I did in compiling libuhd-3.15. Of course every
        time I need to change libuhd version I uninstall (through make
        uninstall) the undesired library.</p>
      <p>So my question is, what is wrong with libuhd-3.15 or, better,
        what I did wrong?</p>
      <p>Thank you for your kindness.</p>
      <p>Paolo<br>
      </p>
      <p><br>
      </p>
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
    <p><br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000066dd0505c2364565--

--===============4778885100164986357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4778885100164986357==--
