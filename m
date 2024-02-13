Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 557BC853305
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 15:24:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C55C384E5E
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 09:24:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707834290; bh=+v5xddyEJ/1NMzIZ1dx1smh2eXcz00AynaNl9+mG/mY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=C6OpW1Or27uCVPo/Qo1uzwKCF6HLQS8bZuAhrSNNRBalJDJaQWpkgTnUegfUirfQL
	 ZNNHE7x/MTMlp0umN0iXFfNjbzbwT1AsBlybwZJ2FmmK2pYm5uWblLhosvLNW/a/nd
	 ZPlt4IiHNyrYqG8rIwSVkopyN7tYxKswjmFQclCFrBIdMuuxXIV6UfDH44Lpcai8PC
	 xrbf3fQP3B6KpUzGZ65qCmn6xPVH+7N2UvoSSNWwwe6/YLYTinxTyOAyhDyno1UTO0
	 o5EGTmZFzWrKKUhj1axVdOTDyeWlNTrRhQvzUoi7XOregxO9Fetokh5qSS5qpiQiYP
	 fUsmLHJEVL8Xg==
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D871F384E0E
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 09:24:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cptFV8CQ";
	dkim-atps=neutral
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3c02fd8e970so2001941b6e.2
        for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 06:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707834284; x=1708439084; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BMUcOEyXRFC0N6ldtd6Dfui0luud1gOfzG+UMU/zN6Y=;
        b=cptFV8CQgr88mUx6sw/DWFC8iOZc70zDMkt9sS9ZNHaCJUo37HVjT9bnRLxSnf4f8F
         22/IeXUW3ktu9C7xBC2zU2487Se8Ih+al+ScMdX1RXGVIXQCIC9AzXToX3zEbOqQEwUu
         5qd8znnS0h8+NKqX9tOb2OdDaBm2zFUnHqHzc3a0Pl0mh3o8LyPYOlW7Lb3qulMgv/u6
         oHZUvoQwgZwZtALelzjqUglIjSMrdsQMX26KtFX3081omqD/7wjVFM5oW/ooj82Wwxkr
         h9+Xrm7qJZdnslcev26Yd7fzLFbESjcHjhOTT0VNcSOdyDGFiAK6DcJ9IkD/YqaCDAfj
         EtXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707834284; x=1708439084;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BMUcOEyXRFC0N6ldtd6Dfui0luud1gOfzG+UMU/zN6Y=;
        b=ez3vJbPg8DlR2eVyU/gfwnsT2oZWnxi8TjYyKiIjeVw8bNVz+oWlZy4m/4aTlvS5OO
         /vRPF6gF6V2qLbinX9O5CiAD4quU8UX7uydS0jOZnvkIkdsT5blAm6KS8DAv5fTXe4UE
         y1fPGVUpMTvFVx1MQY0k9wpqypo/Xl6I6vkywhhlDaGyX7kOXI8fVGlJ3kwwQ5gtitJH
         83ctnk2nbAn93CcJQRPbvywApV1B2Niczc06roHez2mpBBTKul4TYK6n9OgZ7+u8bsvX
         dn45BmqlLoQVopCImhHan6m0gSigYY+weVTU8VLin/rqCYM+ZsZSertQ0bVfPiSF5C8E
         3VpA==
X-Gm-Message-State: AOJu0YyDLV9Rl8di6q1tIP7ZaR77IHziDz8hWyLFLgVml6IGtz8W8hUh
	wdLt6yXsk8tmpvXhteXQ13dBvNE/5Dw3TqXoOR0eoRSXklaWFfien5XQfzwI
X-Google-Smtp-Source: AGHT+IFYOx5lGvKu1aLqgR1FKfxx+EJq4wy6ITyB9/YtbdsS9Q3F2S45nM27fP8NFDGNdp/KzVlX2g==
X-Received: by 2002:a05:6808:3c91:b0:3c0:3345:9639 with SMTP id gs17-20020a0568083c9100b003c033459639mr9596143oib.26.1707834283858;
        Tue, 13 Feb 2024 06:24:43 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id a19-20020ac85b93000000b0042c792f3255sm1153420qta.15.2024.02.13.06.24.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 06:24:43 -0800 (PST)
Message-ID: <69c5e17d-0e8d-462c-a14a-0113b276c448@gmail.com>
Date: Tue, 13 Feb 2024 09:24:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM@lists.ettus.com>
Message-ID-Hash: JZ4TYORDL35MUOQCJ3T3XVTGL6UCS4BH
X-Message-ID-Hash: JZ4TYORDL35MUOQCJ3T3XVTGL6UCS4BH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZ4TYORDL35MUOQCJ3T3XVTGL6UCS4BH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4472189819764936116=="

This is a multi-part message in MIME format.
--===============4472189819764936116==
Content-Type: multipart/alternative;
 boundary="------------lruDy0ksKrQ0QuaLj90g2ikm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lruDy0ksKrQ0QuaLj90g2ikm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/02/2024 05:12, jnunez@cud.uvigo.es wrote:
>
> I=E2=80=99am trying to capture a signal file using /rx_samples_to_file/=
 which=20
> feeds input RX2 on my N200 with this command:
>
> rx_samples_to_file --duration 30 --rate 1000000 --freq 100000000=20
> --stats --progress --ant RX2 --gain 30
>
> Execution, throws following error:
>
> /Error: LookupError: IndexError: multi_usrp: RX channel=20
> 18446744073709551615 out of range for configured RX frontends/
>
> If I don=E2=80=99t add --gain 30, it works.
>
> Has anyone an idea of what=E2=80=99s going on?
>
> I=E2=80=99m using UHD 4.5.0.0 and Ubuntu.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
How did you install UHD?

In the past when I've seen this error, it has been because the=20
applications/examples were linked against a different version
 =C2=A0of the libraries than is actually on the system.


--------------lruDy0ksKrQ0QuaLj90g2ikm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/02/2024 05:12,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jnunez@cud.uvi=
go.es">jnunez@cud.uvigo.es</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:xekP5xJJacK0QGGkJFn8HbRPnzJsI1qFQLpO5sNXM@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I=E2=80=99am trying to capture a signal file using <em>rx_sample=
s_to_file</em>
        which feeds input RX2 on my N200 with this command:</p>
      <p>rx_samples_to_file --duration 30 --rate 1000000 --freq
        100000000 --stats --progress --ant RX2 --gain 30</p>
      <p>Execution, throws following error:</p>
      <p><em>Error: LookupError: IndexError: multi_usrp: RX channel
          18446744073709551615 out of range for configured RX frontends</=
em></p>
      <p>If I don=E2=80=99t add --gain 30, it works.</p>
      <p>Has anyone an idea of what=E2=80=99s going on?</p>
      <p>I=E2=80=99m using UHD 4.5.0.0 and Ubuntu.</p>
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
    How did you install UHD?<br>
    <br>
    In the past when I've seen this error, it has been because the
    applications/examples were linked against a different version<br>
    =C2=A0of the libraries than is actually on the system.<br>
    <br>
    <br>
  </body>
</html>

--------------lruDy0ksKrQ0QuaLj90g2ikm--

--===============4472189819764936116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4472189819764936116==--
