Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CFA66A85B
	for <lists+usrp-users@lfdr.de>; Sat, 14 Jan 2023 02:34:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C4363843A4
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 20:34:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673660088; bh=U615tUXz0Bil5lx/DqokmQkCDG61J0x7h1r/NH0G3uw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0LpaoqBw1YOO8C7skHM3ojb36vCRVcybqmhmtv2YrRQTPDGmDx0/d5rHYNS2DsnLU
	 OhGHNX+XFFtz4MCx9DqQch8hMr55SG1eIPBMXWOLfG+86X2YxA65prerkuA7LOtJB/
	 xkTH5cLZzliT3T46JTuqMR85sDChy5a6ANqR8SyJ4szYKr2BP6dyZ7ckv1lB4frstI
	 apxiBJ1aCUeFBhO9v5sSJl6XlgrEDAvij3Mw/Je0+CT0v+y5HYaTM/K3AatVPOsOfm
	 yT72pkIxIyf3OGItB8ba0ZI9ObhqEwYQN7U/o1GXCWB8IlpOzSdYjBJPdSmM62c8tA
	 8Yp2JJfYcmhRw==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E6FB23842EB
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 20:34:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E0MXpdrO";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id j15so15080775qtv.4
        for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 17:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7jSPebVAuUdv8rbHON6TPHc3316EBQAxJCjIzMBK4Yw=;
        b=E0MXpdrOUdseRWBsbJJeLESaXtZfH9Bfm7eTRPwWCChMn80AwgJB3rOT3n5gGWTu3a
         N3NUK6skm/FF/63YRm5MRQSzkiqYx/s1b9J8vFZi/DmYInlcNqYTKKW6Qux1sZi6D8l4
         0nleMdUzOdHK5TjMa7Ysc2MtQlF93W0zbeokVFWAX24K8Bz2ouODCvHnEtrs+OP0imcd
         kJCD7Xl9xPhd6itipNT4eC8382fPT6oJ8EgGmYQk7DlfJWoxLCkcBhakNr4oVpIrjMal
         E0RhR2sasgGgHp9u9DN3pQlnozyBEs/yhyKquay/nt1/PWpHGYKpRKow2hU+oOUB1KPe
         k8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7jSPebVAuUdv8rbHON6TPHc3316EBQAxJCjIzMBK4Yw=;
        b=HWyCmCxDpLghtXQO/tl5Sx0XkDsmqKKUcdIZfSotA+OGw60Foe0CkNPN9RFXfLU2wU
         fDi2CZvNaC0RkzCWDBLflmgDOXvdXvkQn7Vxgl/2KDxn+TozJNQnfnGpD6lIeNbUQIx4
         nmyaiOjdtB3sFb9VZwqkL6Z34L/Yt9lnFjXl37k/CJ6EsUbJI51CWsoNmFJMpYUd6KG1
         t0peik5kSly34KEc6AYzQMFiFSiJDdDBCMTVGCNekHYRvntxn7sd3yf7aqn8laD2WoPr
         TFkqpTQ/YLmwzJIquDtfliZ9PGNH2WhYzKei1E8gpcqiBeK3aj3LzDmWS2vRIslIikPW
         z0fA==
X-Gm-Message-State: AFqh2kp9LAaMahxC0y1/NRDWpQWu0Z4GQJfBqJuzy89QqOVTlCIxcV+4
	4KByk4rpGSUiInXDDPrDOdhIq2Gjfdo=
X-Google-Smtp-Source: AMrXdXtL+WeZiGls04zRPNDojjPff9j2R1hlml/wacSJLWOARKC6aN3bqH++F3bq91c7TC7YIbmPiQ==
X-Received: by 2002:ac8:4f58:0:b0:3b3:9d40:b407 with SMTP id i24-20020ac84f58000000b003b39d40b407mr4643717qtw.62.1673660039957;
        Fri, 13 Jan 2023 17:33:59 -0800 (PST)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id fd7-20020a05622a4d0700b003a5fb681ae7sm11427890qtb.3.2023.01.13.17.33.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 17:33:59 -0800 (PST)
