Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20624616EBF
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 21:28:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7FEE38428C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 16:28:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667420930; bh=f4oYdHRy7eiV4/OnNrJ4xHetntgETUxY45ZdCU8mYmU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hzbva8n3b1Jy5KAWE3XnZRtiSf5rt3VsQfSPzWi614cWBoZNzUx/QHfZot98deRWg
	 zpPNkcG8m3VxDcLA736qDlBHJ+DmMfIav4W392jBBYZ+9j+7f+aQ7O8qWg8iRRyKik
	 Ln9VKHaujMIwy7Ry/HFpder0IBC/rGCdVfdoz0URwy0GKYET17KJieoKqJYvpDh5qW
	 5ff4828Miz/TDeunh/9hRU71u/Wb8UrIWbYzA7jPThVAqJQvS8lAon7GVkGZSnkJbE
	 7JZlhV8OC8NjXG0cgYObOaIyo4qBpeXJp3Baum7Z1BdjZpaiEQPESxhNcxc4j456Jt
	 x90qpmNJazW4g==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F036383BF4
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 16:27:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gYX9p2n2";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id z6so56120qtv.5
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 13:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5f0IDce3lEPylL/uzvJWWinfrXdr+M/pshUo/baeGbk=;
        b=gYX9p2n27BpAjr3zBVRm3I2bid1IpCiaH9PDhZ3CluOtjpKWQ0fuK0s8h2NPo/IVRX
         8q0pnn7Kst1Ar5vHc7CJA1mGSe9Zx/oLsGbViZqABiHKKmPGmx4rkXn6GBfQMgL4HAgX
         UlWjuhYVnMNIbcDCzx3I+M4YYEOqMvyYaYQpK+YeZKnZ6vZXYegxTSRyC2OSM6gSoqqe
         qsqPneOla/us5YyfW6OS+YOdqJO8N2oQWXWwQD7afL+Y/30ipV9XViJnG2syyJQx5Q9a
         tpX5KEVumhY5KBfxt2j0ibObO1QyDqhL0A8gLL2Qcgxy5YYeobqGmykSpRU7MBC1Q8Rw
         nobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5f0IDce3lEPylL/uzvJWWinfrXdr+M/pshUo/baeGbk=;
        b=xc4wmArIZQf0N+AZjZ+O4hE3mC4+qtC1mhoijRKdrPaqw5r1yT/pveUEEtqMDbem/k
         giUdKaxezqAptGaoZhY0ojN2ngQ5ABcs/i04ynnkQrFNLfxE+i7Z7tp96klT430v3Xr2
         VuYWopSVz6IHI9Uh8ki2YA6YWAC3eUIc4pL5HXd3gx/CSJFlXuxk2dJ8RcLMixgBGcW7
         jUlspdfERJKzPnzTDhVCzQEGtETaS+BxoDJuqcz9KCQufMQi/dOhyDx1/68Z/dAG8ZYf
         OwZQN02TNHe3q8Few/qXIlWYlbX/jirswgjdRRwgNW/bdDxBUMEKZu5cKHMDj/z/w/ky
         7m0A==
X-Gm-Message-State: ACrzQf1+jkU5bfFtDYRtPhII+JXGSyK1mrFC59yVoAHpiMw+cKUMdokR
	V1Y8yCpcP9ipaxe2lDmpOvMbVg/cvhM=
X-Google-Smtp-Source: AMsMyM5RCDIK5MsbxRhg0PCtPN166rjoDoC0ommQXmGFZDUqcDJbzt3YLpd8Nv4LbFin3kMccgw7sA==
X-Received: by 2002:ac8:5f13:0:b0:3a5:b69:4fdc with SMTP id x19-20020ac85f13000000b003a50b694fdcmr20523569qta.193.1667420855990;
        Wed, 02 Nov 2022 13:27:35 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id bs6-20020a05620a470600b006b61b2cb1d2sm9230264qkb.46.2022.11.02.13.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:27:35 -0700 (PDT)
Message-ID: <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com>
Date: Wed, 2 Nov 2022 16:27:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kenneth Burchfield <ksburchfield@gmail.com>
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
 <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
Message-ID-Hash: WIPK2KD3FLQ54VBNBREXUJIRBX5IYZDL
X-Message-ID-Hash: WIPK2KD3FLQ54VBNBREXUJIRBX5IYZDL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WIPK2KD3FLQ54VBNBREXUJIRBX5IYZDL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7395379307984128304=="

This is a multi-part message in MIME format.
--===============7395379307984128304==
Content-Type: multipart/alternative;
 boundary="------------kHDv0PZ1fmB7JI2WdU2U0uKP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kHDv0PZ1fmB7JI2WdU2U0uKP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 15:53, Kenneth Burchfield wrote:
> Marcus,
> I agree.=C2=A0 Is there a way to tune the sideband suppression so that =
I=20
> can attenuate more of the mirrored signal?
> With the internal lo, everything seems to just work.=C2=A0 Are there ex=
tra=20
> configuration steps that I need to take to adjust for the external lo?
I'm trying to find that out now.

I suspect that spending an afternoon with the AD9371 datasheet might=20
provide some clues--but as to whether those are
 =C2=A0 actually exposed in UHD is another question.

With the internal LO, the chip has internal algorithms for optimizing=20
phase and amplitude balance.=C2=A0 Those algorithms aren't
 =C2=A0 "in play" when you use an external LO, apparently.

One thing that *could* be done, but is tedious, is to adjust the phase=20
and amplitude balance of the baseband signal to
 =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 This is ba=
sically what=20
the internal algorithms in the chip are doing, as
 =C2=A0 far as I can tell.


