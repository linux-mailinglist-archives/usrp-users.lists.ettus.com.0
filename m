Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F5C422ACF
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 16:17:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B3C3383EAB
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:17:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jJVLU+l8";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FB65384380
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 10:17:13 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id d8so1946884qtd.5
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 07:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=nTE0uSWnNNAwgnHsuL4cWmnDW04la3BucK3ndTn6KL4=;
        b=jJVLU+l8ZMLXTm+sIwiN7sUkdFhBLDvwF7tpLbEOI5q05kSLeC8xSnXD6/6sriH2NQ
         wr2PAEJ61s8ajiU5uxqW9W+/6uR6QpzKZlchD7T8FjfWUsSrCQh/Cyawh78nEPb/eApF
         f5UxujzovsPH5wnD/I7XY7r0js9OV5Iy681QLO7W7peVE8NbRtzwwCCAlYhQ0J3fBKUF
         pGCLAEAb3oE4Ha13BaqLfOHy/om9tVjzbl8k4BjWBFJZ2rYkLo+5qrEuznNGzUxw+AsL
         D8T581/Z7wU92tzm+gAt9hJCTuA6YffSeZRjxGvaKs8PIORvoMu/lIrCme5+/HupAxur
         /7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=nTE0uSWnNNAwgnHsuL4cWmnDW04la3BucK3ndTn6KL4=;
        b=YSjoxvg0gbLVgjmCYO3sgJUKsvKuZjNEXc+7l62NmoxBPjHMWVlAt10vlyhWOwlZKa
         QKGK/ZbQa7vbqZ7h0gd/bo5ieOTRMuPBsTOqvyGNRPnNqmHQ4x/N99DfcyyNiENZVP9S
         FtAOeqjPXnu2Y6SxzFYFhKxjimC9mtB413GO7I/LvNDsPR+lBW9jFyxdm7EsNSGcs6Qu
         VYRGeGzID+rb7xoEK15Kcj5TrMhRzKoQhSt5MBG4BNUevTTN2ZJWUNC4bUsbanw806z2
         IXMVkzszNA2Z55uAJFyM6K+ns3faFf8otAa+cETiE8Y++b4Df25VO+++ymnnctedlx2m
         20Eg==
X-Gm-Message-State: AOAM530TmLGqHvlRNQoocbyq5t+KlZqA61HGMRY6RgpDIk3uXr00B7Uy
	m6oF5iCKygrypWzGMFFKx9lcb/uMrIw=
X-Google-Smtp-Source: ABdhPJwCWfNa7/OSpFMP8VFASRtVfpOjQb7+lUOt7OYqjYPZa1RARMRDAD1EyNxiY96inW0Ur/VNzQ==
X-Received: by 2002:ac8:7c8d:: with SMTP id y13mr20198414qtv.27.1633443432713;
        Tue, 05 Oct 2021 07:17:12 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id bm27sm10271731qkb.6.2021.10.05.07.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 07:17:12 -0700 (PDT)
To: Sadiq Iqbal <sadiq.zahid73@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAD8PmbqmOFzToVfvZerTCzAWcA3nc=fi=F6WtMRut_eUjO2Gig@mail.gmail.com>
 <84406f9b-642d-b1fb-cb02-ae9cd1e7fc3a@gmail.com>
 <CAD8PmbrghZX7HpJ+FqSX9MpSbWmCkch3Ke4Jn0-fFyNMfnDwzA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <056b635d-2f33-658b-4dbc-6ddb9fb526f8@gmail.com>
Date: Tue, 5 Oct 2021 10:17:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAD8PmbrghZX7HpJ+FqSX9MpSbWmCkch3Ke4Jn0-fFyNMfnDwzA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: RCIRIVG2NSA4YQJ3K3V7UWJUQ2QFSYX5
X-Message-ID-Hash: RCIRIVG2NSA4YQJ3K3V7UWJUQ2QFSYX5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inquiry About Running srsRAN using NI USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RCIRIVG2NSA4YQJ3K3V7UWJUQ2QFSYX5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7578796310409189021=="

This is a multi-part message in MIME format.
--===============7578796310409189021==
Content-Type: multipart/alternative;
 boundary="------------677E7816F90E6E0EC2436F32"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------677E7816F90E6E0EC2436F32
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-05 3:30 a.m., Sadiq Iqbal wrote:
> Yes i can ping it.
Please share with us the output of:

uhd_usrp_probe --args addr=3D192.160.10.2




>
> On Mon, Oct 4, 2021, 6:20 PM Marcus D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 2021-10-04 9:44 a.m., Sadiq Iqbal wrote:
>     > Hi guys,
>     >
>     > We are using srsRAN with NI USRP 2920, We are having issues runni=
ng
>     > the USRP correctly, like when we connect the NI USRP with the
>     host pc,
>     > the UHD device probing is not recognising the NI USRP. The second
>     > issue is that we don't know the required UHD image to install on =
NI
>     > USRP that will run with the srsRAN software. We have noticed that=
 a
>     > person from NI is using srsRAN with NI USRP 2920, so is it
>     > possible=C2=A0for you to connect us to him?
>     >
>     > Thank you.
>     >
>     When the device is plugged in, can you ping it at the default
>     address of
>     192.168.10.2 ?
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------677E7816F90E6E0EC2436F32
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-05 3:30 a.m., Sadiq Iqbal
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAD8PmbrghZX7HpJ+FqSX9MpSbWmCkch3Ke4Jn0-fFyNMfnDwzA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Yes i can ping it.</div>
    </blockquote>
    Please share with us the output of:<br>
    <br>
    uhd_usrp_probe --args addr=3D192.160.10.2<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAD8PmbrghZX7HpJ+FqSX9MpSbWmCkch3Ke4Jn0-fFyNMfnDwzA@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 4, 2021, 6:20 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">On
          2021-10-04 9:44 a.m., Sadiq Iqbal wrote:<br>
          &gt; Hi guys,<br>
          &gt;<br>
          &gt; We are using srsRAN with NI USRP 2920, We are having
          issues running <br>
          &gt; the USRP correctly, like when we connect the NI USRP with
          the host pc, <br>
          &gt; the UHD device probing is not recognising the NI USRP.
          The second <br>
          &gt; issue is that we don't know the required UHD image to
          install on NI <br>
          &gt; USRP that will run with the srsRAN software. We have
          noticed that a <br>
          &gt; person from NI is using srsRAN with NI USRP 2920, so is
          it <br>
          &gt; possible=C2=A0for you to connect us to him?<br>
          &gt;<br>
          &gt; Thank you.<br>
          &gt;<br>
          When the device is plugged in, can you ping it at the default
          address of <br>
          192.168.10.2 ?<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer" moz-do-not-send=3D"true">usrp-users@lists.=
ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"=
>usrp-users-leave@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------677E7816F90E6E0EC2436F32--

--===============7578796310409189021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7578796310409189021==--
