Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7A59D82DB
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 10:50:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65F9B385E36
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 04:50:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732528253; bh=VC1s2D2mT+4Kb930XeqV2/yUvY4SY+cQLo+Ibrq+fwc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XM63kR8Os/FtrOjZQDs9f1iZiGzd4ZaiQ17r2UEHv6fXDOrXvpH8abKnKzVBG1tZy
	 s2kJRrU2EYw22AnWpxMgSm9KfzgpTERZ0TKW2NQiIVv7AZDnozeYjvvPgH1Hmdv6Aq
	 UvKyI2bG0zMd0z/SWaeFPfjxNetNo6UdVDUkCfdaxv6NDBzJm/CsY9A5rDXgwCngev
	 qPn1p4I4po0NhhtD+gyN8nA/VsRGdtpPSOhjW7Y/PXHZMOdaTeIt9D4xvLtj0qKMPS
	 /5vYKW8dtqUzrPh8xPAAnWDgmzwi0e+a288TJ3WGB1A5J41iQJgy9dwodceX+rBpU+
	 ST7ddo5JzIqKw==
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BFA8385E36
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 04:50:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fBB6wpLQ";
	dkim-atps=neutral
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-856ec390e30so1262212241.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 01:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732528242; x=1733133042; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G6g+g0723+dR5oLrg5YBLloKB3cWClocn3FgLCvaeCM=;
        b=fBB6wpLQRPSb31Gs6570jZ/Gni+1nJJGYfmdME14pe5SPN6TPNPxqwaFNZfuQnol0e
         0AT2LY0LQnXW2rNdRa5biXfArdhLGLZNaGl04PCfRXlMcBuB5skOEUvYKPcjFYh8yf4f
         XQY+OE34/OHX0iirB7oXUgL08l8CZ0Ty1uqF1Erf6t5IGr/j9OyN8Ckog8j/J6i3F43w
         YIkEv4CuRnJv/4DZjOSnIZjla/o4lw17PDnai14oBA214YNjLOlGwdGdk3mKQPo5vhJw
         YPqnd6ntDs3DUySr3ol0qpR++xjPT8lSGmIuYNCNp/+E/pHsCBK09/RRjn5Jy13i+xl2
         VRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732528242; x=1733133042;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6g+g0723+dR5oLrg5YBLloKB3cWClocn3FgLCvaeCM=;
        b=hb/MMB6mWO8zmqdyDSAd01Ut2vIuAzPwbgbOnzD3yd1aSGLvIJi6BFIJiGuYFFF6IA
         ybPwL3ASGQKK/xgahDfB6vE/nyzrLpxGPKSgucj3+Qdlf3ccJyaerf/mrSXKDVnGITBH
         P4Yn2KN+6qZmJOQo1M4lAMDPBhFppCRUlWF0rPGpoMNfjv2bYZNyX/tcTbtVmMJO/omB
         Mk/FUP8Cw2oQlizh7oOI0cA8X67y6ZCy5Yl2qfeDKIiFhEhuXpOO812j6xHeRV/knJ5T
         xX7s/9gFDL8YFbZT0QnSw9H0Uo052ix2uzSU/s5+tHLYlbhVZAP4eHiXdJC0OPyBMVRf
         j+fw==
X-Gm-Message-State: AOJu0Yz+HnaDxkYddVNzyzCVO4mVFQrZgUnjDe/O4ySemeC6wooQgd+4
	0bHeyxBXPqjWML0mPBRZFVuEubhnx1TOZWbeFQnzflnZ5/udCleDWPRAdsN+V6f9wkKPrUHWRHh
	8PLlZ2TQB1+JxcfUZD0OBkddC6FwPKQ==
X-Gm-Gg: ASbGncsOAHb8DTdS/JGLeBYvcbtQ7GWkPxWzB9wyswJ1ywzpPQyc96RESPDsOAtxF+W
	9ajHx5qWOFn9zlssgaNJV0lv57FKFObw/
