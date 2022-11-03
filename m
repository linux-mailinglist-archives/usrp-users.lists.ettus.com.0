Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03297617E57
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 14:48:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DB4B384212
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 09:48:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667483302; bh=lEPfIoMN7Wwx1riyv1Vm52uLtrUYc4EOx1VrILbZ3dM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RsQ2GQVQfdlcOeJ+30KwCezaXaBsZ4WUs4fGpOorkfck4FhlJv6idBoiK/cLZcxaT
	 5HIQWrT6Q28VBLrInsgaGk8k8l3dbbY1EPn64rP+KizI5ZAAjezLG4zpjOw0Uxb7mM
	 FrobRfigrJaGRohhIBPXWnByrLvRuvELyAUkPwJP7Mjiltz8IW6FGJs4ncQaNlPsWA
	 jca4H3xzvu4cqsjjFXmQgqzVvPfbG0qEIkrnf9UQE54qG+NYSFjj/UxrpUJ8c0k/bz
	 nxKimwMIVdwdf64UpiU5BAwve0U5qtYhw0NDIO8jMap2mvNe6jmRm9WT3dTLOt4fmK
	 06i2xDC0uV+Xw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id B08073842FF
	for <usrp-users@lists.ettus.com>; Thu,  3 Nov 2022 09:37:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ku++WgbS";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id t25so5249792ejb.8
        for <usrp-users@lists.ettus.com>; Thu, 03 Nov 2022 06:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NVlm554A6ExVS4YO8sAy/sHng1p2OVOP+gISird4ANo=;
        b=ku++WgbST/yVybNNCDVWtAZnybZ4HjnQ6D8hRGIhZbeGjgc6yj9d3EDAzr+LbclW1r
         G6tuGmWBmW+HK9ZKfu3hKLK23r27P5dRZjpsO6ECUJe8rQZcIuLZ/AyjAv1bGr9LmdSe
         qGmdwYC3S3ELztS8pk81rjtUUNtQ85cPrVW6HsInTxIdhfw/R6htVX0pPWcJlw3WUeEK
         xaW93XhfB/OmOYTCqXu6jSMXbgNF6VSfE2gXwaDLfpd5JDF4Og1feC7zGx9tcbZ3wkX4
         dxjVJmb+Xh+73JiJAfgiw0KXg+aMPOByTQMRlb3XIuAlogYafp/v19wuCf3tyJLqvaOF
         wpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NVlm554A6ExVS4YO8sAy/sHng1p2OVOP+gISird4ANo=;
        b=tk/3T2bY1MZByiHUvP741UNRC3USLvcVtBCfi5+Ugww+/ELSU54is/5hK6Os2WVvTw
         ExUBTjVq/sYtPOJAuTfuZaEU8fxNBlnLle7PvjzTz3QJFtc2Y6ZL63DMJW+o1m+w4vY4
         xLQz6DIvH9CvF0ykReRgFA36aljegLqY7XNT8SLy/Jwy0FNqMD+cItTM0j+teKK9iWy2
         1s3pSCh51CwlzaJljLxRvmC/7s6hYE5YLudSQJRmRIqSAWs9ToKxgkspyYShR8McSro7
         Ndz9MMxfb8q2knzsqTdDXvx+aAKEfyhuYk9V4hUQlpwIISt//cz3iv7++Lg6RvxqOCNh
         2xtQ==
X-Gm-Message-State: ACrzQf0Em07uskD/oTzumjdrxlh6R/Qh7ClWXvS2nHIZ16AYb9VuLv4E
	iXOGq/R237suL+TPjzU2uvZGF3ORn6/l2ihhwKbz5uGEGRo=
X-Google-Smtp-Source: AMsMyM7PFzlsek6qHJtLaE2WN8S47BqjqcS4Ygx34gvleASKO5SR5SEUMhOVqlTmLSdDz2WeG8Fx64MogeV32nNpI+E=
X-Received: by 2002:a17:907:7639:b0:79f:d1dd:2f86 with SMTP id
 jy25-20020a170907763900b0079fd1dd2f86mr29848436ejc.586.1667482626239; Thu, 03
 Nov 2022 06:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com> <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
 <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com>
