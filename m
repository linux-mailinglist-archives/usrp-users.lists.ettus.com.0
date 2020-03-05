Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E50717AA36
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 17:11:17 +0100 (CET)
Received: from [::1] (port=54804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9t5g-0002DD-Eq; Thu, 05 Mar 2020 11:11:16 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:39004)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9t5c-00022q-Pp
 for USRP-users@lists.ettus.com; Thu, 05 Mar 2020 11:11:12 -0500
Received: by mail-ot1-f54.google.com with SMTP id x97so6208060ota.6
 for <USRP-users@lists.ettus.com>; Thu, 05 Mar 2020 08:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KCsQwmnU5f7v4DXRS5jCt5VbukyMnHvdEsJR0oFaBHI=;
 b=YzVbhqfTRts9w4kcgzJecL1sF228ZjFiqe+A8OWJRugV0254odmnEHCqQL2/gTcrOV
 JYqj2f468m9Z7H14N+ZizPp9d3CSeOV+HBEjka/xhp6m7Q45uY65KS1FqCN0NFFGO2Kc
 gYs5K4DIHxapa5eFrkBLq3bZWeIRDC2KPUrioJCfgcotI5vEbTi3n5qhEi++YNO96VpE
 tOR8WWsqiA3a4TbOqL7E4nrbvev+KSnOAPsE9LevMmr42Uy8MFfC8dUNT/apRWwS9GK0
 XY2Ivr3fyhiF2yXVCxBTC/4iiwNSNdwcWafw7SFMKlmEhOm6vS/umgzzJMZsSyOLViBX
 ZsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KCsQwmnU5f7v4DXRS5jCt5VbukyMnHvdEsJR0oFaBHI=;
 b=D/CQZfFgCsew9m70mV95xIQJB1mPq/fQV6o2/8SefKGeg+bp6R800A9wuYrlFdvNct
 H4tlXq0KTEY7UJpa9EhpE+aauUQNUHovAhGGn8HnYD64mRy7eJoGQF70yO/0V1ODGYOr
 nw+FlmcWOHHFCl+jI96RGaIJ4aMngLLpUCXQcT76tUyb8LdotpfiNoo4VQZomsMkOpNS
 7R4hpk3JqH0WcMxSz5dZH4Iw9OzQsjLFoIgPCGW7wvo46axbxN9LoUfDYnyM+cy4ON5n
 vo+nOGFekgr4w++lkEYwE3cnQWni361Q1cxMb0oopRP/b8ynpzTsP55PJ15oNFttsg77
 FSzA==
X-Gm-Message-State: ANhLgQ3ztLpaO3MV9gYE20wZXISE/dLcPF4SMjTRp1jCAJKIGm6izkcg
 Rc66U1U0CXwaDNywMYLdljYhMFzgSwMFIsyyh0Pvsg==
X-Google-Smtp-Source: ADFU+vumZ6sVdUk6529wTa/UOqUzd3cU/Zcf1SbOvMVKM6iHKbfUfC6c8RTZJH5r6R8UubqV+GJaJzgf+/UZ3ur5cF4=
X-Received: by 2002:a05:6830:150:: with SMTP id
 j16mr7209370otp.301.1583424631983; 
 Thu, 05 Mar 2020 08:10:31 -0800 (PST)
MIME-Version: 1.0
References: <CABN-bdvmvYTF6+c8G5cppUQ-fFnVTLAi6pLECviJJSJF10rZqQ@mail.gmail.com>
In-Reply-To: <CABN-bdvmvYTF6+c8G5cppUQ-fFnVTLAi6pLECviJJSJF10rZqQ@mail.gmail.com>
Date: Thu, 5 Mar 2020 11:10:21 -0500
Message-ID: <CAB__hTRi7W+wbKG7O7fok0Q_M41G7ViyncTXYd-C8oNp4tf23w@mail.gmail.com>
To: ALEJANDRO BLANCO PIZARRO <100283180@alumnos.uc3m.es>
Subject: Re: [USRP-users] Synchronization and coherence channels x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: alejandro.blanco@imdea.org, usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8862355370706335368=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8862355370706335368==
Content-Type: multipart/alternative; boundary="000000000000b8077405a01dc65f"

