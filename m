Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9991445D3D6
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 05:13:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F3D138463A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 23:13:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ixCMIFAm";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 50169384075
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 23:12:14 -0500 (EST)
Received: by mail-ot1-f48.google.com with SMTP id h16-20020a9d7990000000b0055c7ae44dd2so7546569otm.10
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 20:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YG30m7rspLqzZl/e1iBcoH88KqqfCvSGN4bKc3MgfJ0=;
        b=ixCMIFAmBLwVx0iLXTRik3MA+QMzlMr4ckHfmD6eQX11YqKTVJgAcOVFYP4Nz/I0Ax
         9ZZ1cD1TrsvjvNvwMJIBpl6tOipgunfBJDxfKw1jacanH6yTadoUQTLAicUci7TCxvAR
         en0ftW9zjEL4KXOWWSCWZPXDEFaVEVXAkB6YaoeiEY1jKvVmBgc8Fu3VDfFxepQ5a9IM
         ukfHvT2QnaC/TkWXZFxowdK0D4u0GF+c0PHbKtuJY5tdVmIeRfZbd3ILu8xDLVeWQ/GL
         uLIq/RTcTa2GNlo7SlVXJ8URcvrbaG7mILc4NdOTVbcoRe+4CxU0hcm1a7C0G6X+PoPF
         U8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YG30m7rspLqzZl/e1iBcoH88KqqfCvSGN4bKc3MgfJ0=;
        b=Qd+PP0hWGZu89MtTUU3M5dGckQpj658EpL4WS/0iL1U6GQCNrUIQnv5RC9AzRrP1jh
         kpKUsxuBnO2cJwgIBDYwFB/jdjv7BDsLVPu+hdzd0fjia6g/f5CSkCbyBj8ps5/jadoI
         S/cypRncQOhmS5thhHRseh3vW1myurE/NhMDOGfWiCa4vu/rdcncP36h8T/t1o+V32+e
         zVnoVOPQn4dWD5if8o/abEQyfQ3jbfj/BVsJ/mBimp4MN1RG2DMVRVJsALPAXWlcjOlt
         CxslbAeEvb2Da4a9KQ1T3MbnLqwdQIcbNMH2dVOXMtMNixQGKb/Ko8nNDO2C5jdCZoHy
         uAmg==
X-Gm-Message-State: AOAM530qkg7sP31++dlZ++A2cLtskXV2Z2+RO7LCzIGuJth7F2T80Xf5
	qWhSMpK4rWC/IvA0n+yqsbjALH4Nn2HS8i/BDcWpIlJCDk0=
X-Google-Smtp-Source: ABdhPJzrBrlg7C0blYmNdseG88dh8jvcBQxFmrssLMJQ3mq4bl7hC5X0jjdKgZd7OVJ7cBl7kZapS3Ha7xBq9/4L53k=
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr18694491otq.337.1637813533251;
 Wed, 24 Nov 2021 20:12:13 -0800 (PST)
MIME-Version: 1.0
References: <y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus.com> <fd5c1fe0-2620-b2d7-050b-b2b99230ed97@gmail.com>
In-Reply-To: <fd5c1fe0-2620-b2d7-050b-b2b99230ed97@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 24 Nov 2021 23:12:00 -0500
Message-ID: <CAB__hTS2hwXkbjhEc_dcYV15sQE0A8hc9OoMLTfqwLPei99WBg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VWMAPZNE7J3OE3WSP5UTH3YOQT5RCWL7
X-Message-ID-Hash: VWMAPZNE7J3OE3WSP5UTH3YOQT5RCWL7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWMAPZNE7J3OE3WSP5UTH3YOQT5RCWL7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0085134342747115396=="

--===============0085134342747115396==
Content-Type: multipart/alternative; boundary="000000000000dbecaf05d1952d39"

--000000000000dbecaf05d1952d39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nice catch Marcus. I hadn=E2=80=99t noticed the use of set_time_now() rathe=
r than
set_time_unknown_pps().