In-Reply-To: <9bd59f49-5536-d3e8-9a7a-1192f4ec8ecb@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 3 Nov 2022 09:36:55 -0400
Message-ID: <CAB__hTQd9wuvEV8wfyzeCaMg4Zg+D-rgTAFWVjDWC+wO5QCSCg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CF656WBV7PYJRYQKU2LIEU662UJY3SVB
X-Message-ID-Hash: CF656WBV7PYJRYQKU2LIEU662UJY3SVB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kenneth Burchfield <ksburchfield@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CF656WBV7PYJRYQKU2LIEU662UJY3SVB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1684986672431204292=="

--===============1684986672431204292==
Content-Type: multipart/alternative; boundary="0000000000009bd5f405ec910dc6"

--0000000000009bd5f405ec910dc6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When running N310 with external LO, the device will automatically try to
run a calibration at device startup (actually in the software make N310
device) where it expects the external LO to be at 5 GHz.  If you supply an
LO at a different frequency, this calibration will be ruined. Is it
possible that you are not supplying a 5 GHz LO at startup?  Note that you
can change it after startup to your desired freq of operation.

And, responding to another discussion point about QEC correction, even if
you disable the "tracking cal" you  can keep the "init cal" in place. I
assume this means that an initial calibration is performed and then the
calibrated gain/phase settings are left untouched afterwards.  So,
disabling the tracking cal should not mean that you are not performing any
correction - just not updated dynamically.
Rob

On Wed, Nov 2, 2022 at 4:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 02/11/2022 15:53, Kenneth Burchfield wrote:
>
> Marcus,
> I agree.  Is there a way to tune the sideband suppression so that I can
> attenuate more of the mirrored signal?
> With the internal lo, everything seems to just work.  Are there extra
> configuration steps that I need to take to adjust for the external lo?
>
> I'm trying to find that out now.
>
> I suspect that spending an afternoon with the AD9371 datasheet might
> provide some clues--but as to whether those are
>   actually exposed in UHD is another question.
>
> With the internal LO, the chip has internal algorithms for optimizing
> phase and amplitude balance.  Those algorithms aren't
>   "in play" when you use an external LO, apparently.
>
> One thing that *could* be done, but is tedious, is to adjust the phase an=
d
> amplitude balance of the baseband signal to
>   compensate for the imbalance of the mixer.   This is basically what the
> internal algorithms in the chip are doing, as
>   far as I can tell.
>
>
>
> Thanks,
> Scott
>
> On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 02/11/2022 15:27, Kenneth Burchfield wrote:
>>
>> Marcus,
>>
>> The sidebands do not change with the LO level.
>>
>> I am basically running the tx_waveforms example from UHD 4.2.0.0, and I =
am adding the argument tx_lo_source=3Dexternal.  Attached is a picture of t=
he spectrum. I am generating a SINE with wave-freq input 2e6. The center sp=
ike is some LO leakage. The spike at -2e6 is the mirroring I am seeing.
>>
>> Thanks,
>> Scott
>>
>> The LO suppression looks to be about 55dBc, which is not horrific.
>>
>> The sideband suppression appears to be only about 30dBc, which is not
>> very good.
>>
>>
>>
>> On 02/11/2022 12:09, Scott Burchfield wrote:
>>
>> Hi,
>>
>>
>> Are there any updates on this problem.  I normally try not to reply to o=
ld
>> threads, but I am seeing the same the same spectral mirroring Rob descri=
bed
>> earlier.  My setup is also the same as Rob=E2=80=99s.I have tracked some=
 newer
>> threads that mentioned disabling TX_QEC_INIT, but I am still seeing the
>> mirroring after disabling QEC.
>>
>> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html
>>
>> Thanks,
>>
>> Scott
>>
>>
>> It seems to me that if you use an external LO, that LO has to go through=
 the
>> phase-splitter on the mixer, and that phase-split   is subject to
>> errors, so turning off QEC may not be that desirable--although I think
>> the mixer on the N310 (using an AD9371)
>>
>>   is a 2XLO, so the phase error should be very very small.
>>
>> Do the unwanted sidebands change with LO level?
>>
>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009bd5f405ec910dc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When running N310 with external LO, the device will automa=
tically try to run a calibration at device startup (actually in the softwar=
e make N310 device) where it expects the external LO to be at 5 GHz.=C2=A0 =
If you supply an LO at a different frequency, this calibration will be ruin=
ed. Is it possible that you are not supplying a 5 GHz LO at startup?=C2=A0 =
Note that you can change it after startup to your desired freq of operation=
.<div><br></div><div>And, responding to another discussion point about QEC =
correction, even if you disable the &quot;tracking cal&quot; you=C2=A0 can =
keep the &quot;init cal&quot; in place. I assume this means that an initial=
 calibration is performed and then the calibrated gain/phase settings are l=
