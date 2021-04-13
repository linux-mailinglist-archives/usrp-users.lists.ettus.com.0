Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C07335D6AE
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 06:56:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71CD03844A5
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 00:56:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="Rky8mvwB";
	dkim-atps=neutral
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D462F384455
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 00:55:59 -0400 (EDT)
Received: by mail-vs1-f42.google.com with SMTP id r4so3750930vsq.6
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 21:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CdZOrFaBOaR+gYzAKV/AquF7SyeE3RCPyMHSBIaUFHc=;
        b=Rky8mvwBixPNgGctLRvAO+XuDXNszSQcyv/ydGrCYjtTrDOny9NljS6+Tr437UTNpl
         OOsxJOW7v+oV8JUhRRDK2CScdB4WQGZ9R3TpgLvDrhKG02i3YJOVlhTlmuZ2Se3fWouP
         5F9P2TSnPk4q6muUgO+k/LaUMjCHKFGzp3WZW2FLOTYfKzbEYmD14ZoIivO6C8x5XZja
         Cm5mrcyU/0z8KuYlsabdWYE3tHCMe6LByfFrq4EFTFjGLQFf64oTLqC9KP70yE4s3AhN
         F1Y6t12P1UguuxexryjC2/JArD5qbOrHIpR6HuHGbBFn83vUie+SU/ZZsTyk5ptfhp/G
         Dgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CdZOrFaBOaR+gYzAKV/AquF7SyeE3RCPyMHSBIaUFHc=;
        b=Q3XDOQc1/4MRzgiHYrDWxmFFI6m1L2uoWvwXvZZdKkP6Cx51WyLmOGz4slhi5Lf6YY
         i7odfbAedfOVLBrdu9rnsjORrL7pqaTSuZmnWxkncJTund0k19vXo+FGRlVuV3HOdCE3
         yUUD/iSxMDjUD99g1pVMgtgK+SGyuuvcaME8AtmznnhCxyj872KurLyDRBvtRf4HOLCG
         OWQ+VNBp0dbcrpUgr94QI67eEysmGCxVEVJzA9asYglg6x5avmpIcKDnzZKxpPxuXNxq
         5Hm7eSSufDuGG1GF3TMSuMy80n939aP4x4MnL+nHTohnn33KhRup3tqoG5z3EdpmQnzg
         oPnA==
X-Gm-Message-State: AOAM533yN6uQiWP0RRutnhz8TpbsCA6XZs1XIQB+JD9ytex9AYTL9T5S
	SOWu+fHwQQY9w41I/lEGvAOIznac352Ho7rewPw5odxUbFY9/g==
X-Google-Smtp-Source: ABdhPJxdGC0hQ71RudHuPm3gC27XBHvkd+c+scuYsAGC+dZvZnzh4R8nW5xJeVrQSWYmiNGz41grvo1UZMuzP6xncnE=
X-Received: by 2002:a05:6102:e8e:: with SMTP id l14mr21742943vst.32.1618289759236;
 Mon, 12 Apr 2021 21:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAJrPtHmHjZSF+q0A8La+1KbNd+6nsTC5t==uUEKtTE5jNeJesw@mail.gmail.com>
In-Reply-To: <CAJrPtHmHjZSF+q0A8La+1KbNd+6nsTC5t==uUEKtTE5jNeJesw@mail.gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 13 Apr 2021 14:55:47 +1000
Message-ID: <CALNMZ8WJTAqa9F9jy3ojwbpP2KH0AFvBa6RQqRX2vciycx=kRA@mail.gmail.com>
To: Christian Hahn <christian@kumunetworks.com>
Message-ID-Hash: SDPM5GZ53PWCBVVPGYLJDM4B3BFU3CRK
X-Message-ID-Hash: SDPM5GZ53PWCBVVPGYLJDM4B3BFU3CRK
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: python-uhd and USRP use-cases
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SDPM5GZ53PWCBVVPGYLJDM4B3BFU3CRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1124251459761178432=="

--===============1124251459761178432==
Content-Type: multipart/alternative; boundary="0000000000003e4fa205bfd37201"

--0000000000003e4fa205bfd37201
Content-Type: text/plain; charset="UTF-8"

Hi Christian,

Thanks for the GitHub link, I'll definitely check it out.  My current
interest is in receiving signals, not transmitting them, but I can imagine
some future scenarios where a signal generator capability might be handy.

A couple of questions:

   - Is there any reason why you chose not to use the "official" Python API
   provided by Ettus?  Was it simply because the Ettus version hadn't been
   created at the time you started this project?
   - How robust is the receiving function in your Python implementation in
   the face of overflows/timeouts/dropped samples etc when receiving data from
   the USRP?  Does it detect these failure modes and provide some kind of
   feedback to the calling method?
   - My current UHD driver was built from source with the Ettus Python API
   included.  If I want to use your implementation, will I have to rebuild my
   UHD driver to exclude the Ettus API?
   - Do you have any plans to update your repository for UHD v4.0.0.0?

Regards,
Brendan.


On Mon, Apr 12, 2021 at 9:24 PM Christian Hahn <christian@kumunetworks.com>
wrote:

