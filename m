Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF8024C28B
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 17:52:02 +0200 (CEST)
Received: from [::1] (port=41962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8mr8-00081y-7N; Thu, 20 Aug 2020 11:51:58 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:40658)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k8mr4-0007wU-Ik
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 11:51:54 -0400
Received: by mail-oi1-f180.google.com with SMTP id u24so2270052oic.7
 for <usrp-users@lists.ettus.com>; Thu, 20 Aug 2020 08:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TATHy+StRw2Nr+l+jNCG/fk6+yxLzrTH/5jLySVaCTM=;
 b=GcqbTlPwSjrSJ6KieBOQXq0Dku+FKUeea3SRURWqPIh0q7LSHa3JrVTbviLp8mRMuu
 +vxgjL+v31tDw+Vkm0Y7EUw3EZTIuf6kj9qtxxs/7CDeDDT62X0ienBMgOkenY0rWwqc
 hrYCv02QCxpMimkE0yZXPpIBQh/sWVkur5MiswBRRLZftEgTv78Zd1VVPPEMYJDXrEgR
 JYChEF5qhLcmiabuCarIVsA/IDBLO1u6YneoaaFI3yKMcf3pEsqHHFPrRh9JdAvG+GFE
 1Lo8FwgqIZ4z5gHN6S/X461xKQOzaPHPrae3uI6FFucQ6BS7uDmvrWif+8WvVFW0Y1SJ
 BTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TATHy+StRw2Nr+l+jNCG/fk6+yxLzrTH/5jLySVaCTM=;
 b=m0pvOB4T8i8a8o8lKqeCKpvIzOKmO0JFEvMyE35hm2FmdRp7sUWUBKvnqvhW4KW8jf
 cdpt2qHEepCQnfFgQEmESi9fAozruTeIsGgTshinwmG0lc49oAiP6sDk4i6kO07ptB5G
 RRS1o2f1BULMTOab2FkMUrl2BgqhEGwcnIbJIg8nEODEmOupJeoqh9UfNLQHR42Ap8p0
 Zuc3ZUxZnCpCnASlsc6JqXIWOLIRpxaZ67r+U6BcH8DvOrvyGZleE2gWqXm89acW0KxS
 kix8GdCccbImIhsoXxyQUsfJeFX1uxcJ5vq6cPggIH/WQ3EtjAyFyLq3Yp+oB1YokwDF
 vMiQ==
X-Gm-Message-State: AOAM533FzzqHkr3rLBRdI7ptwICWp+mNUrmIHApNNVR+d9zL1rRnzr5E
 e51Je2tZGncCQRS3ISaAMisJwlTok/eVxjZ7HLZ63udsqX4=
X-Google-Smtp-Source: ABdhPJwiabiDcrElcLX4L847xrmdq6+NS788Ay5Lw0gklEkkFNZ0nchDhv5+zjOjG232zvf7WO4g39K/+RKBIWf3ypU=
X-Received: by 2002:a05:6808:b:: with SMTP id u11mr2129521oic.33.1597938673636; 
 Thu, 20 Aug 2020 08:51:13 -0700 (PDT)
MIME-Version: 1.0
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
 <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
In-Reply-To: <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
Date: Thu, 20 Aug 2020 11:51:02 -0400
Message-ID: <CAB__hTRbkX2HVfC5zVK7p17W9Q1keFoGMO7K9xC3GfaLVUjWFg@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
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
Content-Type: multipart/mixed; boundary="===============5734394559885841643=="
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

--===============5734394559885841643==
Content-Type: multipart/alternative; boundary="000000000000042a7005ad5117f4"

--000000000000042a7005ad5117f4
Content-Type: text/plain; charset="UTF-8"

Hi Andreas,
Can you resend the source code for the first case you describe below along
with command line?
Rob

On Thu, Aug 20, 2020 at 10:38 AM <Andreas.Bertheussen@kongsberg.com> wrote:

