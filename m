Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBC57745A6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 20:44:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BAFA384A83
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 14:44:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691520287; bh=CXqjEx/H4jYgEH4SpV0L7Scp0N0VGkGz3J5YY9Usvv8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AMk6URNnv2geT7qu17NJP3M9M0E37recr5fPHG6olAvdBOu/MBJ6f/iRKODqFIoiY
	 F74fkt96DaM/UG7geAoQ6BmPCvhW1oVefcrWDL17Qr7ToP+WezlQMxxiXBU7S9Bitt
	 zejL+FApGpXNA6fdoEcSdqxAxCTXaqS7OsWL0SmU3PdsBPhim+Rg+TSIxsNimYyG4D
	 gaH6bd+PLCbwmHRVN/LjhCsVaKsIHUVsFB584q3OFM0/dgm6NeBh4PDkYvxWt2siXu
	 0hytXLMq03JnV028FKx/D7f+mDU06vjcLmpm3qcVPPxLeoj/x4ynxo9/CVvHhusP5u
	 56AiEnrGOyVXg==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id DFCA838400E
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 14:44:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aveuNIhL";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-76754b9eac0so461075485a.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 11:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691520273; x=1692125073;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OChtDGuCh0uB07Dh4WSNbBG/t6a01OmenJb+34p8pBs=;
        b=aveuNIhLHHZ2fJuItHbgHWyU+E4sgQyhrFQ5ywL2XnkWUEvaIYjv/3bL8PoBGzjSeX
         qxoRzdxjmM6Ygii4BEIZlCYtkrxlGE8t5+wPxH/pvH3DpWQD8l8olnDvJhEe/w/PPYfu
         dRf9wxreBNqJbGJQbs/hgAkMn8paDFkewdJmkhb2LXxSGL8cRytXXBlpXrQqG/JrEPlR
         WnBDztOfdRR3UqaHl9z9SK51mAojqS3entYLMqCogUACqyYDze36k8YjsJ3p7aFi7Hst
         DuIxx52MrEVTKcvLRfL+KP0AcG7IhgCpVo4/kOGGp4fnFaoMqu+1eXf7Hq9JjXM+jKq0
         qMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691520273; x=1692125073;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OChtDGuCh0uB07Dh4WSNbBG/t6a01OmenJb+34p8pBs=;
        b=ks71noi8dtjElXtQt1vD0kaPOvi/3ZY2TSf9t6r992mxzm/BiXFvKMHliaSh2Dyxsu
         9HmDxcUcJB1abLlqqTFXgRfsdCfUmdOPh6gtWR+m9d6sF+neeqevUurAy6q3jw5e3H3H
         eB4PnsyvxfVChggsnZxt9T9xKwFE/9A+Zr0MLMf2/tj8gIkFKHl6O/PvTnie8cOIxr/f
         vluqSqp4lciRfNFLpOKQzSINXb6EjovTIH98fNavrhO6pXru3ll59Otm7tYSvfUpVcdL
         5AzpOXxOyM+mCDEdfdsGqp2jMvgKLUduNqb23qN1YUifNxL+S9pyJr09AZv0L2jltG7y
         a5CA==
X-Gm-Message-State: AOJu0YzOtHvkWSxtmXD0Ywu0Nkr34edpLUMhB/M3OojCU769pzlBs83M
	IXS1O4b3GKt++UvkPJJlrc7DdVtenj0=
X-Google-Smtp-Source: AGHT+IHFHfswUdeHXWKpD8UyNpfCTdmRxslhfvWlff12VoOdaxLD5E4pA4ZPwa4gYwGdo4TO4kjYjQ==
X-Received: by 2002:a05:620a:b58:b0:767:3b7d:687c with SMTP id x24-20020a05620a0b5800b007673b7d687cmr663562qkg.15.1691520272934;
        Tue, 08 Aug 2023 11:44:32 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id j11-20020a37c24b000000b0076ce5622df1sm3480682qkm.3.2023.08.08.11.44.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 11:44:32 -0700 (PDT)
Message-ID: <5662b3fd-6aee-4484-0f8c-5817914152a5@gmail.com>
Date: Tue, 8 Aug 2023 14:44:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <LV3P220MB1054372917627DB02D39F676AE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LV3P220MB1054372917627DB02D39F676AE0DA@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Message-ID-Hash: VSNBHSY6NNKG5SW2S5C7TUN6ERIF7ZBE
X-Message-ID-Hash: VSNBHSY6NNKG5SW2S5C7TUN6ERIF7ZBE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Advice on transmitting trigger signal before pulse frequency on ettus x310 and GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VSNBHSY6NNKG5SW2S5C7TUN6ERIF7ZBE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1516145500167308814=="

This is a multi-part message in MIME format.
--===============1516145500167308814==
Content-Type: multipart/alternative;
 boundary="------------2mxs4901l23UpwNWkH3uaj3m"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2mxs4901l23UpwNWkH3uaj3m
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 14:42, Michelle Salehi wrote:
> Hi, I have a pulse frequency setup in GNU radio to transmit through an=20
> ettus x310.=C2=A0 I need to add a TTL signal right before the pulses an=
d=20
> have it turned off right after the pulse.=C2=A0 What is the best way to=
=20
> send this type of trigger signal on an ettus x310?
>
> Thanks for your help,
> Michelle
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/page_gpio_api.html

Getting access to that in a Gnu Radio flow-graph is going to require a=20
bit of custom code on your part.


--------------2mxs4901l23UpwNWkH3uaj3m
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 14:42, Michelle Salehi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LV3P220MB1054372917627DB02D39F676AE0DA@LV3P220MB1054.NAMP220.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi, I have a pulse frequency setup in GNU radio to transmit
        through an ettus x310.=C2=A0 I need to add a TTL signal right bef=
ore
        the pulses and have it turned off right after the pulse.=C2=A0 Wh=
at
        is the best way to send this type of trigger signal on an ettus
        x310?</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks for your help,</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Michelle</div>
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
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_gpio_api.html">https://files.ettus.com/manual/page_gpio_api.htm=
l</a><br>
    <br>
    Getting access to that in a Gnu Radio flow-graph is going to require
    a bit of custom code on your part.<br>
    <br>
    <br>
  </body>
</html>

--------------2mxs4901l23UpwNWkH3uaj3m--

--===============1516145500167308814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1516145500167308814==--
