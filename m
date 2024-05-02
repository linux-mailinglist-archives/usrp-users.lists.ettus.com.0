Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FA68B9B9C
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 15:27:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 534A638579A
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 09:27:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714656425; bh=vc8QvWatxzBA10jsnmwRU01gcWNZPshXSZemo/KEkGU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DG5/zjsqlStV1QDzuMkwD5xjCNN/mPmou94rpAgGHInpPWIkBfD9lJVwB3Zzrv9ri
	 K28/ffHfL5Trrb6M7FFBWkJnURM0PEw/kFIduqwG9hxneMyQN28ZuqzjOtRVu29vh/
	 3QS/54bTYPP+qbs4D183mQbSEBzdghZjvnUKmfsRCGkxe4r3QzIiJHkMEIkKPWqQLp
	 p+aajLlrYKSWCONpPJT8ijeLjAug9aQU4/fYBnbxwYUHYr/0eb+pllI5UqhN59i+Tm
	 6qfS9KJHLb9JfjpF+/vnDBHCJzuyE1+qOHUGGQcapmC+IJd8mspd1QCQQ88ijhhs9d
	 xGWmNkNYQKkjw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 52A0C3856DB
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 09:26:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fFHJyjSn";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a58fc650f8fso574197066b.1
        for <usrp-users@lists.ettus.com>; Thu, 02 May 2024 06:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714656388; x=1715261188; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p/5YV5szy4DzaKHQK+d/tjMZL25MVckOwhHAiI+LOBg=;
        b=fFHJyjSn98Z9WftEb70efvad8+/gZFKMcR24sV/UID3Otyhwn3SUbcGGU8s+3h780r
         q+kkHxuwkTEggES663KU/gJ5C5bHL36inRBCvqsTeu6ph3PUT8+jAHnO2tHghMIvngJ2
         ADFXzqiJjraH89Nte/fuucxrji9CN4VMeF9zalWlpoRSedDZi1zCFtzCI4JWL9LkCt1r
         yqL8k2jq0zD2w1XesC2kXacW60iRY3PRqO58z8Bvi8ximtIlhqW2YKy2Lu92nPiL3LB+
         UZe8vuiP2Fkb/ukVdTomtSOuklpU+oDPPnGB5bNvIJ/oAb4L/bj+KStB1lczrEyfwqrM
         cMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714656388; x=1715261188;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p/5YV5szy4DzaKHQK+d/tjMZL25MVckOwhHAiI+LOBg=;
        b=JBpHDKcorW7Wwyvc/JlfCuQMZe+OtI3xUEXw9pUTvccRFTA0nBL7gXohyhMB0nPK6u
         IrFUY3dhJVK0ZJwCByG7G6ZPkS0D9ThuHsBUHvp47fskQWaTYRPOk28ZcT411l9n1McN
         /fhqiM1hsLYFzqfqGwklOkY6QafjcuflqjfNVJT5Jjaz1qUb4phHnOqgD+A0EwGJHhVu
         Jl9KcrelkBxI9FTtOh1bUoLM9bmIvJ38xpWAe8tw1qainUpTz1MHreNJ1nH7voywKqC/
         nCTzQ/b9LkZNQ4QQB81G4Xe+RVnLx9774w13SGyCxnuuMstiPUdzmu5OgxEZymO7i4uk
         Mt6A==
X-Gm-Message-State: AOJu0YzbHiaZRpKjNkYHscyNHEXfGoRLpj5tTQlGORkTkuw+KIqPSC/d
	wk0It1H/co1PGLjZLJ/zmCTAqGljj5wx80ukpe2JYr881VkOttExINiqQ4WpahNs2TwjQ6NtnMz
	IaERSClAV1zZBgNFpj66C587qglUljQ==
X-Google-Smtp-Source: AGHT+IHzh+4f6rCu48CyAItDbaOBPP8ceJRYcPFEOg0ynu4pcOw3jirs7nPhiyp+kWm+GNka9BUlE5KI18s083ePkh4=
X-Received: by 2002:a17:906:19ca:b0:a58:871f:8eb0 with SMTP id
 h10-20020a17090619ca00b00a58871f8eb0mr4038767ejd.7.1714656387400; Thu, 02 May
 2024 06:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <rg_135JfFMqvTtC5sE6K7yKUL6MJLKmhinWi5RjjNnYPSMfbYjt6Pt9bgzpDhSC-ttGO7BYYZj4YH3y3luA5uROyruafHIjJSIoxmoOfteE=@protonmail.com>
 <ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FInF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=@protonmail.com>
 <a1e07aa1-99fe-4a58-b9e8-3dd4a7395804@gmail.com>
