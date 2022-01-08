Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9C488526
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 18:58:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7588384FC0
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 12:58:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b8DkKQtI";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1AD33384DC4
	for <usrp-users@lists.ettus.com>; Sat,  8 Jan 2022 12:57:13 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id v7so5809328qtw.13
        for <usrp-users@lists.ettus.com>; Sat, 08 Jan 2022 09:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=AEqGI3gbAzcIUdVaDxTPxwJCznhKHyoDOQza0ou0QyQ=;
        b=b8DkKQtINWOAnnuX+YvYmqfe5CEFkpF+od+L2f4vSjcJPQ3j/oTbGhGAZBHEXpQG3A
         cWffmRDp8w1JW3BdjsJ1hPolOVqcqcpNbuXCcH2wtrevYzg3VJfHYqGeDtfhi0iE4cvb
         Pj1OlBCwcOARj+VIIYDbKDgWxT4Nrvo4QlcVVJVNbXGMvCZObJ7l4Ze4/YUs/F5zQq7K
         sNkpin9iXGcrhnzrpX5UyMmzr+l5ftLDb4G/2IcB5Mh2nLyrFA/yLIhYdBpm+OIk7bGB
         kFdHgXZ6/LQcZwvbAR/fez9yXmsEly+VfiTQZYgMYwLuj4Zf8Am0iUJQvLDUGe5ZqmRx
         ZCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=AEqGI3gbAzcIUdVaDxTPxwJCznhKHyoDOQza0ou0QyQ=;
        b=HG7JiRnUxhPvlR+055Gyw3WJc5dkBiBGhvozRzTY7uFOwrKYuZ9mBmJFDa9XuZtLvk
         wngrmouePslBjXNMukOuIJtevRnuDPcn+S56cMCdYNABfkg1VqROdR+oMdZ3Knc2TsZ+
         1XGy/cy0kGEDApq+MWsQpFpC9NQUAWEIxJEqf4QKZr1dlIpghbM3mrLPpXsFhxszv5+o
         YWLBRMURwbsMevWC9H+Ej0n9dnBa9M9/COcWxV0wI3OFyaNe8vzuhrQWwVxBs37xmPOF
         M2tZgaa2efPbDgXvWaTOGHI2oNvaMcDAc1XfbIlllMDsdDhgTMpEXUefJGuWB9WV+OC0
         oLjg==
X-Gm-Message-State: AOAM5315tb5pWzlHy0IuoDlpVYj/rJUd2Z1XtZqTSaFuGQPEjehJcK7F
	PMYfg1xejbEfFkEJbISC1pAhjpoKp/pfiQ==
X-Google-Smtp-Source: ABdhPJz28jlcFShjU0FG9Q2u5GNRZ8hjtj+33G5KPFcV6j64JTF4Tf6GQk9SwITDdYJWZgcdT/86wg==
X-Received: by 2002:a05:622a:653:: with SMTP id a19mr12289209qtb.209.1641664633109;
        Sat, 08 Jan 2022 09:57:13 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id b2sm1305235qtq.95.2022.01.08.09.57.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 09:57:12 -0800 (PST)
Message-ID: <677a338a-66d5-4bec-0b07-c3db79e59fbc@gmail.com>
Date: Sat, 8 Jan 2022 12:57:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Ps6=C=8Zs3Tig9cgnDYkvP83vPVpXorCkqXxwb2pRY5HA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Ps6=C=8Zs3Tig9cgnDYkvP83vPVpXorCkqXxwb2pRY5HA@mail.gmail.com>
Message-ID-Hash: VYONMGQLBM4I5A2XDYVJW6OXNANH5OIQ
X-Message-ID-Hash: VYONMGQLBM4I5A2XDYVJW6OXNANH5OIQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Which are RFNOC blocks used in UHD Sink/Source(UHD driver) in Gnuradio?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VYONMGQLBM4I5A2XDYVJW6OXNANH5OIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3348895708448429939=="

This is a multi-part message in MIME format.
--===============3348895708448429939==
Content-Type: multipart/alternative;
 boundary="------------C0oGFOHlZq0FWix9E96gbVCt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C0oGFOHlZq0FWix9E96gbVCt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-08 12:55, sp h wrote:
> Which are RFNOC blocks used in UHD Sink/Source(UHD driver) in Gnuradio?
> I heard=C2=A0that the UHD sink or UHD source=C2=A0in Gnuradio is compos=
ed of=20
> some RFNOC blocks.
> When I see the RFNOC blocks, the=C2=A0Radio core is the same UHD but do=
es=20
> anyone know which RFNOC blocks list are used in the UHD driver?
I believe its the Radio and DDC/DUC blocks.

>
> thanks in advance
> (because the reply thread is blocked by the forum, so after this=20
> message I can not reply, but I am grateful=C2=A0 to read your replies..=
.)
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------C0oGFOHlZq0FWix9E96gbVCt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-08 12:55, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Ps6=3DC=3D8Zs3Tig9cgnDYkvP83vPVpXorCkqXxwb2pRY5HA@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Which are RFNOC blocks used in UHD Sink/Source(UHD
        driver) in Gnuradio?<br>
        <div>I heard=C2=A0that the UHD sink or UHD source=C2=A0in Gnuradi=
o is
          composed of some RFNOC blocks.</div>
        <div>When I see the RFNOC blocks, the=C2=A0Radio core is the same=
 UHD
          but does anyone know which RFNOC blocks list are used in the
          UHD driver?</div>
      </div>
    </blockquote>
    I believe its the Radio and DDC/DUC blocks.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Ps6=3DC=3D8Zs3Tig9cgnDYkvP83vPVpXorCkqXxwb2pRY5HA@mai=
l.gmail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>thanks in advance</div>
        <div>(because the reply thread is blocked by the forum, so after
          this message I can not reply, but I am grateful=C2=A0 to read y=
our
          replies...)</div>
      </div>
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
    <br>
  </body>
</html>
--------------C0oGFOHlZq0FWix9E96gbVCt--

--===============3348895708448429939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3348895708448429939==--
