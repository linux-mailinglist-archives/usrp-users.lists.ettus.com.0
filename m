Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9D467EECD
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 20:52:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 686F738442F
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 14:52:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674849173; bh=ycDfpvGwU7FgWYnuUHpctpwyRBj8IoTPf6Tq+yPQ55U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aGfnETbcl7JhD41rfVbMqjUdl8Zevl909NkvooAtLnEU6hp4gFBHaCfQA8JFehtKx
	 t2w/OfpXDUVeWXdNr0+KXAhKKm2KJi6O51/NcWxNM76b0oE2yxrO1YqNnw+rXOcLHP
	 PsdUURFJUOQlz/lgTdbf9svSi3aMqbzxs/Zj/f2GvHLuy+lx2WWVxeXh2RHOfE1NNb
	 1hKqGOYX3y61H4eR++aam1iI8D4nnBGxpVY1Oa8jjp0WglRzBqt1Gq+L2fYpHveY4S
	 lk2sduq+StZ6LFOWJ1b0a4w9h43Ml5x41NrifMcG5Shi8IYDCBYCJXwwrdrGkYamnF
	 g0MgNDC+rBHHg==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E98FC38442F
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 14:52:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="N7ZXvarS";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id hw16so16483249ejc.10
        for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 11:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f24/AsW/0bGyOYvB54JOqQ76Dp085wkyQmHh2oEnEVQ=;
        b=N7ZXvarSJ6rYNilKUpg2h6t37qRPW5HA+/swkjY3NHnFZrqt/LmYdtVcfyit2d6Hca
         FNvKb0n8q2H/tq0/MJl4aKItJyjfPYeoUM2f0+NFhVZFTFjzkkHBmvGRq3EAF3HplsP/
         7Mu0MPvKPVGq8XkrNnJQ9XRyCZ5rbehNvgwYuUyVvjOaH1bd7STce8Jz/kQ9t14Px0df
         x/tH7PZeHNl7num7c2WzvBHIbOfxBj9ZLWn16NdwRAyKmHG6lcKbBCc/0zoA9iXRsbcR
         fG3RfR0mgkEpfjNO0YlmIbXiyMC1lAqYGs4Y5H6W8hBp+TP9p6WxxKYuYRl7+ns+LPl8
         eDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f24/AsW/0bGyOYvB54JOqQ76Dp085wkyQmHh2oEnEVQ=;
        b=AZ2Shv7hkIE/yGfSTQ6895xxnvhPGmK4PWA6XwaeUlLkdmqhdg6L95zJ1NDod8v2RU
         9qvX4Y1uqG20MW1msPFGcqhKzbjgz2t6xT6VvP2hADzIGheihYgHvdxjQvjU11vHxLoJ
         Q1UlceSwR2rUR5lK4wk3WNNs/iJVbIKJh7VrEGUk8nmhnxmD6H3a+nYqZBzzpFo1SNsF
         haJnIVI6f/m+FAnEB5lYgGOhvh3zdAOKCcVPRs7on7CG31kb7JSJAKZdLMs5UE6F7vWF
         WJXIm8fmVgogsAJohpR6vST3ExDOCBPDL7tsZP/TdXliwARxoscAnpFM3HyMU1mO9ogf
         zI+w==
X-Gm-Message-State: AFqh2kp22oM3h9iP+lyQN//NZLLoSUa7JqYCdko1oqx96HD2M4K5alRb
	L8IaZADlU3pbFwggJnQiwYi7X7YMSK9hHwy5Vb8qEFeJfyGTp353jCo=
X-Google-Smtp-Source: AMrXdXvOkM+GlgK4tA7CtM5zSTV2qvL6CKUNNys2+pxDarr7MRg6TVWkjt2u7ghO8J0lpEQdg7+vUF93M7BieO/3tqA=
X-Received: by 2002:a17:906:1447:b0:86e:8b7b:adb0 with SMTP id
 q7-20020a170906144700b0086e8b7badb0mr5574186ejc.130.1674849165891; Fri, 27
 Jan 2023 11:52:45 -0800 (PST)
MIME-Version: 1.0
References: <CAGA=HFc6SGvNWmQtqMsh3uY6Ez+U_F3y0CGSmvAs=8zc7+O37A@mail.gmail.com>
 <03a41b4a-4c97-84e6-ed4e-b614638282f9@gmail.com>
In-Reply-To: <03a41b4a-4c97-84e6-ed4e-b614638282f9@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 27 Jan 2023 13:52:29 -0600
Message-ID: <CAFche=gA8LYBkj0DgTDvK=5Jg+JwY--9=xGHk-t1dfVdr5mDUg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5DRKF46VMAZV77ZVMGRXO2XJ6U5XEHIG
X-Message-ID-Hash: 5DRKF46VMAZV77ZVMGRXO2XJ6U5XEHIG
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with replay_capture.py
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DRKF46VMAZV77ZVMGRXO2XJ6U5XEHIG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6793274569702892851=="

--===============6793274569702892851==
Content-Type: multipart/alternative; boundary="00000000000095f22b05f34435e9"

--00000000000095f22b05f34435e9
Content-Type: text/plain; charset="UTF-8"

Hi Uri,

Thanks for reporting this! You are correct. Here's a patch for UHD-3.0 (see
below) to fix it until we get a permanent solution in UHD. The record was
working correctly, but it was replaying the same buffer in memory for all
channels.

Thanks,

Wade


diff --git a/host/examples/python/replay_capture.py
b/host/examples/python/replay_capture.py
index c540c3034..02f582d2b 100755
--- a/host/examples/python/replay_capture.py
+++ b/host/examples/python/replay_capture.py
@@ -175,9 +175,10 @@ def run_capture(graph, replay, radio_chan_pairs,
num_samps, rate,
     )
     num_samps = num_bytes // 4
     num_ports = len(radio_chan_pairs)
-    ## Arm replay block for recording
+    ## Arm replay block for recording and set playback region
     for idx in range(len(radio_chan_pairs)):
         replay.record(idx * mem_stride, num_bytes, idx)
+        replay.config_play(idx * mem_stride, num_bytes, idx)
     ## Send stream command to all radios
     # This 'rate ratio' would be better handled by RFNoC. If the replay
block
     # were to submit the stream command to the radio, this would not be
necessary.


On Wed, Jan 25, 2023 at 6:37 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 25/01/2023 16:16, Uri M wrote:
>
> Hi all,
>
> I'm running into some trouble with the replay_capture.py example. When I
> try to use multiple channels, I keep getting the same samples in all of
> them.
>
> I've tried all the file file format options.
>
> Note that the samples of channel 1 are good.
>
> If anyone has any ideas, I'd really appreciate the help.
>
> Thanks!
>
> -Uri
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> What radio did you use it with, and what arguments did you supply?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000095f22b05f34435e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Uri,</div><div><br></div><div>Thanks for reporting=
 this! You are correct. Here&#39;s a patch for UHD-3.0 (see below) to fix i=
t until we get a permanent solution in UHD. The record was working correctl=
y, but it was replaying the same buffer in memory for all channels.<br></di=
v><div><br></div><div>
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
href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

--00000000000095f22b05f34435e9--

--===============6793274569702892851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6793274569702892851==--
