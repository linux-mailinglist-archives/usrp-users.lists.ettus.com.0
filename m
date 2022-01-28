Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1114A042E
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jan 2022 00:20:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 248C3384688
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 18:20:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dx3f2z2X";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 49B863849EA
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 18:19:30 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id e20so7294419qvu.7
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 15:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=IkO6VSOpKfaRnIBNsxhqEMhFwHquS3fT8rufvshWWt0=;
        b=Dx3f2z2Xd03ryzAMxJ3W96nI2U/xUXI5htgSz+oNbxOxW3cGY4u3vlyAIeQ8/IzNbZ
         k/iDZRlZSkjn2Er9gpjCV242KTVyJSlbgwg9jNkX5FBaX1OlaBroIdTMWAU1zpSEr81q
         5v+fYLAv5dZj4z56nBFUBr8qR8BwVN8HFH9cQvFPzco9ed8i5ZbOs9z9m04IL8GzdqEh
         qkyRbQIVMXEuUGMhuknv3p3laHTeNT9866G2ZyAtjQjyJ72TMUxqUe0qHGuJtEIN1Qd+
         VOqWqqO2rns39mzZMGHQqUlgxBzfdppKryilRVN+Lp4DcPUwJCULy2i4TsN4RND/hLOx
         /XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=IkO6VSOpKfaRnIBNsxhqEMhFwHquS3fT8rufvshWWt0=;
        b=ZsLtOQUZQMTes3mdGvnt715MDKcO8SLJKilieOzXL/RY9D6TQN6qIVJkZtx9SojqUi
         ghXOvMzOZAy4Vbp81lqd6E/33ZE4SmvxZiVR1N7i/PCETDMfwas+qyHUBem10+JCEH6+
         D8CcGOcIV9uFkU4tShiSjBCfKOv04qNtRlMcvrKxXntTHDWfYaFSJtPiP6JyM1VRTgUP
         +Y0nJOYJnTjA2b2OLOcDQv45bZCgyQdU5bcPMj69ulQm+79MebN1MilyJA4ggfvfKto9
         e/ognQnO5R6B1vGEcwftqE/SDFs+BEtHuDmmWoAYY5rOWWesxeOD/DJO5O5fNNQ2V5vn
         iwmg==
X-Gm-Message-State: AOAM5320W6O0O3IRVV1omZiQRGWfa6p85+N+4KZkfc3PLLpzeXwU1d7F
	NYnNlp+9OugtwQqnolf6MvyOFE/c6DuPlg==
X-Google-Smtp-Source: ABdhPJwZxDJAdBqsyCGhUQZoxqf7uCq2LpiXcVl/d5gVXVaX3bCJGl4zg1figRQa6jROaTlPtjLO2g==
X-Received: by 2002:a05:6214:c89:: with SMTP id r9mr9817803qvr.117.1643411969659;
        Fri, 28 Jan 2022 15:19:29 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x13sm4177019qko.114.2022.01.28.15.19.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jan 2022 15:19:29 -0800 (PST)
Message-ID: <0eff1d52-bdfe-14f3-dca8-142a1b38a982@gmail.com>
Date: Fri, 28 Jan 2022 18:19:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>, Rob Kossler <rkossler@nd.edu>
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
 <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com>
 <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
 <CACwKM9L7diK5CqHjzBpKWSf0E4P-YCTaQzrqHshKRHK-b10vmA@mail.gmail.com>
 <CAB__hTTCTkGz1LOeLjqzHeP-fxiu-reeJ=nZVyp0S4-V9mYHog@mail.gmail.com>
 <CACwKM9+BF9dpR=RWs9HVeoz5o_Xwex2bgf-Abe0YiG-=pdpALQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9+BF9dpR=RWs9HVeoz5o_Xwex2bgf-Abe0YiG-=pdpALQ@mail.gmail.com>
Message-ID-Hash: 2NVDYYS6A2H2LL33MW5HFSOQF4F7KGSU
X-Message-ID-Hash: 2NVDYYS6A2H2LL33MW5HFSOQF4F7KGSU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2NVDYYS6A2H2LL33MW5HFSOQF4F7KGSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3132254658222531904=="

