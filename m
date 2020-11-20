Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F352BB0ED
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 17:50:37 +0100 (CET)
Received: from [::1] (port=48724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg9cK-0006if-7A; Fri, 20 Nov 2020 11:50:36 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:33118)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kg9cG-0006Zw-3f
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 11:50:32 -0500
Received: by mail-oi1-f175.google.com with SMTP id k26so11149049oiw.0
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 08:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pA74viZ8nQLlltF42TUvWFTM4aiNabqmKEjLkCVmAN0=;
 b=Jvl/Ya3XdzgoB/q3WMXrLAgw9UFHxI2AWnCGhzC7ZftxrIL/2IUSuPI0ZdV7C6ZKBe
 Rdsk6gk9k5WxO4XJS45P6sNRoNUSxeXsry0ywPr1Kghky7q4OBh7pMJuIZQMEI6ReK9h
 1kULpole2INfd0q58Bwp3nA9jXGb+CZjE8kizNOHZJXKyoZ/fCoDwzypV3NkavBSslbR
 Z+ihVgCsDbuYq6d3CEs5owsQ2n2SfPqiHxpX2kmpcNz4rsrZ3YOi05+thVedd+6ZraIB
 KuMjhyRmAbNHRG35cTQ1zD8fqGpxy7erZJq7w9JqVlBCcrgV17zQXaM/HeGdgy7sy8n6
 kt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pA74viZ8nQLlltF42TUvWFTM4aiNabqmKEjLkCVmAN0=;
 b=f5aF8lQFwFhB8EH/TwNM8Ub3EuL/sZjyVDQRzu6OnGeCbhYj/N1pjPa3ob4RaS+0sc
 7EA4mRBvyPrJQQkWtoBjaryqMTMzYFQZY/6wbsr7v8ll11oeGkQv2JWHIwbeGZXo9UWx
 9VSXO7aTN4G35NJdBMoP7QHzKIILVQOZkhCWxPSYl3z3UWnNF3k+HLdMGwJRon1zAv6/
 tcPNSbrNzkitNEa188moGoI2yjRCiRltsj6X5T5XSQ886IB9FxZVrqbIr1EZKpNqHy28
 DdJ9xKb+9BJZmxAnXGbYA5jyfmP+UhO0MVimxzlHbvzWt0QfRqME2DRPFzftFK1Q/HTz
 7Bmw==
X-Gm-Message-State: AOAM533T1QqJ977Q3znSKGEtQfeY8dMCp4XgJcUVfkIP5q6iqzwz1IlE
 kuUtwILNbH4dJfvERN0RhTlp9krUi5UmlvI1LmPlqA==
X-Google-Smtp-Source: ABdhPJw62/UKvfZNVwCZ3mKp3goX/xAI+sJDQdrKX8r+Ad9sgQ/4cr/4vK+U1bFAn2wfrvVWcfPGUAKsjCAEsWhQ1Mg=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr7037116oib.33.1605890991057; 
 Fri, 20 Nov 2020 08:49:51 -0800 (PST)
MIME-Version: 1.0
References: <CAGLr63s4oPz6_P9zj2OAHduRB38YrG-+=rbXO1rjrAx1crQ-+w@mail.gmail.com>
In-Reply-To: <CAGLr63s4oPz6_P9zj2OAHduRB38YrG-+=rbXO1rjrAx1crQ-+w@mail.gmail.com>
Date: Fri, 20 Nov 2020 10:49:40 -0600
Message-ID: <CAB__hTT1eeP2LhWv-j3Bc-1OTaBCVOsmrvVxC-2tD7XQmdA4ZA@mail.gmail.com>
To: Cameron Matson <ncmatson95@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>, 
 GNURadio Discussion List <discuss-gnuradio@gnu.org>
Subject: Re: [USRP-users] daughter board coherency on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============2051437944068522384=="
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

--===============2051437944068522384==
Content-Type: multipart/alternative; boundary="0000000000001229a805b48ca205"

--0000000000001229a805b48ca205
Content-Type: text/plain; charset="UTF-8"

Hi Cameron,
Yes, this is possible.  I'm not too familiar with gnuradio but in the end
you need to use a "timed start" to the receive streams.
Rob

On Fri, Nov 20, 2020 at 7:34 AM Cameron Matson via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
> I'm trying to implement a MIMO receiver using the 4 RF chains of the
> N310.  To test the timing of the system, at the transmitter I'm simply
> sending a short pulse from one transmit antenna of one USRP.  At the
> receiver it looks like there is up to a ~20 ms delay/offset between the
> pairs of antennas 0/1 and 2/3 and that this delay changes each time I
> restart my GNURadio flowgraph.  I can see the delay both in GNURadio GUI
> Time Sink and in actual samples that I write to file.  I've tried various
> pulse widths and sampling rates at both the tx and rx, and it seems
> invariant to these.
>
> I'd really like to be able to synchronize the 4 RF chains in time
> simultaneously.  Is that possible?
>
> Thanks
> Cameron Matson
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001229a805b48ca205
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Cameron,<div>Yes, this is possible.=C2=A0 I&#39;m not t=
oo familiar with gnuradio but in the end you need to use a &quot;timed star=
t&quot; to the receive streams.=C2=A0=C2=A0</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov =
20, 2020 at 7:34 AM Cameron Matson via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello a=
ll,<div><br></div><div>I&#39;m trying to implement a MIMO receiver using th=
e 4 RF chains of the N310.=C2=A0 To test the timing of the system, at the t=
ransmitter I&#39;m simply sending a short pulse from one transmit antenna o=
f one USRP.=C2=A0 At the receiver it looks like there is up to a ~20 ms del=
ay/offset between the pairs of antennas 0/1 and 2/3 and that this delay cha=
nges each time I restart my GNURadio flowgraph.=C2=A0 I can see the=C2=A0de=
lay both in GNURadio GUI Time Sink and in actual samples that I write to fi=
le.=C2=A0 I&#39;ve tried various pulse widths and sampling rates at both th=
e tx and rx, and it seems invariant to these.</div><div><br></div><div>I&#3=
9;d really like to be able to synchronize the 4 RF chains in time simultane=
ously.=C2=A0 Is that possible?</div><div><br></div><div>Thanks</div><div>Ca=
meron Matson</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001229a805b48ca205--


--===============2051437944068522384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2051437944068522384==--

