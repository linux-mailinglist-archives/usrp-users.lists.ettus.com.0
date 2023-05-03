Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CF16F5CDD
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 19:16:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0931238472D
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 13:16:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683134207; bh=Yz/VNfXmXD9r1TY5OVYNu/oMtJ/0r5Tu1m3ouT0DG6s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f5BcHKzMMUkHTIyLWoxBwruxuJ/R9QO/0V/CCF9QchQDrZAIXe/lI8ss1060U7Qn8
	 DBGlnLeDb/dNpqRlUfKka5NAvVS/FH7llJWYIqLBNVVJ8o9Ax0FAM5jOOzFkL1sXio
	 t4tPtrf3dXoDBgE1ksbZXjHobuPTIhn0K5NnZ1ue/PHIJMSVJq7OKM6HM502IFsaTV
	 vpCqvV/x/w9bW+RD7xUowrfkXUQb/yI//tlL9HeOGYJ14axNWRHONC95M9dvnajNuY
	 J91tLlq8byRu49Qm6epMXgegpOdVDk/JbMwmutQpyx9W+eCuAVBMKa01r/Q1OWcchS
	 B36MWu+vN8SKA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 94677384885
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 13:16:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UbWyT+tU";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-61b58b6e864so34058926d6.3
        for <usrp-users@lists.ettus.com>; Wed, 03 May 2023 10:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683134168; x=1685726168;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p8+5I4bf+vveXILDiLrvtRzVZ1+TqggP+N9UWxegazI=;
        b=UbWyT+tUC0jtKe03YuH1elXD1qfCAQCow8623/6uVrtdsOq+6wgcpGKvxuhunMT9Ju
         AKi2SQaQXifIw87vGoJJu22SM3s+6TRDaldcAtiY5me/0Yns1Mr0f2NfE2XvMsjbqzq9
         fCFBT2v71REIsLFEZEVB7sXstDMSOm0s7j3NmPb8EIi1JY5a6YF9WRCB59Vpmhv6EXFH
         H/KaC6OZgKbxCGRGHniA2s7c+JXV3XJydgT9cj+48161r7u1mg54jrESlUUoh6QU41bm
         7qAGEhCfU/cCciAiAYn2qxVAIFmC/m/bSsmkknNIXfWLgOm+bfeBjZNt+hh8cBiUxCzq
         w6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683134168; x=1685726168;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p8+5I4bf+vveXILDiLrvtRzVZ1+TqggP+N9UWxegazI=;
        b=IsBF3Yiyxk2RVGBRP4FXcGbleR7srFrt75ClAjv+icl63vm82T9ZECVedbwHzKM5zW
         Uta3E59o8s80yksWxhsSnSIKyaw97sbwPB3y2E+wzRMDOGEgZSmksJTQ3Q/2J6TJQhl6
         DKHu+MP5cnnFyfeQSMudhlu3/IfXhhd2MJ7G4Dmq7xysNqjPyZjI9H79v1e9ErSm/Yj3
         saGNHMyOKGZcfhXZJhAlWhgfADtsAv0sezYTSgsRC3xbbud8cF/uFIvJREfEMLQwuZrl
         RwxIlWXwpgPF9/tJKaAzjJILEtxRv9bdgwr30tpxhy6w8AVd1ytMQb/Vq4ed7rrctRIj
         Fo0Q==
X-Gm-Message-State: AC+VfDxYT2Vfm5EbR7oUTvDqgvikBmArNmpmY3NN9/tk2Fhqf7ZPxZHt
	YOxsIwfQY4d6GnnNX/3K3CgyIbulU8Q=
