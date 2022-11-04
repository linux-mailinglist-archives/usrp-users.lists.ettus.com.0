Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A022361A21A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 21:24:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 932F9383DFD
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 16:24:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667593448; bh=mo6GoOTdU1s1UHS1hSS9OagcYUNVsURFklSpfmDY71U=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yS2XOKqjhGmZk8KX5TetxozelJbafy1hBGeMigmYxQejEzZRcgb4+6TZHTnDHWjXq
	 mnN6gW2mc7ghb69ry3diUqatBGNIjekoZmoKcYSvj0Z6w4zpHMIqB1pklxM/8T1kXP
	 6Pq3GsJQe6i7o6eyW63vtUh/kPaGUbNvExj96fcdWN40Bi1PYCF8rnmWvI3YL5pZEd
	 if1baBdDihcEpxeE84Bs3huFNS6YE7jbgJV9LHi6FGNbnBjLy2AVo6H9xtzX1jeCJu
	 nlBmOSQXP8aVxzEOsMTf7aDPTV5G8ROfsGPsmVoXhuObpQWdF2XFcicXpu/PxaIsaQ
	 7NVjcjeeDeXoQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 873C5384185
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 16:22:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="luCBxoTH";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id hh9so3684091qtb.13
        for <usrp-users@lists.ettus.com>; Fri, 04 Nov 2022 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AiNfbLO+hGsbYoKuvegUhu2wtdxyHyFE+1vO3z7OzEc=;
        b=luCBxoTHT/3e2EP7JOyXGfn54gXD4GnSE4xaECCTBRA+RN4akP4n411vgpUAWumRNK
         s97g6Bk+zfxKFP4J6R/bvCv/7VaCkcl+1Ah3a3HVwGZMqon+zy4ULf5m96bd8yCPrEcc
         UHAsmvSra8U0yWClvUxtHySmre5HvXAsuWJYNZvY448YuKfNsd16ZpuURa5iC1TicltQ
         AIy0BBjMVhR6VwPeCTgz8fr0iWg7WpM6Rdbg/WliydIC0iNuktDakSIW4Ks/OPUxd9Gv
         4S5ds8c4duOK/s4y4FKmvZzfyiSGuWBtCFnQgD10cM3g2oHFQQO148qVfDobpiKZ97FO
         aQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AiNfbLO+hGsbYoKuvegUhu2wtdxyHyFE+1vO3z7OzEc=;
        b=euj2hMnlczaDc5j8blcpAHduFnXsxEHKtdDSeKvbvHX1GvUQyEcHaC/oAY1bF2RbFS
         Ksp9LWdPb2+NTpgeD/auAMfZtP2kREeVyv4eB7Vs5V8lPlcqjzoqsUYzbavwaPHBVML+
         EKb2p68lf/Z7dGsBZJuI4nAvGvNrKHk49b7yAXNf0AyjK3xLCFDCFEt6SgDVOAnDvvYz
         uE3+HHPFKgm0uaBhXGdW+NIePWWlIS+ikTdDJCruD1jtdo4C6oqvsCk+eoGR+QeCDsa7
         PNLINfJXqA9Jw72Wf+ffkjSMyugDO9GwhX7FVBkv/hXCzkVftoVnGrEJUniPgozmDERr
         nbhA==
X-Gm-Message-State: ACrzQf06FiJ3iA+70iHf0qqorxVLHjtkqKPBve5FtA0el9ugCpIhxw8Z
	Z1Iv3VSW6pYkjdoQ9/OPi0w=
X-Google-Smtp-Source: AMsMyM6okMkOhbWa+H+NvKjVDMTRwcn8e2sasdXKPrCifK0QCpsE4wM1f91AC9ZRUk0/0jZt79Q6OA==
X-Received: by 2002:ac8:7c7:0:b0:3a5:573f:4463 with SMTP id m7-20020ac807c7000000b003a5573f4463mr7760419qth.235.1667593368810;
        Fri, 04 Nov 2022 13:22:48 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id i6-20020a05620a248600b006ecfb2c86d3sm69614qkn.130.2022.11.04.13.22.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 13:22:48 -0700 (PDT)
