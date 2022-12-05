Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D60FE642C71
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 17:03:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2BAD381133
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 11:03:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670256212; bh=2BuUp8ciLW802PTdwApjAKZxKfna7lO2cs5myUtpmRE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=O3VgmgeCA+IDO33fpLAFplu13c/VE7Fao+hMy4C19yTmeOj8x4uIan7bmHBsCr4u9
	 8Y3zS3TZy3n7cgNzHKDchr4c+gTICzEniDxLkAFAj8ONvUialNUagSpW+x+HdLkpio
	 oF6OMMKQn5fkoJX8NG8f/n338xUDSZVR0Nx8/I4iXOF+Mq0ilxYWK7bGmmpEcCwnH7
	 bPixhbUwZGuuksNZuVisTgki+ynByCpYnM5FC2GU0P3uxyTtPqkw8AOotfgofQ6Ogt
	 +U0gruEFUSw+8YMPR32w84aUedM31XMfITrbR8H3vUmBuDNd31W46kct6dZyxgALsP
	 qYErT7aZqSkHg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F91638404F
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 11:01:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cgQnCRzI";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id x18so5298357qki.4
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 08:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OV6HQdknqWYaq3D17iRLD1Sf8yBi2HWDuUslKPj3DP8=;
        b=cgQnCRzI8kGTM5EeWLSerBU0kvm2xbcFVVl/9BGouC/caGxRIsjIioMrvEkTB2BOzA
         8EqKGvQ6kRlMPC5bla5+sGirqJyJAbrYJFvVttXOheO6elSpJZFyqPQptKq5YqlzOXi6
         BtDvTowIG50npkYBW/NPKC/a/c/qLIq9VuX2cMcQWHv0RsfgoE580AD7S7zE6FiQTKL6
         nxXOJgkfPV2koKxzmie7teKRNqk+eTVSc/3l8zgjS5qSCwG5dkJbVcCkE3Q2LI5wcHV8
         JTwqAAWI8zB8LY+zcL3jKg9w9Nxec79s9CaH05svmoLjqhEgrfKlCvmsw6pR31A9Ve/5
         rmfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OV6HQdknqWYaq3D17iRLD1Sf8yBi2HWDuUslKPj3DP8=;
        b=QyDoia8TBWI4lojk6VvzaOlsHWPbBfo1hxGhn6/kcyDVKV0v36nLCnfrB/rS6tAKdv
         3sOrshSgHUOyUtreQ262gp/Okz2JfQKZ6jgvN0ZulwDxbMf+0NF8PmutfDCMEh/EEMYO
         bJ5mtmVm2fMuJieYE077QTrpMqetVTS4+bgw7zCLJJCPiXpFi65HWu7akW3GbnXBGdqb
         BIqPQ6IB+PJP/Zk6eQT1hbxlPnUCrw/5Y/wwZr9uYpku8SKQ09+pyTGOeeya2tFulNE6
         XS0A47GzmTslUGHXR7ayXRuKBwlyFfexbUSB5zxUJivMSZvmGNRZ0jZUCgXN6IEvYQ05
         DaJA==
X-Gm-Message-State: ANoB5pk4QsizvMtSW2+nxEwWgHBMmze3rNgD2jGN+pBCtOk5neib5Ynj
	/D+stG52DebgwPnCBeaAMgBjPIArot0APw==
X-Google-Smtp-Source: AA0mqf7KFjo3A8uUK31BYmUnpN0MXnZ6ZvNcDtyCOfIJ9DSGtS3H9Lk0la6HtYE8gW1UVMgxHG7O9w==
X-Received: by 2002:a05:620a:567:b0:6fc:b1bc:5131 with SMTP id p7-20020a05620a056700b006fcb1bc5131mr12119849qkp.343.1670256064478;
        Mon, 05 Dec 2022 08:01:04 -0800 (PST)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id ci26-20020a05622a261a00b003a4f435e381sm9892373qtb.18.2022.12.05.08.01.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 08:01:04 -0800 (PST)
Message-ID: <ee226ecd-5acc-0ee3-55ca-4ef0435ce2a0@gmail.com>
Date: Mon, 5 Dec 2022 11:01:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
 <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
 <CANV7_JPioLmC9yFM-N+vX=ZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANV7_JPioLmC9yFM-N+vX=ZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gmail.com>
Message-ID-Hash: M5PFRLFQ5VPOLM62G73OC4N35NF3TWJV
X-Message-ID-Hash: M5PFRLFQ5VPOLM62G73OC4N35NF3TWJV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5PFRLFQ5VPOLM62G73OC4N35NF3TWJV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4881822472089372603=="

This is a multi-part message in MIME format.
--===============4881822472089372603==
Content-Type: multipart/alternative;
 boundary="------------506jjvjiQSt1ZyBS9mAe5kNL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------506jjvjiQSt1ZyBS9mAe5kNL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/12/2022 10:14, Roberto Rigamonti wrote:
> Hello,
>
> Thank for your quick reply! I've never considered creating multiple=20
> streamers for sub-sets of channels in a multi-usrp configuration (I=20
> either had used a single streamer for a multi-usrp, or per-boards=20
> streamers in separate threads), and I hadn't thought having a look at=20
> UHD sources for inspiration (from a quick glance, I would say that=20
> multi-usrp basically does the job for me...)... Thanks for the=20
> suggestions ! :)
>
> Best,
> Rob
A single multi_usrp object is also a "synchronization container" -- UHD=20
will try to ensure that all the streams within it are
 =C2=A0 timestamp-aligned.=C2=A0 It doesn't do that across multiple multi=