This is a multi-part message in MIME format.
--===============3132254658222531904==
Content-Type: multipart/alternative;
 boundary="------------OuTZ02qv7biJ7YE2qvJvZVVu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OuTZ02qv7biJ7YE2qvJvZVVu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-28 18:11, Paul Atreides wrote:
> yes, set to 1.0
I suspect anything that's long enough to allow the streams to all arrive=20
at a notional "synchronization point" is enough.


>
> On Fri, Jan 28, 2022 at 5:59 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>     Did Marcus' suggestion below about setting the start time fix the
>     issue?
>
>     On Fri, Jan 28, 2022 at 11:31 AM Paul Atreides
>     <maud.dib1984@gmail.com> wrote:
>
>         single
>
>         On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech
>         <patchvonbraun@gmail.com> wrote:
>
>             On 2022-01-28 10:38, Paul Atreides wrote:
>>             Rob, I=E2=80=99ve been able to extend the functionality of=
 gr-uhd
>>             to include the enable switch for each LO distribution
>>             port. Thank you for the information.
>>
>>             I am now having synchronization issues with the transmit
>>             stream in the GNURadio. It appears as though the radio
>>             channels are not starting at the same time. Are you aware
>>             of any commands that you=E2=80=99ve had to run from extern=
al
>>             applications that ensure the start time for both
>>             transmitters is the same?
>>
>>             <end transmission>
>>
>             WHen specifying a "start time" in the GRC UHD Sink block
>             of anything >=3D 0.0, this code is inserted into the
>             generated Python:
>
>             self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))
>
>             Are you using a single 10GiGe link, or using dual links?
>
>
>
>

--------------OuTZ02qv7biJ7YE2qvJvZVVu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-28 18:11, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9+BF9dpR=3DRWs9HVeoz5o_Xwex2bgf-Abe0YiG-=3DpdpALQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">yes, set to 1.0<br>
      </div>
    </blockquote>
    I suspect anything that's long enough to allow the streams to all
    arrive at a notional "synchronization point" is enough.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9+BF9dpR=3DRWs9HVeoz5o_Xwex2bgf-Abe0YiG-=3DpdpALQ@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022 at 5:5=
9
          PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rkos=
sler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Did Marcus' suggestion below about setting the start
              time fix the issue?</div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022 =
at
                11:31 AM Paul Atreides &lt;<a
                  href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank=
"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">maud.dib1984@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">single<br>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2=
022
                    at 11:18 AM Marcus D. Leech &lt;<a
                      href=3D"mailto:patchvonbraun@gmail.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">patchvonbraun@gmail=
.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div>
                      <div>On 2022-01-28 10:38, Paul Atreides wrote:<br>
                      </div>
                      <blockquote type=3D"cite"> Rob, I=E2=80=99ve been a=
ble to
                        extend the functionality of gr-uhd to include
                        the enable switch for each LO distribution port.
                        Thank you for the information.
                        <div><br>
                        </div>
                        <div>I am now having synchronization issues with
                          the transmit stream in the GNURadio. It
                          appears as though the radio channels are not
                          starting at the same time. Are you aware of
                          any commands that you=E2=80=99ve had to run fro=
m
                          external applications that ensure the start
                          time for both transmitters is the same?</div>
                        <div><br>
                        </div>
                        <div>&lt;<span>end transmission&gt;</span></div>
                        <br>
                      </blockquote>
                      WHen specifying a "start time" in the GRC UHD Sink
                      block of anything &gt;=3D 0.0, this code is inserte=
d
                      into the generated Python:<br>
                      <br>
self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))<br>
                      <br>
                      Are you using a single 10GiGe link, or using dual
                      links?<br>
                      <br>
                      <br>
                      <br>
                      <br>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------OuTZ02qv7biJ7YE2qvJvZVVu--

--===============3132254658222531904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3132254658222531904==--
