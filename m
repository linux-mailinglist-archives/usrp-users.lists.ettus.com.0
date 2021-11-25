Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F7945D338
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 03:41:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8B8B38413C
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 21:41:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HHs595+A";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 482C6384023
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 21:40:50 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id v2so3174667qve.11
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 18:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ENTZvJ49arkR3KkkVsdm4YSTD4+2+vH62J98OcNJ9aI=;
        b=HHs595+AvkMZsvE28GT4cLcHVlQ0KG4t45gQPEoJ9+ePOoqJ7tSesAWu1xgMVJ7Zuf
         P7pQOZmvLVzC9dDislGnHYn26Ex+9k0p7xlAF9aS+9ZecJ2NtYGSM8rOiSJIm1c14JmN
         KB6zLIPP4X1WEjJZ4SN3MoYFX9uFxI/JWaesbLsjR5ql7H749ixTB2nUOgaMTg5JD3n2
         rO97vrhmi6xsXFujYKTyxwDcq6xENiyGjpxm9sRfp+zGrorSXvplMLHm96Adco7OsA8k
         PE9tDu4ltL6L+4Bbee9JI6/zMDZKtMyRjQc1IZbB33oPZJzru6nHE6R2/k7No+/ZNjeQ
         ULfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ENTZvJ49arkR3KkkVsdm4YSTD4+2+vH62J98OcNJ9aI=;
        b=1qbSx/yzoqHrI2Irm485P8vlb4aGJeI2Oz9S1nozkQ9zWj0dFbTn2ivdRn3BrCpGsl
         963G+cgRdBpu+P682P/k4b8E1vhCO0a5SUb+SmTeednAacVpsgz/bWuiWissIRGuIWR/
         +TQ0T09ixH1KlSjfj9diAcsxHINLIsRrfAHoMWqeFGEFWxksv/UvNTscvGfAFtPvtq0a
         4EpJOnvh12NuD1xCtAU6DTPoWknTagxdJuglq8ClTFVsvnmLhel19eju8S8/2V8NAs1M
         HLcljKVP7ZoBJrbCS7OO/9mwalz5F5yQteR0IrP8uIA+7ARx2cUcYLt28vqzxQCoMSLt
         2pFw==
X-Gm-Message-State: AOAM531BCelRA1HcMlNVca9lgEu38DLx2AUitBhIZW7X+fIQefQBOaiL
	7MlroQJRbsKTcri++LlDSvees7GqVTs=
X-Google-Smtp-Source: ABdhPJz9bwuAWSH9yO/QRXyyf2WHjHEoGl5zt1kVeMgP38gcEGiMuLcebV3mR3W2UvBdTidFU3yhGg==
X-Received: by 2002:a05:6214:1050:: with SMTP id l16mr1591708qvr.118.1637808049404;
        Wed, 24 Nov 2021 18:40:49 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y73sm759661qkb.113.2021.11.24.18.40.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 18:40:48 -0800 (PST)
Message-ID: <fd5c1fe0-2620-b2d7-050b-b2b99230ed97@gmail.com>
Date: Wed, 24 Nov 2021 21:40:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus.com>
Message-ID-Hash: O7A2PM476SIK77V2DWC4XOOBGC52PTOV
X-Message-ID-Hash: O7A2PM476SIK77V2DWC4XOOBGC52PTOV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7A2PM476SIK77V2DWC4XOOBGC52PTOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7802673151957067384=="

This is a multi-part message in MIME format.
--===============7802673151957067384==
Content-Type: multipart/alternative;
 boundary="------------VuoEM1h0f8XZ7rNfdl32ShyQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VuoEM1h0f8XZ7rNfdl32ShyQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-24 12:47, emanuele.tolomei@intecs.it wrote:
>
>     It was not clear to me from your email if using a time setting of
>     zero will
>     solve the issue. It seemed that you still have a phase issue in
>     this case?
>
> Yes. If we use a time setting of zero, the application runs smoothly=20
> without crashes, but there is an unpredictable phase shift between the=20
> channels.
>
> Our problem occurs only when the tuning and synchronization=20
> instructions are repeated in a loop, even if tuning always at the same=20
> frequency. Instead, if we tune and synchronize the channels only once,=20
> such as in the attached snippet (a modified version of the=20
> rx_multi_samples UHD example), everything runs smooth and the phase=20
> shift between the channels is coherent each time we start the=20
> application. As you can see, in the attached code the=20
> set_time_now(uhd::time_spec_t(0.0)) command is never called, and if we=20
> add that command the phase shifts between the channels change at every=20
> run. In our application, however, removing this command leads the=20
> aforementioned crashes.
>
>     That is, the FPGA
>     time reference can be zero and the CPU time reference can be
>     system-time
>     and whenever you need a time from the FPGA you can apply the
>     appropriate
>     reference in the CPU.
>
> What do you mean with CPU time reference? In our application the=20
> system-time is the host CPU time.
>
> Emanuele Tolomei
>
The problem with set_time_now(), is that it sets the time register(s) to=20
whatever you supply, and since there are a couple of unknown latencies,=20
the time will necessarily be
 =C2=A0 very imprecise.=C2=A0 The first latency is how long it takes to c=
onduct=20
the transaction across the network link between your computer and the=20
USRP.=C2=A0 The 2nd is that in X310, as
 =C2=A0 I recall, there are TWO time-keepers, one for each notional "radi=