In-Reply-To: <a1e07aa1-99fe-4a58-b9e8-3dd4a7395804@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 2 May 2024 09:26:15 -0400
Message-ID: <CAEXYVK7YFtjRRXU9HOkBrn1PePENoRBSqZh3z2K2Me-02+Qkxw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 3XFUOMGI5RGHMZEKGTPPFJYVWADXQIWF
X-Message-ID-Hash: 3XFUOMGI5RGHMZEKGTPPFJYVWADXQIWF
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Quick question about tuning USRP B210 for sweep spectrum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3XFUOMGI5RGHMZEKGTPPFJYVWADXQIWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3337804209497601522=="

--===============3337804209497601522==
Content-Type: multipart/alternative; boundary="000000000000e20cb10617788c19"

--000000000000e20cb10617788c19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Something to note regarding the TwinRX is that changing frequency on one
channel has an effect on the other channel of the same card.  I ran into
this a few years ago and never found a resolution.

My goal was to sweep with one channel and stare with the other.  The
staring channel had too many artifacts from the sweeping channel to be
useful for my application.

Also, the TwinRX is pretty flat for around 80 MHz of BW.

Brian

On Thu, May 2, 2024 at 8:41=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 02/05/2024 08:25, Olo via USRP-users wrote:
>
> I got 8GHz info from:
> https://www.rtl-sdr.com/hackrf-sweep-spectrum-analyzer-windows/
>
> I want to express my gratitude for your prompt responses and assistance
> thus far. Your support has been valuable.
>
> However, I have a specific query regarding optimizing performance for a
> particular goal. In the GitHub repository under
> *uhd/host/examples/twinrx_freq_hopping.cpp*, you mentioned the importance
> of directly setting the LO frequency for better performance. Additionally=
,
> you described a method of accessing the LO wherein one LO is set for
> transmission while another operates for reception simultaneously. Is this
> recommended way to make sweep spectrum (with x310)?
>
> I didn't write twinrx_freq_hopping.cpp, and furthermore, it has no
> transmit capability at all.
>
> I'm curious if there are more such techniques or tricks to achieve optima=
l
> performance.
> Thank you once again for your attention to this matter.
>
> Given that the X310 supports 2 TwinRX cards, that could give you up to
> 200MHz of instantaneous bandwidth if each channel
>   (2 channels per TwinRX) is delivering 50Mhz of bandwidth.  With
> 5msec/hop (as shown in twinrx_freq_hopping), that's
>   40GHz/second.
>
>
>
> Olo
>
> On Wednesday, May 1st, 2024 at 20:42, Olo via USRP-users
> <usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com> wrote:
>
> Would it be possible, with the USRP X310 with TwinRX (or two TwinRX
> units), to achieve the mentioned goal? If so, could you please explain th=
e
> approach to accomplish this? Thank you.
>
> On Tuesday, April 30th, 2024 at 9:20, Olo <olo1618@protonmail.com>
> <olo1618@protonmail.com> wrote:
>
> Hi there,
>
> I'm USRP B210 for a project. I'm trying to make a sweep spectrum analyzer
> that scans frequencies quickly. Currently, I'm tuning frequencies like th=
is
> (which is I think the main issue):
>
> tune_request =3D uhd.types.TuneRequest(self.steps[self.i], 1.0)result =3D=
 self.usrp_device.set_rx_freq(tune_request, self.rx_info.ch)
> I'm programming it in PyQt, and I've created a stream like this:
>
> self.stream_cmd_start =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_do=
ne).
>
> (Because I've noticed that for a continuous stream, it takes eternity to =
retune.)
>
> Do you have any tips on how to do this faster? Any advice or code example=
s would be really helpful.
>
>
> Thanks a lot,
>
> Olo.
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e20cb10617788c19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Something to note regarding the TwinRX is that changing fr=
equency on one channel has an effect on the other channel of the same card.=
=C2=A0 I ran into this a few years ago and never found a resolution.<div><b=
r></div><div>My goal was to sweep with one channel and stare with the other=
.=C2=A0 The staring channel had too many artifacts from the sweeping channe=
l to=C2=A0be useful for my application.</div><div><br></div><div>Also, the=
=C2=A0TwinRX is pretty flat for around 80 MHz of BW.</div><div><br></div><d=
iv>Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 2, 2024 at 8:41=E2=80=AFAM Marcus D. Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 02/05/2024 08:25, Olo via USRP-users
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Arial,sans-serif;font-size:14px"><span>I
          got 8GHz info from:<br>
          <a rel=3D"noreferrer nofollow noopener" href=3D"https://www.rtl-s=
