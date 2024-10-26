Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5626F9B19C2
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 18:21:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97FBB385DF3
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 12:21:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729959710; bh=gdmzLxpyGdbPa627WFAjNzS4jptsoP7vMnZgUnfoPj0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N9vTFWpf7VeuGSin8epyie6ygxweTc1CDVOLbhbiF2+yHq7l+ID2Sl8SfxeNPDUvd
	 SbSs+3/cOqkD+jCRQEgKrtqiHOWDDZnqdU39A5Rs7MLuXEw+JkpJ/vpdbqwsD0PfXQ
	 DF913hVkSGCktmVJNIY04ckG0/Vp3H2xA4KHTPy527N1+POVQZd5aXaBCPVpLLYtRJ
	 8C5SzzKOusrnXHe5facDyiz+ks1OpW8ewbLVUKRwCtPkAwkQz/6wUdFiN76M8WecnK
	 tikxF4DahLAu8ZNzA54xq0nMGAC2fPduHUJjDrDLrue7uWbldGOnhngw7O4Gr9vfzF
	 hskd+FWthV7mA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F2A6385D13
	for <usrp-users@lists.ettus.com>; Sat, 26 Oct 2024 12:21:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m7qBQNdW";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6cbe90c7c95so21088236d6.1
        for <usrp-users@lists.ettus.com>; Sat, 26 Oct 2024 09:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729959690; x=1730564490; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2AE0hVBOC6cvHxbUp+uc4fFidufjvKTpJBJtuhfTxYk=;
        b=m7qBQNdWX1qIqAX2z4MyXrdAeDaKP9yCHd4XGVu2WHFbjA37qvvFOS8Ht3V+Ca6lr1
         WHY2TUFpp61SPMiE+K+h6qlOaVwNW1npLwpJDeiql5Pw8N1pmcnbuGpSLTDBEJd8AojX
         LJqMwl2eLOFoFy0pka8xkEBhOG7c15vi0M6j5OmUulTCjVho3SXsFyxzPUH9Zecgt8AI
         VHg83YYuyym/oHFpsDVOPwg0KZHa3xS3+KB8kMv4lZOqshZtQ/c/98jkUMb2H6gOqukq
         UkRdml7Hu+wlTEuIfsmvxAKPyJgobAopH05kAws5ieonC1AtPEgE/vRM5cVj7p1IUY5I
         J5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729959690; x=1730564490;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2AE0hVBOC6cvHxbUp+uc4fFidufjvKTpJBJtuhfTxYk=;
        b=McizuoIEfTOeD9F66p7ekabmXRIxW9LcCs7fBidPA4lI+WC98kzvATlqB8Er+sexAa
         nJf7CqDjGz01OMJq94pbQ+jBK/VrpDcMEta5lP/dybkU6Jjrc2k47wWg9ZJN5hM1iViJ
         IPn8g/vp3FLTeyL4Nfvg0UslO2vxw9Dkr7TZFg9mDtJknmI8g6PSOiT2MgLBGa8B30fa
         KhZGWXw2tMS7BE5QkqlwW9H9dVzw8Hoe1VWb3Y6WmHVVbjTzOBGmFLhQzMtHxGLJp1mL
         ZH9oDJoO5NIX8HGA4kO3FE4VOCpaOP8tMn5Wc8NzrmW/BTIH2Uc8DuHolNybtnl1pCxe
         +iqQ==
X-Gm-Message-State: AOJu0YzwY0u26yGN0t9l+gAmaIY9qel9m2jEJ6OY9pFkgNu5Z0v3X1jS
	RDnH/nWfPvvyjGjdN2Gf6yjSXJTYmr8J6sppVDj8o4OulBRTle1JwyAUBQ==
X-Google-Smtp-Source: AGHT+IFHaOySjxTxRpG78ZuHITh6oOJmn/j6mjz/BWtVDo3BGhVeDE35ONTlNlCIEvJ7nyi+h29PNQ==
X-Received: by 2002:a05:6214:4508:b0:6c5:ab33:5244 with SMTP id 6a1803df08f44-6d18570e6bamr49425616d6.31.1729959690355;
        Sat, 26 Oct 2024 09:21:30 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d179a5d619sm16450826d6.144.2024.10.26.09.21.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 09:21:29 -0700 (PDT)
Message-ID: <8820af7c-765f-4651-b4c4-3577791eef53@gmail.com>
Date: Sat, 26 Oct 2024 12:21:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAER1B8KWDxq2Yzq2Cr_RvT_woWMO7DL4q0Oi9yRO-7FJ2=pHmw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAER1B8KWDxq2Yzq2Cr_RvT_woWMO7DL4q0Oi9yRO-7FJ2=pHmw@mail.gmail.com>
Message-ID-Hash: G57F4HRUV7CVWVZQAP57E5DQBHIZFNVR
X-Message-ID-Hash: G57F4HRUV7CVWVZQAP57E5DQBHIZFNVR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD with DPDK minimum requirement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G57F4HRUV7CVWVZQAP57E5DQBHIZFNVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0727693117247382196=="