eft untouched afterwards.=C2=A0 So, disabling the tracking cal should not m=
ean that you are not performing any correction - just not updated dynamical=
ly.</div><div>Rob=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 4:28 PM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 02/11/2022 15:53, Kenneth Burchfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Marcus,
        <div>I agree.=C2=A0 Is there a way to tune the sideband suppression
          so that I can attenuate more of the mirrored signal?</div>
        <div>With the internal lo, everything seems to just work.=C2=A0 Are
          there extra configuration steps that I need to take to adjust
          for the external lo?</div>
      </div>
    </blockquote>
    I&#39;m trying to find that out now.<br>
    <br>
    I suspect that spending an afternoon with the AD9371 datasheet might
    provide some clues--but as to whether those are<br>
    =C2=A0 actually exposed in UHD is another question.<br>
    <br>
    With the internal LO, the chip has internal algorithms for
    optimizing phase and amplitude balance.=C2=A0 Those algorithms aren&#39=
;t<br>
    =C2=A0 &quot;in play&quot; when you use an external LO, apparently.<br>
    <br>
    One thing that *could* be done, but is tedious, is to adjust the
    phase and amplitude balance of the baseband signal to<br>
    =C2=A0 compensate for the imbalance of the mixer.=C2=A0=C2=A0 This is b=
asically
    what the internal algorithms in the chip are doing, as<br>
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 2:41 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 02/11/2022 15:27, Kenneth Burchfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">M=
arcus,

The sidebands do not change with the LO level.

I am basically running the tx_waveforms example from UHD 4.2.0.0, and I am =
adding the argument tx_lo_source=3Dexternal.  Attached is a picture of the =
spectrum. I am generating a SINE with wave-freq input 2e6. The center spike=
 is some LO leakage. The spike at -2e6 is the mirroring I am seeing.

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
                <pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">O=
n 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
                <blockquote style=3D"margin:0em;padding:0px 0px 0px 0.85em;=
color:rgb(160,30,30);border-left:0.2em solid rgb(85,85,238);font-family:hel=
vetica,arial,sans-serif;font-size:14px">
                  <pre style=3D"font-family:courier,&quot;courier new&quot;=
,monospace;font-size:1em;white-space:pre-wrap;margin-top:0px;margin-bottom:=
0px">Hi,

</pre>
                  <tt>Are there any updates on this problem.=C2=A0 I normal=
ly
                    try not to reply to=C2=A0</tt><tt>old threads, but I am
                    seeing the same the same spectral mirroring Rob=C2=A0</=
tt><tt>described
                    earlier.=C2=A0 My setup is also the same as Rob=E2=80=
=99s.</tt><tt>I
                    have tracked some newer threads that mentioned
                    disabling=C2=A0</tt><tt>TX_QEC_INIT, but I am still
                    seeing the mirroring after disabling QEC.</tt>
                  <pre style=3D"font-family:courier,&quot;courier new&quot;=
,monospace;font-size:1em;white-space:pre-wrap;margin:0em"><a style=3D"color=
:rgb(0,80,150)" href=3D"https://www.mail-archive.com/usrp-users@lists.ettus=
.com/msg07489.html" rel=3D"nofollow" target=3D"_blank">https://www.mail-arc=
hive.com/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
                </blockquote>
                <tt>It seems to me that if you use an external LO, that
                  LO has to go through=C2=A0</tt><tt>the phase-splitter on
                  the mixer, and that phase-split=C2=A0</tt><tt>=C2=A0 is s=
ubject
                  to errors, so turning off QEC may not be that=C2=A0</tt><=
tt>desirable--although
                  I think the mixer on the N310 (using an AD9371)</tt>
                <pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">=
=C2=A0 is a 2XLO, so the phase error should be very very small.

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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009bd5f405ec910dc6--

--===============1684986672431204292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1684986672431204292==--