dr.com/hackrf-sweep-spectrum-analyzer-windows/" target=3D"_blank">https://w=
ww.rtl-sdr.com/hackrf-sweep-spectrum-analyzer-windows/</a></span><br>
      </div>
      <div style=3D"font-family:Arial,sans-serif;font-size:14px"><br>
      </div>
      <div style=3D"font-family:Arial,sans-serif;font-size:14px">
      </div>
      <div><span style=3D"font-family:Arial,sans-serif;font-size:14px;line-=
height:normal;font-weight:400;display:inline">I
          want to express my gratitude for your prompt responses and
          assistance thus far. Your support has been valuable.
        </span><br>
        <p style=3D"border:0px solid rgb(227,227,227);box-sizing:border-box=
;margin:1.25em 0px"><span style=3D"font-family:Arial,sans-serif;font-size:1=
4px;line-height:normal;font-weight:400">However,
            I have a specific query regarding optimizing performance for
            a particular goal. In the GitHub repository under </span><font =
face=3D"S=C3=B6hne Mono, Monaco, Andale Mono, Ubuntu Mono, monospace"><span=
 style=3D"border-style:solid;border-color:rgb(227,227,227);box-sizing:borde=
r-box;font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-w=
eight:400"><b style=3D"line-height:normal;font-weight:400">uhd/host/example=
s/twinrx_freq_hopping.cpp</b></span></font><span style=3D"font-family:Arial=
,sans-serif;font-size:14px;line-height:normal;font-weight:400">,
            you mentioned the importance of directly setting the LO
            frequency for better performance. Additionally, you
            described a method of accessing the LO wherein one LO is set
            for transmission while another operates for reception
            simultaneously.=C2=A0<span>Is this recommended</span>=C2=A0way =
to make
            sweep spectrum (with x310)? <br>
          </span></p>
      </div>
    </blockquote>
    I didn&#39;t write twinrx_freq_hopping.cpp, and furthermore, it has no
    transmit capability at all.<br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p style=3D"border:0px solid rgb(227,227,227);box-sizing:border-box=
;margin:1.25em 0px"><span style=3D"line-height:normal"><font face=3D"Arial,=
 sans-serif">I&#39;m
              curious if there are more such techniques or tricks to
              achieve optimal performance.</font><br>
            <span style=3D"font-family:Arial,sans-serif;font-size:14px;font=
-weight:400;display:inline">Thank
              you once again for your attention to this matter.<br>
            </span></span></p>
      </div>
    </blockquote>
    Given that the X310 supports 2 TwinRX cards, that could give you up
    to 200MHz of instantaneous bandwidth if each channel<br>
    =C2=A0 (2 channels per TwinRX) is delivering 50Mhz of bandwidth.=C2=A0 =
With
    5msec/hop (as shown in twinrx_freq_hopping), that&#39;s<br>
    =C2=A0 40GHz/second.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p style=3D"border:0px solid rgb(227,227,227);box-sizing:border-box=
;margin:1.25em 0px"><span style=3D"line-height:normal"><br>
            Olo</span></p>
        <br>
      </div>
      <div> On Wednesday, May 1st, 2024 at
        20:42, Olo via USRP-users <a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">&lt;usrp-users@lists.ettus.com&gt;</a>
        wrote:<br>
        <blockquote type=3D"cite">
          <div style=3D"font-family:Arial,sans-serif;font-size:14px"><span>=
Would
              it be possible, with the USRP X310 with TwinRX (or two
              TwinRX units), to achieve the mentioned goal? If so, could
              you please explain the approach to accomplish this? Thank
              you.</span><br>
          </div>
          <div style=3D"font-family:Arial,sans-serif;font-size:14px"><br>
          </div>
          <div> On Tuesday, April 30th, 2024 at
            9:20, Olo <a href=3D"mailto:olo1618@protonmail.com" target=3D"_=
blank">&lt;olo1618@protonmail.com&gt;</a> wrote:<br>
            <blockquote type=3D"cite">
              <div>
                <p style=3D"border:0px solid rgb(227,227,227);box-sizing:bo=
rder-box;margin:1.25em 0px"><span style=3D"font-family:Arial,sans-serif;fon=
t-size:14px;line-height:normal;font-weight:400">Hi
                    there,</span></p>
                <p style=3D"border:0px solid rgb(227,227,227);box-sizing:bo=
rder-box;margin:1.25em 0px"><span style=3D"font-family:Arial,sans-serif;fon=
t-size:14px;line-height:normal;font-weight:400">I&#39;m
                    USRP B210 for a project. I&#39;m trying to make a sweep
                    spectrum analyzer that scans frequencies quickly.
                    Currently, I&#39;m tuning frequencies like this (which
                    is I think the main issue):</span></p>
                <div>
                  <pre><span style=3D"font-family:Arial,sans-serif;font-siz=