Emanuele, I think if you use set_time_unknown_pps(0) you can get consistent
phase behavior.

On Wed, Nov 24, 2021 at 9:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-24 12:47, emanuele.tolomei@intecs.it wrote:
>
> It was not clear to me from your email if using a time setting of zero
> will
> solve the issue. It seemed that you still have a phase issue in this case=
?
>
> Yes. If we use a time setting of zero, the application runs smoothly
> without crashes, but there is an unpredictable phase shift between the
> channels.
>
> Our problem occurs only when the tuning and synchronization instructions
> are repeated in a loop, even if tuning always at the same frequency.
> Instead, if we tune and synchronize the channels only once, such as in th=
e
> attached snippet (a modified version of the rx_multi_samples UHD example)=
,
> everything runs smooth and the phase shift between the channels is cohere=
nt
> each time we start the application. As you can see, in the attached code
> the set_time_now(uhd::time_spec_t(0.0)) command is never called, and if w=
e
> add that command the phase shifts between the channels change at every ru=
n.
> In our application, however, removing this command leads the aforemention=
ed
> crashes.
>
> That is, the FPGA
> time reference can be zero and the CPU time reference can be system-time
> and whenever you need a time from the FPGA you can apply the appropriate
> reference in the CPU.
>
> What do you mean with CPU time reference? In our application the
> system-time is the host CPU time.
>
> Emanuele Tolomei
>
> The problem with set_time_now(), is that it sets the time register(s) to
> whatever you supply, and since there are a couple of unknown latencies, t=
he
> time will necessarily be
>   very imprecise.  The first latency is how long it takes to conduct the
> transaction across the network link between your computer and the USRP.
> The 2nd is that in X310, as
>   I recall, there are TWO time-keepers, one for each notional "radio"
> object.  Since they will necessarily be set serially, the time registers
> won't necessarily be consistent with
>   each other, and definitely won't be consistent with whatever the hosts
> notion of time is.
>
> If you use actual host time-of-day, the time-of-day on the USRP will VERY
> likely drift relative to the time-of-day on the USRP device, since they'r=
e
> operating from
>   disjoint clocks.
>
> THIS is why the 1PPS input is important in synchronization.  Even on a
> single X310, since it has two timekeepers, the 1PPS input provides a
> predictable and *parallel*
>   load of the desired time-of-day into the time registers.
>
>
>
> Rob Kossler wrote:
>
> Hi Emanuele, I have never tried to use set_time_now() with anything other
> than zero as the time setting. Of course, this does not mean that it is
> impossible. But, I am wondering if your application can work just as easi=
ly
> by always translating the time on the CPU rather than in the FPGA. That i=
s,
> the FPGA time reference can be zero and the CPU time reference can be
> system-time and whenever you need a time from the FPGA you can apply the
> appropriate reference in the CPU.
>
> It was not clear to me from your email if using a time setting of zero
> will solve the issue. It seemed that you still have a phase issue in this
> case? Rob
>
> On Wed, Nov 24, 2021 at 11:25 AM emanuele.tolomei@intecs.it wrote:
>
> Hi Marcus,
>
> as I said in the previous post I tried to do a get_time_now() just before
> the timed command, but without success.
>
> // Tune all channels to the desired frequency
>
> uhd::tune_result_t tune_resp =3D m_MultiUsrp->set_rx_freq(nRxFrequency,0)=
;
>
> //set time on the master (mboard 0)
>
> struct timespec now;
>
> clock_gettime(CLOCK_REALTIME, &now);
>
>
> m_MultiUsrp->set_time_now(uhd::time_spec_t(now.tv_sec,(double)now.tv_nsec=
/1.0e6));
>
> uhd::time_spec_t usrp_time =3D m_MultiUsrp->get_time_now();
>
> m_MultiUsrp->set_rx_gain(nGain, 1);
>
> m_MultiUsrp->set_rx_gain(nGain, 2);
>
> m_MultiUsrp->set_rx_gain(nGain, 3);
>
> uhd::tune_request_t tune_req;
>
> tune_req.rf_freq =3D tune_resp.actual_rf_freq;
>
> tune_req.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
>
> tune_req.dsp_freq =3D tune_resp.actual_dsp_freq;
>
> tune_req.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
>
> m_MultiUsrp->set_rx_freq(tune_req, 1);
>
> m_MultiUsrp->set_rx_freq(tune_req, 2);
>
> m_MultiUsrp->set_rx_freq(tune_req, 3);
>
> usrp_time =3D m_MultiUsrp->get_time_now() ;
>
> // Synchronize the tuned channels
>
> m_MultiUsrp->set_command_time(usrp_time + uhd::time_spec_t(0.1));
>
> m_MultiUsrp->set_rx_freq(tune_req, 0);
>
> m_MultiUsrp->set_rx_freq(tune_req, 1);
>
> m_MultiUsrp->set_rx_freq(tune_req, 2);
>
> m_MultiUsrp->set_rx_freq(tune_req, 3);
>
> m_MultiUsrp->clear_command_time();
>
> Thank you.
> ------------------------------
>
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send
> an email to usrp-users-leave@lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dbecaf05d1952d39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Nice catch Marcus. I hadn=E2=80=99t noticed the use of se=
t_time_now() rather than set_time_unknown_pps().=C2=A0</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Emanuele, I think if you use=C2=A0<span styl=
e=3D"color:rgb(0,0,0)">set_time_unknown_pps(0) you can get consistent phase=
 behavior.=C2=A0</span>=C2=A0</div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 24, 2021 at 9:41 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-l=