_usrp=20
objects.


>
> On Mon, 5 Dec 2022 at 15:55, Rob Kossler <rkossler@nd.edu> wrote:
>
>     Hi Rob,
>     I don't know the direct answer to your question about whether it
>     is better to use a single "device" instance or to handle multiple
>     boards in different threads. But, I'm wondering=C2=A0if perhaps the
>     only thing that is critical is the handling of streamers.=C2=A0 In
>     either case you mentioned, you can have multiple streamer threads
>     (one for each channel if you want). In the past, I experienced
>     better performance by running each streamer in its own thread, but
>     I can't confirm if that is still true in more recent versions of
>     UHD.=C2=A0 On a side note, you might want to take a look at the Ett=
us
>     file host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus
>     implements the multi_usrp object using the lower level commands of
>     the RFNoC API.
>     Rob
>
>     On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti
>     <roberto.rigamonti@gmail.com> wrote:
>
>         Hello,
>
>         I have a mix of N320/N321 boards, and I would like to make
>         synchronised acquisitions using White Rabbit.
>         I have already achieved that using a custom software that
>         creates a single multi-usrp that encompasses all my boards (as
>         it is suggested in
>         https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comm=
ands_in_UHD),
>         but I've just stumbled upon Ettus Multichannel RF Reference
>         Architecture
>         (https://kb.ettus.com/Multichannel_RF_Reference_Architecture)
>         where individual boards have their acquisitions made by
>         separate threads.
>
>         I was wondering which of the two approaches is best --- I
>         would have bet on the former, since it leaves the burden of
>         dealing with multiple boards to UHD (more elegant, less
>         error-prone), but the other one is THE reference architecture..=
.
>
>         Thanks in advance for your help! :)
>
>         Best,
>         Rob
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------506jjvjiQSt1ZyBS9mAe5kNL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/12/2022 10:14, Roberto Rigamonti
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANV7_JPioLmC9yFM-N+vX=3DZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>Thank for your quick reply! I've never considered creating
          multiple streamers for sub-sets of channels in a multi-usrp
          configuration (I either had used a single streamer for a
          multi-usrp, or per-boards streamers in separate threads), and
          I hadn't thought having a look at UHD sources for inspiration
          (from a quick glance, I would say that multi-usrp basically
          does the job for me...)... Thanks for the suggestions ! :)</div=
>
        <div><br>
        </div>
        <div>Best,</div>
        <div>Rob<br>
        </div>
      </div>
    </blockquote>
    A single multi_usrp object is also a "synchronization container" --
    UHD will try to ensure that all the streams within it are<br>
    =C2=A0 timestamp-aligned.=C2=A0 It doesn't do that across multiple mu=
lti_usrp
    objects.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANV7_JPioLmC9yFM-N+vX=3DZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 5 Dec 2022 at 15:55=
,
          Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">Hi Rob,
              <div>I don't know the direct answer to your question about
                whether it is better to use a single "device" instance
                or to handle multiple boards in different threads. But,
                I'm wondering=C2=A0if perhaps the only thing that is crit=
ical
                is the handling of streamers.=C2=A0 In either case you
                mentioned, you can have multiple streamer threads (one
                for each channel if you want). In the past, I
                experienced better performance by running each streamer
                in its own thread, but I can't confirm if that is still
                true in more recent versions of UHD.=C2=A0 On a side note=
,
                you might want to take a look at the Ettus file
                host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how
                Ettus implements the multi_usrp object using the lower
                level commands of the RFNoC API.</div>
              <div>Rob</div>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 5, 2022 a=
t
                9:32 AM Roberto Rigamonti &lt;<a
                  href=3D"mailto:roberto.rigamonti@gmail.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">roberto.rigamonti@gmail=
.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div>Hello,</div>
                  <div><br>
                  </div>
                  <div>I have a mix of N320/N321 boards, and I would
                    like to make synchronised acquisitions using White
                    Rabbit. <br>
                  </div>
                  <div>I have already achieved that using a custom
                    software that creates a single multi-usrp that
                    encompasses all my boards (as it is suggested in <a
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://kb.ettus.co=
m/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a>),
                    but I've just stumbled upon Ettus Multichannel RF
                    Reference Architecture (<a
                      href=3D"https://kb.ettus.com/Multichannel_RF_Refere=
nce_Architecture"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://kb.ettus.co=
m/Multichannel_RF_Reference_Architecture</a>)
                    where individual boards have their acquisitions made
                    by separate threads.</div>
                  <div><br>
                  </div>
                  <div>I was wondering which of the two approaches is
                    best --- I would have bet on the former, since it
                    leaves the burden of dealing with multiple boards to
                    UHD (more elegant, less error-prone), but the other
                    one is THE reference architecture...</div>
                  <div><br>
                  </div>
                  <div>Thanks in advance for your help! :)</div>
                  <div><br>
                  </div>
                  <div>Best,</div>
                  <div>Rob<br>
                  </div>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </blockquote>
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
    <br>
  </body>
</html>

--------------506jjvjiQSt1ZyBS9mAe5kNL--

--===============4881822472089372603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4881822472089372603==--
