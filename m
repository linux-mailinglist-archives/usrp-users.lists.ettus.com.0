Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B6A1F611B
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 06:58:21 +0200 (CEST)
Received: from [::1] (port=34586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjFI9-0005nY-Ma; Thu, 11 Jun 2020 00:58:17 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:47048)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jjFI6-0005cD-0b
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 00:58:14 -0400
Received: by mail-qt1-f179.google.com with SMTP id g18so3669651qtu.13
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 21:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SnnVdLQadXuxjDVbW2u54OQzAFJ+UlK9yOiCoZlT4mk=;
 b=HcsxWHZgUF9XGGgdCa7dVXHxsLWiqYebW/obxSWDKcU0hnRV3AudwLvB5wnmAnj3JI
 n/G+0WJrWWMan0kfFagDQF4Uh5Zd43+Xb2ittCliNAZJPOCpK4NL2higMv3bKWcROkvh
 LdCUR1vJ4VkXDTcD41tSpunb/15j8QKDhTAf8AvX0+gzLP0SKp8HzihSB0sp3VJjmLim
 Jz4AXH1l2cKWk/WM0xBTPX7rd2C0cT7aEX13CvFqTQ7Ty1iooWuk75i/0ZvfVT7SFUrx
 hmi4S2XdXvfxumLnSYPVHrR+I4pG+NAw5HSwdoL6JVWryYC2qSzlrEavYUxxebd1Tx/U
 VLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SnnVdLQadXuxjDVbW2u54OQzAFJ+UlK9yOiCoZlT4mk=;
 b=aNpOn7000YLE/EOK9R2XZ1TuN23Cqdf5czNVC/uKIeT6eod5H+XZGpd+DMowr+mX/f
 hYSzi9POu4G8mLFBHe0+zvHMSITi0W15Uix406OqQ+Uysj+C7hq8VUuEhta/7PONHoTJ
 v7eOUZ8OWkUTyfEAqT7Y1sMpiVeAJcKCxayI+ZW+RCmEEjB032ZfhQ3yx5IMgD4qovYZ
 5aYO3d9bpL18tBiaLztgZ55vjFB1qEw8VRHJdea28myg4enMubnFc3uy+t/uXNsuWUJ6
 nQU1p4dV3s4Ws409/ylGksSkoHkpCDrbNe59LGmfMsYxygMiPNl7USvrKVkBfL+TSYqD
 bSoA==
X-Gm-Message-State: AOAM533/vznSPacnn+2wEt5FhBIhgojjCTHmUsGWfd/SltsFncsk0eu5
 h6LgoToZ/qJR8QPXfFZpAvemKTV7STlSDVhntHg=
X-Google-Smtp-Source: ABdhPJyCYqfCOVGVJQIM0u3Wr2xN+y7Dh1Cfgxu4BmiqfDNH9U+zxq+Z+8dtZ2DO9VsQodT1Np6uYbS9jHLTET29MHw=
X-Received: by 2002:aed:3344:: with SMTP id u62mr6794320qtd.174.1591851453400; 
 Wed, 10 Jun 2020 21:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZDN5LrJOY8z-5+4GcxNximyLwEQDHB4GF9jTKOQ_aD4X=aZQ@mail.gmail.com>
 <B2FBDAFE-E103-4882-98BA-98E344330B04@gmail.com>
In-Reply-To: <B2FBDAFE-E103-4882-98BA-98E344330B04@gmail.com>
Date: Thu, 11 Jun 2020 00:57:22 -0400
Message-ID: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Phase calibration of multiple B210s
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
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============5947221884274893312=="
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

--===============5947221884274893312==
Content-Type: multipart/alternative; boundary="0000000000006a4d4305a7c7cc15"

--0000000000006a4d4305a7c7cc15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Marcus. I feel it will be the same story if I use two X310s?
I look a bit at the project gr-doa and as I understand it seems to just
require the calibration once. I'm not sure if there is a critical
difference between the WBX/CBX vs. TwinRX for this task though.


On Thu, Jun 11, 2020 at 12:05 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> No. It is the nature of PLL synthesizers that they won=E2=80=99t land at =
the same
> phase offset every time they=E2=80=99re tuned.
>
> In addition the DDC components in the FPGA aren=E2=80=99t necessarily goi=
ng to be
> at the same phase offset every time.
>
> You=E2=80=99ll need to have a phase calibration on every run.
>
> Sent from my iPhone
>
> > On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello,
> >
> > I'm trying to do phase calibration for two B210s for a DoA application.
> I use a known tone with splitter and equal-length cables. The problem I'm
> having is, the phase difference between two corresponding channels of the
> USRP (for example, RX2 of radio A) seems to change not just between the
> resets of the USRPs, but also between the runs of the UHD program.
> >
> > Is this possible to phase-calibrate the two B210s?
> >
> > Thank you and best regards,
> > Hai
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006a4d4305a7c7cc15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thank you Marcus. I feel it will be the s=
ame story if I use two X310s?</div><div>I look a bit at the project gr-doa =
and as I understand it seems to just require the calibration once. I&#39;m =
not sure if there is a critical difference between the WBX/CBX vs. TwinRX f=
or this task though.</div><div><br></div><div><br></div><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2020 at 12:05=
 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">No. It is the nature of PLL synthesizers that they won=E2=80=
=99t land at the same phase offset every time they=E2=80=99re tuned. <br>
<br>
In addition the DDC components in the FPGA aren=E2=80=99t necessarily going=
 to be at the same phase offset every time.<br>
<br>
You=E2=80=99ll need to have a phase calibration on every run. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m trying to do phase calibration for two B210s for a DoA applica=
tion. I use a known tone with splitter and equal-length cables. The problem=
 I&#39;m having is, the phase difference between two corresponding channels=
 of the USRP (for example, RX2 of radio A) seems to change not just between=
 the resets of the USRPs, but also between the runs of the UHD program.<br>
&gt; <br>
&gt; Is this possible to phase-calibrate the two B210s?<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Hai<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006a4d4305a7c7cc15--


--===============5947221884274893312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5947221884274893312==--