X-Google-Smtp-Source: AGHT+IG2oM+QTuit/+5j2WgwTP4zRyLb2+NQKs80/aCP+jwZ0zwCzXiXpj8RZAstsfbr9e3Ntv/b+H4IZWFzUj4CHwI=
X-Received: by 2002:a05:6102:304c:b0:4af:d36:9cfc with SMTP id
 ada2fe7eead31-4af0d369d59mr4869754137.22.1732528240246; Mon, 25 Nov 2024
 01:50:40 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9oPjRQ9oZXo=rxpfPKvLLDdRQPMJBboYnjAHws=Z+y0cw@mail.gmail.com>
 <dd37c751-cace-4053-a308-f7b1accc9859@gmail.com>
In-Reply-To: <dd37c751-cace-4053-a308-f7b1accc9859@gmail.com>
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Mon, 25 Nov 2024 10:50:29 +0100
Message-ID: <CAAc7u9pBw02ndHAP7CGah7s=uFMNO0VhC-AcgwUDJOpJUhsmeg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: G5OQR43L4H6EJHOHVSIMPPGQ4ZVWATSO
X-Message-ID-Hash: G5OQR43L4H6EJHOHVSIMPPGQ4ZVWATSO
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP sink with GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G5OQR43L4H6EJHOHVSIMPPGQ4ZVWATSO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0658210267195043321=="

--===============0658210267195043321==
Content-Type: multipart/alternative; boundary="00000000000052c74a0627b9aac9"

--00000000000052c74a0627b9aac9
Content-Type: text/plain; charset="UTF-8"

Hello Marcus,

thanks for your reply. I've fixed the root cause of the issue, which was
indeed that I was scheduling the commands way too much in advance.
I am generating a waveform and at each pulse I set a tag with the next
transmission time. I've however noticed that I need a few samples with
value 0 after a pulse, otherwise the pulse will be cut off before being
finished.
I've tried this with sample rates up to 56 MHz without issue now.

Best regards,

Tim Vancauwenbergh

Op di 19 nov 2024 om 17:28 schreef Marcus D. Leech <patchvonbraun@gmail.com
>:

