Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88618177D7E
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:32:26 +0100 (CET)
Received: from [::1] (port=33366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9BP7-0005Eg-Nd; Tue, 03 Mar 2020 12:32:25 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:41679)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9BP4-00057C-4Q
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:32:22 -0500
Received: by mail-ot1-f52.google.com with SMTP id v19so3802034ote.8
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p6DnuFpVwMz8DDgmMpQG0dfP32Ncpnoemz1j7JnpHUE=;
 b=f2UUs+o5XzqFXJuhahh8JLkhpIbMl9cHRbMzXFdYtOcE6IBapfzNkfog77/xjkJj9v
 TIjFfTZ/evC/n/DN9RefAtnfXmbJ+hCKqXEA4vYkPF5mDqoA89UWu97ctQq/DduUhvIV
 0mSuVBqnE9/nd2bWNoyAUOf32ozfDc6fpVVketseP6hH4gTEyhVEeG+neNSiRRO1V5/z
 lHft9zngg7vc83U0x/kjv9DJHpMwEBqzb29mVaBZ1TfG6IeYjsqMMskMqO/LHHXcLCLS
 Xb5d5KmAY1KZZFXc1UXgogh2r+4wRFWGl+ep7GZDKolXwj86QP2tLnotPpHMjfc7931K
 D2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p6DnuFpVwMz8DDgmMpQG0dfP32Ncpnoemz1j7JnpHUE=;
 b=pbpvye+78soz9IeAcab69Z4xgRnkTMxwchHnlnf8sQnWGvyeFD3rt5x2Nn1JVJ1XT+
 5mdI18rq5ajBG2NKYmhQf4vxa3YZnn+pcqStREQZ2I1IwJ1pZhMZNsJ1BDAa8lmLkN7h
 /tWjfi46hINlY/DutjhWv98XbFwWorJDsS4bb8akV0EhKBgBw2ALd4pG34xpi73b5NBn
 hXXjWsm6CSZNob/LwF8QBboh5KWEoPj/YuGK/qwwMWPz9KcCd79eMj9yZlNgmESZrQxA
 EoQqyUJUWZVIBj9Ga/klTzZJ9G0yjLa3hwtr4PYg/4Nk2GcNlKt6F9HMZiUlkRPs296s
 Z5YQ==
X-Gm-Message-State: ANhLgQ31IHbHQpUPLhjCUYu++8Rv4M9kR5hcakhxIL8cf+nvSCsZiZfL
 1ofoDxsBL4RayOfm5fUTAn2VhWAjXwRpRk+S1N5GBA==
X-Google-Smtp-Source: ADFU+vvAl/aBPc4SkhMcOfziJ5DjRvZjxhZtsj6uv2O7O/mcK+50XhQkKpr2a+DR1OIdQ2pYKLdBBnjkExYTjXjpXhg=
X-Received: by 2002:a9d:7d0c:: with SMTP id v12mr4188647otn.171.1583256700881; 
 Tue, 03 Mar 2020 09:31:40 -0800 (PST)
MIME-Version: 1.0
References: <1994044559.834986.1582780917804.ref@mail.yahoo.com>
 <1994044559.834986.1582780917804@mail.yahoo.com>
In-Reply-To: <1994044559.834986.1582780917804@mail.yahoo.com>
Date: Tue, 3 Mar 2020 12:31:28 -0500
Message-ID: <CAB__hTT=tXe=hpWaESU8YVrWpG8BjvZtQ5kTZY9YxJihGc+TBg@mail.gmail.com>
To: dspspouse@aol.com
Subject: Re: [USRP-users] USRP N310
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5217961549915108921=="
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

--===============5217961549915108921==
Content-Type: multipart/alternative; boundary="0000000000003ed4a2059ff6ad8c"

--0000000000003ed4a2059ff6ad8c
Content-Type: text/plain; charset="UTF-8"

