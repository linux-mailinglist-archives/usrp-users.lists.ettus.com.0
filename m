Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F17C51CA14
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 22:08:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D170384B45
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:08:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651781322; bh=rPiE0Xho23lKojYO99WX3JLmdmaC1Hq0iajuPzglBNI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OkqgtocsKGb+L5cI3Xq/+469+y+SwhhuBM9VBVffctZFWHQe4ALvEEo5hZA2KDZEw
	 semYBlFlWYfs8r/JVUJtKNEnXU/SnMQWpriJIhJPvFNaTQptpOyGqmuMXhxlT3nxp9
	 S2CiL46SL7oXokLDFu+NqYWiFJxU5aQBzZeKxU0Y0/J5JsDGqTFc7jRo/Ahjd7iyGV
	 lwQR8jazaU50VhoSpOPcWNZsHpbBRoCnaxfNKFeE99l+cwr2aZXPwb7XUWdgfD4T2W
	 f/r9pKB4jJZ0vdtUOPtd6FXMnUReWQyZhXpFgT2kV5fZKv1SEROXQqgWINo7CValNC
	 Q7N+NumO+6GMQ==
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 923F6384AFD
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 16:07:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=bath-edu.20210112.gappssmtp.com header.i=@bath-edu.20210112.gappssmtp.com header.b="K3SGC3yl";
	dkim-atps=neutral
Received: by mail-wm1-f44.google.com with SMTP id m62so3286511wme.5
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 13:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bath-edu.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=kIpJcdf6E2GwM4bm0MLjBj9EGoN/3uKP7fjQBIjDE5s=;
        b=K3SGC3ylKIsPxb3PqepbH3WUGZw6x8qEkTaykjwycdgPXA48oXHXox+WxW75nVTufm
         g6X9G0Ke9NV3xwEdqoLsn6qVacqr4Y93lVG1Jfa60gahaEXfm81VwX4m4d3i72OC6PGv
         93YglKLIVNlR5NVUgp/UoVJQu8pL10dP6r8AZ7HutkIPCOB72q0eVd7xZKoR5lh9yhud
         14cfcKJsLjnzRBe5ReSLC2JW94KwK9H+iD/jLhXtNHz71IhMzJodasydJ6FZgo6QWaIq
         j+cgIkYiqwzsJrsibhcCIMRaewhX67efgNZyd6GLpVRTzyoV0eogC3Ou06HyQ58fIK2m
         2W1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=kIpJcdf6E2GwM4bm0MLjBj9EGoN/3uKP7fjQBIjDE5s=;
        b=kyzlVQdXpwVDFmXCMkqGsEuLBe6F0pncNRuB6MHKRuq4HsoLfFWVcKL3Mf2g0mk0iH
         cGy2N6FU5TPcUx8mnygpOG2IzfLg65KuR6EJEhHN8eXNl0UL9GvuhvQpnfKkCfWg10Gu
         WA7sGimJ7NnyoAFMkHG5jaZ8s17uqdAZiIvp02ED0eoL1AJyO2K644CYByp7CJ4d40pL
         cPBikUAldxqF3mbIy63uHbYFb/XYZ7Hd/6iOtUr7RqJM9f5Y/sZFSf7eYf5SUVf4nIg8
         yD4dWeQV2yUYzw/Sc8O533OH0OKet+IaicZgvsp+CYbdgh9aC0qnCo7n4d/NSmpJDPdc
         nnbg==
X-Gm-Message-State: AOAM531yoUTSM1dzgLjgpoCMBBXdKQBy/XHDO7sKnHWP+qZLEnyaBbYm
	tZTlUA8nd48nBvJFOfZiB81pX3Tlg+w8YQ==
X-Google-Smtp-Source: ABdhPJzthBKshpWtXM4822RDPU/8e02U3D4vbBalEJwRkXT0cseNRQ6RxsgWVRY/ZDdpih47D4zpjA==
X-Received: by 2002:a05:600c:6021:b0:394:56be:18e with SMTP id az33-20020a05600c602100b0039456be018emr41698wmb.86.1651781250427;
        Thu, 05 May 2022 13:07:30 -0700 (PDT)
