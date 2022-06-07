Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6809D5407F6
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 19:53:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41D3D3841E7
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 13:53:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654624397; bh=MZcleiB5kACVJMTReBIVV53JK4N1H3lL9vXgkaENdcA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MbidtVnG19pcf8frLvZL9s/8P25jjcBGf8Sab5Z2xn8DtlXplarD08sRbHzvPl0FR
	 Q85jOJ/7IxqgPLrPeqY+cbbl95xiCeGnJqCPKb3pPQaOOoo8OsUDo1Ysu51doq6tl9
	 kza+JsmW9I7/8xKpvlFJGYyNyhxIeIlNnHsjffr8UnHqt38+ZEJS5NXDI1b31bPPTR
	 bAp5EqLWgcqono8ixWvllx4CBaKK+IciObdZlmdtPoIZl6KoOVSUdwj3ii9mILWA/d
	 74zdUm1yDXt+qtPltgsvR8RSRtU4PBqnwsQkY5U+iLhuVTvMpeLjLcDE35UAZQ6OS2
	 QVm18WbT9XK1Q==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AB6A383AB1
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 13:52:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="hMnj0AoW";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id f34so32378324ybj.6
        for <usrp-users@lists.ettus.com>; Tue, 07 Jun 2022 10:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vwu21NQRSDvDJO+vaTAwFacVev5ukhdiUAPsC4jz9og=;
        b=hMnj0AoWVuoNdWctDzpQ4F/v55kwNYbiCOGmxlgCmQZdElATAwcZuC8eHqKdRMox1z
         4BRqhDHh5354uz1jqhloT46EuTpf1Icbxm0Za97jIrXyWpKhiGelcWZX9JoohHNvgeGb
         Us8ydjFpFlTIjZgX0IIzxYePOnoMJ7un3CilaUtz/lOs01LN27NxH7DLPafjcZrRuFQ8
         KWBvYQcBqk3VgVA8xTqAJCNXtCn7A8KDeXMipBgHRBW/Emikf1eBh1x872XaXpu2akzy
         wzpnfQa+cSgptUS156UgK9B/Q0TvAliXu5SqhjHTnBS7+DYVdgn9j+a5Jzs+dXhgNfUC
         O3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vwu21NQRSDvDJO+vaTAwFacVev5ukhdiUAPsC4jz9og=;
        b=JYxwnpSigde5pMiTQn01VOioo6WyQ/SaKezqKn9Wg75dOKGXb/FQvlx+rgGZUX8SPH
         En9MuZ7F1GFnHrIHM0C/9PUFsBqa2AKb28FvNP1m8Cl5ggRqkxVRLZJR7dsjLrhTIIk8
         QM2Wt0kwCpRJbX7OSLDj8qk9sL+ytEgt4CSRqdOwaU6XDNcx8Zi6ukcACAMAmdltYekD
         vByJpijboCKrg6FyJwfEEM+CYW5SBpv9P4Jvat11wRcVUjILF/modRBRVouNi4eKVh3P
         IiGROZ2O67NYnddnbfHVbaJgvYF/T8oSNmg45shE5oeiGKB5HaWvphOVKAOecy9nny1L
         ux8g==
X-Gm-Message-State: AOAM532aqe/8yfeonsGNisgJU2bhzcXfkjtbn9BIt2XX3CmOlULWe/Wo
	wmzJ+xwsGJ2RAiWrbNg9zNRaomW4n14HKDMs9Mynn1TTJrPpRZg2
X-Google-Smtp-Source: ABdhPJxCOHPJrIXrol1FXrc+Ht8Lwbf+lMnV4OdVrbWExFNhZugQZG88nIpznBRWLflQi7xhCUvQouJ9221zl4GM9PY=
X-Received: by 2002:a25:d987:0:b0:65d:1ebd:30ff with SMTP id
 q129-20020a25d987000000b0065d1ebd30ffmr30046790ybg.99.1654624335547; Tue, 07
 Jun 2022 10:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA@lists.ettus.com> <3d13e506-9856-20ec-3426-f88efd660b37@gmail.com>