Message-ID: <64da4f9d-f97f-3f25-da92-c26226945b5e@gmail.com>
Date: Fri, 4 Nov 2022 16:22:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kenneth Burchfield <ksburchfield@gmail.com>
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
 <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
 <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com>
 <CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmail.com>
 <bbb1872e-f6d6-ad4c-6b29-f5d0c2a3526b@gmail.com>
 <CAChZci9Yk3P4RfUa=THj613g82zAeZRS+ELqoya=27L7jXY=aw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAChZci9Yk3P4RfUa=THj613g82zAeZRS+ELqoya=27L7jXY=aw@mail.gmail.com>
Message-ID-Hash: B4ECNQEBZQSWSUP7BI3U4TOSCIUNXNVO
X-Message-ID-Hash: B4ECNQEBZQSWSUP7BI3U4TOSCIUNXNVO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4ECNQEBZQSWSUP7BI3U4TOSCIUNXNVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7871340910470708130=="

This is a multi-part message in MIME format.
--===============7871340910470708130==
Content-Type: multipart/alternative;
 boundary="------------PVFbbnUYKV9kWJYkSHCVXWNk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PVFbbnUYKV9kWJYkSHCVXWNk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/11/2022 16:21, Kenneth Burchfield wrote:
> Rob / Marcus,
>
> The initial-5GHz LO was my problem.=C2=A0 I was not providing it at=20
> startup.=C2=A0 Thank you guys for the info.=C2=A0 The mirroring is reso=
lved!
>
> -Scott
That's excellent!


>
> On Thu, Nov 3, 2022 at 8:48 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 03/11/2022 09:36, Rob Kossler wrote:
>>     When running N310 with external LO, the device will automatically
>>     try to run a calibration at device startup (actually in the
>>     software make N310 device) where it expects the external LO to be
>>     at 5 GHz.=C2=A0 If you supply an LO at a different frequency, this
>>     calibration will be ruined. Is it possible that you are not
>>     supplying a 5 GHz LO at startup?=C2=A0 Note that you can change it
>>     after startup to your desired freq of operation.
>>
>>     And, responding to another discussion point about QEC correction,
>>     even if you disable the "tracking cal" you=C2=A0 can keep the "ini=
t
>>     cal" in place. I assume this means that an initial calibration is
>>     performed and then the calibrated gain/phase settings are left
>>     untouched afterwards.=C2=A0 So, disabling the tracking cal should =
not
>>     mean that you are not performing any correction - just not
>>     updated dynamically.
>>     Rob
>>
>     Thanks, Rob.=C2=A0 I had, once again, forgotten about the initial-5=
GHz
>     requirement.
>
>     The complete list of possible "init" and "tracking" CAL options is
>     here:
>
>     https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrat=
ions
>
>
>>     On Wed, Nov 2, 2022 at 4:28 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 02/11/2022 15:53, Kenneth Burchfield wrote:
>>>         Marcus,
>>>         I agree.=C2=A0 Is there a way to tune the sideband suppressio=
n so
>>>         that I can attenuate more of the mirrored signal?
>>>         With the internal lo, everything seems to just work.=C2=A0 Ar=
e
>>>         there extra configuration steps that I need to take to
>>>         adjust for the external lo?
>>         I'm trying to find that out now.
>>
>>         I suspect that spending an afternoon with the AD9371
>>         datasheet might provide some clues--but as to whether those ar=
e
>>         =C2=A0 actually exposed in UHD is another question.
>>
>>         With the internal LO, the chip has internal algorithms for
>>         optimizing phase and amplitude balance.=C2=A0 Those algorithms=
 aren't
>>         =C2=A0 "in play" when you use an external LO, apparently.
>>
>>         One thing that *could* be done, but is tedious, is to adjust
>>         the phase and amplitude balance of the baseband signal to
>>         =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 =
This is
>>         basically what the internal algorithms in the chip are doing, =
as
>>         =C2=A0 far as I can tell.
>>
>>
>>>
>>>         Thanks,
>>>         Scott
>>>
>>>         On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 02/11/2022 15:27, Kenneth Burchfield wrote:
>>>>             Marcus,
>>>>
>>>>             The sidebands do not change with the LO level.
>>>>
>>>>             I am basically running the tx_waveforms example from UHD=
 4.2.0.0, and I am adding the argument tx_lo_source=3Dexternal.  Attached=
 is a picture of the spectrum. I am generating a SINE with wave-freq inpu=