> On 19/11/2024 11:02, Tim Vancauwenbergh wrote:
> > Dear,
> >
> > I am revisiting an issue I encountered earlier. I have a flow that
> > generates pulses with spaces between them continuously. To switch
> > between the RX and TX paths on a single antenna, I tried utilizing
> > GPIO to control an RF switch.
> >
> > Tests were conducted on a B210 and X310. Initially, I used GPIO tags
> > on a USRP sink, but this caused continuous underruns. A sample rate of
> > 4 MHz was used. I then switched to using bursts in combination with
> > ATR, but the issue persists. The USRP is unable to keep up, resulting
> > in significant underruns.
> >
> > My goal is to send pulses at specific times and have the GPIO state
> > follow accordingly. When sending 0s or no samples, the GPIO state
> > should be low; otherwise, it should be high.
> >
> > Could you advise on how to achieve this? I have attached my embedded
> > Python block code, which is positioned just before the USRP sink
> > block. This block adds the tags for the start and end of bursts and
> > handles the initial GPIO setup. For reference, I have also included
> > the manual GPIO control block.
> >
> > Thank you for your assistance.
> >
> >
> > Best regards,
> >
> > Tim Vancauwenbergh
> >
> Generally "U" underruns are caused by your *host computer* being unable
> to "keep up" with the USRP, NOT the other
>    way around.  The USRP internal performance is entirely deterministic.
> If you program it to take in 4Msps, it will
>    be able to do that forever.
>
> I'll note that Python blocks DO NOT PERFORM at the same performance
> level as C++ blocks.  By a significant margin.
>    I note that in one of your blocks, you're individually iterating
> through samples looking for some kind of trigger.
>    This is guaranteed to have very poor performance characteristics, and
> is unlikely to be able to "keep up" at anything
>    beyond perhaps 1Msps, but that will depend very much on your computer.
>
> Also, (and I don't know if this is your issue), you can't schedule timed
> buffers hugely in advance of when they will
>    actually get scheduled on the hardware--the hardware has very little
> buffering.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000052c74a0627b9aac9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Marcus,</div><div><br></div><div>thanks for you=
r reply. I&#39;ve fixed the root cause of the issue, which was indeed that =
I was scheduling the commands way too much in advance.<br></div><div>I am g=
enerating a waveform and at each pulse I set a tag with the next transmissi=
on time. I&#39;ve however noticed that I need a few samples with value 0 af=
ter a pulse, otherwise the pulse will be cut off before being finished.</di=
v><div>I&#39;ve tried this with sample rates up to 56 MHz without issue now=
.<br></div><div><br></div><div>Best regards,</div><div><br></div><div>Tim V=
ancauwenbergh<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">Op di 19 nov 2024 om 17:28 schreef Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 19/11/202=
4 11:02, Tim Vancauwenbergh wrote:<br>
&gt; Dear,<br>
&gt;<br>
&gt; I am revisiting an issue I encountered earlier. I have a flow that <br=
>
&gt; generates pulses with spaces between them continuously. To switch <br>
&gt; between the RX and TX paths on a single antenna, I tried utilizing <br=
>
&gt; GPIO to control an RF switch.<br>
&gt;<br>
&gt; Tests were conducted on a B210 and X310. Initially, I used GPIO tags <=
br>
&gt; on a USRP sink, but this caused continuous underruns. A sample rate of=
 <br>
&gt; 4 MHz was used. I then switched to using bursts in combination with <b=
r>
&gt; ATR, but the issue persists. The USRP is unable to keep up, resulting =
<br>
&gt; in significant underruns.<br>
&gt;<br>
&gt; My goal is to send pulses at specific times and have the GPIO state <b=
r>
&gt; follow accordingly. When sending 0s or no samples, the GPIO state <br>
&gt; should be low; otherwise, it should be high.<br>
&gt;<br>
&gt; Could you advise on how to achieve this? I have attached my embedded <=
br>
&gt; Python block code, which is positioned just before the USRP sink <br>
&gt; block. This block adds the tags for the start and end of bursts and <b=
r>
&gt; handles the initial GPIO setup. For reference, I have also included <b=
r>
&gt; the manual GPIO control block.<br>
&gt;<br>
&gt; Thank you for your assistance.<br>
&gt;<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Tim Vancauwenbergh<br>
&gt;<br>
Generally &quot;U&quot; underruns are caused by your *host computer* being =
unable <br>
to &quot;keep up&quot; with the USRP, NOT the other<br>
=C2=A0=C2=A0 way around.=C2=A0 The USRP internal performance is entirely de=
terministic. <br>
If you program it to take in 4Msps, it will<br>
=C2=A0=C2=A0 be able to do that forever.<br>
<br>
I&#39;ll note that Python blocks DO NOT PERFORM at the same performance <br=
>
level as C++ blocks.=C2=A0 By a significant margin.<br>
=C2=A0=C2=A0 I note that in one of your blocks, you&#39;re individually ite=
rating <br>
through samples looking for some kind of trigger.<br>
=C2=A0=C2=A0 This is guaranteed to have very poor performance characteristi=
cs, and <br>
is unlikely to be able to &quot;keep up&quot; at anything<br>
=C2=A0=C2=A0 beyond perhaps 1Msps, but that will depend very much on your c=
omputer.<br>
<br>
Also, (and I don&#39;t know if this is your issue), you can&#39;t schedule =
timed <br>
buffers hugely in advance of when they will<br>
=C2=A0=C2=A0 actually get scheduled on the hardware--the hardware has very =
little <br>
buffering.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000052c74a0627b9aac9--

--===============0658210267195043321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0658210267195043321==--
