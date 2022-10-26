Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A5160E254
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 15:40:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FC9C383F9D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 09:40:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666791618; bh=s7gD4c7Mh0jGiANmI/vKdQ/6QwjRiFUZ1ARO5hP1VyQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=d6Utuf3s/mP6wSH6V1kVjP5dJBce7MxEPoasGiLoFFAXJU1w3MhaqOA/gTUvEYYD2
	 +zCMR+9azfRJkKhFNmzRdQHdSQAnmbSRHRm0J37QyM2m40K/UnEdItiQRgaViK9fVN
	 Fe4nzgi7wL8GhffIq/v27P4jZ1GTeLQtkLbUlYF5qp91UK9Fd+brrr010ETOqL6oNp
	 fmkMPVcR1mZwJWXKrf1FW/pn9q7022o0Ha+BorCARx4MJ2FKJ/TLNIJ8T2PT8OnZwh
	 HcnymeMzlmb+J523BWLvi5iot557o9kMeNJJw2QoVYQcNKQQMnVE5+cmkEiumFDt5a
	 tzN8iPLRsFpkQ==
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id E9953380D5C
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 09:38:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BWVFdwPg";
	dkim-atps=neutral
Received: by mail-ot1-f42.google.com with SMTP id d18-20020a056830005200b0066a3a429d2dso792070otp.11
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 06:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/eGWcTS22gn0vEa2QXqBSlguJYtDDHyODaXH3N/77Ak=;
        b=BWVFdwPg2YyyAhLk0Uqi8YzbiNe0g5wP04HP31OUTPQ4SABmy6zmUjzrd+CmZMolof
         K07vsjioUXs2/XppC06ACX4cWVLVdF1eme/aHN78b5UpopuJaCcuY4ZUDa0IQXoDpJu9
         esFOgH+TDBNHCzmOgvci6dhZHjlL/aOyb7x5hD9s0TFQAMIPboHROZjn4zjJkeny4zgt
         jDZAJJ7NCo6/PgL05aApoQfpKBB8lVZ0eNHA/wxggJRbOh1Fqni60IahD4XIgAyh7c6L
         WOvwWNMqI9vEcdy8o144mS77DAmGqEcDBUJqjuUKO26uBB00m+b4gvXCeczsNc1EIeSY
         ov2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/eGWcTS22gn0vEa2QXqBSlguJYtDDHyODaXH3N/77Ak=;
        b=YbvVxgQ2wJD976tMPaLw786PZ2KW8ngJYFwtcO5dRhan3jr4XzUTR6hF0C4rJQEqID
         oavLcwRgq4ihrseE/2MQ/ojq74ZvDg2mFNKV1tII4G6lc+n4+w3m+/rUKjAWGKkb9/v8
         Iv6iUokv69NhSPdLFtJD0OQeakdEJth/2YEcYimR1kogZdTeZCXZ645IOquRVYzs8oGF
         bt+7PVg/RjCw3gJB33uDgp0mCG2G0W6BxBb4f+D7crRqfx/pgwYqLV11WuM/IL60WYED
         hqQf4/GjWWxqa8pWDZEIjibBbapkq2gWBY5+mAHCW55u9rAl5vG8NBam/eCqFP7pXPYP
         84VQ==
X-Gm-Message-State: ACrzQf1xvbY3hR/rQc5q4yWE53zTeUmMRVIGBu3BfVxlfmYixlKB5GOA
	mwljiU2EMEyGK5QKoLCkDPZ6oZhK6+YKV9FgqL0FpQoI42c=
X-Google-Smtp-Source: AMsMyM5BgMombfGMjJ/RmvpUSdI7VkhlYTaDxRL5WRBssPJ14RGs7VhzvtuO2xCkl2bMm+MW/BIgFfFY86dzKFVKFEY=
X-Received: by 2002:a05:6830:4486:b0:661:9f14:9b45 with SMTP id
 r6-20020a056830448600b006619f149b45mr21637622otv.227.1666791537891; Wed, 26
 Oct 2022 06:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
 <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com> <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
In-Reply-To: <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 26 Oct 2022 09:38:46 -0400
Message-ID: <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com>
To: Wan Liu <wan.liu@ettus.com>
Message-ID-Hash: DLF4N5KLXVEZB6WHOOHDUMIEFQGG5RLG
X-Message-ID-Hash: DLF4N5KLXVEZB6WHOOHDUMIEFQGG5RLG
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DLF4N5KLXVEZB6WHOOHDUMIEFQGG5RLG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1817279996093859211=="

--===============1817279996093859211==
Content-Type: multipart/alternative; boundary="00000000000087de3805ebf02520"

--00000000000087de3805ebf02520
Content-Type: text/plain; charset="UTF-8"

Hey Wan,

On Tue, Oct 25, 2022 at 10:53 PM Wan Liu <wan.liu@ettus.com> wrote:

> Hello Brian,
>
> Thank you for the additional information.
>
> Regarding  #6, I meant that if you have two TwinRX daughterboards, see if
> you get this problem when the fixed channel is on one daughterboard, and
> the tuned channel is on the other.
>

