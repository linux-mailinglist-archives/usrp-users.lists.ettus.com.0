Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3D8617E6E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 14:53:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 483673809FA
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 09:53:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667483585; bh=39zqbS4IDxlrpdE7sKwsOzdJFclJ2RM+/h96Jl5SSnQ=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pZh+yU0Bi5yCcI1h7ucmp7u9YQry5ul4RL22IUwfYmg4lzyvvk5pEvPCPItC35Nrn
	 wmsKkhhx9Ltp5cRcrFO2lX1gnW9gHl7fyznpY/nW2FtKXNMpdWkp9BqBiUMukbcVIE
	 txlok8prfSsiAYaOxXeVvL2B1LRdB4yz45Vz4eB2XmHjxHQqGLYl6G2xydKadOMmVA
	 uu+fncZoyLXeQUBcqlOy17s/BQmuV2E0wIf2oSHiZ7/hektbNK7oe2M4rbPi6WimEo
	 cGMh8HuTmiWQuFUl0IbZ5k8l87DLic2Chh0kVLAd4ZX56aoi/fEpi8hqk2plhIVtjE
	 HG2gMjjjPWY8A==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CCAC384148
	for <usrp-users@lists.ettus.com>; Thu,  3 Nov 2022 09:48:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IWaJBuA+";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id w4so1247433qts.0
        for <usrp-users@lists.ettus.com>; Thu, 03 Nov 2022 06:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Zm5SAGHmuuA+w9UauKayNI9VHfzDMcwJqPsCRtDCCo=;
        b=IWaJBuA+aZQHvckoKAucyANXv/6gtpuXnzwem8ouMCmTF1EAtkiywQ/vVY2f+snmLV
         pP+7thsU+iaFUFtZmnl66RzwmZ2DjfjsQWmjJmm0zSBVlFHNOSsi1hoJ4vMJDxt8OpsF
         DtUpS+PhyHOlI/3W2tlxwAG5ZCBjEBqnS7NGfB2j+yER/v1a6ASIzWWJaLwBqgc50o3W
         PQALHzKR5UhTDDH7b+9EcoM9zuKvLcy6NBUK7fQHfjl9CAg5h6YHRxROTi7X6tLnZc30
         lzhzceM4X9RnKQRbV1dJD6vm1qm359ID0dGyEGF/7j0IYf2RojSrczj1zgHFj53hD3EC
         XKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5Zm5SAGHmuuA+w9UauKayNI9VHfzDMcwJqPsCRtDCCo=;
        b=dxbYzxVJI11quZuHKTs3MD7Yxvrc8Ot0TOLl6Ck34SU3zqmA7W2Ikt/qB3GJqmIa/n
         0z16YRskBvXk1Iy4Y2uhwctAn2Bdzazl4EtDAiHAYxwoBXBRYhMTh0mHM0M9emgkTRAX
         U3swYMJpaL3NeChrKgZbtq1XQaugdBHyldsW+yevB7Gy0zfgn6u6CQuWu3EM8TWHl7p2
         WSHpw4j35bUBgodXWQFylUydYm11f9KuSU6g0tUPxqZElxxq6v+r6J5zkYUVnBBA3kmM
         FL/htXNG9Y8dz0XpUoiZSBgaTu8cvqnbwW4OUyDwp7Zurenj8N7fLkzo/egx54F7AA0e
         B9xA==
X-Gm-Message-State: ACrzQf0lx1HmTOYH5nm7iH9PhdJbfghUWADe/wNgA+QLfABbivA0x3g9
	hnVp+Q7jNlx1WeOrLVVTmoM=
X-Google-Smtp-Source: AMsMyM54qCjk8ugdPqTRqV2o2iWJMpJPC54OERWQr3rYnYTkP5fYcwbYt2jio1wvNOmplLE0nf2qSg==
X-Received: by 2002:ac8:7d8c:0:b0:39c:f4b6:f02f with SMTP id c12-20020ac87d8c000000b0039cf4b6f02fmr24160942qtd.252.1667483300520;
        Thu, 03 Nov 2022 06:48:20 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id k16-20020a05620a139000b006aedb35d8a1sm767289qki.74.2022.11.03.06.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 06:48:20 -0700 (PDT)
Message-ID: <bbb1872e-f6d6-ad4c-6b29-f5d0c2a3526b@gmail.com>
Date: Thu, 3 Nov 2022 09:48:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
 <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
 <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com>
 <CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmail.com>
Message-ID-Hash: O6WJHVG7NNF7ZMN3LYJNEMO7VELRDCAG
X-Message-ID-Hash: O6WJHVG7NNF7ZMN3LYJNEMO7VELRDCAG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kenneth Burchfield <ksburchfield@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6WJHVG7NNF7ZMN3LYJNEMO7VELRDCAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5554360662882029508=="