eft:1ex;border-left-color:rgb(204,204,204)">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-24 12:47,
      <a href=3D"mailto:emanuele.tolomei@intecs.it" target=3D"_blank">emanu=
ele.tolomei@intecs.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <blockquote>
        <p>It was not clear to me from your email if using a time
          setting of zero will <br>
          solve the issue. It seemed that you still have a phase issue
          in this case?</p>
      </blockquote>
      <p>Yes. If we use a time setting of zero, the application runs
        smoothly without crashes, but there is an unpredictable phase
        shift between the channels.</p>
      <p>Our problem occurs only when the tuning and synchronization
        instructions are repeated in a loop, even if tuning always at
        the same frequency. Instead, if we tune and synchronize the
        channels only once, such as in the attached snippet (a modified
        version of the rx_multi_samples UHD example), everything runs
        smooth and the phase shift between the channels is coherent each
        time we start the application. As you can see, in the attached
        code the set_time_now(uhd::time_spec_t(0.0)) command is never
        called, and if we add that command the phase shifts between the
        channels change at every run. In our application, however,
        removing this command leads the aforementioned crashes.</p>
      <blockquote>
        <p>That is, the FPGA <br>
          time reference can be zero and the CPU time reference can be
          system-time <br>
          and whenever you need a time from the FPGA you can apply the
          appropriate <br>
          reference in the CPU.</p>
      </blockquote>
      <p>What do you mean with CPU time reference? In our application
        the system-time is the host CPU time.</p>
      <p>Emanuele Tolomei</p>
    </blockquote>
    The problem with set_time_now(), is that it sets the time
    register(s) to whatever you supply, and since there are a couple of
    unknown latencies, the time will necessarily be<br>
    =C2=A0 very imprecise.=C2=A0 The first latency is how long it takes to =
conduct
    the transaction across the network link between your computer and
    the USRP.=C2=A0 The 2nd is that in X310, as<br>
    =C2=A0 I recall, there are TWO time-keepers, one for each notional
    &quot;radio&quot; object.=C2=A0 Since they will necessarily be set seri=
