Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD6561A219
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 21:23:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F6A938415B
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 16:23:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667593402; bh=6lFrr9IA9E5RpX7myWqrzlz9lzHhcrrRD64KWuYivdQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OC0wBYY/S1uBbufIqkHOQiQusn45rKNqmL2NdEDZIeyq8FcyJXNSnRezM0rLyzkq1
	 r5+Uj3sj7aUATbjDdk0H5DjMCRddgR5PTrnsZp4QOH+eUEg670Ldso/oDhp9hqgI1N
	 kJK0uY/fEDokqiF3Wcg2ZqO6qHcEMceJ6pk61nlW00wR9FggotFrEG870pukR0YixI
	 lHh9Xf9HCS1t7Ts+v376cLDGwlyh7D6EpRKcwhk04kqgRfw98QwAY5kNkq4QvqufOD
	 TEHKB4yPRkkn7VgtfXBSchgDu/DB9C2/gW0rkz7el/mlY32jyzKxvHOzJQmp0GyPG2
	 QdqaeZEMZ1DKQ==
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E4A66380785
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 16:22:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DJavfnC4";
	dkim-atps=neutral
Received: by mail-pj1-f48.google.com with SMTP id r61-20020a17090a43c300b00212f4e9cccdso9206873pjg.5
        for <usrp-users@lists.ettus.com>; Fri, 04 Nov 2022 13:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gcPa/uWMlRUGgImchBRLo5IKp047Bhy2XkAUNnnkLvI=;
        b=DJavfnC4H7TGCpru1rY6tkAV0YmzQJMNa0EpgvhtxGOgt5f+GovXLgeSAXV2PQGFZs
         Jj3YWH3MoZWHSdhCH80aE/ZO5Myj2w1X/MfplbIii2Aa7VDBq7kkA20QARVjbrqumz48
         QpcW9g5WAarEg7/osfuPwstfX7/gpHIO/uzmWKF0atkvzvn9HGT1FqdbdVGIp4djQK0u
         Ae0QHOantUtaLBQD5jP4KqlnEKd8h07YE9XKu9B/g9DP28ir7AvZ4JqzCA+RKWK4TVJA
         Zfai02NaJg9qJbTgFuepEVlUCG50E8FJ1d1zHc5TAHdpUttE7Vw5QaHHMo1YpIxQO9WB
         XG5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gcPa/uWMlRUGgImchBRLo5IKp047Bhy2XkAUNnnkLvI=;
        b=J0m48CaCfFM2uhp8GUVQUqichp5m0S9gG8xUhsCO8xgbI9A2Er/7K67ZjQP0FSjzVB
         DRl3rvS5rL9EkMwNWgxCLaCIP0mF2IXMAj+4uiP5tpHFuNYv0mm+KOdDO2VCXmeM9tGm
         p0UIeROWmKHv6lBwV+y7RyoxcnrbKbRLA0K235ytER13Ogog2+NWxgXo10xqR2eBEENg
         tekWvsVCyCTJOw5xaCN/AHXZjs0DsC4+YvJF0BgmLCAuNKmvBXgG3lPzYoDP7bMt3NO9
         IYQKurL9UUD0bq77nae0Dxn/CPP7tnDKTs9f6xHoGQOe7AHNzTF3tYjKGTae25ltpOrX
         oPQg==
X-Gm-Message-State: ACrzQf03R26Vcb/st0CRk4qMbBWob99UOKiIduwaj4ME0fZpU1JraZxZ
	t5VzEn0U3gIkoVQJm9w0ljDHZJcwBy+9TL1NRv5Oaak6
X-Google-Smtp-Source: AMsMyM5wjzpFQxpO+1Wv+80UqfV5He9nvgt9igksTMO746iCklRHAJVwXYu/uW6/YyhXAPzIDEqJ8iH4XrsFmYZOdmo=
X-Received: by 2002:a17:902:d485:b0:186:bb44:9459 with SMTP id
 c5-20020a170902d48500b00186bb449459mr38017045plg.101.1667593327598; Fri, 04
 Nov 2022 13:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com> <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
 <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com> <CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmail.com>
 <bbb1872e-f6d6-ad4c-6b29-f5d0c2a3526b@gmail.com>
In-Reply-To: <bbb1872e-f6d6-ad4c-6b29-f5d0c2a3526b@gmail.com>
From: Kenneth Burchfield <ksburchfield@gmail.com>
Date: Fri, 4 Nov 2022 15:21:55 -0500
Message-ID: <CAChZci9Yk3P4RfUa=THj613g82zAeZRS+ELqoya=27L7jXY=aw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KUGZ6DO5ZBL2M3TQHOV7ZL22XRG3NYQA
X-Message-ID-Hash: KUGZ6DO5ZBL2M3TQHOV7ZL22XRG3NYQA
X-MailFrom: ksburchfield@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KUGZ6DO5ZBL2M3TQHOV7ZL22XRG3NYQA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2936266124401290245=="