Ah, I see.  Unfortunately my setup is a mixed USB/TwinRX setup so maybe it
isn't exactly testing what you're asking for, but I did use the subdev spec
to target the UBX RX2 for hopping around, and the TwinRX Channel 0 was
fixed.  In this case, the fixed spectrum stayed nice and clean the whole
time.


>
> Regarding screenshots, are you referring to any particular frequency and
> time region, or is everything above the noise floor associated with the
> tuning? In other words, is the clean spectrum where there is nothing above
> the noise floor in both time and frequency plots?
>

The captures were taken with terminated RF inputs.  Channel 0 of the TwinRX
was fixed at some frequency (I believe 400 MHz) and Channel 1 was hopping
around.  The recording was observing Channel 0 - the fixed frequency
channel.  When no hopping happens, there is clean spectrum with just a
noise floor which is what I expected to see.  When hopping is happening,
every so often we will see these sweeping signals show up.  They last
around 10 ms or so and then the spectrum is back to being clean.


>
> Also can you explain what you mean by "shows some analog PLL-style locking
> for around 10 ms of time, then goes away"? Are you referring to the burst
> from 3 ms to 13 ms, or something specifically at 10 ms?
>

I meant the phenomenon that starts at around 3 ms and lasts until around 13
ms.  It looks like an analog PLL settling to me.  Here is a zoomed in
version:


https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=sharing


>
> Lastly, what are your spectrogram parameters to generate the waterfall?
>

I am using an FFT size of 2048 with a blackmanharris window of the same
size, and overlapping by 1024.  My MATLAB command is:

  spectrogram(slice, blackmanharris(2048), 1024, 2048, 50e6, 'centered');


>
> I'll reach out again after I attempt to reproduce.
>

Sounds good.  Let me know if you need any other data or clarifications on
what I am seeing.

Thanks,
Brian

>

--00000000000087de3805ebf02520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Wan,</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 at 10:53 PM =
Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com">wan.liu@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div><div><div>Hello Brian,<br><br></div>Thank you for the additio=
nal information. <br><br></div>Regarding=C2=A0 #6, I meant that if you have=
 two TwinRX daughterboards, see if you get this problem when the fixed chan=
nel is on one daughterboard, and the tuned channel is on the other.</div></=
div></blockquote><div><br></div><div>Ah, I see.=C2=A0 Unfortunately my setu=
p is a mixed USB/TwinRX setup so maybe it isn&#39;t exactly testing what yo=
u&#39;re asking for, but I did use the subdev spec to target the UBX RX2 fo=
r hopping around, and the TwinRX Channel 0 was fixed.=C2=A0 In this case, t=
he fixed spectrum stayed nice and clean the whole time.</div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
<br></div>Regarding screenshots, are you referring to any particular freque=
ncy and time region, or is everything above the noise floor associated with=
 the tuning? In other words, is the clean spectrum where there is nothing a=
bove the noise floor in both time and frequency plots?<br></div></blockquot=
e><div><br></div><div>The captures were taken with terminated RF inputs.=C2=
=A0 Channel 0 of the TwinRX was fixed at some frequency (I believe 400 MHz)=
 and Channel 1 was hopping around.=C2=A0 The recording was observing Channe=
l 0 - the fixed frequency channel.=C2=A0 When no hopping happens, there is =
clean spectrum with just a noise floor which is what I expected to see.=C2=
=A0 When hopping is happening, every so often we will see these sweeping si=
gnals show up.=C2=A0 They last around 10 ms or so and then the spectrum is =
back to being clean.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Also can you explain=
 what you mean by &quot;shows some analog PLL-style locking for around 10 m=
s of time, then goes away&quot;? Are you referring to the burst from 3 ms t=
o 13 ms, or something specifically at 10 ms?<br></div></div></blockquote><d=
iv><br></div><div>I meant the phenomenon that starts at around 3 ms and las=
ts until around 13 ms.=C2=A0 It looks like an analog PLL settling to me.=C2=
=A0 Here is a zoomed in version:</div><div><br></div><div>=C2=A0=C2=A0<a hr=
ef=3D"https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/vie=
w?usp=3Dsharing">https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLi=
bI1ICQZ/view?usp=3Dsharing</a></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Lastly, wh=
at are your spectrogram parameters to generate the waterfall?<br></div></di=
v></blockquote><div><br></div><div>I am using an FFT size of 2048 with a bl=
ackmanharris window of the same size, and overlapping by 1024.=C2=A0 My MAT=
LAB command is:</div><div><br></div><div>=C2=A0=C2=A0spectrogram(slice, bla=
ckmanharris(2048), 1024, 2048, 50e6, &#39;centered&#39;);</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v><br></div><div>I&#39;ll reach out again after I attempt to reproduce.<br>=
</div></div></blockquote><div><br></div><div>Sounds good.=C2=A0 Let me know=
 if you need any other data or clarifications on what I am seeing.</div><di=
v><br></div><div>Thanks,</div><div>Brian</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--00000000000087de3805ebf02520--

--===============1817279996093859211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1817279996093859211==--
