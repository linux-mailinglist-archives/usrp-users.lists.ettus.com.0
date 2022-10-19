Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D04C603826
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 04:39:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D8AC3809FB
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 22:39:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666147143; bh=vSjk8NeBCFK8UhoBjWNtuXQHHhre/EoJyq/BoFJ81/g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mRXpfKS08ImRRnG1uzFQTSuCTEWwS8DkzuFswG8RBiU6qOTDfwjKdaX3yh/MzNbRr
	 uPcYKrZ/EovNurW3mvU248Ky4WTyL6MxJACFzjOpzc4c/AQol3v8T/Yqv3nnQO9bBC
	 gfFUGtjmv/kECDuuU6UY372VV5bAnz0o2tr6CF0GKr/f7Nr51dFHGxFMv/5BwlCYwH
	 oqsgjCRQTQzHqaWmTPvmJ0D88QEmXbHnkmsS3l4BHYfV6yDVdzFw2TC1NtBB8bMW53
	 l5OkJ7qII9nkIZ+D15BPXiN6MmyvicW8RIp/Lu6xlSc8Hq8W1b4Tc8z3jhdUQ8tTEB
	 4fICBzsqX1VtA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id D71EB380A4D
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 22:38:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lp7Nvh0T";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id a24so10900975qto.10
        for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 19:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QwbsBWHpxh4+cihSf74Yv3Yf/SsjnopBwFt5o0VI0CM=;
        b=lp7Nvh0TstaCDS972+cNoZbgjm/lfThDHg48T9u0eJ29rNubFH5z3ZS4hk8KuK5pM4
         7i82o1HB0Ugm2g57x/9FjLMOpQmLDQu8KoCIkzdaysjMPCG161pdi6SWg81gHlMv2x6J
         bbyuXprtJPe7qFmJh8tlY2uNZ5NiT8x8LXMDNARCCs0BCmI8kaW6wOaFxYUCSyEcfGoC
         FZrZGF6f7H1NFrL8Ej4NRuNYG4uvkaskLbRR5W7Vs2sTI/v6eqsbvvWefESdm3QeUmaJ
         HZhfB3X4K0rN0NhUfJsRywf1YTGJAjWcUnKoRpPVHOpIK9FfqD6uR9CX5bxDDVRQrkTZ
         iAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QwbsBWHpxh4+cihSf74Yv3Yf/SsjnopBwFt5o0VI0CM=;
        b=OCpkOA3QEu8ogSxCGGQ8T8NXBjf6VqjnibeJYAVU4zsjofIk2sExsGI4fsEJ6HOB8B
         mc+Z+A1C7UplKHHqSl3USirtRlOxoJJPNB9+t8wtAgMLvwQj8CXU6I3gYs+NWc2WENfL
         b3AGUo4zNUkSU3S/cznSuem7AdGaeULK0GmcpKR2H2P5/6JKVXiSAaaCMqvarFuGuMPs
         V4uFl/GRNZ5H/KkDVKSoeBtiaIhXvsyf37Lkmc3sfv75eTRHVC8SFjax7KkLdN/iR1/F
         wDcMEiv2TbhIUzJcOh1Vb9VdWC9For/ma4h5YERxF3bxi2NQc76mUccxqZYNko3oyH62
         i35A==
X-Gm-Message-State: ACrzQf2yso0Wss1pdEoEo5O5lHyECMZk5yfApvqmMa91b+wNhM7FXs/2
	ljjH6xBXduVEbbc4Dyi9rbJjDs8yUhc=
X-Google-Smtp-Source: AMsMyM4o43PJAik2R25IBuGN3KIZYQSbM9RMcSIZTOJxJRIbTTwq0PnB/CTQOC9wQCoD08s1I24/iA==
X-Received: by 2002:ac8:58d0:0:b0:39c:f032:e3d9 with SMTP id u16-20020ac858d0000000b0039cf032e3d9mr4765276qta.355.1666147090132;
        Tue, 18 Oct 2022 19:38:10 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id r17-20020ac87951000000b0039cb9ef50b5sm3088713qtt.26.2022.10.18.19.38.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 19:38:09 -0700 (PDT)
Message-ID: <ea51f4b6-7e5b-c7b2-e29b-3ebefe0e023b@gmail.com>
Date: Tue, 18 Oct 2022 22:38:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHPxm4nVYEPfSxABbhAPMnEcztsrubDUzLHqqiCC7A1=bOtfuQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHPxm4nVYEPfSxABbhAPMnEcztsrubDUzLHqqiCC7A1=bOtfuQ@mail.gmail.com>
Message-ID-Hash: ITHX54PBWXYRMJKAZ7F3KXWH5VD6VECF
X-Message-ID-Hash: ITHX54PBWXYRMJKAZ7F3KXWH5VD6VECF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B205mini-i issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITHX54PBWXYRMJKAZ7F3KXWH5VD6VECF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2379768423612030728=="

This is a multi-part message in MIME format.
--===============2379768423612030728==
Content-Type: multipart/alternative;
 boundary="------------3bOlVMZA3qj6ns0UTMlzgnS7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3bOlVMZA3qj6ns0UTMlzgnS7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-18 22:34, Paul Chang wrote:
>
> Dear Sir,
>
> Is it a hardware issue?=C2=A0 Please see attached picture .
>
>
> Best Regards
>
> Paul
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
My guess would be a USB cabling issue, or an issue with your USB controll=
er.


--------------3bOlVMZA3qj6ns0UTMlzgnS7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-18 22:34, Paul Chang wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHPxm4nVYEPfSxABbhAPMnEcztsrubDUzLHqqiCC7A1=3DbOtfuQ@mail.gm=
ail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p
style=3D"box-sizing:border-box;margin-top:0px;color:rgb(53,60,65);font-fa=
mily:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe
          UI&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color
          Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI
          Symbol&quot;;font-size:14px">Dear Sir,</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe
          UI&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color
          Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI
          Symbol&quot;;font-size:14px">Is it a hardware issue?=C2=A0 Plea=
se
          see attached picture .</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe
          UI&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color
          Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI
          Symbol&quot;;font-size:14px"><br>
        </p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe
          UI&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color
          Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI
          Symbol&quot;;font-size:14px">Best Regards</p>
        <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe
          UI&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color
          Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI
          Symbol&quot;;font-size:14px">Paul</p>
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
    My guess would be a USB cabling issue, or an issue with your USB
    controller.<br>
    <br>
    <br>
  </body>
</html>

--------------3bOlVMZA3qj6ns0UTMlzgnS7--

--===============2379768423612030728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2379768423612030728==--
