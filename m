Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E613BDEAF
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 23:04:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F4018383F7B
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:04:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EeziI/qJ";
	dkim-atps=neutral
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B5D8383F14
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 17:04:00 -0400 (EDT)
Received: by mail-lj1-f174.google.com with SMTP id r20so16348107ljd.10
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 14:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GVJ4P40zNQQ5Rt6Ken03qu+Ah86HxsZcyo3QEzqLPys=;
        b=EeziI/qJbbR0WJCiqK/O4ux9EIwIAzce4dYAy2DTzy/xt+3RLJ3T+FczcH9OJSjNXG
         qQCpAtJsmyPzzA/+2FanKbnCrwNI7j1q+r690404/F8kw1ALijFNzCxhZsbwYhxv6aQZ
         UGidPHqBO4rhxjglXm6d9zwESHuqeAsgMIKsWI4ho9bVA0ckjWhZu2WGMXWITp2fJEss
         yWPcvu8FCe32kgdNFr7g5t3cSdqXr13LgMT4jj1up1VyRGDjjhxz31jdTCzFQl1qpiJi
         DcgLabO2sIuB2w6gX2MQug4ZemeFDoGjsGjyDSg2yIfzCfjqXLClRbVThzwibG7FEDg5
         5adA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GVJ4P40zNQQ5Rt6Ken03qu+Ah86HxsZcyo3QEzqLPys=;
        b=JKFlrB6frGY8gPOIm9TIwPsR5lIzkhEvp4IsvdPLoHz9aPexbdSkatmmTo69sPBUv6
         mSoKERV59BM+TyRv8YGvwjKqB+SJj8UWCu+eu7ReFEVLglB0oJu0YimjnB2VU4Fm4pya
         LEzxIR984M7YE3OhAcO1eu30T0BaKvCaTmaEkLNWsCCq7WKoAehyZIlytiiUeOgcYAp+
         ECL1K4oVcPupiK724mBFq2GNxM4Tb3/Ai74NQVHzIyeN6lbRG3lXmF4YqIaXraGAJWUs
         AOOvoXc916v8MXcli1MuCqmr/eN7ngvXanjvAA5NVM6og9QrJruZ7dqDahXyFN+dsagV
         awQw==
X-Gm-Message-State: AOAM532MHQqsmP44M4rkFdNjiXi8YPaS4E9rvYbvY5//mI5OxeFxhrU6
	22y9loeeAG9zePykjgMQxGV1xNaY9cWoaw6YafI6cJ7z
X-Google-Smtp-Source: ABdhPJyvmFEmK+8f3zQH16q+Gbm/Ren+AtalHMho39ynrbY5uhgq6qcbO0SABdVXVDB2YMM0/HW6H+CQUf1yEL4fdc4=
X-Received: by 2002:a05:651c:21c:: with SMTP id y28mr626263ljn.351.1625605439116;
 Tue, 06 Jul 2021 14:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1mYm5sw=S=3_N-sNot1bLqr7K9oY5toybwzf8jYod7-Vg@mail.gmail.com>
In-Reply-To: <CAFPzw1mYm5sw=S=3_N-sNot1bLqr7K9oY5toybwzf8jYod7-Vg@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Tue, 6 Jul 2021 23:03:45 +0200
Message-ID: <CAFPzw1=vHMnS-YP32hCpJWh_nx=Mm+fnSNfKYe1bOxSfutfL=Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: MRE4OPPJQDOOKSQOKNICZKBQGX3HLG3T
X-Message-ID-Hash: MRE4OPPJQDOOKSQOKNICZKBQGX3HLG3T
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: Continuos time acquisition
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRE4OPPJQDOOKSQOKNICZKBQGX3HLG3T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2156261620349290414=="

--===============2156261620349290414==
Content-Type: multipart/alternative; boundary="000000000000be57fd05c67ac21e"

--000000000000be57fd05c67ac21e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
De: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: jue, 24 jun 2021 a las 12:49
Subject: Continuos time acquisition
To: Ettus Research Support <support@ettus.com>


I am working with two X310 boards equipped with two TwinRx each. They are
connected to a host via a dual 10GB Ethernet interface (MTU 9000). My
environment consists of Ubuntu 16.04 LTS, with 125.6 GiB RAM and a
processor with CPU @ 2.20GHz x 40.

I am trying to do continuous time acquisitions by modifying the
rx_samples_to_file.cpp example so that it can acquire 8 channels. However,
the results obtained are not what I expected as a lot of time is wasted
between buffers.

I have tried to increase the acquisition time so that it is saved in a file
every so often, that is, that it acquires 1s and saves, and when it
finishes saving, it acquires 1s again, following this cycle the times
indicated. However, although at the beginning the time between each burst
start is constant, there comes a point where these times begin to increase
considerably due to the time it takes to save the file. In this case it is
not clear to me if the problem is due to the boards or caused by the host.

Is there another way to be able to carry out an acquisition in continuous
time losing the least number of samples possible?

On the other hand, I have noticed that one of the cards begins to emit a
strange noise, like a beep, when it has been on for a while. Although this
only happens sometimes I am a little bit worried. What could be the cause?



I hope you can help me.

Thanks in advance.

Regards,

Anabel Almod=C3=B3var Hern=C3=A1ndez

--000000000000be57fd05c67ac21e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>De: <strong class=
=3D"gmail_sendername" dir=3D"auto">Anabel Almodovar</strong> <span dir=3D"a=
uto">&lt;<a href=3D"mailto:anabel.almodovar@gmail.com">anabel.almodovar@gma=
il.com</a>&gt;</span><br>Date: jue, 24 jun 2021 a las 12:49<br>Subject: Con=
tinuos time acquisition<br>To: Ettus Research Support &lt;<a href=3D"mailto=
:support@ettus.com">support@ettus.com</a>&gt;<br></div><br><br><div dir=3D"=
ltr"><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">I am
working with two X310 boards equipped with two TwinRx each. They are connec=
ted
to a host via a dual 10GB Ethernet interface (MTU 9000). My environment
consists of Ubuntu 16.04 LTS, with 125.6 GiB RAM and a processor with CPU @
2.20GHz x 40.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">I am trying
to do continuous time acquisitions by modifying the rx_samples_to_file.cpp
example so that it can acquire 8 channels. However, the results obtained ar=
e
not what I expected as a lot of time is wasted between buffers.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">I have
tried to increase the acquisition time so that it is saved in a file every =
so
often, that is, that it acquires 1s and saves, and when it finishes saving,=
 it
acquires 1s again, following this cycle the times indicated. However, altho=
ugh
at the beginning the time between each burst start is constant, there comes=
 a
point where these times begin to increase considerably due to the time it t=
akes
to save the file. In this case it is not clear to me if the problem is due =
to
the boards or caused by the host.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Is there
another way to be able to carry out an acquisition in continuous time losin=
g
the least number of samples possible?</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">On the
other hand, I have noticed that one of the cards begins to emit a strange
noise, like a beep, when it has been on for a while. Although this only hap=
pens
sometimes I am a little bit worried. What could be the cause?</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">I hope you
can help me.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Thanks in
advance.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Regards,</span=
></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Anabel Al=
mod=C3=B3var Hern=C3=A1ndez</span></p></div>
</div></div>

--000000000000be57fd05c67ac21e--

--===============2156261620349290414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2156261620349290414==--
