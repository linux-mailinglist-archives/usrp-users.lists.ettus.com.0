Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 295DB67FEDD
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 13:22:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4CB7384012
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 07:22:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674994931; bh=P6OPIB2MudDVQG/sP6w1g7k0Kf8m2jZ1H9YLXDrCmdI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=u0s67nkMaUvM80gf7rIChU8XzBKrgic3kWeZijo/PgzIzx6UYtN70+2kWjORzRBRk
	 ImyRRy6vXrC1K67Aop6BeQrsJLpZQENKlbUl3Bwjj8TANylXFvPbsWCNORaEbVii1y
	 TSW7KyuYPFnWgEvBIZa1QaKTmb8qUn3JAZyzpXQikuA/VeaurvBenkzuxevp0Dtpwz
	 KfJbQmRnQePBHOCgP2jKn65n+LKS/+sT8SHNHVfWSiHlSaicw6hzgtoi3HQMOTd8zT
	 +jIElNqs+LF8b+i3CA6oQG3Uc5FUA5GgePC9YGuRMQrzNNiCmQxu4+oKkxtsxpG65b
	 DsHlp+OHYC7kw==
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 28337383EBA
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 07:22:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GZQXymoe";
	dkim-atps=neutral
Received: by mail-lj1-f180.google.com with SMTP id u27so3587175ljo.12
        for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 04:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4+mfAjCRotVE8R6JmoXzneKIEThqj6lGPYw/kbo1pJg=;
        b=GZQXymoeEAkZyw8jIg5QsUjF99LSZSMYrPGL82geKXQMho8Zo8ZyjTOjOl6xLJUAtG
         fWltN55nfeH3/pZDFjkQbqRpnKRUx7UX2Q5aVxbrHuKB7w3KQgWeozyJoWa5OshyHizG
         RCjIfIZmVZPLAl6/9B9joNodbYz0aOww24Wi2sfj+zRi7DebR2sl2oqY94GiIvajdenC
         1VMKJlZ11Mr1R9hgaM11ZmE6xp6L0cID0XbLPm5PzOtYAmNI+UB/VM9/Tc9isNlnOszL
         RXXOgp5DdIKwN9o7AXpPsPyurwiXo4QqtouRvpHMUbt1+84uxm2qsBgokoHINz3yIxPh
         /EEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+mfAjCRotVE8R6JmoXzneKIEThqj6lGPYw/kbo1pJg=;
        b=ATXJmAiaiqT3OHNEbsgcFPXyp78+rh2B0EokRyaEFqDDlCFavKqsrxrHstkQ8qNdBH
         yH8mBMgrpB3LRuQMjDyHMQgKPEgVV9EJqzVZnIjDfpZxfbUjgw6t176vng5dU1KpiA8v
         23LAnRJP5B/ep2ps7k6KImAY/H5Lb7JV+asx+VTTUOvzHjdt8E8QHFulydP8ERyuNbby
         Yw13WgsTyiMm1mSlP07X5aBN5ivyCIt4uFDZFK0BVSteB0+z32Xpx5LMA87DtfKEoUkD
         eqr6WZvi9Atr77SadCPW0DcZO7EIJ8d2vj/LYL7sUTJ1t4PaSEkGu+PXFZfgMZYNjt1w
         K9uw==
X-Gm-Message-State: AO0yUKX/yWqb034L1Q9OoxUqA1oCtkqGCX1c7CyIwn/i87aq/Y9/Kphl
	eQDcN73E5/X0PvUp4qs6iEKYhkSadDBy+Pfg/gY=
X-Google-Smtp-Source: AK7set9w+p6rbZQosGGHP0jAw6FdRBvA1DeiefB6DG8ZkbhTcx3WXU7FYEL2VJaevGnQjwN8WDn02k/4x1St31/0Ejw=
X-Received: by 2002:a2e:86d7:0:b0:28e:9e65:36be with SMTP id
 n23-20020a2e86d7000000b0028e9e6536bemr1089936ljj.92.1674994922667; Sun, 29
 Jan 2023 04:22:02 -0800 (PST)
MIME-Version: 1.0
References: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
 <03a41b4a-4c97-84e6-ed4e-b614638282f9@gmail.com> <CAFche=gA8LYBkj0DgTDvK=5Jg+JwY--9=xGHk-t1dfVdr5mDUg@mail.gmail.com>
In-Reply-To: <CAFche=gA8LYBkj0DgTDvK=5Jg+JwY--9=xGHk-t1dfVdr5mDUg@mail.gmail.com>
From: Uri M <uri.marcovitch@gmail.com>
Date: Sun, 29 Jan 2023 14:21:51 +0200
Message-ID: <CAGA=HFdH-ZS__h_Y4kx1PDzz=LvETCvaL=yb3t3NMzR4eXJKxw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: OL3OFCYGYPEK3XVQ6FTMI3HGWU3E4GYR
X-Message-ID-Hash: OL3OFCYGYPEK3XVQ6FTMI3HGWU3E4GYR
X-MailFrom: uri.marcovitch@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with replay_capture.py
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OL3OFCYGYPEK3XVQ6FTMI3HGWU3E4GYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5454590269670920221=="

--===============5454590269670920221==
Content-Type: multipart/alternative; boundary="0000000000005dc56905f366255f"

--0000000000005dc56905f366255f
Content-Type: text/plain; charset="UTF-8"

Thanks a lot.
It works well after the fix.

-Uri



On Fri, Jan 27, 2023 at 9:54 PM Wade Fife <wade.fife@ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005dc56905f366255f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot.<div>It works well after the fix.</div><div><=
br></div><div>-Uri</div><div><br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 27, 2023=
 at 9:54 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi Uri,</div><div><br></div><div>Thanks fo=
r reporting this! You are correct. Here&#39;s a patch for UHD-3.0 (see belo=
w) to fix it until we get a permanent solution in UHD. The record was worki=
ng correctly, but it was replaying the same buffer in memory for all channe=
ls.<br></div><div><br></div><div>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005dc56905f366255f--

--===============5454590269670920221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5454590269670920221==--
