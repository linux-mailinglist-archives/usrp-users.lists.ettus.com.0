Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F31067EEFE
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 20:59:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49E0C384479
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 14:59:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674849579; bh=EpZmzKJpPaNq8/5YImPipjPKF8kQ3vpPQob0wd7/sbE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Z3iC9kWgIAl1MCKkPorWLxN5hNRFERMCWWg4KBnBbmcR/tRbXNBOYuYx/RTutoUGc
	 d695zQ1mC4+O8i9grSIX9XDHw/0X7BRqjpcdfcUB7XGEqms2LiwfEQQOPyuxFICPKy
	 b83VNV+Dlr6qY7cPyTeJ4USIOPa/PGP55GD9e9s6d+bjp+PTbhRBmKsHM7Av3vlVho
	 AyzSf8aY9Etxw4/VDiJJKIvLQEl2e6+CLVIXJiiEXrbr7cHjG2fKtbtz8dmPW9fsFn
	 FLFmFHoK9dDmUZ/0xfktbR+wJGY6Ning99YBah9u4YuDZ1OfEOSWUqPA7C9pLi//+n
	 pV9FlNZLEgW4g==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 320D938449F
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 14:59:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="jztb3CuA";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id kt14so16658304ejc.3
        for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 11:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JlNoOAcGhY+DMKC4vi3tFdi/n2DZ4nP3c8LLtDhGJbo=;
        b=jztb3CuA5WEda25+P8vlW2mSaNVil3Fh5Xzu/aknAUN22rYyuyeKlqfVlk5VFVKWxA
         TFjhvRxg0V/G8DJCCcvOkfzvx7Fg8y0HkO+CkxqztZLOB3Ry6EWQ8WRQ/mWEhzfN2Wlc
         juS6GchQ84aRJNpP0gX6gPWJqpagWBKBiiJR4DV/kpfGHvwbL5GfqR9GjdNkgZytQVmf
         Tz7VQEDTGNCnBMRMpR13RU1K5uUq8QQnRI+IsvYUj6dgb1ZQo9y1b/fn7bcOaiG1XnHL
         iVsXVy0MmfJ4avIwxti6i5KCICGqQRnGGeZfaErXFcKfeFEL6wnvsL1LM2NZeztALzPp
         WIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JlNoOAcGhY+DMKC4vi3tFdi/n2DZ4nP3c8LLtDhGJbo=;
        b=KjfTBO8beze2jZ4XD2DtkDhTWbl+Q1gt33AJyaUiyeICkwG0DqYWwfQXiLBJbi/2Jt
         aiuuZQM731f8IoeGpTHZ5SBVpgwPCxrWETTgwzSZG7rVlabw38iMlkJZwNTrb84z+wH/
         7J12Y+gE5G9HuXIWEVE9bO59Dna8p4IJIM4Dp/foK92PsSlHj1vviK3xrc6X0z+G6f/b
         t/CmuEBfMrOzMTua0HeDcl6n++6zAdBtMU3yGItoSo6wkqRKd5ua/NH6bDGODgZPPPXC
         qG1MqgXIvkJBgpwgJ7lCTYkDqlpxlqDn0LtM5LDCOL7bDzT7uVHx2bCvYH/soVy30yfr
         9UOg==
X-Gm-Message-State: AFqh2kr8s/aQYEVIZBoouIICJ/p3WH1Jno3TpAwbkNO0HskEjPMKBkfA
	iC5HYrQeEs0wP25arCeqtP5LTDi/MaOolnelbmPrKzs4
X-Google-Smtp-Source: AMrXdXv9N6VQYNXepcyjqBik3XFDyi3OxlS9dfzkvKLovh261Rq34fzh4MDwLsqrYI84dFJuUP/vHNaxjnFW5BGqd8E=
X-Received: by 2002:a17:906:ecb9:b0:86d:97d4:9fea with SMTP id
 qh25-20020a170906ecb900b0086d97d49feamr7638688ejb.141.1674849570019; Fri, 27
 Jan 2023 11:59:30 -0800 (PST)
MIME-Version: 1.0
References: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
 <03a41b4a-4c97-84e6-ed4e-b614638282f9@gmail.com> <CAFche=gA8LYBkj0DgTDvK=5Jg+JwY--9=xGHk-t1dfVdr5mDUg@mail.gmail.com>
In-Reply-To: <CAFche=gA8LYBkj0DgTDvK=5Jg+JwY--9=xGHk-t1dfVdr5mDUg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 27 Jan 2023 13:59:13 -0600
Message-ID: <CAFche=jkzmnT_m3CEueMryOuZvv80UtPLun_=N0yWCnVJRBF4g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: P3C5PJ36MPPYRNHTCNS7L2OFFIVQH64H
X-Message-ID-Hash: P3C5PJ36MPPYRNHTCNS7L2OFFIVQH64H
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with replay_capture.py
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P3C5PJ36MPPYRNHTCNS7L2OFFIVQH64H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2228121605927095710=="

--===============2228121605927095710==
Content-Type: multipart/alternative; boundary="000000000000ac746705f3444daf"

--000000000000ac746705f3444daf
Content-Type: text/plain; charset="UTF-8"

Apologies, I meant to say the fix is for UHD-4.3, not 3.0.

Wade

