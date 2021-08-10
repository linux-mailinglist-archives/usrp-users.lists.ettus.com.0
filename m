Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E07A3E7B9F
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 17:03:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F0EE384C2C
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 11:03:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nqrGfyvg";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 736063848D5
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 10:51:33 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id 108-20020a9d01750000b029050e5cc11ae3so1982469otu.5
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 07:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VvkIHJNMHXpwfJCltQKK/564uoQqVh9pMpM9dHG5AUg=;
        b=nqrGfyvgZf/B8Hfqp52E78DILN7axnkd5PO3PSocwnRhqpDHTIiY1KIeT3PrYsB+mC
         jWW25HHMWwfoGu/KtE2Yfmsix3EsZqTY13ND9aLc/fB2HgdhSuyaM7pk6oYRDR12FSol
         IOgN3N3mTyMOxtPIbH5Qss56MfVmXBcwBPWJ1C5bxrnCWJUbxi3ZVdMUjOJX85ufrZzR
         26EdDE33cjo8Et9M1rhlriU0/Ca8Z0lri/z50uqiVwqTHCxGym4LmGDalZcA8FcVWYIT
         an0uOmBg3j9tkIIN9/NK1rE4iTnTPdJFjD9wfoV0RKsweXk+mp/UYsd/P9klFOLVRLZd
         T64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VvkIHJNMHXpwfJCltQKK/564uoQqVh9pMpM9dHG5AUg=;
        b=Mnnt/aX97Awuxvz7ko6cLRVLd8utZVH2tREPse6kuiXUErHteAlN7Gf+yAi62mTASc
         7f51Z0d9Gfj7fqEUIFrDilQ80TgCYpkN1ozlvF/mQox3eTHpjz//XpJaXGnL7aVuH79x
         1YjJwqT1/IjbDoEq7BB75oSuhuNc7B7nfVQiPO/rXOtRO8H0ACBPoN+kMX6OVVJGgZF4
         RpjVTWn9D+yRtZuQnk7i4xXrZQjATaVvON1/5/GkTTfIv7Lj4ZaxpV8r6q+VOT4r0Sq3
         xYaXfODPEL9Xpdk4G1UKA/j+AeLm3qfnjwbf74hl6d24Azl5gMtMS5WpnnJevtWjMvig
         dVvw==
X-Gm-Message-State: AOAM533wpWIl1F35KRtxX0FlpJgeN2GwfUTPXK9qfwzRmiRskaSaJB4K
	b+RrHzo/14LBcwm05QQnT1e+eFJ9ye6zMfUQjWU=
X-Google-Smtp-Source: ABdhPJxgBULnW2n0NYBnFaIpM6ueLEXdxTpPu0jsOr9TFaMHOii6ljuAOzzjRcF1TZ5pCyKlhDhOCDHJAdwKCJCER2c=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr15823739oth.15.1628607092715;
 Tue, 10 Aug 2021 07:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com> <61128F32.5000009@gmail.com>
In-Reply-To: <61128F32.5000009@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 10 Aug 2021 10:51:21 -0400
Message-ID: <CAEXYVK70k5Vk75CZS=RZwk6rDtPSdkBuxHWV-zVQZuoJH5P8_Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RA7CTECVOQ444WQ574P5MQRIKCYID6IN
X-Message-ID-Hash: RA7CTECVOQ444WQ574P5MQRIKCYID6IN
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Tobin <Tobin@augustusaero.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RA7CTECVOQ444WQ574P5MQRIKCYID6IN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6558512448267548112=="

--===============6558512448267548112==
Content-Type: multipart/alternative; boundary="0000000000003d72d105c935a341"