t 2e6. The center spike is some LO leakage. The spike at -2e6 is the mirr=
oring I am seeing.
>>>>
>>>>             Thanks,
>>>>             Scott
>>>             The LO suppression looks to be about 55dBc, which is not
>>>             horrific.
>>>
>>>             The sideband suppression appears to be only about 30dBc,
>>>             which is not very good.
>>>
>>>
>>>>             On 02/11/2022 12:09, Scott Burchfield wrote:
>>>>
>>>>                 Hi,
>>>>
>>>>                 Are there any updates on this problem.=C2=A0 I norma=
lly
>>>>                 try not to reply to old threads, but I am seeing
>>>>                 the same the same spectral mirroring Rob described
>>>>                 earlier.=C2=A0 My setup is also the same as Rob=E2=80=
=99s.I have
>>>>                 tracked some newer threads that mentioned disabling
>>>>                 TX_QEC_INIT, but I am still seeing the mirroring
>>>>                 after disabling QEC.
>>>>
>>>>                 https://www.mail-archive.com/usrp-users@lists.ettus.=
com/msg07489.html
>>>>
>>>>                 Thanks,
>>>>
>>>>                 Scott
>>>>
>>>>             It seems to me that if you use an external LO, that LO
>>>>             has to go through the phase-splitter on the mixer, and
>>>>             that phase-split is subject to errors, so turning off
>>>>             QEC may not be that desirable--although I think the
>>>>             mixer on the N310 (using an AD9371)
>>>>              =C2=A0 is a 2XLO, so the phase error should be very ver=
y small.
>>>>
>>>>             Do the unwanted sidebands change with LO level?
>>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------PVFbbnUYKV9kWJYkSHCVXWNk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/11/2022 16:21, Kenneth Burchfiel=
d
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci9Yk3P4RfUa=3DTHj613g82zAeZRS+ELqoya=3D27L7jXY=3Daw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Rob / Marcus,
        <div><br>
        </div>
        <div>The initial-5GHz LO was my problem.=C2=A0 I was not providin=
g it
          at startup.=C2=A0 Thank you guys for the info.=C2=A0 The mirror=
ing is
          resolved!</div>
        <div><br>
        </div>
        <div>-Scott</div>
      </div>
    </blockquote>
    That's excellent!<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci9Yk3P4RfUa=3DTHj613g82zAeZRS+ELqoya=3D27L7jXY=3Daw@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 3, 2022 at 8:48=
 AM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 03/11/2022 09:36, Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">When running N310 with external LO, the
                device will automatically try to run a calibration at
                device startup (actually in the software make N310
                device) where it expects the external LO to be at 5
                GHz.=C2=A0 If you supply an LO at a different frequency, =
this
                calibration will be ruined. Is it possible that you are
                not supplying a 5 GHz LO at startup?=C2=A0 Note that you =
can
                change it after startup to your desired freq of
                operation.
                <div><br>
                </div>
                <div>And, responding to another discussion point about
                  QEC correction, even if you disable the "tracking cal"
                  you=C2=A0 can keep the "init cal" in place. I assume th=
is
                  means that an initial calibration is performed and
                  then the calibrated gain/phase settings are left
                  untouched afterwards.=C2=A0 So, disabling the tracking =
cal
                  should not mean that you are not performing any
                  correction - just not updated dynamically.</div>
                <div>Rob=C2=A0</div>
              </div>
              <br>
            </blockquote>
            Thanks, Rob.=C2=A0 I had, once again, forgotten about the
            initial-5GHz requirement.<br>
            <br>
            The complete list of possible "init" and "tracking" CAL
            options is here:<br>
            <br>
            <a
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibr=
ations"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/page_usrp_n3xx.html#n3xx_mg_calibrations</a><br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022=
 at
                  4:28 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 02/11/2022 15:53, Kenneth Burchfield wrote:<b=