>
> Thanks,
> Scott
>
> On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 02/11/2022 15:27, Kenneth Burchfield wrote:
>>     Marcus,
>>
>>     The sidebands do not change with the LO level.
>>
>>     I am basically running the tx_waveforms example from UHD 4.2.0.0, =
and I am adding the argument tx_lo_source=3Dexternal.  Attached is a pict=
ure of the spectrum. I am generating a SINE with wave-freq input 2e6. The=
 center spike is some LO leakage. The spike at -2e6 is the mirroring I am=
 seeing.
>>
>>     Thanks,
>>     Scott
>     The LO suppression looks to be about 55dBc, which is not horrific.
>
>     The sideband suppression appears to be only about 30dBc, which is
>     not very good.
>
>
>>     On 02/11/2022 12:09, Scott Burchfield wrote:
>>
>>         Hi,
>>
>>         Are there any updates on this problem.=C2=A0 I normally try no=
t to
>>         reply to old threads, but I am seeing the same the same
>>         spectral mirroring Rob described earlier.=C2=A0 My setup is al=
so
>>         the same as Rob=E2=80=99s.I have tracked some newer threads th=
at
>>         mentioned disabling TX_QEC_INIT, but I am still seeing the
>>         mirroring after disabling QEC.
>>
>>         https://www.mail-archive.com/usrp-users@lists.ettus.com/msg074=
89.html
>>
>>         Thanks,
>>
>>         Scott
>>
>>     It seems to me that if you use an external LO, that LO has to go
>>     through the phase-splitter on the mixer, and that phase-split =C2=A0
>>     is subject to errors, so turning off QEC may not be that
>>     desirable--although I think the mixer on the N310 (using an AD9371=
)
>>      =C2=A0 is a 2XLO, so the phase error should be very very small.
>>
>>     Do the unwanted sidebands change with LO level?
>

--------------kHDv0PZ1fmB7JI2WdU2U0uKP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 15:53, Kenneth Burchfiel=
d
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=3DedkQEu8bkPvWQ+PseQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Marcus,
        <div>I agree.=C2=A0 Is there a way to tune the sideband suppressi=
on
          so that I can attenuate more of the mirrored signal?</div>
        <div>With the internal lo, everything seems to just work.=C2=A0 A=
re
          there extra configuration steps that I need to take to adjust
          for the external lo?</div>
      </div>
    </blockquote>
    I'm trying to find that out now.<br>
    <br>
    I suspect that spending an afternoon with the AD9371 datasheet might
    provide some clues--but as to whether those are<br>
    =C2=A0 actually exposed in UHD is another question.<br>
    <br>
    With the internal LO, the chip has internal algorithms for
    optimizing phase and amplitude balance.=C2=A0 Those algorithms aren't=
<br>
    =C2=A0 "in play" when you use an external LO, apparently.<br>
    <br>
    One thing that *could* be done, but is tedious, is to adjust the
    phase and amplitude balance of the baseband signal to<br>
    =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 This is=
 basically
    what the internal algorithms in the chip are doing, as<br>
    =C2=A0 far as I can tell.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=3DedkQEu8bkPvWQ+PseQ@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Scott</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 2:41=
 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/11/2022 15:27, Kenneth Burchfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre style=3D"font-family:courier,&quot;courier new&quot;=
,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0=
)">Marcus,

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
            The LO suppression looks to be about 55dBc, which is not
            horrific.<br>
            <br>
            The sideband suppression appears to be only about 30dBc,
            which is not very good.<br>
            <br>
            =C2=A0 <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre style=3D"font-family:courier,&quot;courier new&quot;=
,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0=
)">On 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
                <blockquote style=3D"margin:0em;padding:0px 0px 0px
                  0.85em;color:rgb(160,30,30);border-left:0.2em solid
                  rgb(85,85,238);font-family:helvetica,arial,sans-serif;f=
ont-size:14px">
                  <pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:1em;white-space:pre-wrap;margin-top:0px;margin-bot=
tom:0px">Hi,

</pre>
                  <tt>Are there any updates on this problem.=C2=A0 I norm=
ally
                    try not to reply to=C2=A0</tt><tt>old threads, but I =
am
                    seeing the same the same spectral mirroring Rob=C2=A0=
</tt><tt>described
                    earlier.=C2=A0 My setup is also the same as Rob=E2=80=
=99s.</tt><tt>I
                    have tracked some newer threads that mentioned
                    disabling=C2=A0</tt><tt>TX_QEC_INIT, but I am still
                    seeing the mirroring after disabling QEC.</tt>
                  <pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:1em;white-space:pre-wrap;margin:0em"><a style=3D"c=
olor:rgb(0,80,150)" href=3D"https://www.mail-archive.com/usrp-users@lists=
.ettus.com/msg07489.html" rel=3D"nofollow" target=3D"_blank" moz-do-not-s=
end=3D"true" class=3D"moz-txt-link-freetext">https://www.mail-archive.com=
/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
                </blockquote>
                <tt>It seems to me that if you use an external LO, that
                  LO has to go through=C2=A0</tt><tt>the phase-splitter o=
n
                  the mixer, and that phase-split=C2=A0</tt><tt>=C2=A0 is=
 subject
                  to errors, so turning off QEC may not be that=C2=A0</tt=
><tt>desirable--although
                  I think the mixer on the N310 (using an AD9371)</tt>
                <pre style=3D"font-family:courier,&quot;courier new&quot;=
,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0=
)">=C2=A0 is a 2XLO, so the phase error should be very very small.

Do the unwanted sidebands change with LO level?</pre>
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

--------------kHDv0PZ1fmB7JI2WdU2U0uKP--

--===============7395379307984128304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7395379307984128304==--