This is a multi-part message in MIME format.
--===============0727693117247382196==
Content-Type: multipart/alternative;
 boundary="------------wFN1G3IJohjitVfrh8Upipfb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wFN1G3IJohjitVfrh8Upipfb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/10/2024 12:15, Mehran Memarnejad wrote:
> Hi,
> Following the instructions on this link=20
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD>, I want to=20
> get the UHD work with DPDK so that I can transfer samples from E320 to=20
> Host.
>
> Question 1: The PC has an Intel Core i7 CPU and I don't know whether=20
> it can handle a 10G NIC with DPDK or not? Does DPDK support Intel Core=20
> i Series?
>
> Question 2: I have an Intel Core i7 CPU with Mellanox Connect-X 3 NIC.=20
> The OS is Ubuntu 18.04 and the UHD version is 4.4.0. Is this setup Ok=20
> for 10G NIC?
>
> Thanks in advance for your help
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I'd be somewhat shocked if Ubuntu 18.04 was adequate to host any version=20
of DPDK that would work with UHD 4.4.0, although
 =C2=A0 I don't know for sure.=C2=A0 I don't think DPDK, per se, cares ab=
out what=20
CPU family it finds itself on.=C2=A0 Whether your computer can'
 =C2=A0 "handle" a 10Gig NIC depends on whether it has the appropriate PC=
I-e=20
bus width for your card, and other things that are
 =C2=A0 harder to definitively quantify like bus and memory bandwidth and=
 CPU=20
speed.=C2=A0 I run a 10G NIC on a dual-XEON server that
 =C2=A0 is about 10 years old.=C2=A0 Works just fine.=C2=A0 But I'm runni=
ng it on=20
Ubuntu 22.04.=C2=A0 I don't use DPDK because I don't need to
 =C2=A0 ingest samples at rates that would make DPDK necessary.



Ubuntu 18.04 is very old at this point.
--------------wFN1G3IJohjitVfrh8Upipfb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/10/2024 12:15, Mehran Memarnejad
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAER1B8KWDxq2Yzq2Cr_RvT_woWMO7DL4q0Oi9yRO-7FJ2=3DpHmw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div>Following the instructions on this <a
href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD"
            moz-do-not-send=3D"true">link</a>, I want to get the UHD work
          with DPDK so that I can transfer samples from E320 to Host.<br>
        </div>
        <div><br>
        </div>
        <div>Question 1: The PC has an Intel Core i7 CPU and I don't
          know whether it can handle a 10G NIC with DPDK or not? Does
          DPDK support Intel Core i Series?</div>
        <div><br>
        </div>
        <div>Question 2: I have an Intel Core i7 CPU with <span
class=3D"gmail-test-id__field-value gmail-slds-form-element__static gmail=
-slds-grow gmail-is-read-only">Mellanox
            Connect-X 3 NIC. The OS is Ubuntu 18.04 and the UHD version
            is 4.4.0. Is this setup Ok for 10G NIC?<br>
          </span></div>
        <div><span
class=3D"gmail-test-id__field-value gmail-slds-form-element__static gmail=
-slds-grow gmail-is-read-only"><br>
          </span></div>
        <div><span
class=3D"gmail-test-id__field-value gmail-slds-form-element__static gmail=
-slds-grow gmail-is-read-only">Thanks
            in advance for your help<br>
          </span></div>
      </div>
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
    I'd be somewhat shocked if Ubuntu 18.04 was adequate to host any
    version of DPDK that would work with UHD 4.4.0, although<br>
    =C2=A0 I don't know for sure.=C2=A0 I don't think DPDK, per se, cares=
 about
    what CPU family it finds itself on.=C2=A0 Whether your computer can'<=
br>
    =C2=A0 "handle" a 10Gig NIC depends on whether it has the appropriate
    PCI-e bus width for your card, and other things that are<br>
    =C2=A0 harder to definitively quantify like bus and memory bandwidth =
and
    CPU speed.=C2=A0 I run a 10G NIC on a dual-XEON server that<br>
    =C2=A0 is about 10 years old.=C2=A0 Works just fine.=C2=A0 But I'm ru=
nning it on
    Ubuntu 22.04.=C2=A0 I don't use DPDK because I don't need to<br>
    =C2=A0 ingest samples at rates that would make DPDK necessary.<br>
    <br>
    <br>
    <br>
    Ubuntu 18.04 is very old at this point.<br>
  </body>
</html>

--------------wFN1G3IJohjitVfrh8Upipfb--

--===============0727693117247382196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0727693117247382196==--