ally, the
    time registers won&#39;t necessarily be consistent with<br>
    =C2=A0 each other, and definitely won&#39;t be consistent with whatever=
 the
    hosts notion of time is.<br>
    <br>
    If you use actual host time-of-day, the time-of-day on the USRP will
    VERY likely drift relative to the time-of-day on the USRP device,
    since they&#39;re operating from<br>
    =C2=A0 disjoint clocks.<br>
    <br>
    THIS is why the 1PPS input is important in synchronization.=C2=A0 Even =
on
    a single X310, since it has two timekeepers, the 1PPS input provides
    a predictable and *parallel*<br>
    =C2=A0 load of the desired time-of-day into the time registers.</div><d=
iv><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <p>Rob Kossler wrote:</p>
      <blockquote>
        <p>Hi Emanuele,
          I have never tried to use set_time_now() with anything other
          than zero as
          the time setting. Of course, this does not mean that it is
          impossible. But,
          I am wondering if your application can work just as easily by
          always
          translating the time on the CPU rather than in the FPGA. That
          is, the FPGA
          time reference can be zero and the CPU time reference can be
          system-time
          and whenever you need a time from the FPGA you can apply the
          appropriate
          reference in the CPU.</p>
        <p>It was not clear to me from your email if using a time
          setting of zero will
          solve the issue. It seemed that you still have a phase issue
          in this case?
          Rob</p>
        <p>On Wed, Nov 24, 2021 at 11:25 AM <a href=3D"mailto:emanuele.tolo=
mei@intecs.it" target=3D"_blank">emanuele.tolomei@intecs.it</a>
          wrote:</p>
        <blockquote>
          <p>Hi Marcus,</p>
          <p>as I said in the previous post I tried to do a
            get_time_now() just before
            the timed command, but without success.</p>
          <p>// Tune all channels to the desired frequency</p>
          <p>uhd::tune_result_t tune_resp =3D
            m_MultiUsrp-&gt;set_rx_freq(nRxFrequency,0);</p>
          <p>//set time on the master (mboard 0)</p>
          <p>struct timespec now;</p>
          <p>clock_gettime(CLOCK_REALTIME, &amp;now);</p>
          <p>m_MultiUsrp-&gt;set_time_now(uhd::time_spec_t(now.tv_sec,(doub=
le)now.tv_nsec/1.0e6));</p>
          <p>uhd::time_spec_t usrp_time =3D
            m_MultiUsrp-&gt;get_time_now();</p>
          <p>m_MultiUsrp-&gt;set_rx_gain(nGain, 1);</p>
          <p>m_MultiUsrp-&gt;set_rx_gain(nGain, 2);</p>
          <p>m_MultiUsrp-&gt;set_rx_gain(nGain, 3);</p>
          <p>uhd::tune_request_t tune_req;</p>
          <p>tune_req.rf_freq =3D tune_resp.actual_rf_freq;</p>
          <p>tune_req.rf_freq_policy =3D
            uhd::tune_request_t::POLICY_MANUAL;</p>
          <p>tune_req.dsp_freq =3D tune_resp.actual_dsp_freq;</p>
          <p>tune_req.dsp_freq_policy =3D
            uhd::tune_request_t::POLICY_MANUAL;</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 1);</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 3);</p>
          <p>usrp_time =3D m_MultiUsrp-&gt;get_time_now() ;</p>
          <p>// Synchronize the tuned channels</p>
          <p>m_MultiUsrp-&gt;set_command_time(usrp_time +
            uhd::time_spec_t(0.1));</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 0);</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 1);</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p>
          <p>m_MultiUsrp-&gt;set_rx_freq(tune_req, 3);</p>
          <p>m_MultiUsrp-&gt;clear_command_time();</p>
          <p>Thank you.</p>
          <div>
            <hr></div>
          <p>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
            To unsubscribe send an email to
            <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a></p>
        </blockquote>
      </blockquote>
      <p><br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre style=3D"font-family:monospace">________________________________=
_______________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" style=3D"font-family:monospace">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" style=3D"font-family:monospace">usrp-users-leave=
@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000dbecaf05d1952d39--

--===============0085134342747115396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0085134342747115396==--
