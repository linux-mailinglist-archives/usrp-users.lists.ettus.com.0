Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E001444962
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 21:10:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8D3C383EFF
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 16:10:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eat/D+tc";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id EB5EC3836F9
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 16:10:03 -0400 (EDT)
Received: by mail-qk1-f179.google.com with SMTP id r8so3570781qkp.4
        for <usrp-users@lists.ettus.com>; Wed, 03 Nov 2021 13:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=JvEX4xA1B2KVi8XcVIf3vpiKyoa/zUqQnWx8n8jXkQY=;
        b=Eat/D+tcxQlkSGCY1WINU/yUhkBtGPZpvSUAGCtgf1RUXvs4TZiZpuengOe5r7GLSv
         bTW9idmPipcbWKRO3ULQgHm20dnGgN5Hzl84ImaA1hX6cmXcWapMQ5Mga/iD/sSE+VzB
         I5kB38rRFsojr5DZbMyoymbhvTx8IUphVw7nRKjpLv07aZNaM1w2nMIkiDipTKLYSLAw
         lJo6jxmgJEdDxjOo7r4cBjvxgnSO3T33Iks+89lL1kWgtBaU/dxdn3q2iM3jJb7nCgsi
         nJ/b4g61OnXYOu9bQwWb9v+YzQi3H+EInvVBPZCnClDVujJKdNO2aEyX2qqJ9Zu1ghrO
         NFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=JvEX4xA1B2KVi8XcVIf3vpiKyoa/zUqQnWx8n8jXkQY=;
        b=Pg4+/O7yY4WQlyy/uDyBytKnZWJ8tCIBvQ9NqDUNfW8EjKhZelCqAicJ82KxWv3Rtb
         f+gVP6bT2uYyozGgC9T/2ng+jJBY9t9KTRQap0YqfMbPum1QWvEKwg6BeihaMBMUBMdg
         5TD3xAy9S1uEgYFt/yp0QL5W2y5/UVVODBWB3ZMcgAfJ4W2Bvtn1tiQjO927h2Kqexha
         bvrKJ6/MWAPVvMjvaykF3t06HpA1Fj0JA836yO94y2zFRNDvKYHSuAhwbJ2Q4mQd7mxA
         5S4Hn1iMrJKBkxr4Alrve/BzjSxl/iXcHQP6SmzniWU2gR5eHo7vATZpl9HdFKpCOLaR
         OcoA==
X-Gm-Message-State: AOAM532u8aNvnvZg5ZbjxtUqjhsGQeCZaozg6EEt4cDoBe4zZWEWHUCM
	Uovt4iARctvequo5xfjEgK88+Yr6SIM=
X-Google-Smtp-Source: ABdhPJwvZt1im1+6CARYgLVdCHEffm2nhzF0EZfQ83QanCN/8KEEIdkQbL0iF0cfcn3b2ehjz8HBUA==
X-Received: by 2002:a05:620a:1a0e:: with SMTP id bk14mr36521341qkb.288.1635970202995;
        Wed, 03 Nov 2021 13:10:02 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id o8sm2432983qtk.77.2021.11.03.13.10.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 13:10:02 -0700 (PDT)
Message-ID: <5e9e826a-79a1-f0f1-6e6b-b44ddc6864f5@gmail.com>
Date: Wed, 3 Nov 2021 16:10:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OL1P279MB00832E3402FDBDD18E8F2EE7A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB00832E3402FDBDD18E8F2EE7A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: DUFODADZNNBZFZRCF3ZSXS2EZZJPRDGE
X-Message-ID-Hash: DUFODADZNNBZFZRCF3ZSXS2EZZJPRDGE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUFODADZNNBZFZRCF3ZSXS2EZZJPRDGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2270366155168506067=="

This is a multi-part message in MIME format.
--===============2270366155168506067==
Content-Type: multipart/alternative;
 boundary="------------UIMvSwJHhLeKMqeQoaCmjo6i"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UIMvSwJHhLeKMqeQoaCmjo6i
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-03 16:00, Skorstad, J=C3=B8rn wrote:
> Hi all,
>
> Started rewriting my code to work with UHD 4.1 recently. I notice that=20
> the command set_rx_frequency() in uhd::rdnoc::radio_control takes=20
> about 104 ms to complete, no matter what frequency is set.
>
> Is this blocking time something like worst case scenario time it can=20
> take to retune the LO? I think this command was faster in UHD 3.8.
>
> Is it possible to do the LO retuning faster manually somehow?
>
> BR
> Jorn
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You haven't mentioned which of MANY USRP and USRP+daughtercard=20
combinations you're using, so it's impossible to say.


--------------UIMvSwJHhLeKMqeQoaCmjo6i
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-03 16:00, Skorstad, J=C3=B8=
rn
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB00832E3402FDBDD18E8F2EE7A08C9@OL1P279MB0083.NORP279.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div>Hi all,</div>
      <div><br>
      </div>
      <div dir=3D"auto">Started rewriting my code to work with UHD 4.1
        recently. I notice that the command set_rx_frequency() in
        uhd::rdnoc::radio_control takes about 104 ms to complete, no
        matter what frequency is set.=C2=A0</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Is this blocking time something like worst case
        scenario time it can take to retune the LO? I think this command
        was faster in UHD 3.8.</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Is it possible to do the LO retuning faster
        manually somehow?=C2=A0</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">BR</div>
      <div dir=3D"auto">Jorn</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto"><br>
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
    You haven't mentioned which of MANY USRP and USRP+daughtercard
    combinations you're using, so it's impossible to say.<br>
    <br>
    <br>
  </body>
</html>
--------------UIMvSwJHhLeKMqeQoaCmjo6i--

--===============2270366155168506067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2270366155168506067==--