X-Google-Smtp-Source: ACHHUZ45QHLMuO5wiKTAgsaFcwfVHy8MVD5T7Cis3Bcq3X8v5bJ5SNtEl08Z3h87kQZTxYVt+t3oXA==
X-Received: by 2002:a05:6214:29cb:b0:5ef:46a9:15d2 with SMTP id gh11-20020a05621429cb00b005ef46a915d2mr10387129qvb.7.1683134167855;
        Wed, 03 May 2023 10:16:07 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f15-20020a05620a280f00b0074df2ac52f8sm10934216qkp.21.2023.05.03.10.16.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 10:16:07 -0700 (PDT)
Message-ID: <78608f5e-29b8-2b56-a358-ee87ba7b1853@gmail.com>
Date: Wed, 3 May 2023 13:16:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <EmZgzUy0jLVU9SSGyfm1jzipavtnU5LooGCZaa3hA0U@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <EmZgzUy0jLVU9SSGyfm1jzipavtnU5LooGCZaa3hA0U@lists.ettus.com>
Message-ID-Hash: N6M2Z563PQGPTXPYNUYWRTDGJUMM74GI
X-Message-ID-Hash: N6M2Z563PQGPTXPYNUYWRTDGJUMM74GI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6M2Z563PQGPTXPYNUYWRTDGJUMM74GI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2892551786509796140=="

This is a multi-part message in MIME format.
--===============2892551786509796140==
Content-Type: multipart/alternative;
 boundary="------------rUI3zQJMYqxugYahf5hjfSnr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rUI3zQJMYqxugYahf5hjfSnr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/05/2023 13:05, david.fernandes@viveris.fr wrote:
>
> Hi Marcus,
>
> I have tested downgrading UHD to 3.15 and it works ! (I=E2=80=99ve trie=
d with=20
> UHD 4.4 as well but its doesn=E2=80=99t work)
>
> Now that the reception works everytime in a full-duplex communication,=20
> I observe that the TX/Rx antenna creates a lot of interferences to the=20
> RX2 antenna in the same channel.
>
> For examples, I tested sending :
>
>  *
>
>     1 sin signal of 50KHZ from channel 0 to channel 1, at center freq 1=
GHz
>
>  *
>
>     1 sin signal of 80KHZ from channel 1 to channel 0, at center freq 2=
GHz
>
> The result is available in the picture attached (the green circles are=20
> the carriers received, the red circles are the interferences caused by=20
> the TX) . Is this a normal behaviour ? Is there any=20
> configuration/customization that can be applied to attenuate those=20
> interfereances ?
>
> Thanks again for your support, it is really appreciated.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The center frequency labels on your QT GUI frequency sinks aren't=20
consistent with what the source is actually tuned to.



--------------rUI3zQJMYqxugYahf5hjfSnr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/05/2023 13:05,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:EmZgzUy0jLVU9SSGyfm1jzipavtnU5LooGCZaa3hA0U@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>I have tested downgrading UHD to 3.15 and it works ! (I=E2=80=99=
ve
        tried with UHD 4.4 as well but its doesn=E2=80=99t work)</p>
      <p>Now that the reception works everytime in a full-duplex
        communication, I observe that the TX/Rx antenna creates a lot of
        interferences to the RX2 antenna in the same channel.</p>
      <p>For examples, I tested sending :</p>
      <ul>
        <li>
          <p>1 sin signal of 50KHZ from channel 0 to channel 1, at
            center freq 1GHz</p>
        </li>
        <li>
          <p>1 sin signal of 80KHZ from channel 1 to channel 0, at
            center freq 2GHz</p>
        </li>
      </ul>
      <p>The result is available in the picture attached (the green
        circles are the carriers received, the red circles are the
        interferences caused by the TX) . Is this a normal behaviour ?
        Is there any configuration/customization that can be applied to
        attenuate those interfereances ?</p>
      <p>Thanks again for your support, it is really appreciated.</p>
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
    The center frequency labels on your QT GUI frequency sinks aren't
    consistent with what the source is actually tuned to.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------rUI3zQJMYqxugYahf5hjfSnr--

--===============2892551786509796140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2892551786509796140==--