o"=20
object.=C2=A0 Since they will necessarily be set serially, the time regis=
ters=20
won't necessarily be consistent with
 =C2=A0 each other, and definitely won't be consistent with whatever the=20
hosts notion of time is.

If you use actual host time-of-day, the time-of-day on the USRP will=20
VERY likely drift relative to the time-of-day on the USRP device, since=20
they're operating from
 =C2=A0 disjoint clocks.

THIS is why the 1PPS input is important in synchronization.=C2=A0 Even on=
 a=20
single X310, since it has two timekeepers, the 1PPS input provides a=20
predictable and *parallel*
 =C2=A0 load of the desired time-of-day into the time registers.


> Rob Kossler wrote:
>
>     Hi Emanuele, I have never tried to use set_time_now() with
>     anything other than zero as the time setting. Of course, this does
>     not mean that it is impossible. But, I am wondering if your
>     application can work just as easily by always translating the time
>     on the CPU rather than in the FPGA. That is, the FPGA time
>     reference can be zero and the CPU time reference can be
>     system-time and whenever you need a time from the FPGA you can
>     apply the appropriate reference in the CPU.
>
>     It was not clear to me from your email if using a time setting of
>     zero will solve the issue. It seemed that you still have a phase
>     issue in this case? Rob
>
>     On Wed, Nov 24, 2021 at 11:25 AM emanuele.tolomei@intecs.it wrote:
>
>         Hi Marcus,
>
>         as I said in the previous post I tried to do a get_time_now()
>         just before the timed command, but without success.
>
>         // Tune all channels to the desired frequency
>
>         uhd::tune_result_t tune_resp =3D
>         m_MultiUsrp->set_rx_freq(nRxFrequency,0);
>
>         //set time on the master (mboard 0)
>
>         struct timespec now;
>
>         clock_gettime(CLOCK_REALTIME, &now);
>
>         m_MultiUsrp->set_time_now(uhd::time_spec_t(now.tv_sec,(double)n=
ow.tv_nsec/1.0e6));
>
>         uhd::time_spec_t usrp_time =3D m_MultiUsrp->get_time_now();
>
>         m_MultiUsrp->set_rx_gain(nGain, 1);
>
>         m_MultiUsrp->set_rx_gain(nGain, 2);
>
>         m_MultiUsrp->set_rx_gain(nGain, 3);
>
>         uhd::tune_request_t tune_req;
>
>         tune_req.rf_freq =3D tune_resp.actual_rf_freq;
>
>         tune_req.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
>
>         tune_req.dsp_freq =3D tune_resp.actual_dsp_freq;
>
>         tune_req.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL=
;
>
>         m_MultiUsrp->set_rx_freq(tune_req, 1);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 2);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 3);
>
>         usrp_time =3D m_MultiUsrp->get_time_now() ;
>
>         // Synchronize the tuned channels
>
>         m_MultiUsrp->set_command_time(usrp_time + uhd::time_spec_t(0.1)=
);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 0);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 1);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 2);
>
>         m_MultiUsrp->set_rx_freq(tune_req, 3);
>
>         m_MultiUsrp->clear_command_time();
>
>         Thank you.
>
>         ---------------------------------------------------------------=
---------
>
>         USRP-users mailing list -- usrp-users@lists.ettus.com To
>         unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------VuoEM1h0f8XZ7rNfdl32ShyQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-24 12:47,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:emanuele.tolom=
ei@intecs.it">emanuele.tolomei@intecs.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
    =C2=A0 very imprecise.=C2=A0 The first latency is how long it takes t=
o conduct
    the transaction across the network link between your computer and
    the USRP.=C2=A0 The 2nd is that in X310, as<br>
    =C2=A0 I recall, there are TWO time-keepers, one for each notional
    "radio" object.=C2=A0 Since they will necessarily be set serially, th=
e
    time registers won't necessarily be consistent with<br>
    =C2=A0 each other, and definitely won't be consistent with whatever t=
he
    hosts notion of time is.<br>
    <br>
    If you use actual host time-of-day, the time-of-day on the USRP will
    VERY likely drift relative to the time-of-day on the USRP device,
    since they're operating from<br>
    =C2=A0 disjoint clocks.<br>
    <br>
    THIS is why the 1PPS input is important in synchronization.=C2=A0 Eve=
n on
    a single X310, since it has two timekeepers, the 1PPS input provides
    a predictable and *parallel*<br>
    =C2=A0 load of the desired time-of-day into the time registers.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:y1mid4CAT1rVs0rHMzayQnJMltuTH6qxR3PkPyY5Eu0@lists.ettus=
.com">
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
        <p>On Wed, Nov 24, 2021 at 11:25 AM <a
            href=3D"mailto:emanuele.tolomei@intecs.it"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">eman=
uele.tolomei@intecs.it</a>
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
          <p>m_MultiUsrp-&gt;set_time_now(uhd::time_spec_t(now.tv_sec,(do=
uble)now.tv_nsec/1.0e6));</p>
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
          <div contenteditable=3D"false">
            <hr></div>
          <p>USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>
            To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></p>
        </blockquote>
      </blockquote>
      <p><br>
      </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
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
--------------VuoEM1h0f8XZ7rNfdl32ShyQ--

--===============7802673151957067384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7802673151957067384==--
