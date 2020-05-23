Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 272E21DFBEA
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2020 01:35:58 +0200 (CEST)
Received: from [::1] (port=40836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcdgH-0004Lf-RE; Sat, 23 May 2020 19:35:53 -0400
Received: from mail-yb1-f171.google.com ([209.85.219.171]:45347)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jcdgE-0004Hk-OD
 for usrp-users@lists.ettus.com; Sat, 23 May 2020 19:35:50 -0400
Received: by mail-yb1-f171.google.com with SMTP id j8so2273551ybj.12
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 16:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IftMPL86d6sSWC4bOEfdv46EonO06Ad5yOVzzEObgNA=;
 b=IA5mqL/nfLvCJ3rp4wMgTVXGUXu7lx3E3xeIs6yh9iwGKSO6+w8Yxfa9pcEQdfjKZO
 J655DSrSErI1L/CUZDI7KNe8dUSAHRXAzvSGyJF4xnL5TziXQlISwxevu4SFnV30sUXb
 Y6EV/afRY1jJh+5AtjA4PEhSeGeWvH1yvuJ720vzzVlk+9X41k5MECEn89xCzPgMW6Ks
 rMQsgc0oYn72DXftcGDz34FRu2C3x4y0OoYm/kykWAmc3ExfgcZfNdSmPGED0F7TZ6UA
 nYXipKtisft44JhY4oyD3JNhYDRoyvKbz3dU7eukpUyalkZ6rrNxjp38sMCHQwvLIBYX
 fxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IftMPL86d6sSWC4bOEfdv46EonO06Ad5yOVzzEObgNA=;
 b=Vd/H7i6P5Gyr+oKtB5PNH+fW6q1gevhR/biZk8YZVhH9/XBEGPt3UVk9XJC4+OSF6g
 GTxjKGkKMc70rDs2JZSS+kd4cew7/Gv2auRh33hbRtF4JDWCB7U8uico+zS6DEqaae4i
 aPfnggqcdonMtpmQmWI2dmBjh7NHEIHNxTW/TEjZyOC3ELGEH2LHny7nS9rJfGufNPtv
 mvJczIsvfazeTGfDhP22jBxnKRI1nGPNQIYSUrmBlzP1tfnfBaiYqToK2hYocMP3FM7u
 PlfzM6r2Yo54Y9DZVlWQTMr+0R3D4xK2z7MtHV1Bhevc8qAsHM+hOljT/4iht4WiyUMl
 1/eA==
X-Gm-Message-State: AOAM533tMKNo0UxNYNmqI60cgyBR5BNDsVZ5fEpvkPku9zUZymHupLLF
 WrpxUN7+TOu+XAulZwhNiNHmoCA8arsmFnAldHH2SQCJ
X-Google-Smtp-Source: ABdhPJwoFca5giva8SQ31xPtNSU/xaaQ6DOBqqim4GQyQqZFDr5SBF8IR+VHMehf4O+beXJMhezHQ71EhF0X5dBykBo=
X-Received: by 2002:a25:3ac6:: with SMTP id
 h189mr12715227yba.281.1590276910003; 
 Sat, 23 May 2020 16:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
In-Reply-To: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
Date: Sat, 23 May 2020 18:34:59 -0500
Message-ID: <CADBWrHiABtNSRkDPXEuZ0fXpxDMgbqMpN-Y9jp58WOmWDZ_5mQ@mail.gmail.com>
To: Manav Kohli <mpk2138@columbia.edu>
Subject: Re: [USRP-users] Rounded FFT on USRP N210
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6107505999354937426=="
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

--===============6107505999354937426==
Content-Type: multipart/alternative; boundary="00000000000050bb6405a6593230"

--00000000000050bb6405a6593230
Content-Type: text/plain; charset="UTF-8"

Manav,

I'll take a shot in the dark and point you toward this article I've
referenced a couple times in the past:

https://witestlab.poly.edu/blog/why-does-my-received-spectrum-droop-at-the-edges/

In order to decimate data, the USRP will use halfband filters for
decimation factors that are a multiple of 2, and will use a CIC filter for
anything else. The use of this CIC filter causes rolloff similar to what
you're describing. If you change your sample rate to be a decimation factor
of 2 from the MCR and you see an improvement, then you've found the culprit.

-Sam

On Sat, May 23, 2020 at 3:08 PM Manav Kohli via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Setup details:
> USRP N210 w/SBX daugterboard
> UHD 3.14
> GNU Radio 3.7
> Ubuntu 16.04
> gr-digital GNU Radio OFDM blocks used
>
> While attempting channel estimation for 64-subcarrier OFDM, I find that
> for higher bandwidths, such as 20 MHz, the channel estimate shows the edge
> subcarriers anywhere from 15-20dB below the central zero subcarrier, even
> though the anticipated channel is relatively flat.
>
> Taking a larger FFT of the entire received OFDM packets shows the same
> rounding as seen in the channel estimation. This rounding is roughly
> symmetric, and occurs with any carrier frequency used.
>
> It was suggested to me that this may be caused by the antialiasing filter
> on the SBX board, and any further help/advice would be greatly appreciated.
> Is such rounding normal, and if so, how could it be compensated?
>
> Much thanks,
> Manav
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000050bb6405a6593230
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Manav,<div><br></div><div>I&#39;ll take a shot in the dark=
 and point you toward this article I&#39;ve referenced a couple times in th=
e past:</div><div><br></div><div><a href=3D"https://witestlab.poly.edu/blog=
/why-does-my-received-spectrum-droop-at-the-edges/">https://witestlab.poly.=
edu/blog/why-does-my-received-spectrum-droop-at-the-edges/</a><br></div><di=
v><br></div><div>In order to decimate data, the USRP will use halfband filt=
ers for decimation factors that are a multiple of 2, and will use a CIC fil=
ter for anything else. The use of this CIC filter causes rolloff similar to=
 what you&#39;re describing. If you change your sample rate to be a decimat=
ion factor of 2 from the MCR and you see an improvement, then you&#39;ve fo=
und the culprit.</div><div><br></div><div>-Sam</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 23, 2020 at=
 3:08 PM Manav Kohli via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 style=3D"color:rgb(0,0,0)">Setup details:</div><div style=3D"color:rgb(0,0=
,0)">USRP N210 w/SBX daugterboard</div><div style=3D"color:rgb(0,0,0)">UHD =
3.14</div><div style=3D"color:rgb(0,0,0)">GNU Radio 3.7</div><div style=3D"=
color:rgb(0,0,0)">Ubuntu 16.04</div><div style=3D"color:rgb(0,0,0)">gr-digi=
tal GNU Radio OFDM blocks used</div><div style=3D"color:rgb(0,0,0)"><br></d=
iv><div style=3D"color:rgb(0,0,0)">While attempting channel estimation for =
64-subcarrier OFDM, I find that for higher bandwidths, such as 20 MHz, the=
=C2=A0channel estimate shows the edge subcarriers anywhere from 15-20dB bel=
ow the central zero subcarrier, even though the anticipated channel is rela=
tively flat.=C2=A0</div><div style=3D"color:rgb(0,0,0)"><br></div><div styl=
e=3D"color:rgb(0,0,0)">Taking a larger FFT of the entire received OFDM pack=
ets shows the same rounding as seen in the channel estimation. This roundin=
g is roughly symmetric, and occurs with any carrier frequency used.=C2=A0</=
div><div style=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0=
)">It was suggested to me that this=C2=A0may be caused by the antialiasing =
filter on the SBX board, and any further help/advice would be greatly appre=
ciated. Is such rounding normal, and if so, how could=C2=A0it be compensate=
d?</div><div style=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0=
,0,0)">Much thanks,</div><div style=3D"color:rgb(0,0,0)">Manav</div></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000050bb6405a6593230--


--===============6107505999354937426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6107505999354937426==--

