Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A356345CA7D
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 18:00:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A9753843A2
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 12:00:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TrQefVvQ";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 57774384228
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 11:59:40 -0500 (EST)
Received: by mail-ot1-f48.google.com with SMTP id b5-20020a9d60c5000000b0055c6349ff22so5195743otk.13
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 08:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iw7C1my7RR/VlYKXSSJbZ6zO2Bod9iJlnOVrEFAfPxQ=;
        b=TrQefVvQaJn5/gyK03KEx1JCl2mn4FDJbexjelSCVdSngbz7v/i3Gy45BtJTizgLLh
         WSBTPEb744+8N5K+rteQSDLmyvMQDof/ao/3u/Gotg8VM+zNHSeJIfNUE2YNN2FCoKai
         CWvo+QDrQAKsAW3Oqq+UX4qzntN7HQfllqqCnY+LDpXZ6wxyoNTP4fPXal7E9gYiYICH
         YtWnjAi3B546gHeww318dPG5Qrh2mIKlCveihDey9p5dyD6+vnn4t1IyGUdEoRoPq2jo
         EHVlZH8EoH+kHRGuWOeTS9LIawFGV83/xwGNA/Pv2xBR9X6y65DRRLQyIlfGiLwtOe2L
         cMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iw7C1my7RR/VlYKXSSJbZ6zO2Bod9iJlnOVrEFAfPxQ=;
        b=4BZjsiwtpTNMV5sCD5QqHy79MxXpFOGRI8mAoL/yGJY+SQhpMbNOlrZhpfjnEzFEeA
         ph9AlbqT3bqanAcm48QyhvldHIPS92B3HRTusTdl/8cBzj9MbFGNRayQRM/fbtY3BC9i
         r3xbJwovz4CedkVw+XFDs4WIaxrWiYfsnCDD47kS7AzN29tBIOBdXx2L8cZeDyY/26Th
         x9I0MIirePwSZU1FcTZNFZMGMYb+37OFl/jN0+DefNrudN1t4o1Anl+Mnj9KhplN70WJ
         Vm/P6LE9IK9SxGzqv9+rf4/lnO2ICrgqkVtHjiY6f6X8mN2MoKOyK+5A8yhrFujGfpWt
         tpWQ==
X-Gm-Message-State: AOAM533Sp5Zihlw74ZFJgCoVJQqQDW/9vC8pPQ0aVL0uRNMypv17BKKj
	0auqpJSw+PmpvztaytDuQJ0WP1pOXD2o9pSvrAXj5Gb4wk8=
X-Google-Smtp-Source: ABdhPJxLMuj4D7u74cVaJBl5pi8q/RISoeokjwuXdm4bQoA0txnKoMLllHq+xFcMmsLWY+e3Vg74IzOGCBalUs/LDrE=
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr14650916otq.337.1637773179210;
 Wed, 24 Nov 2021 08:59:39 -0800 (PST)
MIME-Version: 1.0
References: <bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk@lists.ettus.com>
In-Reply-To: <bnuPd0iZONKNjoNooNU7gGQ7BYbRA5HQ0NG8w0SMomk@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 24 Nov 2021 11:59:28 -0500
Message-ID: <CAB__hTQDYE_AFYTTc1Nhk7+MXmj1FGo1WsAnTTaQ3x-ZsunCbA@mail.gmail.com>
To: emanuele.tolomei@intecs.it
Message-ID-Hash: ZPS73U2HWQ2LM573TB32NEJM54UKZ4QH
X-Message-ID-Hash: ZPS73U2HWQ2LM573TB32NEJM54UKZ4QH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPS73U2HWQ2LM573TB32NEJM54UKZ4QH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6089101178092601612=="

--===============6089101178092601612==
Content-Type: multipart/alternative; boundary="00000000000092114b05d18bc845"

--00000000000092114b05d18bc845
Content-Type: text/plain; charset="UTF-8"

Hi Emanuele,
I have never tried to use set_time_now() with anything other than zero as
the time setting. Of course, this does not mean that it is impossible. But,
I am wondering if your application can work just as easily by always
translating the time on the CPU rather than in the FPGA.  That is, the FPGA
time reference can be zero and the CPU time reference can be system-time
and whenever you need a time from the FPGA you can apply the appropriate
reference in the CPU.

It was not clear to me from your email if using a time setting of zero will
solve the issue.  It seemed that you still have a phase issue in this case?
Rob

On Wed, Nov 24, 2021 at 11:25 AM <emanuele.tolomei@intecs.it> wrote:

