Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D2681E8AF
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 18:17:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEE70380F59
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 12:17:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703611067; bh=1j4Bh6YHtV/CF19AL5X+FHQ41aI1QwVvNYBU2HVDPm0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BkdbnA9KcajcfY4grEn0pE2THuzJiN74Kx7juwKub0meVoq72PhGqXzclkUg34MUP
	 M58U4Igbtc2hs7+4Job0TgXuOBIrWNl66+c7UPMJmS5b1+2n0qjd6jZdNdXQutDquH
	 0Yf1zzJ5UTFRaX3bLigTsjEJvxPJD/IKHmaUPYnxqYo+YfCGjHw+pCbwlUJHjXAfYI
	 497SGHyi1Qw7mQvXSAZng8BIHIte7MVU8tMPG8ouuAB9c2xv5NCJGijiMQjCnMQoTT
	 fA+c6GSG3TQhXUYWIbUia8DwpH9UOinlMpgmC93KQ2qTW4EcvTbVAWlaJAxTUkGmv/
	 KWQMZdt0a7kkA==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 61E1A380EDD
	for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 12:17:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U6Tasvzr";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3368ae75082so2284186f8f.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 09:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703611039; x=1704215839; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aCdWn1wQ5eRz/BTIWR4bI9Rp3Ev/qq2HJ3fx61ysdeQ=;
        b=U6TasvzrpxpiwlN11lgO0J8VIGUh9rriTmYV/SvIgETcw7gfKy7JR+jk2giVfDORnY
         S2aRKwQrxYBfKK29HZ9egcMRteIPaoPkSWP3whwfhHUQIjLLAGL+5Vk2mcuEaMpdad8R
         NnxPHP+L+iq5kuzSmcN+tMJeiU0ZOkSTwj3jfHkipKVYfOfDv56De/zQbOsIdL+7Qwmf
         fDKisajigGovG5Tcrx2XWONmDZR/cUvLJPodmZjdFQkxwzo/ImC3u6yAoyssXFRpAufs
         KRnSJYVOcc9xAliVkP/lXuEZMlHPYyp9DJ1IM5S8JGwM0t9dHGYBEA1+L62TbMow7iAD
         8TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703611039; x=1704215839;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCdWn1wQ5eRz/BTIWR4bI9Rp3Ev/qq2HJ3fx61ysdeQ=;
        b=qSsIH8CSybzjCVQ2bnUeCBoAMq7yyVJ+0mGGoMy1m+Rl/mJCk9gvfBaFPutiHdqKBu
         RSnJsVEr48Q/MPYB0osWbm4K6oAigFnQ3uTv8m4yif1doWImqaalIThBvQIkJ8E+afs/
         hyAoJr2iD8skqn4lRPEZ9RiIwpK1DIcAzZ6S+PCSsnfqonFXDN66XyA9AwVd+d8N9pA1
         alfxC5fjg2o4P7/cda5pMn67MmoyR2ZBzV9NsKqf4jyVIg1HXCQtwlOMFCR3do6I3pGg
         4lKszT96V3rwneKJ8j8+Fsyf05RwBrL4ROPWTsf2mQb0OxMFBGI+1WEYtVLoNvQfeDIq
         elYw==
X-Gm-Message-State: AOJu0Ywk3Au+jKcZBfxhOQZKFUornrP9w85pomK9OKMdOLPzW6jTUAF2
	roGKsAZccr4eq1MEwPqpqfRjFfoAmkQDR9IIrUK5W0l9djgjX78P
X-Google-Smtp-Source: AGHT+IHe5CJSu5PaFnKQyWlwlFBdg6KWlTcAHowVzKQZF1c75uwide0Sz6gXtgCXIqotgO+mm2GrXHnPeP+o39vhMl4=
X-Received: by 2002:a05:600c:c84:b0:40d:5cea:71a7 with SMTP id
 fj4-20020a05600c0c8400b0040d5cea71a7mr73730wmb.50.1703611038786; Tue, 26 Dec
 2023 09:17:18 -0800 (PST)
MIME-Version: 1.0
References: <CAEtk-vVSDd-Z1dCHnkK7waNz_sZA+H0kw1=KfUZma3v+tt0o_g@mail.gmail.com>
 <6f64b040-17c9-465c-bb59-b413078b0063@gmail.com>