e:14px;line-height:normal;font-weight:400">tune_request </span><span style=
=3D"font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-wei=
ght:400">=3D </span><span style=3D"font-family:Arial,sans-serif;font-size:1=
4px;line-height:normal;font-weight:400">uhd.types.</span><span style=3D"fon=
t-family:Arial,sans-serif;font-size:14px;line-height:normal;font-weight:400=
">TuneRequest</span><span style=3D"font-family:Arial,sans-serif;font-size:1=
4px;line-height:normal;font-weight:400">(</span><span style=3D"font-family:=
Arial,sans-serif;font-size:14px;line-height:normal;font-weight:400">self</s=
pan><span style=3D"font-family:Arial,sans-serif;font-size:14px;line-height:=
normal;font-weight:400">.steps</span><span style=3D"font-family:Arial,sans-=
serif;font-size:14px;line-height:normal;font-weight:400">[</span><span styl=
e=3D"font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-we=
ight:400">self</span><span style=3D"font-family:Arial,sans-serif;font-size:=
14px;line-height:normal;font-weight:400">.i</span><span style=3D"font-famil=
y:Arial,sans-serif;font-size:14px;line-height:normal;font-weight:400">]</sp=
an><span style=3D"font-family:Arial,sans-serif;font-size:14px;line-height:n=
ormal;font-weight:400">, </span><span style=3D"font-family:Arial,sans-serif=
;font-size:14px;line-height:normal;font-weight:400">1.0</span><span style=
=3D"font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-wei=
ght:400">)</span>
<span style=3D"font-family:Arial,sans-serif;font-size:14px;line-height:norm=
al;font-weight:400">result </span><span style=3D"font-family:Arial,sans-ser=
if;font-size:14px;line-height:normal;font-weight:400">=3D </span><span styl=
e=3D"font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-we=
ight:400">self</span><span style=3D"font-family:Arial,sans-serif;font-size:=
14px;line-height:normal;font-weight:400">.usrp_device.</span><span style=3D=
"font-family:Arial,sans-serif;font-size:14px;line-height:normal;font-weight=
:400">set_rx_freq</span><span style=3D"font-family:Arial,sans-serif;font-si=
ze:14px;line-height:normal;font-weight:400">(</span><span style=3D"font-fam=
ily:Arial,sans-serif;font-size:14px;line-height:normal;font-weight:400">tun=
e_request</span><span style=3D"font-family:Arial,sans-serif;font-size:14px;=
line-height:normal;font-weight:400">, </span><span style=3D"font-family:Ari=
al,sans-serif;font-size:14px;line-height:normal;font-weight:400">self</span=
><span style=3D"font-family:Arial,sans-serif;font-size:14px;line-height:nor=
mal;font-weight:400">.<a href=3D"http://rx_info.ch" target=3D"_blank">rx_in=
fo.ch</a></span><span style=3D"line-height:normal"><font face=3D"Arial, san=
s-serif">)

</font><span style=3D"font-family:Arial,sans-serif;font-size:14px;font-weig=
ht:400;display:inline">I&#39;m programming it in PyQt, and I&#39;ve created=
 a stream like this: </span></span></pre>
                  <pre><span style=3D"line-height:normal"><span style=3D"bo=
rder-style:solid;border-color:rgb(227,227,227);box-sizing:border-box;font-f=
amily:Arial,sans-serif;font-size:14px;font-weight:400">self.stream_cmd_star=
t =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)</span><span style=
=3D"font-family:Arial,sans-serif;font-size:14px;font-weight:400;display:inl=
ine">. </span></span></pre>
                  <pre><span style=3D"line-height:normal"><span style=3D"fo=
nt-family:Arial,sans-serif;font-size:14px;font-weight:400;display:inline">(=
Because <span>I&#39;ve noticed that for a continuous stream, it takes etern=
ity to retune.)</span></span></span></pre>
                  <pre><span style=3D"line-height:normal"><span style=3D"fo=
nt-family:Arial,sans-serif;font-size:14px;font-weight:400;display:inline">D=
o you have any tips on how to do this faster? Any advice or code examples w=
ould be really helpful.</span>
</span></pre>
                </div>
                <span style=3D"font-family:Arial,sans-serif;font-size:14px;=
line-height:normal;font-weight:400;display:inline">
                  <div><span style=3D"font-family:Arial,sans-serif;font-siz=
e:14px;line-height:normal;font-weight:400;display:inline"><br>
                    </span></div>
                  Thanks a lot,<br>
                </span><br>
                Olo.</div>
              <div style=3D"font-family:Arial,sans-serif;font-size:14px"><b=
r>
              </div>
              <div style=3D"font-family:Arial,sans-serif;font-size:14px">
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
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
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e20cb10617788c19--

--===============3337804209497601522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3337804209497601522==--
