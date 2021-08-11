Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB9C3E8A96
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 08:52:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2FF838429C
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 02:52:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lwYvH6Y3";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 20D9A383FDD
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 02:51:41 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id t68so1277158qkf.8
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 23:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Nqif2ShcIbF7jk1Duopsd71bK/eruoAqx3n8ZW1ZoCY=;
        b=lwYvH6Y3d1bJ4Cp+JrCpyLcvHtWz0LgS3Ll4i2RYf4jts3oKguRKjjp+G9hrDbfpLb
         s4H2KmJg1Iw0+Mpku4uPOL0aBYnFMCgiWfraufcF2pevgM8WSLTt2FPRQApq0nTVh47b
         sXqibcT2AepFNgN8468N0Ntby/6yiLdlEYjMZfyYORbMpu+yfPRqGJg1m2kumazrt3gk
         ug5i/XoIUbcoqa9ypLchVK/lKmP8M2JJK0qLnq/ePvj6yo5949IyPfVYu6mHhSIxMBh1
         56kHcB/wA35omfIT7PlXMaRyGo8YQhJKfzXitdqckL1i3PdYdKPLCCirtcsV0Uc0U3WW
         NTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Nqif2ShcIbF7jk1Duopsd71bK/eruoAqx3n8ZW1ZoCY=;
        b=ThH2dHp3fik7VXv7ScFL/cK93RVIsK5P48CaSUaAoFIBso5ReO/qaeuT8tokSZBocn
         k+QRVDBarK6AVbr+Rnb2qrHlswidrCWvptIAJyKMd/iPdXbfsAx3HTycV4cZ6VeIhh4F
         CtZxmx4JEdYOvt39AcYSjqaXp8loWFa7vqbmN+iJJj3Di9NROxWN7b/0kS7PUDUHiHL5
         T1xyLqtKu2hKS3TmTKpphIe37hhIaT56UuQ54EpZ7jhiqhewrqoTlC7TTBZL7zsiR7oT
         KBAUu8OWpAlCBehGBjnALjEnw6yjb5LJvDFltJW9LixcJjU5CnN7qNTXnHV1tIxfpi2M
         gcwQ==
X-Gm-Message-State: AOAM533KytkbD7Y6HqUzMIBAeFOaNSvJ92lS50cgS3Zn/gh4DTLYP0aO
	z0/XeqlIca6tYKQNwqBy+p0=
X-Google-Smtp-Source: ABdhPJwglxYfrydP/MOp5wU7jJ8uOV03UXqiYN6VPuZRfq7SQTHoK1PQBAXX+osYrDYXMX9NoDyzYg==
X-Received: by 2002:a05:620a:4495:: with SMTP id x21mr32531383qkp.468.1628664701460;
        Tue, 10 Aug 2021 23:51:41 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:7454:c3ed:f6af:7206])
        by smtp.gmail.com with ESMTPSA id n20sm10135733qkk.9.2021.08.10.23.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 23:51:41 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 11 Aug 2021 02:51:40 -0400
Message-Id: <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com>
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
In-Reply-To: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
To: Ron Economos <w6rz@comcast.net>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: VHXBCRESE4S5SSNNURHPDE7J4WC7CWLE
X-Message-ID-Hash: VHXBCRESE4S5SSNNURHPDE7J4WC7CWLE
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHXBCRESE4S5SSNNURHPDE7J4WC7CWLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5070319256203174936=="


--===============5070319256203174936==
Content-Type: multipart/alternative; boundary=Apple-Mail-F8F3249E-1DE9-4C89-A6EC-7D4F196584B0
Content-Transfer-Encoding: 7bit


--Apple-Mail-F8F3249E-1DE9-4C89-A6EC-7D4F196584B0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks so much Ron. I Will test this first thing in the morning=E2=80=A6alth=
ough I guess technically it is morning.=20
Talk soon=20
<end transmission>

> On Aug 11, 2021, at 02:17, Ron Economos <w6rz@comcast.net> wrote:
>=20
> =EF=BB=BF
> I have a patch that I've tested to work well. In UHD v4.0.0.0, add this li=
ne of code:
>=20
> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp b/host/lib/usrp/cor=
es/rx_vita_core_3000.cpp
> index 4b09f75fd..368ae8e0a 100644
> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>          cmd_word |=3D uint32_t((inst_stop) ? 1 : 0) << 28;
>          cmd_word |=3D (inst_samps) ? stream_cmd.num_samps : ((inst_stop) ?=
 0 : 1);
> =20
> +        _continuous_streaming =3D stream_cmd.stream_mode
> +                                =3D=3D stream_cmd_t::STREAM_MODE_START_CO=
NTINUOUS;
> +
>          // issue the stream command
>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>          const uint64_t ticks =3D
>=20
> Ron
>=20
> On 8/10/21 10:48 PM, Paul Atreides wrote:
>> what is the current guidance until this bug is fixed? i've recompiled UHD=
 3 times now.=20
>> UHD4.0
>> UHD4.1
>> master
>> all of them have the same issue, if i get even one overflow in gnuradio t=
he screen locks up, in rx_benchmark/rx_samples_to_file the program terminate=
s early.=20
>>=20
>> when will this be fixed?
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F8F3249E-1DE9-4C89-A6EC-7D4F196584B0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Thanks so much Ron. I Will test this first t=
hing in the morning=E2=80=A6although I guess technically it is morning.&nbsp=
;<br>Talk soon&nbsp;<br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span=
" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-=
composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-f=
rame-color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at 02:17, R=
on Economos &lt;w6rz@comcast.net&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <p>I have a patch that I've tested to work well. In UHD v4.0.0.0,
      add this line of code:<br>
    </p>
    <p>diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
      b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      index 4b09f75fd..368ae8e0a 100644<br>
      --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl :
      rx_vita_core_3000<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd_word |=3D uint32_=
t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd_word |=3D (inst_s=
amps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      &nbsp;<br>
      +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _continuous_streaming =3D s=
tream_cmd.stream_mode<br>
      +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // issue the stream c=
ommand<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _iface-&gt;poke32(REG=
_CTRL_CMD, cmd_word);<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const uint64_t ticks =3D=
<br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/10/21 10:48 PM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACwKM9K-UMZ8kUPZ-FSV4anR1UgJiP0e6=
7Uw6-gpgdPo2WCJeA@mail.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>what is the current guidance until this bug is fixed?
              i've recompiled UHD 3 times now. <br>
            </div>
            UHD4.0<br>
          </div>
          UHD4.1<br>
        </div>
        <div>master</div>
        <div>all of them have the same issue, if i get even one overflow
          in gnuradio the screen locks up, in
          rx_benchmark/rx_samples_to_file the program terminates early.
          <br>
        </div>
        <div><br>
        </div>
        <div>when will this be fixed?<br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</=
a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-F8F3249E-1DE9-4C89-A6EC-7D4F196584B0--

--===============5070319256203174936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5070319256203174936==--