Received: from ?IPV6:2a02:c7e:4887:d600:dc92:db91:5e99:c89a? ([2a02:c7e:4887:d600:dc92:db91:5e99:c89a])
        by smtp.gmail.com with ESMTPSA id j9-20020adfff89000000b0020c5253d90csm1849541wrr.88.2022.05.05.13.07.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 13:07:29 -0700 (PDT)
Message-ID: <a5d91de8-097b-3911-98d3-845668f9e02f@bath.edu>
Date: Thu, 5 May 2022 21:07:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a708bc85-d957-82a5-7556-cb030b973ef7@bath.edu>
 <79f66fd3-5361-0491-499f-2849b1b03867@gmail.com>
From: Peter Featherstone <peter.f.j.featherstone@bath.edu>
In-Reply-To: <79f66fd3-5361-0491-499f-2849b1b03867@gmail.com>
Message-ID-Hash: ETI3HTHNQNGN3BIXYRAFNO3VLABN7CRY
X-Message-ID-Hash: ETI3HTHNQNGN3BIXYRAFNO3VLABN7CRY
X-MailFrom: peter.f.j.featherstone@bath.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 : setting different frequencies on different channels
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ETI3HTHNQNGN3BIXYRAFNO3VLABN7CRY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2544129116606763366=="

This is a multi-part message in MIME format.
--===============2544129116606763366==
Content-Type: multipart/alternative;
 boundary="------------ztn9pd79OFW0cx3hw5w1oLcy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ztn9pd79OFW0cx3hw5w1oLcy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Marcus and thank you for your response.

What about the B210? I'm getting similar behavior with this device too,=20
i.e. I cannot set different frequencies on each channel.

This document=20
(https://kb.ettus.com/B200/B210/B200mini/B205mini#Frontend_Specifications=
)=20
says the following:

"On the B210, both transmit and receive can be used in a MIMO=20
configuration. For the MIMO case on the B210 only, both receive=20
frontends share the RX LO, and both transmit frontends share the TX LO.=20
Each LO is independently tunable between 50 MHz and 6 GHz and can be=20
used with 1 or 2 channels

Does this imply that in a non-MIMO setting, both RX channels can have=20
their own LO and therefore tune to different frequencies?

Many thanks,

Peter


On 05/05/2022 16:31, Marcus D. Leech wrote:
> On 2022-05-05 10:18, Peter Featherstone wrote:
>> Hi all,
>>
>> Some help would be great.
>>
>> I have an E320 and would like to capture IQ samples on 2 different=20
>> channels at different frequencies.
>>
>> Is this possible?
> The short answer is "no" -- because there's only 1 RF LO for each of=20
> TX and RX -- that's how the AD9361 chip
> =C2=A0 does MIMO.
>
> The longer answer is that if your two frequencies are within the=20
> analog bandwidth of the AD9361, you can do some
> =C2=A0 DDC tricks to bring them both down to baseband before presentati=
on=20
> to the host.=C2=A0 In your case, this isn't possible, since
> =C2=A0 the "split" is over 1GHz.
>
>
>>
>> When I run the following:
>>
>>
>> usrp->set_rx_freq(2.1e9, 0);
>>
>> printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));
>>
>> printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));
>>
>> usrp->set_rx_freq(3.2e9, 1);
>>
>> printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));
>>
>> printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));
>>
>>
>>
>> I get:
>>
>>
>>
>> Channel 0 freq 2.1e9
>>
>> Channel 1 freq 2.1e9
>>
>> Channel 0 freq 3.2e9
>>
>> Channel 1 freq 3.2e9
>>
>>
>> Do you have to configure the channels or something?
>>
>>
>> Thanks,
>>
>> Pete
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
--------------ztn9pd79OFW0cx3hw5w1oLcy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Marcus and thank you for your response.</p>
    <p>What about the B210? I'm getting similar behavior with this
      device too, i.e. I cannot set different frequencies on each
      channel.</p>
    <p>This document
