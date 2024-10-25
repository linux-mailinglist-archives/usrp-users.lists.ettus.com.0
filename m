Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 567669B0C9C
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 20:07:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 999B4385C96
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 14:07:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729879629; bh=V5oFg0iuP6IncKPHFyD/wZJ8xJeV7VRJFXRWtAUvYy4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=E5SZmTDNqnRpYH9Ni5z2cJM5PJaeT9MxYLzJdCkgAwzshodOerJsipPJfF2E7MsCw
	 n/4CNXuYOUMSVkA6G2UDh8kzkHEHhXc4UyTX/ent74eMFwgh7bN1V2cb6o9eFi64uU
	 WkUZP2ZJJsgDNXXEK/RwLPFBII/V8lZc6pkA5tiu3436r5B7rFVb6PKEh9lo7//PBX
	 gy7WabJjoSsoH8cqk23y6ripCMx3tA6QWmHJjm037u2TIcDWydtjl/j3YTCDpW0OrQ
	 mZFgFzSYg9AXdWEFPzgi3bY9Ow5nZu3WckkJk/Knxb4Q96D/Z0u3Q/7kzwl428/q8x
	 JqmdEJlEfsMuw==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 46A97385D80
	for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 14:06:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WNwt9MSg";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-460af1a1154so14449061cf.0
        for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 11:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729879608; x=1730484408; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rzvPPai53fMD5UNjgd9vqk8UdMlivM/edoCVC3A+8ZE=;
        b=WNwt9MSgHhrEj68cF23/4bFVO36FE0Qk64JvlSLuMh7z3sDYk0f4YFlkk8mDWz3W5B
         dRtSo9e+nG2f5vPj7h1hir0IS1jC/lxx3jnFB69HbT69VEMQDFiGD3nHMSEtfni3/pUr
         TMAL9WoY9BMPRbFvNgohPPh4B0pYIkH15SvLSEMo7EzAb9jSJCQHy64yq33IoDz9r0Te
         fLgPeJuygUdVazL3dMYTw8huUfSmj4EH14wYokzQDXir+8l51Xjj1RFVBmwiSFVTW4vk
         6V9Vi3UieXb34vUTmOr5pfnGL6iYGur/XzoL1lmt7Ng4u5cHLyiTbu2MCboY0UIwUj+M
         v7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729879608; x=1730484408;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rzvPPai53fMD5UNjgd9vqk8UdMlivM/edoCVC3A+8ZE=;
        b=s/lfzeIkFEPE+x6Vi0DHsD5NANsrM04Exzk2uVVi8RVPn0pv8/h8Ofbl9Oq/aEgIuV
         oXfMFc00yzkUhpNY6TTEl/uqEophJ45ipJm8hQZks4snNyiXMEhpcXjVzGJ/MoMUhgE6
         UjI382SdEuxfyjULdGOEZ0Cx/ZMR6YYiImiWZurRuaKM+1hqNXoVAmKJKQbTTOcv3cOI
         LJ17k/Ce2jdJJzhrHcS7LhJU81thbrGPCvFnEi8DsoMUhNatf59Th76qnRYAGMehlwCU
         tFl9ZZXOMG0bKbwd74hOLIId0yfeXACqOcRnqUIkaAsf2grSbrtIX+qk7jv0mVo3XJuo
         pJMg==
X-Gm-Message-State: AOJu0YwsrxNSYIJLLLIRbyCRNbGXmzm9uG0SOqbUWF6N1xrcfOLoA12O
	LGesfkegOuvUZl/Azt166vlJeMKIFTXLCjnAU7lx1h5IxserXR635lGdfA==
X-Google-Smtp-Source: AGHT+IEaLsGsydWXaylaNqM1+6krl0F34w99X9SnNRecL61PHrhCpNz+r99kD+IM9yw02sL9BBFyJA==
X-Received: by 2002:ac8:7d44:0:b0:460:bbbf:bbff with SMTP id d75a77b69052e-4613bfdcfe1mr1745881cf.8.1729879608416;
        Fri, 25 Oct 2024 11:06:48 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46131fc75f9sm8304541cf.0.2024.10.25.11.06.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:06:48 -0700 (PDT)
Message-ID: <7765d721-657c-4387-87a7-03cb49d6fb81@gmail.com>
Date: Fri, 25 Oct 2024 14:06:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw@lists.ettus.com>
Message-ID-Hash: QCMU64R6J7PA5UFA24X535RJHWCGRD5U
X-Message-ID-Hash: QCMU64R6J7PA5UFA24X535RJHWCGRD5U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCMU64R6J7PA5UFA24X535RJHWCGRD5U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3882604586750232988=="

This is a multi-part message in MIME format.
--===============3882604586750232988==
Content-Type: multipart/alternative;
 boundary="------------Nh3gbnlQ5xFhgdCY4LMAOwLU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Nh3gbnlQ5xFhgdCY4LMAOwLU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/10/2024 13:32, c1337rogers@gmail.com wrote:
>
> Hi Marcus,
>
> Thank you for the suggestion. Unfortunately, this did not solve the=20
> issue I=E2=80=99m seeing. Every command that interfaces with the radio =
aside=20
> from uhd_find_devices terminates with:
>
> |[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=20
> RfnocError: OpTimeout: Control operation timed out waiting for ACK|
>
> |Error: RuntimeError: Failure to create rfnoc_graph.|
>
> All other communication with the radio seems to be working totally=20
> fine=E2=80=A6 Could this be a firewall issue?
>
> Thanks,
>
> Chris
>
Make sure that you "open up" ports 49152 and 49153 on your firewall.

Also, is it possible that you have your cables swapped?


>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Nh3gbnlQ5xFhgdCY4LMAOwLU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/10/2024 13:32,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:c1337rogers@gm=
ail.com">c1337rogers@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Thank you for the suggestion. Unfortunately, this did not solve
        the issue I=E2=80=99m seeing. Every command that interfaces with =
the
        radio aside from uhd_find_devices terminates with:</p>
      <p><code>[ERROR] [RFNOC::GRAPH] Caught exception while
          initializing graph: RfnocError: OpTimeout: Control operation
          timed out waiting for ACK</code></p>
      <p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code>=
</p>
      <p>All other communication with the radio seems to be working
        totally fine=E2=80=A6 Could this be a firewall issue? <br>
        <br>
        Thanks,</p>
      <p>Chris</p>
    </blockquote>
    Make sure that you "open up" ports 49152 and 49153 on your firewall.<=
br>
    <br>
    Also, is it possible that you have your cables swapped?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw@lists.ettus.com">
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

--------------Nh3gbnlQ5xFhgdCY4LMAOwLU--

--===============3882604586750232988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3882604586750232988==--
