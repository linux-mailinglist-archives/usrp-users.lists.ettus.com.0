Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4FC483986
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jan 2022 01:45:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BB5838510C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 19:45:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Oyb6SVbM";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 91B0B384BAD
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 19:44:51 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id r139so32449706qke.9
        for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 16:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=HGDSBa+ZumZc+0ASJE+PKBFn+ez3nC884+zGXBdHy4o=;
        b=Oyb6SVbMqfmSR/ixktckypcWwaaacPLnb7hSjw3DpAfh7V8XghjTKG53VHLAUmYEK8
         Ph+l+tvQEfFD1hGE4Zi1P2n0YzoJBVMLcLuqrB9fft6ZvByqs/qf4Ht/NHgml/y+j5XW
         NF3Nv3T+yhhatz3MD53TsTZNaBmSEH+EI7Qm6/N7iTSz5xJkX19+WIsiKgZzc2VlTvl5
         OPjvAbRMoUmOnRD0J14g13yhM0aCVSdnr1CeX2YmzOmDC/G5Fd4lYOWE4lEAr8xUQoHc
         C0AUjc0O1nZqHuuUHHdm96CEIp0yZ+m2e3/ojyIk+yce3C0ZIxu5xwzZd9HqXwB3ckLK
         qcqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=HGDSBa+ZumZc+0ASJE+PKBFn+ez3nC884+zGXBdHy4o=;
        b=B3QoJ5XtxQlwb8699UmhDbwtrFb2XEIXsWo0ZcvlA7/4/LN1p8Keo0ghkLahYrvdNp
         153zLeuVrZ7sWNTlpm7gJNUM+BlY3RcJNKEitTleS5lY8nzvoPesypvttVfAY8hSSVfR
         CzrEpICErTJ6K6jzgz6ijoErwq1JLio5zEsEiLkdUqcfBj9yCVPda6LoyKb+NL1nfZLo
         Wkl08L7xF/ikFn/S5bapwUgzEJho00NhG1JRowd1NAKMT7uYDQ3i9PvRdluswTA03nHl
         pGQoWq8VcdGfQ/BLM9tdiiihUJlk0fcdMqDNO2B2QN2Y8ZYpG2ScRiTGPaMySe6Q5FPZ
         kNhQ==
X-Gm-Message-State: AOAM531+7p0ypt3uzB1/y0ffythF0wwh8YEitFp3w8Tf7pcDCPxIrTrX
	ZGlMF8OIzRqWA6jf5J9Eutpf4eYBeO3XGQ==
X-Google-Smtp-Source: ABdhPJwLQdepeYKJ5OqEyrUZ1tGL8IDJPeUv8a7E32VB7ShlR4Ns3KDwPYcLQQNtec3kJ/8NWAKoSg==
X-Received: by 2002:a05:620a:1424:: with SMTP id k4mr34575978qkj.433.1641257090745;
        Mon, 03 Jan 2022 16:44:50 -0800 (PST)
Received: from [192.168.2.191] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id y6sm29077452qtn.23.2022.01.03.16.44.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 16:44:50 -0800 (PST)
Message-ID: <fcbcdb3d-8b2f-7bae-ab0e-ecec36ff00a4@gmail.com>
Date: Mon, 3 Jan 2022 19:44:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.com>
Message-ID-Hash: TZFRV5KGM6SOIVYN2FAIWKE52C6X5UJ2
X-Message-ID-Hash: TZFRV5KGM6SOIVYN2FAIWKE52C6X5UJ2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZFRV5KGM6SOIVYN2FAIWKE52C6X5UJ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9192735449429112597=="

This is a multi-part message in MIME format.
--===============9192735449429112597==
Content-Type: multipart/alternative;
 boundary="------------njjENE8MWHK05pstB4EOIN8I"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------njjENE8MWHK05pstB4EOIN8I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 2022-01-03 16:36, ri28856@mit.edu wrote:
>
> Hi Marcus,
>
> I=E2=80=99ve attempted to use uhd::tx_streamer::recv_async_msg() before=
, but=20
> it slowed down my application and caused frequent lates on the=20
> tx_streamer. I=E2=80=99m unclear on the intended usage. I tried creatin=
g a=20
> separate thread that polls in an infinite while loop looking for async=20
> messages. Am I inadvertently adding contention over a mutex hidden=20
> somewhere inside tx_streamer? If I handle the async message, does that=20
> prevent UHD from printing =E2=80=9CL=E2=80=9D to stdout?
>
>
> This only handles part of my issue. What about the Rx side? For my=20
> application, I am not issuing individual Rx stream commands, only a=20
> single one on startup to constantly receive. I then call=20
> uhd::rx_streamer::recv() in an infinite loop. I check the error code=20
> returned in the form of a uhd::rx_metadata_t. How do I prevent it from=20
> printing =E2=80=9CD=E2=80=9D to stdout in the event where I drop a pack=
et?
>
There are message-handler APIs.=C2=A0 Will investigate and get back you.
>
>
> As a side note, why should I upgrade? Normally I would just try to=20
> stay up to date with libraries I=E2=80=99m using, but for this particul=
ar=20
> application I have a bunch of air gapped systems that are difficult to=20
> release new libs onto for largely bureaucratic reasons. I haven=E2=80=99=
t=20
> noticed any new features in the release notes I need, and my=20
> application has good enough performance, so I never bothered updating=20
> UHD.
>
There have been bug fixes between 3.13 and 3.15, which may be useful=20
even if you aren't using any new features.


> Thanks,
>
> Richard
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------njjENE8MWHK05pstB4EOIN8I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 2022-01-03 16:36, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>I=E2=80=99ve attempted to use uhd::tx_streamer::recv_async_msg()
        before, but it slowed down my application and caused frequent
        lates on the tx_streamer. I=E2=80=99m unclear on the intended usa=
ge. I
        tried creating a separate thread that polls in an infinite while
        loop looking for async messages. Am I inadvertently adding
        contention over a mutex hidden somewhere inside tx_streamer? If
        I handle the async message, does that prevent UHD from printing
        =E2=80=9CL=E2=80=9D to stdout?</p>
      <p><br>
      </p>
      <p>This only handles part of my issue. What about the Rx side? For
        my application, I am not issuing individual Rx stream commands,
        only a single one on startup to constantly receive. I then call
        uhd::rx_streamer::recv() in an infinite loop. I check the error
        code returned in the form of a uhd::rx_metadata_t. How do I
        prevent it from printing =E2=80=9CD=E2=80=9D to stdout in the eve=
nt where I drop
        a packet?</p>
    </blockquote>
    There are message-handler APIs.=C2=A0 Will investigate and get back y=
ou.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.=
com">
      <p><br>
      </p>
      <p>As a side note, why should I upgrade? Normally I would just try
        to stay up to date with libraries I=E2=80=99m using, but for this
        particular application I have a bunch of air gapped systems that
        are difficult to release new libs onto for largely bureaucratic
        reasons. I haven=E2=80=99t noticed any new features in the releas=
e notes
        I need, and my application has good enough performance, so I
        never bothered updating UHD. </p>
    </blockquote>
    <p>There have been bug fixes between 3.13 and 3.15, which may be
      useful even if you aren't using any new features.</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:QfJPxXyqK4NbTgAA6pCIF4hSP0VA1ncJKhPrhcNRjU@lists.ettus.=
com">
      <p>Thanks,</p>
      <p>Richard</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>
--------------njjENE8MWHK05pstB4EOIN8I--

--===============9192735449429112597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9192735449429112597==--
