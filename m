Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3D2636B97
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 21:51:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AD18384351
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 15:51:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669236708; bh=DiEk2JySvo5ATygMR/K2PL5lS+TNPxD3HbvgToZNLkQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=U1PvJqeiFkebhXbYxXLGJI3s4Dp6C8KuesYzX9OCICEYGj50pxYlmsm6N++5vFP3d
	 XLnK92V9fQKwb8nC60MkNPJU6vaJqQenh7s/v+4usUz5MBY9MDNpH5BMh0RopuzmZM
	 vk+Ka9CL6DdEklYI3DMNKuzVnuh+cadHMl6rqVepo6dRXUM0Ddj3XCbdJ6OsuwyY0d
	 wlL5TyO+AKuHDK4+D55E9ad1PokqMb7w/OS2qNhqXyz72TlTfok1/tFXBmzllOT1/V
	 if88azYmwlI5abYeBVM+5vbQz5vQW+lPLbf+2w/xujoebdLk5bpXneHvBoULPiSh75
	 wKBIyO/t+zHRw==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id ED647384336
	for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 15:50:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bec+ji/F";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id w4so14570qts.0
        for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 12:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vnI0BMRnEbXigePnh29XmCAqaxdv4vxREi68KZyu4y8=;
        b=bec+ji/FGdLbMTXYStHVha9AK9wUyeT71teRqmWqJmCrflDSHOQlrqp/mTaM64U42i
         hBKWIDFCh9OWE+SXRPVgwjOh4gCBasqMG70zErDM9pLVLK+UXyDQFdM301lZ2pellIws
         BjF/VsbLjr6h7CQP2z9m1443zY3v0Bjmic3cXtiSSkoW+80rBTlAI0Tr0NVyRTPcPBPt
         v+1k8WVDyJqjwi/x627gCKptaA/I2AlbiukwRe7863y2DiRm1oh5oTDVcPU1S2UsGJDL
         8lhWQGjwVryQnayoeAIq+UKu+v/JTurKpl5nrkgQyNJritJ5YszOe5ho1boIxQAtyy/o
         Q7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vnI0BMRnEbXigePnh29XmCAqaxdv4vxREi68KZyu4y8=;
        b=R20OEb/ngaxB3TUVPbAYBsuH/xjJYh9toT9SxXtp7JkG6s2zpoYtpH0Hppf9pbQSTt
         mwmqq/iyMEFnlBm8Fu4dgYKm8y7gRAYldmx/i+pv3r/cGwGrOKse9aFbr2tERhvWkT9w
         962HXrtaZ8lm4QKUFe3BauxNSzQQalSI/v/QBn1+vDJIbbhjgSd45azkp6h0GKePzOQM
         1J3IAsVyvpFqB8Gm1IBu6AnUUa7Nxi4rYggCBGPdtQ8oXLelfd9Xe8XIi7cZcbgjcGi2
         pRm7JUQdyJxZ8oRtIIwL94K0yb01Rvh/R7lkaJJIJQiHBF9vk56jNQPTAcRxXF1z39Hq
         fnmg==
X-Gm-Message-State: ANoB5pnPB54YxReQ4KtD8mM0/yxGi8M2Qu9GR0N9kzdka9aNzC8ijzkb
	7X+B89vbriaSY9NdCmujkEM9OPehZTEigg==
X-Google-Smtp-Source: AA0mqf7qW+gGUUa108IMi/F0pGuPyG1bR497GIww9tsmA+lVyS9GuU68eoHfDofPbFVx8vZfl9n+zQ==
X-Received: by 2002:ac8:7411:0:b0:3a5:327f:fdb8 with SMTP id p17-20020ac87411000000b003a5327ffdb8mr27901249qtq.502.1669236626503;
        Wed, 23 Nov 2022 12:50:26 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id d7-20020a05620a240700b006e702033b15sm13200997qkn.66.2022.11.23.12.50.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 12:50:26 -0800 (PST)
Message-ID: <da183c42-4676-8995-919b-8ca3b2250bc9@gmail.com>
Date: Wed, 23 Nov 2022 15:50:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKHaR3=mKYwV0c2FnKPrkY1nr3f-sDhE5PRXQSsnOnv5a=NFEA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKHaR3=mKYwV0c2FnKPrkY1nr3f-sDhE5PRXQSsnOnv5a=NFEA@mail.gmail.com>
Message-ID-Hash: SEYOYHO4JLUCB4BROPTLSPP3JBXSNPCS
X-Message-ID-Hash: SEYOYHO4JLUCB4BROPTLSPP3JBXSNPCS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEYOYHO4JLUCB4BROPTLSPP3JBXSNPCS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3831941842446188935=="

This is a multi-part message in MIME format.
--===============3831941842446188935==
Content-Type: multipart/alternative;
 boundary="------------xBzTZdWq6qPdznifuzoi038k"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xBzTZdWq6qPdznifuzoi038k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/11/2022 15:24, Dario Pennisi wrote:
> Hi,
> i am using a XG-100 FPGA and moved from UHD4.0 to UHD4.2 and found out 
> that master clock rate changed from 125 to 122.88MHz. in my 
> application i need radio clock to be 125MHz but it seems it's not 
> possible, at least with the 100 MHz bandwidth variant.
> is there anything i can do to restore sampling frequency to 125 MHz?
> thanks,
>
> Dario Pennisi
>
>
That's probablhy jsut the *default* master clock rate.

Specify "master_clock_rate=125e6" in the device arguments--does that fail?


--------------xBzTZdWq6qPdznifuzoi038k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/11/2022 15:24, Dario Pennisi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKHaR3=3DmKYwV0c2FnKPrkY1nr3f-sDhE5PRXQSsnOnv5a=3DNFEA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div>i am using a XG-100 FPGA and moved from UHD4.0 to UHD4.2
          and found out that master clock rate changed from 125 to
          122.88MHz. in my application i need radio clock to be 125MHz
          but it seems it's not possible, at least with the 100 MHz
          bandwidth variant.</div>
        <div>is there anything i can do to restore sampling frequency to
          125 MHz?</div>
        <div>thanks,</div>
        <div>=C2=A0<br clear=3D"all">
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><span
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">Dario
                  Pennisi</span><br
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    That's probablhy jsut the *default* master clock rate.<br>
    <br>
    Specify "master_clock_rate=3D125e6" in the device arguments--does tha=
t
    fail?<br>
    <br>
    <br>
  </body>
</html>

--------------xBzTZdWq6qPdznifuzoi038k--

--===============3831941842446188935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3831941842446188935==--
