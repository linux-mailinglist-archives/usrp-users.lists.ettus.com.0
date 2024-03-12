Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 075CE879D59
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 22:13:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B3EC38503A
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 17:13:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710278038; bh=+Ym0Bc31ZpnmkIowzZBFPyu2wMu3SWkDlI5fCVS+FMM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=maZIJ5/zDODbnvFFKo1GPfGI1/166VDRMG3yV20S5TRUuNZaq/6nOO0PBoUq6Vmpg
	 SEcsSfZeIx4VbhFOJPuHyUYvhrUFrbADlqOakgtYHsrxjyB9BfKU4eXLour1BKIH0K
	 3J19pH+ZMsGpFq0YI9/u27A/GPE9qSnrlZ+W0/kyLToSWTXjveGKotveCWDFfZ3VtX
	 wG2jMhOO4C+P+W+5OgG8NJFQdeVU4Fy0ILpElZ0DlhBQxrwaMr+1ERwmJnD70/i22P
	 MFHv0+pbqVjRn0q8EcQJdNcIiWgqPjTInGIzHia9VWJIXhVpsXl7BGmVLzhjpPKGix
	 e9bxH+KKX6WgA==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 775C238501C
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 17:13:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xj8n0R99";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-789c48c123fso21676185a.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 14:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710277987; x=1710882787; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=543PhLSJUeTu6Dznze2E281IZ1cEVvuKKTqB8Xr4q1Q=;
        b=Xj8n0R999bnQ8dU0YZ1HyPn9o0+x0vgRVSBmMs6Veu4gDVAOik/D0QqY194scgMliL
         4HSs62OlEeVC00yffP33NKRa0vZJys/df07pma1VhGy+A2fIIKbJASAyHb7LvMcNyojf
         w0TUSWLSI5Y+4+slpPzrzWvwqtJiAFAoTCDH+RCVJdOZVCxNs2rGT9P+MlRUU3fxxsRt
         tZulQ9aM49OQJNwW05KQQ9ivSvOuNCmYF0BmhXVxRK+Bpq/7QURXpKlFNg7QTy2f4L1t
         K2UD7tuseZUC3BqqSNyDZgv3A+CFZ2DWwUiPzSuSEKEqzq3J6jsYfgc9pKBbW1eXOf+i
         IS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710277987; x=1710882787;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=543PhLSJUeTu6Dznze2E281IZ1cEVvuKKTqB8Xr4q1Q=;
        b=NeQxj11/pGPzqSkYEM69MEHYggOSkOL9AJazw7nzfHm92EiLX9hKCDJLotUyJArJ2p
         380uPKrkQa7J6iyiyy9MkdTktJG5FCY0ASVyywaRO76VyGrsOVLNpBAjWs6sCyXQxOPc
         2pqStmtqHqwqy/5u6kRk1LnSuwQYmPB+DHJ2io9WC4L3G74dEwd+r/bAKchcfO/tiYTt
         ZX3kDiUF+v/A1tcw7q1Y9kzLfxEc3KbMeSRlcGClLs2XXK+fgzX8tIiEJmwTRP07a48W
         bbLbaXAWo0mKrv/Hfx1Y7GXBhrR0d/EHrXjOtq/T4C3gGEZaTD3OL3chcIpj3QttmXdu
         YptQ==
X-Gm-Message-State: AOJu0YwdfjB4quXT0GxL42M/4Vf4Qke2v+uu6N/qcAH4wpL5jghk+aSX
	hF87mIwYdjyu9R0a7P6t4DmAVQlh8U738dgf2VeH60P9HehcJudY5j/1FJPzJmc=
X-Google-Smtp-Source: AGHT+IHngg6MWpnjGfncKTPPASKUlVDYaj/96Yf2SirBrQY8l2ERjYiGHztnr8nnlA0QVC1xiftokA==
X-Received: by 2002:a05:6214:2e0f:b0:691:fcd:52e with SMTP id mx15-20020a0562142e0f00b006910fcd052emr906055qvb.10.1710277986571;
        Tue, 12 Mar 2024 14:13:06 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id mh11-20020a056214564b00b00690b5acfff4sm4020494qvb.5.2024.03.12.14.13.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 14:13:06 -0700 (PDT)
Message-ID: <d4e756e8-5874-48bd-97a6-64bc96b41ac2@gmail.com>
Date: Tue, 12 Mar 2024 17:12:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com>
Message-ID-Hash: K3PYJJ6EEF6RLZV5EHCOFRHHJWTLXCOE
X-Message-ID-Hash: K3PYJJ6EEF6RLZV5EHCOFRHHJWTLXCOE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K3PYJJ6EEF6RLZV5EHCOFRHHJWTLXCOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2901058903590348838=="

This is a multi-part message in MIME format.
--===============2901058903590348838==
Content-Type: multipart/alternative;
 boundary="------------n3kr07e0ex370KFtjq3u2Glv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------n3kr07e0ex370KFtjq3u2Glv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/03/2024 16:11, zackkomo@utexas.edu wrote:
>
> Hey Rob and Marcus,
>
> Thanks for the responses! I have a basic understanding of linux, but=20
> am not very experienced. I tried the following to create the RAM=20
> filesystem:
>
> |sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/|
> |sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/ |
>
> And ran the rx_samples_to_file, once with --file /mnt/tmpfs/test.bin,=20
> and once with --file /mnt/ramfs/test.bin, both times still getting o=E2=
=80=99s=20
> for overruns.
>
> By my calculations, at ~500 M complex samples per second, each complex=20
> sample 4 bytes (defaulting to short for I and Q), that means just 1=20
> second of capturing equates to 2 GB of data. My system has 64 GB of=20
> RAM. Am I creating the RAM filesystem correctly? Am I using it correctl=
y?
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Assuming that you did a "sudo mkdir of /mnt/ramfs" beforehand,=C2=A0 this=
=20
should work.


--------------n3kr07e0ex370KFtjq3u2Glv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/03/2024 16:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zackkomo@utexa=
s.edu">zackkomo@utexas.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hey Rob and Marcus,</p>
      <p>Thanks for the responses! I have a basic understanding of
        linux, but am not very experienced. I tried the following to
        create the RAM filesystem:</p>
      <pre><code>sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/</code=
></pre>
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
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Assuming that you did a "sudo mkdir of /mnt/ramfs" beforehand,=C2=A0 =
this
    should work.<br>
    <br>
    <br>
  </body>
</html>

--------------n3kr07e0ex370KFtjq3u2Glv--

--===============2901058903590348838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2901058903590348838==--