--===============2936266124401290245==
Content-Type: multipart/alternative; boundary="000000000000ebe16d05ecaad38f"

--000000000000ebe16d05ecaad38f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rob / Marcus,

The initial-5GHz LO was my problem.  I was not providing it at startup.
Thank you guys for the info.  The mirroring is resolved!

-Scott

On Thu, Nov 3, 2022 at 8:48 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 03/11/2022 09:36, Rob Kossler wrote:
>
> When running N310 with external LO, the device will automatically try to
> run a calibration at device startup (actually in the software make N310
> device) where it expects the external LO to be at 5 GHz.  If you supply a=
n
> LO at a different frequency, this calibration will be ruined. Is it
> possible that you are not supplying a 5 GHz LO at startup?  Note that you
> can change it after startup to your desired freq of operation.
>
> And, responding to another discussion point about QEC correction, even if
> you disable the "tracking cal" you  can keep the "init cal" in place. I
> assume this means that an initial calibration is performed and then the
> calibrated gain/phase settings are left untouched afterwards.  So,
> disabling the tracking cal should not mean that you are not performing an=
y
> correction - just not updated dynamically.
> Rob
>
> Thanks, Rob.  I had, once again, forgotten about the initial-5GHz
> requirement.
>
> The complete list of possible "init" and "tracking" CAL options is here:
>
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations
>
>
> On Wed, Nov 2, 2022 at 4:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 02/11/2022 15:53, Kenneth Burchfield wrote:
>>
>> Marcus,
>> I agree.  Is there a way to tune the sideband suppression so that I can
>> attenuate more of the mirrored signal?
>> With the internal lo, everything seems to just work.  Are there extra
>> configuration steps that I need to take to adjust for the external lo?
>>
>> I'm trying to find that out now.
>>
>> I suspect that spending an afternoon with the AD9371 datasheet might
>> provide some clues--but as to whether those are
>>   actually exposed in UHD is another question.
>>
>> With the internal LO, the chip has internal algorithms for optimizing
>> phase and amplitude balance.  Those algorithms aren't
>>   "in play" when you use an external LO, apparently.
>>
>> One thing that *could* be done, but is tedious, is to adjust the phase
>> and amplitude balance of the baseband signal to
>>   compensate for the imbalance of the mixer.   This is basically what th=
e
>> internal algorithms in the chip are doing, as
>>   far as I can tell.
>>
>>
>>
>> Thanks,
>> Scott
>>
>> On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 02/11/2022 15:27, Kenneth Burchfield wrote:
>>>
>>> Marcus,
>>>
>>> The sidebands do not change with the LO level.
>>>
>>> I am basically running the tx_waveforms example from UHD 4.2.0.0, and I=
 am adding the argument tx_lo_source=3Dexternal.  Attached is a picture of =
the spectrum. I am generating a SINE with wave-freq input 2e6. The center s=
pike is some LO leakage. The spike at -2e6 is the mirroring I am seeing.
>>>
>>> Thanks,
>>> Scott
>>>
>>> The LO suppression looks to be about 55dBc, which is not horrific.
>>>
>>> The sideband suppression appears to be only about 30dBc, which is not
>>> very good.
>>>
>>>
>>>
>>> On 02/11/2022 12:09, Scott Burchfield wrote:
>>>
>>> Hi,
>>>
>>>
>>> Are there any updates on this problem.  I normally try not to reply to =
old
>>> threads, but I am seeing the same the same spectral mirroring Rob descr=
ibed
>>> earlier.  My setup is also the same as Rob=E2=80=99s.I have tracked som=
e newer
>>> threads that mentioned disabling TX_QEC_INIT, but I am still seeing the
>>> mirroring after disabling QEC.
>>>
>>> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html
>>>
>>> Thanks,
>>>
>>> Scott
>>>
>>>
>>> It seems to me that if you use an external LO, that LO has to go throug=
h the
>>> phase-splitter on the mixer, and that phase-split   is subject to
>>> errors, so turning off QEC may not be that desirable--although I think
>>> the mixer on the N310 (using an AD9371)
>>>
>>>   is a 2XLO, so the phase error should be very very small.
>>>
>>> Do the unwanted sidebands change with LO level?
>>>
>>>
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000ebe16d05ecaad38f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Rob / Marcus,<div><br></div><div>The initial-5GHz LO was m=
y problem.=C2=A0 I was not providing it at startup.=C2=A0 Thank you guys fo=
r the info.=C2=A0 The mirroring is resolved!</div><div><br></div><div>-Scot=
t</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Nov 3, 2022 at 8:48 AM Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 03/11/2022 09:36, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">When running N310 with external LO, the device will
        automatically try to run a calibration at device startup
        (actually in the software make N310 device) where it expects the
        external LO to be at 5 GHz.=C2=A0 If you supply an LO at a differen=