Hi Len,
I have run some testing of this capability.  A few remarks:

   - In my test setup, I had a signal generator running into a 1:4 splitter
   with outputs connected to the four N310 Rx2 inputs.  I used another signal
   generator as the LO source running into a 1:2 splitter with outputs
   connected to the N310 Rx LO inputs with amplitude near 3 dBm
   <https://kb.ettus.com/N300/N310#Front_Panel> at N310 LO inputs.
   - When using external LO, the RF range is limited to a max of 4 GHz
   (rather than 6 GHz which is the limit with internal LO)
   - I had problems with UHD 3.14 because there was some bug related to
   resetting the phase of the DDC.  I had success with 3.15. But even with
   success, there is still a 180 degree ambiguity between channels 1/2 and
   channels 3/4.  I am not certain regarding the circumstances that can cause
   the ambiguity to flip, but I think it only occurs at application startup
   such that once your application is running, you can expect consistent
   results with no ambiguity flips.
   - When you launch your application and create a usrp device instance,
   the UHD software will automatically try to run some IQ calibrations
   (RX_QEC_INIT) expecting that the RF is at 2.5 GHz, which implies that your
   external LO must be at 5 GHz at startup.  After startup is complete (and
   this calibration is complete) you can change the freq of your LO and retune
   the RF of the various channels keeping in mind that the external LO must
   always be twice the desired RF.  If you want to avoid the startup
   calibration (with LO at 5 GHz), you can specify explicitly which
   calibrations
   <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations>
   you want using the device args and choose not to run RX_QEC_INIT. But, I'm
   not sure if skipping this calibration could have negative effects on signal
   quality.

Let me know if you have questions.
Rob


On Thu, Feb 27, 2020 at 12:22 AM Len via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Folks,
> I'm looking for information from any subscriber(s) to this forum that have
> successfully used the USRP N310 to provide 4 Rx channels which are both
> coherent and synchronized.  I've heard this could be challenging and I know
> people have been able to do this successfully so I was wondering where I
> might find some detailed information/instructions on how best to accomplish
> this.  I was told this forum would be a good place to start.  So any block
> diagrams illustrating the Master LO and Master Clock hookups needed along
> with any available calibration procedure(s) describing how to actually
> check/verify coherence and synchronization between the 4 channels would be
> great.
>
>
> Thanks,
> Len
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003ed4a2059ff6ad8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Len,</div><div>I have run some testing of this cap=
ability.=C2=A0 A few remarks:</div><div><ul><li>In my test setup, I had a s=
ignal generator running into a 1:4 splitter with outputs connected to the f=
our N310 Rx2 inputs.=C2=A0 I used another signal generator as the LO source=
 running into a 1:2 splitter with outputs connected to the N310 Rx LO input=
s with amplitude <a href=3D"https://kb.ettus.com/N300/N310#Front_Panel">nea=
r 3 dBm</a> at N310 LO inputs.</li><li>When using external LO, the RF range=
 is limited to a max of 4 GHz (rather than 6 GHz which is the limit with in=
ternal LO)</li><li>I had problems with UHD 3.14 because there was some bug =
related to resetting the phase of the DDC.=C2=A0 I had success with 3.15. B=
ut even with success, there is still a 180 degree ambiguity between channel=
s 1/2 and channels 3/4.=C2=A0 I am not certain regarding the circumstances =
that can cause the ambiguity to flip, but I think it only occurs at applica=
tion startup such that once your application is running, you can expect con=
sistent results with no ambiguity flips.</li><li>When you launch your appli=
cation and create a usrp device instance, the UHD software will automatical=
ly try to run some IQ calibrations (RX_QEC_INIT) expecting that the RF is a=
t 2.5 GHz, which implies that your external LO must be at 5 GHz at startup.=
=C2=A0 After startup is complete (and this calibration is complete) you can=
 change the freq of your LO and retune the RF of the various channels keepi=
ng in mind that the external=C2=A0LO must always be twice the desired RF.=
=C2=A0 If you want to avoid the startup calibration (with LO at 5 GHz), you=
 can specify explicitly which <a href=3D"https://files.ettus.com/manual/pag=
e_usrp_n3xx.html#n3xx_mg_calibrations">calibrations</a> you want using the =
device args and choose not to run RX_QEC_INIT. But, I&#39;m not sure if ski=
pping this calibration could have negative effects on signal quality.</li><=
/ul><div>Let me know if you have questions.</div><div>Rob</div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Feb 27, 2020 at 12:22 AM Len via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<div style=3D"color:black;font:10pt arial">Folks,
<div>I&#39;m looking for information from any subscriber(s) to this forum t=
hat have successfully used the USRP N310 to provide 4 Rx channels which are=
 both coherent and synchronized.=C2=A0 I&#39;ve heard this could be challen=
ging and I know people have been able to do this successfully so I was wond=
ering where I might find some detailed information/instructions on how best=
 to accomplish this.=C2=A0 I was told this forum would be a good place to s=
tart.=C2=A0 So any block diagrams illustrating the Master LO and Master Clo=
ck hookups needed along with any available calibration procedure(s) describ=
ing how to actually check/verify coherence and synchronization between the =
4 channels would be great.</div>

<div><br>
</div>

<div><br>
</div>

<div>Thanks,</div>

<div>Len=C2=A0 =C2=A0 =C2=A0</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000003ed4a2059ff6ad8c--


--===============5217961549915108921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5217961549915108921==--