On Fri, Jan 27, 2023 at 1:52 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Uri,
>
> Thanks for reporting this! You are correct. Here's a patch for UHD-3.0
> (see below) to fix it until we get a permanent solution in UHD. The record
> was working correctly, but it was replaying the same buffer in memory for
> all channels.
>
> Thanks,
>
> Wade
>
>
> diff --git a/host/examples/python/replay_capture.py
> b/host/examples/python/replay_capture.py
> index c540c3034..02f582d2b 100755
> --- a/host/examples/python/replay_capture.py
> +++ b/host/examples/python/replay_capture.py
> @@ -175,9 +175,10 @@ def run_capture(graph, replay, radio_chan_pairs,
> num_samps, rate,
>      )
>      num_samps = num_bytes // 4
>      num_ports = len(radio_chan_pairs)
> -    ## Arm replay block for recording
> +    ## Arm replay block for recording and set playback region
>      for idx in range(len(radio_chan_pairs)):
>          replay.record(idx * mem_stride, num_bytes, idx)
> +        replay.config_play(idx * mem_stride, num_bytes, idx)
>      ## Send stream command to all radios
>      # This 'rate ratio' would be better handled by RFNoC. If the replay
> block
>      # were to submit the stream command to the radio, this would not be
> necessary.
>
>
> On Wed, Jan 25, 2023 at 6:37 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 25/01/2023 16:16, Uri M wrote:
>>
>> Hi all,
>>
>> I'm running into some trouble with the replay_capture.py example. When I
>> try to use multiple channels, I keep getting the same samples in all of
>> them.
>>
>> I've tried all the file file format options.
>>
>> Note that the samples of channel 1 are good.
>>
>> If anyone has any ideas, I'd really appreciate the help.
>>
>> Thanks!
>>
>> -Uri
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> What radio did you use it with, and what arguments did you supply?
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000ac746705f3444daf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apologies, I meant to say the fix is for UHD-4.3, not=
 3.0.</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 27, 2023 at 1:52 P=
M Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hi Uri,</div><div><br></div><div>Thanks for reporting =
this! You are correct. Here&#39;s a patch for UHD-3.0 (see below) to fix it=
 until we get a permanent solution in UHD. The record was working correctly=
, but it was replaying the same buffer in memory for all channels.<br></div=
><div><br></div><div>
<div>Thanks,</div><div><br></div><div>Wade</div>

</div><div><br></div><div><br></div><div>diff --git a/host/examples/python/=
replay_capture.py b/host/examples/python/replay_capture.py<br>index c540c30=
34..02f582d2b 100755<br>--- a/host/examples/python/replay_capture.py<br>+++=
 b/host/examples/python/replay_capture.py<br>@@ -175,9 +175,10 @@ def run_c=
apture(graph, replay, radio_chan_pairs, num_samps, rate,<br>=C2=A0 =C2=A0 =
=C2=A0)<br>=C2=A0 =C2=A0 =C2=A0num_samps =3D num_bytes // 4<br>=C2=A0 =C2=
=A0 =C2=A0num_ports =3D len(radio_chan_pairs)<br>- =C2=A0 =C2=A0## Arm repl=
ay block for recording<br>+ =C2=A0 =C2=A0## Arm replay block for recording =
and set playback region<br>=C2=A0 =C2=A0 =C2=A0for idx in range(len(radio_c=
han_pairs)):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0replay.record(idx * mem_s=
tride, num_bytes, idx)<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0replay.config_play(i=
dx * mem_stride, num_bytes, idx)<br>=C2=A0 =C2=A0 =C2=A0## Send stream comm=
and to all radios<br>=C2=A0 =C2=A0 =C2=A0# This &#39;rate ratio&#39; would =
be better handled by RFNoC. If the replay block<br>=C2=A0 =C2=A0 =C2=A0# we=
re to submit the stream command to the radio, this would not be necessary.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Jan 25, 2023 at 6:37 PM Marcus D. Leech &lt;<a =
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div>
    <div>On 25/01/2023 16:16, Uri M wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif=
,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot=
;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quo=
t;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background-col=
or:rgb(247,247,248)">Hi all,</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif=
,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot=
;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quo=
t;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background-col=
or:rgb(247,247,248)">I&#39;m running into some trouble with the replay_capt=
ure.py example. When I try to use multiple channels, I keep getting the sam=
e samples in all of them. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif=
,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot=
;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quo=
t;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background-col=
or:rgb(247,247,248)">I&#39;ve tried all the file file format options. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-serif=
,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&quot=
;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quo=
t;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background-col=
or:rgb(247,247,248)">Note that the samples of channel 1 are good.</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&=
quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,=
&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background=
-color:rgb(247,247,248)">If anyone has any ideas, I&#39;d really appreciate=
 the help. </p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&=
quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,=
&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background=
-color:rgb(247,247,248)">Thanks!</p>
        <p style=3D"border:0px solid rgb(217,217,227);box-sizing:border-box=
;margin:1.25em 0px 0px;color:rgb(55,65,81);font-family:S=C3=B6hne,ui-sans-s=
erif,system-ui,-apple-system,&quot;Segoe UI&quot;,Roboto,Ubuntu,Cantarell,&=
quot;Noto Sans&quot;,sans-serif,&quot;Helvetica Neue&quot;,Arial,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,=
&quot;Noto Color Emoji&quot;;font-size:16px;white-space:pre-wrap;background=
-color:rgb(247,247,248)">-Uri</p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    What radio did you use it with, and what arguments did you supply?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ac746705f3444daf--

--===============2228121605927095710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2228121605927095710==--