t
        frequency, this calibration will be ruined. Is it possible that
        you are not supplying a 5 GHz LO at startup?=C2=A0 Note that you ca=
n
        change it after startup to your desired freq of operation.
        <div><br>
        </div>
        <div>And, responding to another discussion point about QEC
          correction, even if you disable the &quot;tracking cal&quot; you=
=C2=A0 can
          keep the &quot;init cal&quot; in place. I assume this means that =
an
          initial calibration is performed and then the calibrated
          gain/phase settings are left untouched afterwards.=C2=A0 So,
          disabling the tracking cal should not mean that you are not
          performing any correction - just not updated dynamically.</div>
        <div>Rob=C2=A0</div>
      </div>
      <br>
    </blockquote>
    Thanks, Rob.=C2=A0 I had, once again, forgotten about the initial-5GHz
    requirement.<br>
    <br>
    The complete list of possible &quot;init&quot; and &quot;tracking&quot;=
 CAL options is
    here:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calib=
rations" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.ht=
ml#n3xx_mg_calibrations</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 4:28 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/11/2022 15:53, Kenneth Burchfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Marcus,
                <div>I agree.=C2=A0 Is there a way to tune the sideband
                  suppression so that I can attenuate more of the
                  mirrored signal?</div>
                <div>With the internal lo, everything seems to just
                  work.=C2=A0 Are there extra configuration steps that I ne=
ed
                  to take to adjust for the external lo?</div>
              </div>
            </blockquote>
            I&#39;m trying to find that out now.<br>
            <br>
            I suspect that spending an afternoon with the AD9371
            datasheet might provide some clues--but as to whether those
            are<br>
            =C2=A0 actually exposed in UHD is another question.<br>
            <br>
            With the internal LO, the chip has internal algorithms for
            optimizing phase and amplitude balance.=C2=A0 Those algorithms
            aren&#39;t<br>
            =C2=A0 &quot;in play&quot; when you use an external LO, apparen=
tly.<br>
            <br>
            One thing that *could* be done, but is tedious, is to adjust
            the phase and amplitude balance of the baseband signal to<br>
            =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 T=
his is
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 a=
t
                  2:41 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 02/11/2022 15:27, Kenneth Burchfield wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <pre style=3D"font-family:courier,&quot;courier new=
&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0=
,0,0)">Marcus,

The sidebands do not change with the LO level.

I am basically running the tx_waveforms example from UHD 4.2.0.0, and I am =
adding the argument tx_lo_source=3Dexternal.  Attached is a picture of the =
spectrum. I am generating a SINE with wave-freq input 2e6. The center spike=
 is some LO leakage. The spike at -2e6 is the mirroring I am seeing.

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
                        <pre style=3D"font-family:courier,&quot;courier new=
&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0=
,0,0)">On 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
                        <blockquote style=3D"margin:0em;padding:0px 0px 0px=
 0.85em;color:rgb(160,30,30);border-left:0.2em solid rgb(85,85,238);font-fa=
mily:helvetica,arial,sans-serif;font-size:14px">
                          <pre style=3D"font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:1em;white-space:pre-wrap;margin-top:0px;margin=
-bottom:0px">Hi,

</pre>
                          <tt>Are there any updates on this problem.=C2=A0 =
I
                            normally try not to reply to=C2=A0</tt><tt>old
                            threads, but I am seeing the same the same
                            spectral mirroring Rob=C2=A0</tt><tt>described
                            earlier.=C2=A0 My setup is also the same as
                            Rob=E2=80=99s.</tt><tt>I have tracked some newe=
r
                            threads that mentioned disabling=C2=A0</tt><tt>=
TX_QEC_INIT,
                            but I am still seeing the mirroring after
                            disabling QEC.</tt>
                          <pre style=3D"font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:1em;white-space:pre-wrap;margin:0em"><a style=
=3D"color:rgb(0,80,150)" href=3D"https://www.mail-archive.com/usrp-users@li=
sts.ettus.com/msg07489.html" rel=3D"nofollow" target=3D"_blank">https://www=
.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
                        </blockquote>
                        <tt>It seems to me that if you use an external
                          LO, that LO has to go through=C2=A0</tt><tt>the
                          phase-splitter on the mixer, and that
                          phase-split=C2=A0</tt><tt>=C2=A0 is subject to er=
rors,
                          so turning off QEC may not be that=C2=A0</tt><tt>=
desirable--although
                          I think the mixer on the N310 (using an
                          AD9371)</tt>
                        <pre style=3D"font-family:courier,&quot;courier new=
&quot;,monospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0=
,0,0)">=C2=A0 is a 2XLO, so the phase error should be very very small.

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
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000ebe16d05ecaad38f--

--===============2936266124401290245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2936266124401290245==--