r>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Marcus,
                        <div>I agree.=C2=A0 Is there a way to tune the
                          sideband suppression so that I can attenuate
                          more of the mirrored signal?</div>
                        <div>With the internal lo, everything seems to
                          just work.=C2=A0 Are there extra configuration
                          steps that I need to take to adjust for the
                          external lo?</div>
                      </div>
                    </blockquote>
                    I'm trying to find that out now.<br>
                    <br>
                    I suspect that spending an afternoon with the AD9371
                    datasheet might provide some clues--but as to
                    whether those are<br>
                    =C2=A0 actually exposed in UHD is another question.<b=
r>
                    <br>
                    With the internal LO, the chip has internal
                    algorithms for optimizing phase and amplitude
                    balance.=C2=A0 Those algorithms aren't<br>
                    =C2=A0 "in play" when you use an external LO, apparen=
tly.<br>
                    <br>
                    One thing that *could* be done, but is tedious, is
                    to adjust the phase and amplitude balance of the
                    baseband signal to<br>
                    =C2=A0 compensate for the imbalance of the mixer.=C2=A0=
=C2=A0 This
                    is basically what the internal algorithms in the
                    chip are doing, as<br>
                    =C2=A0 far as I can tell.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                        <div>Thanks,</div>
                        <div>Scott</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov=
 2,
                          2022 at 2:41 PM Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 02/11/2022 15:27, Kenneth Burchfield
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em=
;color:rgb(0,0,0)">Marcus,

The sidebands do not change with the LO level.

I am basically running the tx_waveforms example from UHD 4.2.0.0, and I a=
m adding the argument tx_lo_source=3Dexternal.  Attached is a picture of =
the spectrum. I am generating a SINE with wave-freq input 2e6. The center=
 spike is some LO leakage. The spike at -2e6 is the mirroring I am seeing=
.

Thanks,
Scott</pre>
                              </div>
                            </blockquote>
                            The LO suppression looks to be about 55dBc,
                            which is not horrific.<br>
                            <br>
                            The sideband suppression appears to be only
                            about 30dBc, which is not very good.<br>
                            <br>
                            =C2=A0 <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em=
;color:rgb(0,0,0)">On 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
                                <blockquote
                                  style=3D"margin:0em;padding:0px 0px 0px
0.85em;color:rgb(160,30,30);border-left:0.2em solid
                                  rgb(85,85,238);font-family:helvetica,ar=
ial,sans-serif;font-size:14px">
                                  <pre style=3D"font-family:courier,&quot=
;courier new&quot;,monospace;font-size:1em;white-space:pre-wrap;margin-to=
p:0px;margin-bottom:0px">Hi,

</pre>
                                  <tt>Are there any updates on this
                                    problem.=C2=A0 I normally try not to
                                    reply to=C2=A0</tt><tt>old threads, b=
ut I
                                    am seeing the same the same spectral
                                    mirroring Rob=C2=A0</tt><tt>described
                                    earlier.=C2=A0 My setup is also the s=
ame
                                    as Rob=E2=80=99s.</tt><tt>I have trac=
ked
                                    some newer threads that mentioned
                                    disabling=C2=A0</tt><tt>TX_QEC_INIT, =
but
                                    I am still seeing the mirroring
                                    after disabling QEC.</tt>
                                  <pre style=3D"font-family:courier,&quot=
;courier new&quot;,monospace;font-size:1em;white-space:pre-wrap;margin:0e=
m"><a style=3D"color:rgb(0,80,150)" href=3D"https://www.mail-archive.com/=
usrp-users@lists.ettus.com/msg07489.html" rel=3D"nofollow" target=3D"_bla=
nk" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://www.=
mail-archive.com/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
                                </blockquote>
                                <tt>It seems to me that if you use an
                                  external LO, that LO has to go
                                  through=C2=A0</tt><tt>the phase-splitte=
r on
                                  the mixer, and that phase-split=C2=A0</=
tt><tt>=C2=A0
                                  is subject to errors, so turning off
                                  QEC may not be that=C2=A0</tt><tt>desir=
able--although
                                  I think the mixer on the N310 (using
                                  an AD9371)</tt>
                                <pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em=
;color:rgb(0,0,0)">=C2=A0 is a 2XLO, so the phase error should be very ve=
ry small.

Do the unwanted sidebands change with LO level?</pre>
                              </div>
                            </blockquote>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------PVFbbnUYKV9kWJYkSHCVXWNk--

--===============7871340910470708130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7871340910470708130==--