> Thanks for that suggestion Rob,
>
>
>
> I have tested this now, I now address both devices, I have changed subdev
> spec to "A:0 B:0" for both motherboards (lines 35, 36).
>
> Then I tried several values for stream_args.channels:
>
>
>
> I tried with stream_args.channels = (0,2). Here I expect signal on A
> outputs on both X310s. But I get the following two cases:
>
> * The A and B outputs on the first X310 are enabled (TX LED), with signal
> visible on output, first channel mapped to A output and second channel
> mapped to B output.
>
> * The A and B outputs on the second X310 are enabled (TX LED), with _no
> signal_ on output. Channel mapping can't be determined because there is no
> signal.
>
>
>
> I tried with stream_args.channels = (1,3). Here I expect signal on B
> outputs on both X310s. But I get the following two cases:
>
> * The A and B outputs on the first X310 are enabled (TX LED), with signal
> visible on output, first channel is mapped to B output and second channel
> mapped to A output. (Notice reversal of first and second channel)
>
> * The A and B outputs on the second X310 are enabled (TX LED), with _no
> signal_ on output. Channel mapping can't be determined because there is no
> signal.
>
>
>
> I tried with stream_args.channels = (2,3). Here I ecpect signal on A and B
> outputs on the second X310. But I get the following two cases:
>
> * The B outputs on both X310 are enabled (TX LED), with signal only
> visible on the first X310. First channel mapped to B output on first X310.
>
> * The A outputs on both X310 are enabled (TX LED), with signal only
> visible on the first X310. Second channel is mapped to A output on first
> X310.
>
>
>
> There is some randomness as to which case happens, I have tested approx 10
> runs of each.
>
>
>
> It looks like what occurs is some shuffling around of the channels, so
> that the logical channel number (the indexes in the buffer array passed to
> send()) does not match up with the subdev specification.
>
> Since some incorrect outputs get enabled, but with no signal, maybe that
> helps in understanding where in UHD this could occur.
>
>
>
> In all these cases, I don't receive the error message I mentioned in my
> first mail, but the changing channel mapping is just as bad for what I'm
> trying to do.
>
>
>
> Regards
>
> Andreas
>
>
>
> ________________________________
>
>
>
> CONFIDENTIALITY
>
> This e-mail and any attachment contain KONGSBERG information which may be
> proprietary, confidential or subject to export regulations, and is only
> meant for the intended recipient(s). Any disclosure, copying, distribution
> or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. If
> received in error, please delete it immediately from your system and notify
> the sender properly.
>
>

--000000000000042a7005ad5117f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi Andreas,</div><div dir=3D"auto">Can you resend th=
e source code for the first case you describe below along with command line=
?</div><div dir=3D"auto">Rob</div></div><div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 20, 2020 at 10:38 AM &lt=
;<a href=3D"mailto:Andreas.Bertheussen@kongsberg.com">Andreas.Bertheussen@k=
ongsberg.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)">Thanks for that sugge=
stion Rob,<br><br><br><br>I have tested this now, I now address both device=
s, I have changed subdev spec to &quot;A:0 B:0&quot; for both motherboards =
(lines 35, 36).<br><br>Then I tried several values for stream_args.channels=
:<br><br><br><br>I tried with stream_args.channels =3D (0,2). Here I expect=
 signal on A outputs on both X310s. But I get the following two cases:<br><=
br>* The A and B outputs on the first X310 are enabled (TX LED), with signa=
l visible on output, first channel mapped to A output and second channel ma=
pped to B output.<br><br>* The A and B outputs on the second X310 are enabl=
ed (TX LED), with _no signal_ on output. Channel mapping can&#39;t be deter=
mined because there is no signal.<br><br><br><br>I tried with stream_args.c=
hannels =3D (1,3). Here I expect signal on B outputs on both X310s. But I g=
et the following two cases:<br><br>* The A and B outputs on the first X310 =
are enabled (TX LED), with signal visible on output, first channel is mappe=
d to B output and second channel mapped to A output. (Notice reversal of fi=
rst and second channel)<br><br>* The A and B outputs on the second X310 are=
 enabled (TX LED), with _no signal_ on output. Channel mapping can&#39;t be=
 determined because there is no signal.<br><br><br><br>I tried with stream_=
args.channels =3D (2,3). Here I ecpect signal on A and B outputs on the sec=
ond X310. But I get the following two cases:<br><br>* The B outputs on both=
 X310 are enabled (TX LED), with signal only visible on the first X310. Fir=
st channel mapped to B output on first X310.<br><br>* The A outputs on both=
 X310 are enabled (TX LED), with signal only visible on the first X310. Sec=
ond channel is mapped to A output on first X310.<br><br><br><br>There is so=
me randomness as to which case happens, I have tested approx 10 runs of eac=
h.<br><br><br><br>It looks like what occurs is some shuffling around of the=
 channels, so that the logical channel number (the indexes in the buffer ar=
ray passed to send()) does not match up with the subdev specification.<br><=
br>Since some incorrect outputs get enabled, but with no signal, maybe that=
 helps in understanding where in UHD this could occur.<br><br><br><br>In al=
l these cases, I don&#39;t receive the error message I mentioned in my firs=
t mail, but the changing channel mapping is just as bad for what I&#39;m tr=
ying to do.<br><br><br><br>Regards<br><br>Andreas<br><br><br><br>__________=
______________________<br><br><br><br>CONFIDENTIALITY<br><br>This e-mail an=
d any attachment contain KONGSBERG information which may be proprietary, co=
nfidential or subject to export regulations, and is only meant for the inte=
nded recipient(s). Any disclosure, copying, distribution or use is prohibit=
ed, if not otherwise explicitly agreed with KONGSBERG. If received in error=
, please delete it immediately from your system and notify the sender prope=
rly.<br><br></blockquote></div></div>

--000000000000042a7005ad5117f4--


--===============5734394559885841643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5734394559885841643==--

