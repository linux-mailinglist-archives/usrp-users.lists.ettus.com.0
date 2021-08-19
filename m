Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9BF3F222E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 23:19:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF2A33845C4
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 17:19:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jmY5w0gl";
	dkim-atps=neutral
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DBD4383F22
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 17:18:36 -0400 (EDT)
Received: by mail-ot1-f52.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso10373093ott.13
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 14:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0qZelqBqVM1lERQKR7mfJ7j9rb5gkhluKaI6tkfnJJ0=;
        b=jmY5w0glroq+mXoHqKmn46bJ2xwI9ow0ET6mvIIN7x6tij8VZigM49I25jgqwtZfV4
         CQrncKvQnCzgBlZqV6CJ8HIfO4P8xAhZF1hKxyjGy94eZtCa9hQ+Xe93yMUhv67Ge89p
         cXIM8chtjmvq0ukBi7jCT3EMYeNqhb8jlh2xZKC6PAtUPE1tGOdJjx5/oURtXutkTVDn
         TKge1DgxxJuM+TeMuxIIUDfvak/isNh8mtFPIcNKMKGItBfceXFxFxcsJRitpYW6B4zo
         IggxKXNig9aOCZcPMjQGlgwbmDHjqoevH5F+G/gn0dNZFWJSMazNUmHVORvfibf2j8D3
         +EFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0qZelqBqVM1lERQKR7mfJ7j9rb5gkhluKaI6tkfnJJ0=;
        b=SJVe/zmIX1ER0DlUlUAU86W7oEamjGnuYhhCcOxTJlXVcEuiIa1gjkkqNxqEBOHGAe
         IFe3tcfB0O6NZF00X32MHR4dX3s37R9LF8D2Vz6sXukh4fTVJxWuog+k5ACVXhw37ZjV
         vQC396FUWK3P8DRWAKrE+ylre+Czqg1vmbZnrOk/l+vtvNHdux8l1n9UY+28zwASvZ9p
         ltbLsgqtfz9vLM3LCPfzBWuqIHL60Zr3B2cVudFvBhKz5YaXJ9WML2nrwoe7faRzwyGa
         01AUFBMwLdS5HcxUZh2m3T3aywrL/Bm+jIy7L8x8QK2SvmgvK5qUnEzIFWKkM1bXEkV7
         4KVA==
X-Gm-Message-State: AOAM530L31fAkQ8u8cdT/uiRAs93BiYXV6q6cSoI64+P3IUPvxZ6n0zO
	snG/ppiPGgw/nPzTqfUIcHiGW8ceuZycMDE3bEiUiQ==
X-Google-Smtp-Source: ABdhPJxzbDe3fnP9oKRwPdU6DxIZ9vphaUVWYZu/VREpmofFsSv0dYe7Oo7qEwUt0ooFRkaC/Zc6ixZ1cvp42jzqYuo=
X-Received: by 2002:a9d:6945:: with SMTP id p5mr13537109oto.301.1629407915584;
 Thu, 19 Aug 2021 14:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAGu8PGz9RQWE+DTY8ZP1BmWY3ynyrO3P+56w+0ZSOvF5-DNBzQ@mail.gmail.com>
In-Reply-To: <CAGu8PGz9RQWE+DTY8ZP1BmWY3ynyrO3P+56w+0ZSOvF5-DNBzQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 19 Aug 2021 17:18:24 -0400
Message-ID: <CAB__hTS8Jb5Xnb=FJsr_=PgCQzWoQ-SiVi1jagMF7PQBURj4yg@mail.gmail.com>
To: Sunny Sam <sunny04sam@gmail.com>
Message-ID-Hash: WG46FTIOXWUHQQ5SCLXSTRDEZFKVVUD3
X-Message-ID-Hash: WG46FTIOXWUHQQ5SCLXSTRDEZFKVVUD3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP scheduling multiple receive with multiple time_spec without waiting for the rx_streamer.recv blocking call to return
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WG46FTIOXWUHQQ5SCLXSTRDEZFKVVUD3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7937272344621331271=="

--===============7937272344621331271==
Content-Type: multipart/alternative; boundary="00000000000001531405c9f018ea"

--00000000000001531405c9f018ea
Content-Type: text/plain; charset="UTF-8"

Hi Sunny,
I have never tried this, but I'm wondering if you can send multiple
rx_streamer->issue_stream_cmd() prior to calling the first
rx_streamer->recv()?  Or, a similar idea of separating the
issue_stream_cmd() into a separate thread from the recv()?
Rob

On Wed, Aug 18, 2021 at 11:34 AM Sunny Sam <sunny04sam@gmail.com> wrote:

> Hello,
>
> I want to be able to schedule multiple timed receives without waiting for
> the rx_streamer blocking call to schedule the next receive. When the time
> difference between two consecutive rx_streamer->recv() calls is below
> around 400 microseconds, the  time_spec for the second call sometimes will
> be in the past because of the latency of the first blocking call
> for lower sample rates. Is there a way to schedule multiple receives in
> advance to avoid this issue? I included a sample code below. The
> next_rx_time is configured to make sure rx has enough time to collect the
> number of samples specified in num_rx_samples based on the radio sample
> rate. I am using X310.
>
> For tx, the buffer and the time to send is issued with the
> tx_streamer.send() call. But for rx, the time to receive has to be set
> first with issue_stream_cmd before calling the rx_streamer.recv(). Why is
> this implemented this way for rx?
>
> uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.stream_now = false;
> stream_cmd.num_samps = num_rx_samples;
> stream_cmd.time_spec = uhd::time_spec_t(rx_time_spec);
> rx_streamer->issue_stream_cmd(stream_cmd);
>
> while (1)
> {
>    rx_streamer->recv(&buff.front(),  num_rx_samples , md, 1.0);
>    ....
>    //schedule the next recv
>    rx_time_spec += next_rx_time;
>    stream_cmd.time_spec = uhd::time_spec_t(rx_time_spec);
>    stream_cmd.stream_now = false;
>    stream_cmd.num_samps =  num_rx_samples;
>    rx_streamer->issue_stream_cmd(stream_cmd);
> }
>
> Thank you in advance for your help.
>
> Sunny
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000001531405c9f018ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sunny,<div>I have never tried this, but I&#39;m wonderi=
ng if you can send multiple rx_streamer-&gt;issue_stream_cmd() prior to cal=
ling the first rx_streamer-&gt;recv()?=C2=A0 Or, a similar idea of separati=
ng the issue_stream_cmd() into a separate thread from the recv()?=C2=A0</di=
v><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Aug 18, 2021 at 11:34 AM Sunny Sam &lt;<a href=3D"m=
ailto:sunny04sam@gmail.com">sunny04sam@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello=
,=C2=A0</div><div><br></div><div>I want to be able to schedule multiple tim=
ed receives without waiting for the rx_streamer blocking call to schedule t=
he next receive. When the time difference=C2=A0between two consecutive rx_s=
treamer-&gt;recv() calls is below around 400 microseconds, the=C2=A0

time_spec=C2=A0for the second call sometimes will be in the past because of=
 the latency of the first blocking call for=C2=A0lower=C2=A0sample rates. I=
s there a way to schedule=C2=A0multiple receives in advance=C2=A0to avoid t=
his issue? I included a sample code below. The next_rx_time is configured=
=C2=A0to make sure rx has enough time to collect the number of samples spec=
ified=C2=A0in num_rx_samples based on the radio sample rate. I am using X31=
0.</div><div><br></div><div>For tx, the buffer and the time to send is issu=
ed with the tx_streamer.send() call. But for rx, the time to receive has to=
 be set first with issue_stream_cmd before calling the rx_streamer.recv(). =
Why is this implemented this way for rx?=C2=A0<br></div><div><br></div><div=
>uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_=
DONE);<br>stream_cmd.stream_now =3D false;<br>stream_cmd.num_samps =3D num_=
rx_samples;=C2=A0</div><div>stream_cmd.time_spec =3D uhd::time_spec_t(rx_ti=
me_spec);<br>rx_streamer-&gt;issue_stream_cmd(stream_cmd);<br></div><div><b=
r></div><div>while (1)</div><div>{</div><div>=C2=A0 =C2=A0rx_streamer-&gt;r=
ecv(&amp;buff.front(),=C2=A0

num_rx_samples=C2=A0, md, 1.0);=C2=A0</div><div>=C2=A0 =C2=A0....</div><div=
>=C2=A0 =C2=A0//schedule the next recv<br>=C2=A0 =C2=A0rx_time_spec +=3D ne=
xt_rx_time;<br>=C2=A0 =C2=A0stream_cmd.time_spec =3D uhd::time_spec_t(rx_ti=
me_spec);<br>=C2=A0 =C2=A0stream_cmd.stream_now =3D false;<br></div><div>=
=C2=A0 =C2=A0stream_cmd.num_samps =3D=C2=A0

num_rx_samples;=C2=A0<br></div><div>=C2=A0 =C2=A0rx_streamer-&gt;issue_stre=
am_cmd(stream_cmd);<br></div><div>}</div><div><br></div><div>Thank you in a=
dvance for your help.=C2=A0</div><div><br></div><div>Sunny</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000001531405c9f018ea--

--===============7937272344621331271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7937272344621331271==--