--000000000000b8077405a01dc65f
Content-Type: text/plain; charset="UTF-8"

Hi Alejandro,
Phase sync is not possible with CBX
<https://kb.ettus.com/CBX#Phase_Synchronization>.  Time sync and freq sync
should work, but keep in mind the following:

   - The actual freq transmitted is a function of the quantized LO setting
   and the more finely quantized DUC setting.  The final value is not
   necessarily "exactly" what you ask for. So, the delta between your 2
   signals may not be exactly 80 MHz (perhaps off by a fraction of a hertz
   because of the quantizations).
   - The two transmissions do not share the same LO. Each channel has its
   own PLL that is locked to the 10 MHz ref, but there will be some
   variability between the two PLL

Rob


On Thu, Mar 5, 2020 at 10:29 AM ALEJANDRO BLANCO PIZARRO via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear USRP community,
>
> I am trying to send 160MHz WiFI signal by a x310. Unfortunately, I do not
> have the UBX which allows bandwidth of 160MHz, so I am using two CBX of
> 120MHz each one.
>
> We properly split the 160MHz wifi signal into two 80MHz signals. Our aim
> is to send each 80MHz signal by one of the CBX so that we can transmit the
> whole bandwidth. We transmit each signal in two 80MHz WiFi channels
> (contiguous channels).
>
> The issue is that we are using a commercial router as a receiver and it
> cannot detect the 160MHz signal (80 + 80). I am wondering if the two CBX of
> the x310 are completely synchronized or not. From my point of view, the
> clock and the PLL should be the same for the two CBX but, is there
> something that I am missing? Because the central frequencies are not the
> same for the transmission, so I do not know if this creates synchronization
> or carrier frequency offset issues.
>
> I do really appreciate any information you can provide about time,
> frequency and phase synchronization of the two daughterboards using
> different central frequencies.
>
> Best,
> Alejandro
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b8077405a01dc65f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alejandro,<div>Phase sync is not possible with <a href=
=3D"https://kb.ettus.com/CBX#Phase_Synchronization">CBX</a>.=C2=A0 Time syn=
c and freq sync should work, but keep in mind the following:</div><div><ul>=
<li>The actual freq transmitted is a function of the quantized LO setting a=
nd the more finely quantized DUC setting.=C2=A0 The final value is not nece=
ssarily &quot;exactly&quot; what you ask for. So, the delta between your 2 =
signals may not be exactly 80 MHz (perhaps off by a fraction of a hertz bec=
ause of the quantizations).</li><li>The two transmissions do not share the =
same LO. Each channel has its own PLL that is locked to the 10 MHz ref, but=
 there will be some variability between the two PLL=C2=A0</li></ul><div>Rob=
</div></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2020 at 10:29 AM ALEJANDRO BLANCO=
 PIZARRO via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Dear USRP community,</div><d=
iv><br></div><div>I am trying to send 160MHz WiFI signal by a x310. Unfortu=
nately, I do not have the UBX which allows bandwidth of 160MHz, so I am usi=
ng two CBX of 120MHz each one.</div><div><br></div><div>We properly split t=
he 160MHz wifi signal into two 80MHz signals. Our aim is to send each 80MHz=
 signal by one of the CBX so that we can transmit the whole bandwidth. We t=
ransmit each signal in two 80MHz WiFi channels (contiguous channels).<br></=
div><div></div><div><br></div><div> The issue is that we are using a commer=
cial router as a receiver and it cannot detect the 160MHz signal (80 + 80).=
 I am wondering if the two CBX of the x310 are completely synchronized or n=
ot. From my point of view, the clock and the PLL should be the same for the=
 two CBX but, is there something that I am missing? Because the central fre=
quencies are not the same for the transmission, so I do not know if this cr=
eates synchronization or carrier frequency offset issues.</div><div><br></d=
iv><div>I do really appreciate any information you can provide about time, =
frequency and phase synchronization of the two daughterboards using differe=
nt central frequencies.</div><div><br></div><div>Best,</div><div>Alejandro<=
br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b8077405a01dc65f--


--===============8862355370706335368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8862355370706335368==--