> Hi USRP-users,
>
> This is not a question.  Just a call for general discussion.  Sharing how
> we use USRPs.  Wondering how others do too.  Thanks
>
> I wanted to share this repository with anyone that wants to use older UHD
> releases with Python.  This repository started off as an internal company
> tool in 2015 and I threw it up on Github in 2017.  At the time, I was swept
> away with how flexible USRPs were, but wanted a more agile means to
> automate them - enter Python.  At work, we use a fleet of X300s, N310s and
> B210s for production test and research.  For various reasons, we cannot
> always use the latest UHD versions.  For example, in some of our legacy
> production test fixtures we are still using v3.9.7.
>
> https://github.com/christian-hahn/python-uhd
>
> In conjunction with this repository, we have a higher-layer software stack
> that wraps python-uhd and makes it appear "vector signal generator"-like.
> We maintain temperature compensated calibration for all of our USRP X300s
> from 50 MHz to 6 GHz that offers a relative accuracy of 0.05 dB and an
> absolute accuracy of < 0.2 dB.  This service runs on a modest desktop
> besides each pair of USRP X300s, exposes a REST API and basically abstracts
> them to look like any old Keysight-like MXG signal generator.  You give it
> a waveform, a center frequency, output power and it handles the rest.
>
> I am curious.  Do others use USRPs in similar signal generator like
> use-cases?  For production test?  Would anyone be interested in using them
> as such?  Should I work to clean-up and open source the signal-generator
> like service?  It may be tricky to handle the calibration, but I could
> probably include a 'best guess' model for a X300+UBX-160 combination.
>
> Cheers,
> Christian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003e4fa205bfd37201
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Christian,<div><br></div><div>Thanks for the GitHub lin=
k, I&#39;ll definitely check it out.=C2=A0 My current interest is in receiv=
ing signals, not transmitting them, but I can imagine some future scenarios=
 where a signal generator capability might be handy.=C2=A0 =C2=A0</div><div=
><br></div><div>A couple of questions:</div><div><ul><li>Is there any reaso=
n why you chose not to use the &quot;official&quot; Python API provided by =
Ettus?=C2=A0 Was it simply because the Ettus version hadn&#39;t been create=
d at the time you started this project?</li><li>How robust is the receiving=
 function in your Python implementation in the face of overflows/timeouts/d=
ropped samples etc when receiving data from the USRP?=C2=A0 Does it detect =
these failure modes and provide some kind of feedback=C2=A0to the calling m=
ethod?</li><li>My current UHD driver was built from source with the Ettus P=
ython API included.=C2=A0 If I want to use your implementation, will I have=
 to rebuild my UHD driver to exclude the Ettus API?</li><li>Do you have any=
 plans to update your repository for UHD v4.0.0.0?</li></ul><div>Regards,</=
div></div><div>Brendan.</div><div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021 at 9:24 PM=
 Christian Hahn &lt;<a href=3D"mailto:christian@kumunetworks.com">christian=
@kumunetworks.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi USRP-users,<div><br></div><div>This is=
 not a question.=C2=A0 Just a call for general=C2=A0discussion.=C2=A0 Shari=
ng how we use USRPs.=C2=A0 Wondering how others do too.=C2=A0 Thanks</div><=
div><br></div><div>I wanted to share this repository with anyone that wants=
 to use older UHD releases with Python.=C2=A0 This repository started off a=
s an internal company tool in 2015 and I threw it up on Github in 2017.=C2=
=A0 At the time, I was swept away with how flexible USRPs were, but wanted =
a more agile means to automate them - enter Python.=C2=A0 At work, we use a=
 fleet of X300s, N310s and B210s for production test and research.=C2=A0 Fo=
r various reasons, we cannot always use the latest UHD versions.=C2=A0 For =
example, in some of our legacy production test fixtures we are still using =
v3.9.7.</div><div><br></div><div><a href=3D"https://github.com/christian-ha=
hn/python-uhd" target=3D"_blank">https://github.com/christian-hahn/python-u=
hd<br></a></div><div><br></div><div>In conjunction with this repository, we=
 have a higher-layer software stack that wraps python-uhd and makes it appe=
ar &quot;vector signal generator&quot;-like.=C2=A0 We maintain temperature =
compensated calibration for all of our USRP X300s from 50 MHz to 6 GHz that=
 offers a relative accuracy of 0.05 dB and an absolute accuracy of &lt; 0.2=
 dB.=C2=A0 This service runs on a modest desktop besides each pair of USRP =
X300s, exposes a REST API and basically abstracts them to look like any old=
 Keysight-like MXG signal generator.=C2=A0 You give it a waveform, a center=
 frequency, output power and it handles the rest.</div><div><br></div><div>=
I am curious.=C2=A0 Do others use USRPs in similar signal generator like us=
e-cases?=C2=A0 For production test?=C2=A0 Would anyone be interested in usi=
ng them as such?=C2=A0 Should I work to clean-up and open source the signal=
-generator like service?=C2=A0 It may be tricky to handle the calibration, =
but I could probably include a &#39;best guess&#39; model for a X300+UBX-16=
0 combination.</div><div><br></div><div>Cheers,</div><div>Christian</div></=
div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003e4fa205bfd37201--

--===============1124251459761178432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1124251459761178432==--