In-Reply-To: <3d13e506-9856-20ec-3426-f88efd660b37@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 7 Jun 2022 12:52:00 -0500
Message-ID: <CAFche=hejgkO4eD+yos67WY1Upa1EY8bghAcPrm2_aF5utoWUQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GFS66GF3DR5LD2URH4YNJITHAQXJ7YXE
X-Message-ID-Hash: GFS66GF3DR5LD2URH4YNJITHAQXJ7YXE
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GFS66GF3DR5LD2URH4YNJITHAQXJ7YXE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2674952712805765158=="

--===============2674952712805765158==
Content-Type: multipart/alternative; boundary="000000000000c1e67005e0df3f07"

--000000000000c1e67005e0df3f07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, here's the location for 3.13. In this case it's a log2 number again,
so 8 means 256 words deep, 9 means 512 words deep, etc.

https://github.com/EttusResearch/fpga/blob/UHD-3.13/usrp3/lib/radio/noc_blo=
ck_radio_core.v#L60

Wade


On Tue, Jun 7, 2022 at 10:28 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-06-07 11:24, ri28856@mit.edu wrote:
>
> Wade Fife wrote:
>
> I'm not very familiar with how those tune commands get translated into
> register transactions, but one thought I had is that it may also be issui=
ng
> timed commands to the radio. If so, you also might need to make the radio=
's
> control FIFO deeper by updating the "512" number to the depth you need. I=
t
> should be a power of 2, so I would try 1024 or 2048, etc. It needs to be
> updated in two places to the same value:
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f=
68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L=
148
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f=
68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L=
195
>
> Wade
>
> I=E2=80=99m using UHD 3.13 because I work in an airgapped environment and=
 I
> haven=E2=80=99t had time to upgrade. It appears noc_shell_radio.v was add=
ed around
> UHD 4.0, is there a 3.0 equivalent?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> The other thing to consider is that once the RF synthesizer is on
> frequency, if you set the rf_freq_policy to NONE, that will prevent it fr=
om
> touching the synthesizer tuning at all.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c1e67005e0df3f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry, here&#39;s the location for 3.13. In this case=
 it&#39;s a log2 number again, so 8 means 256 words deep, 9 means 512 words=
 deep, etc.<br></div><div><br></div><div><a href=3D"https://github.com/Ettu=
sResearch/fpga/blob/UHD-3.13/usrp3/lib/radio/noc_block_radio_core.v#L60">ht=
tps://github.com/EttusResearch/fpga/blob/UHD-3.13/usrp3/lib/radio/noc_block=
_radio_core.v#L60</a></div><div><br></div><div>Wade</div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Jun 7, 2022 at 10:28 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-06-07 11:24, <a href=3D"mailto:ri28856@mit.edu" target=3D"=
_blank">ri28856@mit.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Wade Fife wrote:</p>
      <blockquote>
        <p>I&#39;m not very familiar with how those tune commands get
          translated into
          register transactions, but one thought I had is that it may
          also be issuing
          timed commands to the radio. If so, you also might need to
          make the radio&#39;s
          control FIFO deeper by updating the &quot;512&quot; number to the=
 depth
          you need. It
          should be a power of 2, so I would try 1024 or 2048, etc. It
          needs to be
          updated in two places to the same value:</p>
        <p><a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ff=
c21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio=
/noc_shell_radio.v#L148" target=3D"_blank">https://github.com/EttusResearch=
/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_radio/noc_shell_radio.v#L148</a></p>
        <p><a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ff=
c21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio=
/noc_shell_radio.v#L195" target=3D"_blank">https://github.com/EttusResearch=
/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/blo=
cks/rfnoc_block_radio/noc_shell_radio.v#L195</a></p>
        <p>Wade</p>
      </blockquote>
      <p>I=E2=80=99m using UHD 3.13 because I work in an airgapped environm=
ent
        and I haven=E2=80=99t had time to upgrade. It appears noc_shell_rad=
io.v
        was added around UHD 4.0, is there a 3.0 equivalent?</p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    The other thing to consider is that once the RF synthesizer is on
    frequency, if you set the rf_freq_policy to NONE, that will prevent
    it from touching the synthesizer tuning at all.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c1e67005e0df3f07--

--===============2674952712805765158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2674952712805765158==--
