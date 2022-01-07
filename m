Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D1E4878B2
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 15:12:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8A8E384B9B
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 09:12:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gMd3QO6b";
	dkim-atps=neutral
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E1299384923
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 09:11:52 -0500 (EST)
Received: by mail-io1-f48.google.com with SMTP id y11so7200700iod.6
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 06:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=CRJ1VfAr/B3kLPmshFTrzn1VxqvrTbfFvq+UiAl3vFg=;
        b=gMd3QO6bnt+OkxUWSSuZPjUiaMrErh/cZdhxFurE+OuKsWJZVALFUF2aJ2pNEaKaYB
         7hDiicy+nMclXm4s4agNrFvzr024CZknsLvxoUw6JEGXFAZaQTNNYFBSMEXZeG3BtI9D
         V+9owHK8YIYRfTFVEp9/f8+h5pSF7X6tf15bfdMT24Ot8WANjRShX5VoVr6S15Q//FO1
         JNVeIs9DIqqrPzc5C7FbPE/wsTmW4hynfgjLV93EeRIa2cGnMc8qjqw1aHxqVbwIUxnc
         xaf+9Q14a3c5MazBrrDGZlL1j4uogWa4WbMhYwQ8DZzs8U/2ZzQdAhhpxlI5F8nN4pvh
         vokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=CRJ1VfAr/B3kLPmshFTrzn1VxqvrTbfFvq+UiAl3vFg=;
        b=BJ4MCjsDBPbReXV3REuEVnaW7pvJ/gfQ5eKdC1SGlhgg3FPadbQ4JGnpao45KZlVSr
         yo1qXBgWuYBWOUgZTqhs5cxPRP6NztDvOMLv/8elRK3dNW5t1/63+bKQKMGBrlUL4Whx
         IUbPIiEHe3MlU1zrG1rAoxi/Y/P/g8qjRvJbq4TihWWKCq7cDFPXEvdXUpqjn/zxiBnI
         KBUBeYxfPv/wf1qbXbExRc+FiUoLXeq82AttjmjU79fAZjMpYRf6+Mx+1q4ivoHMvkfW
         FMwjX4ZEdxAAUNWL12662HKHB6cerh0kNSGVURLlAhTBTcYOt2Kit2RfM4JZVcjWzFgz
         uQLg==
X-Gm-Message-State: AOAM533OqoM0Jd5gtO7PXh2jiaZF65vnM32vmEVQyfURbryDf/HgPLOR
	HC7qV9+pCMPUH7TkfFU/dA8QcvnYks7qLg==
X-Google-Smtp-Source: ABdhPJz5SyPKih9utctj+zSvXfIcXPghm+9dkx6iZbXq2aJ7E9AyoqNOuc+GdwaYLS5SgRMvXoVcqg==
X-Received: by 2002:a05:6638:506:: with SMTP id i6mr31683897jar.229.1641564711895;
        Fri, 07 Jan 2022 06:11:51 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id z17sm3011320ior.22.2022.01.07.06.11.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 06:11:51 -0800 (PST)
Message-ID: <2efe5eca-da6c-98d5-9d94-4047341bc312@gmail.com>
Date: Fri, 7 Jan 2022 09:11:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Pv9X6a5tAmZ1htiO=i7A71-61xGaM=yZ9Jn9ckZ68b3Fw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Pv9X6a5tAmZ1htiO=i7A71-61xGaM=yZ9Jn9ckZ68b3Fw@mail.gmail.com>
Message-ID-Hash: VJGBNGMWG5XVDGNSSCZC25QHXKODPV3L
X-Message-ID-Hash: VJGBNGMWG5XVDGNSSCZC25QHXKODPV3L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: why my emails is not found on your forum? my emails is not delivered to usrp-user mailing list?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJGBNGMWG5XVDGNSSCZC25QHXKODPV3L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7010668493278375898=="

This is a multi-part message in MIME format.
--===============7010668493278375898==
Content-Type: multipart/alternative;
 boundary="------------utJ52KXQlCQgbFDx7iG7dmn0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------utJ52KXQlCQgbFDx7iG7dmn0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-07 07:26, sp h wrote:
> Hi, for sending=C2=A0my questions, with Gmail I send an email to this=20
> address usrp-users@lists.ettus.com...
> The first email is delivered=C2=A0and everything is ok, but the=C2=A0re=
play=20
> email for me was not delivered.......
> can anyone help me? why=C2=A0the second and third messages are not deli=
vered?
> thanks in advance
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I think the mailing list is configured so that you don't see your own=20
replies.


--------------utJ52KXQlCQgbFDx7iG7dmn0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-07 07:26, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Pv9X6a5tAmZ1htiO=3Di7A71-61xGaM=3DyZ9Jn9ckZ68b3Fw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi, for sending=C2=A0my questions, with Gmail I se=
nd an
        email to this address=C2=A0<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
...
        <div>The first email is delivered=C2=A0and everything is ok, but
          the=C2=A0replay email for me was not delivered.......</div>
        <div>can anyone help me? why=C2=A0the second and third messages a=
re
          not delivered?</div>
        <div>thanks in advance<br>
          <div><br>
          </div>
        </div>
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
    I think the mailing list is configured so that you don't see your
    own replies.<br>
    <br>
    <br>
  </body>
</html>
--------------utJ52KXQlCQgbFDx7iG7dmn0--

--===============7010668493278375898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7010668493278375898==--