In-Reply-To: <6f64b040-17c9-465c-bb59-b413078b0063@gmail.com>
From: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?= <f.gallardo.lopez@gmail.com>
Date: Tue, 26 Dec 2023 18:17:07 +0100
Message-ID: <CAEtk-vVu13KZvEJjWDoh81HQsU2F4-pdH1bhj6CX=XEb_8nZ2Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UB5JU3UGELQI5DRDACOI2UFSWUOMBL3A
X-Message-ID-Hash: UB5JU3UGELQI5DRDACOI2UFSWUOMBL3A
X-MailFrom: f.gallardo.lopez@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strange interference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UB5JU3UGELQI5DRDACOI2UFSWUOMBL3A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7641032715355793522=="

--===============7641032715355793522==
Content-Type: multipart/alternative; boundary="000000000000cd67a5060d6cdac6"

--000000000000cd67a5060d6cdac6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks, I was actually looking for a simplified block diagram, more than
the schematics.

As per the get_rx_bandwidth. I checked, and it is 56MHz.

I was guessing that this was more or less the config (my sampling frequency
is actually 4MHz). Mainly because after sending the email this morning I
checked some MHz away from my working freq (but still inside of =C2=B116MHz=
) and
the RFI was actually there and coming into my processing chain via
subsampling.

Hence, it seems it is not the USRP, there is an actual RFI at the end of
the day coming into the USRP RF input.

I may reduce the bandwidth, though.

Thanks!
Fran


El mar, 26 dic 2023 a las 17:14, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 26/12/2023 06:43, Francisco Gallardo l=C3=B3pez wrote:
>
> Hi all,
>
> I am seeing a quite strange pattern in an USRP B210, and I am trying to
> figure out what it is.
>
> Right now this is more like an academic investigation, as this is not
> causing malfunctions, but it got my attention.
>
> So, from time to time I am seeing a tone (20dB above noise) appearing jus=
t
> in the middle of the band, to be precise =C2=B12KHz around the central fr=
equency
> that I configured in the USRP.
>
> I was not paying attention at all, until I noticed that it appears every
> day seven times a day, and always (more or less) at the same times. Hence=
,
> this is not random.
>
> Gut feeling is that this is caused by some sort of signal induced into th=
e
> cables or locally radiated interference, not intended, of course.
>
> I was trying to further investigate, and for that I was trying to get a
> detail blocks diagram of the B210, as I saw the following information in
> the B210 website: "If you, however, happen to have a very strong
> interferer within half the master clock rate of your RX LO frequency, you
> might want to reduce this analog bandwidth. You can do so by calling
> uhd::usrp::multi_usrp::set_rx_bandwidth(bw)." B200/B210/B200mini/B205mini
> - Ettus Knowledge Base
> <https://kb.ettus.com/B200/B210/B200mini/B205mini#FAQ>
>
> Now the thing is, I realized I don't really know what the internal
> settings of the USRP are, also in terms of the Analog Devices AD9363. I
> know that the clock rate is 32 MHz, but from there I don't clearly know
> what is the LO frequency that the USRP set.
>
> Also, I would like to know the setting that the USRP is using for the
> Analog bandwidth.
>
> In short, I would like to:
>
> a) Get a diagram like this one, but for the detailed case of B210. Is
> there something like this? (File:2920 simplified system diagram.gif -
> Ettus Knowledge Base
> <https://kb.ettus.com/File:2920_simplified_system_diagram.gif>)
> b) Know what is the LO freq that the USRP is setting (I assumed based on
> the 32MHz clock rate)
> c) Know where I can get the information on the setting the USRP is puttin=
g
> for the analog bandwidth filter.
>
> Thanks!
> Fran
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Francisco:
>
> There's the schematics here:
>
> https://files.ettus.com/schematics/b200/
>
> Nearly all SDRs use direct-conversion, which means the LO is the same as
> the desired RF frequency.  The B2xx series works like this.
>
> Bandwidth can be set with a set_rx_bandwidth call, formally described her=
e:
>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a4e02=
6819f286e69c48c2e1956d95c6fb
>
> Normally, UHD (the driver) will set the analog bandwidth to something
> "appropriate" given your sample rate.
>
> If you change to a slightly different frequency, does this occasional RFI
> stay at the same frequency?
>
> If you lower the RF gain, does it go away?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cd67a5060d6cdac6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks, I w=
as actually looking for a simplified=C2=A0block diagram, more than the sche=
matics.</div><div><br></div><div>As per the get_rx_bandwidth. I checked, an=
d it is 56MHz.=C2=A0</div><div><br></div><div>I was guessing that this was =
more or less the config (my sampling frequency is actually 4MHz). Mainly be=
cause after sending the email this morning I checked some MHz away from my =
working freq (but still inside of =C2=B116MHz) and the RFI was actually the=
re and coming into my processing chain via subsampling.=C2=A0</div><div><br=
></div><div>Hence, it seems it is not the USRP, there is an actual RFI at t=
he end of the day coming=C2=A0into the USRP RF input.</div><div><br></div><=
div>I may reduce the bandwidth, though.=C2=A0</div><div><br></div><div>Than=
ks!</div><div>Fran</div><div><br></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">El mar, 26 dic 2023 a las 17:1=
4, Marcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvon=
braun@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/12/2023 06:43, Francisco Gallardo
      l=C3=B3pez wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">Hi all,
                        <div><br>
                        </div>
                        <div>I am seeing=C2=A0a quite strange pattern in an
                          USRP B210, and I am trying to figure out what
                          it is.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>Right now this is more like an academic
                          investigation, as this is not causing
                          malfunctions, but it got my attention.</div>
                        <div><br>
                        </div>
                        <div>So, from time to time I am seeing a tone
                          (20dB above noise) appearing=C2=A0just in the
                          middle of the band, to be precise=C2=A0=C2=B12KHz=
 around
                          the central frequency that I configured in the
                          USRP.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>I was not paying attention at all, until I
                          noticed that it appears every day seven times
                          a day, and always (more or less) at the same
                          times. Hence, this is not random.</div>
                        <div><br>
                        </div>
                        <div>Gut feeling is that this is caused by some
                          sort of signal induced into the cables or
                          locally radiated interference, not intended,
                          of course.</div>
                        <div><br>
                        </div>
                        <div>I was trying to further=C2=A0investigate, and
                          for that I was trying to get a
                          detail=C2=A0blocks=C2=A0diagram of the B210, as I=
 saw
                          the following information in the B210 website:
                          &quot;<span style=3D"color:rgb(0,0,0);font-family=
:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-=
size:14px">If
                            you, however, happen to have a very strong
                            interferer within half the master clock rate
                            of your RX LO frequency, you might want to
                            reduce this analog bandwidth. You can do so
                            by calling
                            uhd::usrp::multi_usrp::set_rx_bandwidth(bw).</s=
pan>&quot;=C2=A0<a href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini=
#FAQ" target=3D"_blank">B200/B210/B200mini/B205mini
                            - Ettus Knowledge Base</a></div>
                        <div><br>
                        </div>
                        <div>Now the thing is, I realized I don&#39;t reall=
y
                          know what the internal settings of the USRP
                          are, also in terms of the Analog Devices
                          AD9363. I know that the=C2=A0clock rate is 32 MHz=
,
                          but from there I don&#39;t clearly know what is
                          the LO frequency that the USRP set.=C2=A0<br>
                        </div>
                        <div><br>
                        </div>
                        <div>Also, I would like to know the setting that
                          the USRP is using for the Analog bandwidth.=C2=A0=
</div>
                        <div><br>
                        </div>
                        <div>In short, I would like to:</div>
                        <div><br>
                        </div>
                        <div>a) Get a diagram like this one, but for the
                          detailed case of B210. Is there something like
                          this? (<a href=3D"https://kb.ettus.com/File:2920_=
simplified_system_diagram.gif" target=3D"_blank">File:2920 simplified
                            system diagram.gif - Ettus Knowledge Base</a>)<=
/div>
                        <div>b) Know what is the LO freq that the USRP
                          is setting (I assumed based on the 32MHz clock
                          rate)</div>
                        <div>c) Know where I can get the information on
                          the setting the USRP is putting for the analog
                          bandwidth filter.</div>
                        <div><br>
                        </div>
                        <div>Thanks!</div>
                        <div>Fran=C2=A0</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
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
    Francisco:<br>
    <br>
    There&#39;s the schematics here:<br>
    <br>
    <a href=3D"https://files.ettus.com/schematics/b200/" target=3D"_blank">=
https://files.ettus.com/schematics/b200/</a><br>
    <br>
    Nearly all SDRs use direct-conversion, which means the LO is the
    same as the desired RF frequency.=C2=A0 The B2xx series works like this=
.<br>
    <br>
    Bandwidth can be set with a set_rx_bandwidth call, formally
    described here:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.h=
tml#a4e026819f286e69c48c2e1956d95c6fb" target=3D"_blank">https://files.ettu=
s.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a4e026819f286e69c48c2e195=
6d95c6fb</a><br>
    <br>
    Normally, UHD (the driver) will set the analog bandwidth to
    something &quot;appropriate&quot; given your sample rate.<br>
    <br>
    If you change to a slightly different frequency, does this
    occasional RFI stay at the same frequency?<br>
    <br>
    If you lower the RF gain, does it go away?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cd67a5060d6cdac6--

--===============7641032715355793522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7641032715355793522==--