> Hi Marcus,
>
> as I said in the previous post I tried to do a get_time_now() just before
> the timed command, but without success.
>
> // Tune all channels to the desired frequency
>
> uhd::tune_result_t tune_resp = m_MultiUsrp->set_rx_freq(nRxFrequency,0);
>
> //set time on the master (mboard 0)
>
> struct timespec now;
>
> clock_gettime(CLOCK_REALTIME, &now);
>
>
> m_MultiUsrp->set_time_now(uhd::time_spec_t(now.tv_sec,(double)now.tv_nsec/1.0e6));
>
> uhd::time_spec_t usrp_time = m_MultiUsrp->get_time_now();
>
> m_MultiUsrp->set_rx_gain(nGain, 1);
>
> m_MultiUsrp->set_rx_gain(nGain, 2);
>
> m_MultiUsrp->set_rx_gain(nGain, 3);
>
> uhd::tune_request_t tune_req;
>
> tune_req.rf_freq = tune_resp.actual_rf_freq;
>
> tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>
> tune_req.dsp_freq = tune_resp.actual_dsp_freq;
>
> tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
>
> m_MultiUsrp->set_rx_freq(tune_req, 1);
>
> m_MultiUsrp->set_rx_freq(tune_req, 2);
>
> m_MultiUsrp->set_rx_freq(tune_req, 3);
>
> usrp_time = m_MultiUsrp->get_time_now() ;
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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000092114b05d18bc845
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emanuele,<div>I have never tried to use set_time_now() =
with anything other than zero as the time setting. Of course, this does not=
 mean that it is impossible. But, I am wondering if your application can wo=
rk just as easily by always translating the time on the CPU rather than in =
the FPGA.=C2=A0 That is, the FPGA time reference can be zero and the CPU ti=
me reference can be system-time and whenever=C2=A0you need a time from the =
FPGA you can apply the appropriate reference in the CPU.</div><div><br></di=
v><div>It was not clear to me from your email if using a time setting=C2=A0=
of zero will solve the issue.=C2=A0 It seemed that you still have a phase i=
ssue in this case?=C2=A0</div><div>Rob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 24, 2021 at 11:25 A=
M &lt;<a href=3D"mailto:emanuele.tolomei@intecs.it">emanuele.tolomei@intecs=
.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Hi Marcus,</p><p>as I said in the previous post I tried to do a get_t=
ime_now() just before the timed command, but without success.</p><p>  // Tu=
ne all channels to the desired frequency</p><p>  uhd::tune_result_t tune_re=
sp =3D m_MultiUsrp-&gt;set_rx_freq(nRxFrequency,0);</p><p>  </p><p>  //set =
time on the master (mboard 0)</p><p>  struct timespec now;</p><p>  clock_ge=
ttime(CLOCK_REALTIME, &amp;now);</p><p>  m_MultiUsrp-&gt;set_time_now(uhd::=
time_spec_t(now.tv_sec,(double)now.tv_nsec/1.0e6));</p><p>  uhd::time_spec_=
t usrp_time =3D m_MultiUsrp-&gt;get_time_now();</p><p>  m_MultiUsrp-&gt;set=
_rx_gain(nGain, 1);</p><p>  m_MultiUsrp-&gt;set_rx_gain(nGain, 2);</p><p>  =
m_MultiUsrp-&gt;set_rx_gain(nGain, 3);</p><p>  uhd::tune_request_t tune_req=
;</p><p>  tune_req.rf_freq =3D tune_resp.actual_rf_freq;</p><p>  tune_req.r=
f_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;</p><p>  tune_req.dsp_=
freq =3D tune_resp.actual_dsp_freq;</p><p>  tune_req.dsp_freq_policy =3D uh=
d::tune_request_t::POLICY_MANUAL;</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_=
req, 1);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>  m_MultiU=
srp-&gt;set_rx_freq(tune_req, 3);</p><p>  usrp_time =3D m_MultiUsrp-&gt;get=
_time_now() ;</p><p>  // Synchronize the tuned channels</p><p>  m_MultiUsrp=
-&gt;set_command_time(usrp_time + uhd::time_spec_t(0.1));</p><p>  m_MultiUs=
rp-&gt;set_rx_freq(tune_req, 0);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_r=
eq, 1);</p><p>  m_MultiUsrp-&gt;set_rx_freq(tune_req, 2);</p><p>  m_MultiUs=
rp-&gt;set_rx_freq(tune_req, 3);</p><p>  m_MultiUsrp-&gt;clear_command_time=
();</p><p>Thank you.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000092114b05d18bc845--

--===============6089101178092601612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6089101178092601612==--