Message-ID: <e207eaf1-3f98-5e60-4783-6c378dc523f5@gmail.com>
Date: Fri, 13 Jan 2023 20:33:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.com>
Message-ID-Hash: ZTWZTBVMLFLS4BV7PSHFDQOQ6QB5DMPD
X-Message-ID-Hash: ZTWZTBVMLFLS4BV7PSHFDQOQ6QB5DMPD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTWZTBVMLFLS4BV7PSHFDQOQ6QB5DMPD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7138234779224676918=="

This is a multi-part message in MIME format.
--===============7138234779224676918==
Content-Type: multipart/alternative;
 boundary="------------2Hb0CJx7iaoaZnv4cIUsw00a"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2Hb0CJx7iaoaZnv4cIUsw00a
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/01/2023 20:18, mgarrett@garrett-tech.com wrote:
>
> Two quick questions for you:
>
> 1.
>
>     Are you using the gnuradio 3.10 ins the stock gnuradio install,
>     and did that install 4.1.05?
>
Yes, "sudo apt install gnuradio uhd uhd-host"=C2=A0 I think took care of=20
everything I needed in Ubuntu 22.04

> 1.
>
>     Did you have to do anythng special to get netowrk mode to work, We
>     have it working in 3.15.0LTS, but were not sure if it worked the
>     same in 4.1.05.
>
Hmm, according to the description here:

https://files.ettus.com/manual/page_usrp_e3xx.html

Network mode on the E310 stopped being supported as of UHD 3.15.0.0 but=20
you report that it works on 3.15.0.0.=C2=A0 So I'm not
 =C2=A0 sure.


> Thank you, I will update on the install progress, based on needing a=20
> cross compile chain, Im going to build uhd from sources, and probably=20
> gnuradio.
>
> If I have an issue, ill do the stock ubuntu install and see if I can=20
> get the cross chain to work.
>
>
> mcg
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------2Hb0CJx7iaoaZnv4cIUsw00a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/01/2023 20:18,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:mgarrett@garre=
tt-tech.com">mgarrett@garrett-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Two quick questions for you:</p>
      <ol>
        <li>
          <p>Are you using the gnuradio 3.10 ins the stock gnuradio
            install, and did that install 4.1.05?</p>
        </li>
      </ol>
    </blockquote>
    Yes, "sudo apt install gnuradio uhd uhd-host"=C2=A0 I think took care=
 of
    everything I needed in Ubuntu 22.04<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.c=
om">
      <ol>
        <li>
          <p>Did you have to do anythng special to get netowrk mode to
            work, We have it working in 3.15.0LTS, but were not sure if
            it worked the same in 4.1.05.</p>
        </li>
      </ol>
    </blockquote>
    Hmm, according to the description here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_e3xx.html">https://files.ettus.com/manual/page_usrp_e3xx.h=
tml</a><br>
    <br>
    Network mode on the E310 stopped being supported as of UHD 3.15.0.0=C2=
=A0
    but you report that it works on 3.15.0.0.=C2=A0 So I'm not<br>
    =C2=A0 sure.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:ifjNcMEAwyyNUc4C7ICKaoLiqU9LS82IoT2yQekew@lists.ettus.c=
om">
      <p>Thank you, I will update on the install progress, based on
        needing a cross compile chain, Im going to build uhd from
        sources, and probably gnuradio.</p>
      <p>If I have an issue, ill do the stock ubuntu install and see if
        I can get the cross chain to work.</p>
      <p><br>
      </p>
      <p>mcg</p>
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
    <br>
  </body>
</html>

--------------2Hb0CJx7iaoaZnv4cIUsw00a--

--===============7138234779224676918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7138234779224676918==--