(<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/B200/B21=
0/B200mini/B205mini#Frontend_Specifications">https://kb.ettus.com/B200/B2=
10/B200mini/B205mini#Frontend_Specifications</a>)
      says the following:</p>
    <p>"<span style=3D"color: rgb(0, 0, 0); font-family: &quot;Lucida San=
s
        Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size:
        14px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">On the B210,
        both transmit and receive can be used in a MIMO configuration.
        For the MIMO case on the B210 only, both receive frontends share
        the RX LO, and both transmit frontends share the TX LO. Each LO
        is independently tunable between 50 MHz and 6 GHz and can be
        used with 1 or 2 channels</span></p>
    <div class=3D"moz-cite-prefix">
      <p>Does this imply that in a non-MIMO setting, both RX channels
        can have their own LO and therefore tune to different
        frequencies?</p>
      <p>Many thanks,</p>
      <p>Peter</p>
      <p><br>
      </p>
    </div>
    <div class=3D"moz-cite-prefix">On 05/05/2022 16:31, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:79f66fd3-5361-0491-499f-2849b1b03867@gmail.com">On
      2022-05-05 10:18, Peter Featherstone wrote:
      <br>
      <blockquote type=3D"cite">Hi all,
        <br>
        <br>
        Some help would be great.
        <br>
        <br>
        I have an E320 and would like to capture IQ samples on 2
        different channels at different frequencies.
        <br>
        <br>
        Is this possible?
        <br>
      </blockquote>
      The short answer is "no" -- because there's only 1 RF LO for each
      of TX and RX -- that's how the AD9361 chip
      <br>
      =C2=A0 does MIMO.
      <br>
      <br>
      The longer answer is that if your two frequencies are within the
      analog bandwidth of the AD9361, you can do some
      <br>
      =C2=A0 DDC tricks to bring them both down to baseband before
      presentation to the host.=C2=A0 In your case, this isn't possible,
      since
      <br>
      =C2=A0 the "split" is over 1GHz.
      <br>
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        When I run the following:
        <br>
        <br>
        <br>
        usrp-&gt;set_rx_freq(2.1e9, 0);
        <br>
        <br>
        printf("Channel 0 freq %f\n", usrp-&gt;get_rx_freq(0));
        <br>
        <br>
        printf("Channel 1 freq %f\n", usrp-&gt;get_rx_freq(1));
        <br>
        <br>
        usrp-&gt;set_rx_freq(3.2e9, 1);
        <br>
        <br>
        printf("Channel 0 freq %f\n", usrp-&gt;get_rx_freq(0));
        <br>
        <br>
        printf("Channel 1 freq %f\n", usrp-&gt;get_rx_freq(1));
        <br>
        <br>
        <br>
        <br>
        I get:
        <br>
        <br>
        <br>
        <br>
        Channel 0 freq 2.1e9
        <br>
        <br>
        Channel 1 freq 2.1e9
        <br>
        <br>
        Channel 0 freq 3.2e9
        <br>
        <br>
        Channel 1 freq 3.2e9
        <br>
        <br>
        <br>
        Do you have to configure the channels or something?
        <br>
        <br>
        <br>
        Thanks,
        <br>
        <br>
        Pete
        <br>
        _______________________________________________
        <br>
        USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
        <br>
        To unsubscribe send an email to <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@li=
sts.ettus.com</a>
        <br>
      </blockquote>
      _______________________________________________
      <br>
      USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
      <br>
      To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@list=
s.ettus.com</a>
      <br>
    </blockquote>
  </body>
</html>

--------------ztn9pd79OFW0cx3hw5w1oLcy--

--===============2544129116606763366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2544129116606763366==--