This is a multi-part message in MIME format.
--===============5554360662882029508==
Content-Type: multipart/alternative;
 boundary="------------Seg0R0mJXbSKW6iwaJA0aABp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Seg0R0mJXbSKW6iwaJA0aABp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/11/2022 09:36, Rob Kossler wrote:
> When running N310 with external LO, the device will automatically try=20
> to run a calibration at device startup (actually in the software make=20
> N310 device) where it expects the external LO to be at 5 GHz.=C2=A0 If =
you=20
> supply an LO at a different frequency, this calibration will be=20
> ruined. Is it possible that you are not supplying a 5 GHz LO at=20
> startup?=C2=A0 Note that you can change it after startup to your desire=
d=20
> freq of operation.
>
> And, responding to another discussion point about QEC correction, even=20
> if you disable the "tracking cal" you=C2=A0 can keep the "init cal" in=20
> place. I assume this means that an initial calibration is performed=20
> and then the calibrated gain/phase settings are left untouched=20
> afterwards.=C2=A0 So, disabling the tracking cal should not mean that y=
ou=20
> are not performing any correction - just not updated dynamically.
> Rob
>
Thanks, Rob.=C2=A0 I had, once again, forgotten about the initial-5GHz=20
requirement.

The complete list of possible "init" and "tracking" CAL options is here:

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations


> On Wed, Nov 2, 2022 at 4:28 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 02/11/2022 15:53, Kenneth Burchfield wrote:
>>     Marcus,
>>     I agree.=C2=A0 Is there a way to tune the sideband suppression so =
that
>>     I can attenuate more of the mirrored signal?
>>     With the internal lo, everything seems to just work.=C2=A0 Are the=
re
>>     extra configuration steps that I need to take to adjust for the
>>     external lo?
>     I'm trying to find that out now.
>
>     I suspect that spending an afternoon with the AD9371 datasheet
>     might provide some clues--but as to whether those are
>     =C2=A0 actually exposed in UHD is another question.
>
>     With the internal LO, the chip has internal algorithms for
>     optimizing phase and amplitude balance.=C2=A0 Those algorithms aren=
't
>     =C2=A0 "in play" when you use an external LO, apparently.
>
>     One thing that *could* be done, but is tedious, is to adjust the
>     phase and amplitude balance of the baseband signal to
>     =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 This =
is basically
>     what the internal algorithms in the chip are doing, as
>     =C2=A0 far as I can tell.
>
>
>>
>>     Thanks,
>>     Scott
>>
>>     On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 02/11/2022 15:27, Kenneth Burchfield wrote:
>>>         Marcus,
>>>
>>>         The sidebands do not change with the LO level.
>>>
>>>         I am basically running the tx_waveforms example from UHD 4.2.=
0.0, and I am adding the argument tx_lo_source=3Dexternal.  Attached is a=
 picture of the spectrum. I am generating a SINE with wave-freq input 2e6=
. The center spike is some LO leakage. The spike at -2e6 is the mirroring=
 I am seeing.
>>>
>>>         Thanks,
>>>         Scott
>>         The LO suppression looks to be about 55dBc, which is not
>>         horrific.
>>
>>         The sideband suppression appears to be only about 30dBc,
>>         which is not very good.
>>
>>
>>>         On 02/11/2022 12:09, Scott Burchfield wrote:
>>>
>>>             Hi,
>>>
>>>             Are there any updates on this problem.=C2=A0 I normally t=
ry
>>>             not to reply to old threads, but I am seeing the same
>>>             the same spectral mirroring Rob described earlier.=C2=A0 =
My
>>>             setup is also the same as Rob=E2=80=99s.I have tracked so=
me
>>>             newer threads that mentioned disabling TX_QEC_INIT, but
>>>             I am still seeing the mirroring after disabling QEC.
>>>
>>>             https://www.mail-archive.com/usrp-users@lists.ettus.com/m=
sg07489.html
>>>
>>>             Thanks,
>>>
>>>             Scott
>>>
>>>         It seems to me that if you use an external LO, that LO has
>>>         to go through the phase-splitter on the mixer, and that
>>>         phase-split =C2=A0 is subject to errors, so turning off QEC m=
ay
>>>         not be that desirable--although I think the mixer on the
>>>         N310 (using an AD9371)
>>>          =C2=A0 is a 2XLO, so the phase error should be very very sma=
ll.
>>>
>>>         Do the unwanted sidebands change with LO level?
>>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------Seg0R0mJXbSKW6iwaJA0aABp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/11/2022 09:36, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">When running N310 with external LO, the device wil=
l
        automatically try to run a calibration at device startup
        (actually in the software make N310 device) where it expects the
        external LO to be at 5 GHz.=C2=A0 If you supply an LO at a differ=