--0000000000003d72d105c935a341
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 10, 2021 at 10:37 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/10/2021 12:01 AM, Brian Padalino wrote:
>
> On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin <Tobin@augustusaero.com>
> wrote:
>
>> Just as an additional update - I was able to test with UHD 4.1 and there
>> is no issue - seems to be something with UHD 3.15 then.
>>
>
> Just chiming in here to ensure you understand that your test of receiving
> 625M samples using that particular program will keep all those samples in
> memory for all the channels while you receive.
>
> In other words, 10GB of RAM (625M samples * 4 bytes/sample/channel * 4
> channels) will be used just to hold your received signal.
>
> Brian:
>
> I don't think that's actually true.  The data are buffered in chunks of
> 'samps_per_buff' -- so there's only that much being stored at any given
>   time (at least in rx_multi_samples.cpp).
>

You're right - I should have consulted the code instead of make assumptions
when seeing some numbers printed out.

It follows as such from master:

The stream command num_samps is assigned the total number of samples here:


https://github.com/EttusResearch/uhd/blob/a7486cbfba959d7f55a9343db66eabee94786b2f/host/examples/rx_multi_samples.cpp#L136

... and the warning is actually printed out when issue_stream_cmd() is
called:


https://github.com/EttusResearch/uhd/blob/a7486cbfba959d7f55a9343db66eabee94786b2f/host/lib/rfnoc/radio_control_impl.cpp#L897

... and not when trying to actually recv().

Sorry for the misunderstanding.

Brian

--0000000000003d72d105c935a341
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 10, 2021 at 10:37 AM Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 08/10/2021 12:01 AM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Mon, Aug 9, 2021 at 2:12 PM Jonathan Tobin
          &lt;<a href=3D"mailto:Tobin@augustusaero.com" target=3D"_blank">T=
obin@augustusaero.com</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=
font-size:12pt;color:rgb(0,0,0)">Just
                as an additional update - I was able to test with UHD
                4.1 and there is no issue - seems to be something with
                UHD 3.15 then.</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Just chiming in here to ensure you understand that your
            test of receiving 625M samples using that particular program
            will keep all those samples in memory for all the channels
            while you receive.</div>
          <div><br>
          </div>
          <div>In other words, 10GB of RAM (625M samples * 4
            bytes/sample/channel * 4 channels) will be used just to hold
            your received signal.</div>
        </div>
      </div>
    </blockquote>
    Brian:<br>
    <br>
    I don&#39;t think that&#39;s actually true.=C2=A0 The data are buffered=
 in chunks
    of &#39;samps_per_buff&#39; -- so there&#39;s only that much being stor=
ed at any
    given<br>
    =C2=A0 time (at least in rx_multi_samples.cpp).<br></div></blockquote><=
div><br></div><div>You&#39;re right - I should have consulted the code inst=
ead of make assumptions when seeing some numbers printed out.</div><div><br=
></div><div>It follows as such from master:</div><div><br></div><div>The st=
ream command num_samps is assigned the total number of samples here:</div><=
div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/=
uhd/blob/a7486cbfba959d7f55a9343db66eabee94786b2f/host/examples/rx_multi_sa=
mples.cpp#L136">https://github.com/EttusResearch/uhd/blob/a7486cbfba959d7f5=
5a9343db66eabee94786b2f/host/examples/rx_multi_samples.cpp#L136</a></div><d=
iv><br></div><div>... and the warning is actually printed out when issue_st=
ream_cmd() is called:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https=
://github.com/EttusResearch/uhd/blob/a7486cbfba959d7f55a9343db66eabee94786b=
2f/host/lib/rfnoc/radio_control_impl.cpp#L897">https://github.com/EttusRese=
arch/uhd/blob/a7486cbfba959d7f55a9343db66eabee94786b2f/host/lib/rfnoc/radio=
_control_impl.cpp#L897</a></div><div><br></div><div>... and not when trying=
 to actually recv().</div><div><br></div><div>Sorry for the misunderstandin=
g.</div><div><br></div><div>Brian</div></div></div>

--0000000000003d72d105c935a341--

--===============6558512448267548112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6558512448267548112==--