ent
        frequency, this calibration will be ruined. Is it possible that
        you are not supplying a 5 GHz LO at startup?=C2=A0 Note that you =
can
        change it after startup to your desired freq of operation.
        <div><br>
        </div>
        <div>And, responding to another discussion point about QEC
          correction, even if you disable the "tracking cal" you=C2=A0 ca=
n
          keep the "init cal" in place. I assume this means that an
          initial calibration is performed and then the calibrated
          gain/phase settings are left untouched afterwards.=C2=A0 So,
          disabling the tracking cal should not mean that you are not
          performing any correction - just not updated dynamically.</div>
        <div>Rob=C2=A0</div>
      </div>
      <br>
    </blockquote>
    Thanks, Rob.=C2=A0 I had, once again, forgotten about the initial-5GH=
z
    requirement.<br>
    <br>
    The complete list of possible "init" and "tracking" CAL options is
    here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_n3xx.html#n3xx_mg_calibrations">https://files.ettus.com/manual=
/page_usrp_n3xx.html#n3xx_mg_calibrations</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmai=
l.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 4:28=
 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/11/2022 15:53, Kenneth Burchfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Marcus,
                <div>I agree.=C2=A0 Is there a way to tune the sideband
                  suppression so that I can attenuate more of the
                  mirrored signal?</div>
                <div>With the internal lo, everything seems to just
                  work.=C2=A0 Are there extra configuration steps that I =
need
                  to take to adjust for the external lo?</div>
              </div>
            </blockquote>
            I'm trying to find that out now.<br>
            <br>
            I suspect that spending an afternoon with the AD9371
            datasheet might provide some clues--but as to whether those
            are<br>
            =C2=A0 actually exposed in UHD is another question.<br>
            <br>
            With the internal LO, the chip has internal algorithms for
            optimizing phase and amplitude balance.=C2=A0 Those algorithm=
s
            aren't<br>
            =C2=A0 "in play" when you use an external LO, apparently.<br>
            <br>
            One thing that *could* be done, but is tedious, is to adjust
            the phase and amplitude balance of the baseband signal to<br>
            =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0=
 This is
            basically what the internal algorithms in the chip are
            doing, as<br>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022=
 at
                  2:41 PM Marcus D. Leech &lt;<a
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
                    <div>On 02/11/2022 15:27, Kenneth Burchfield wrote:<b=
r>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <pre style=3D"font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:r=
gb(0,0,0)">Marcus,

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
                    The LO suppression looks to be about 55dBc, which is
                    not horrific.<br>
                    <br>
                    The sideband suppression appears to be only about
                    30dBc, which is not very good.<br>
                    <br>
                    =C2=A0 <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <pre style=3D"font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:r=
gb(0,0,0)">On 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
                        <blockquote style=3D"margin:0em;padding:0px 0px
                          0px
                          0.85em;color:rgb(160,30,30);border-left:0.2em
                          solid
                          rgb(85,85,238);font-family:helvetica,arial,sans=
-serif;font-size:14px">
                          <pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:1em;white-space:pre-wrap;margin-top:0px;ma=
rgin-bottom:0px">Hi,

</pre>
                          <tt>Are there any updates on this problem.=C2=A0=
 I
                            normally try not to reply to=C2=A0</tt><tt>ol=
d
                            threads, but I am seeing the same the same
                            spectral mirroring Rob=C2=A0</tt><tt>describe=
d
                            earlier.=C2=A0 My setup is also the same as
                            Rob=E2=80=99s.</tt><tt>I have tracked some ne=
wer
                            threads that mentioned disabling=C2=A0</tt><t=
t>TX_QEC_INIT,
                            but I am still seeing the mirroring after
                            disabling QEC.</tt>
                          <pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:1em;white-space:pre-wrap;margin:0em"><a st=
yle=3D"color:rgb(0,80,150)" href=3D"https://www.mail-archive.com/usrp-use=
rs@lists.ettus.com/msg07489.html" rel=3D"nofollow" target=3D"_blank" moz-=
do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://www.mail-arc=
hive.com/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
                        </blockquote>
                        <tt>It seems to me that if you use an external
                          LO, that LO has to go through=C2=A0</tt><tt>the
                          phase-splitter on the mixer, and that
                          phase-split=C2=A0</tt><tt>=C2=A0 is subject to =
errors,
                          so turning off QEC may not be that=C2=A0</tt><t=
t>desirable--although
                          I think the mixer on the N310 (using an
                          AD9371)</tt>
                        <pre style=3D"font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:r=
gb(0,0,0)">=C2=A0 is a 2XLO, so the phase error should be very very small=
.

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
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------Seg0R0mJXbSKW6iwaJA0aABp--

--===============5554360662882029508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5554360662882029508==--
