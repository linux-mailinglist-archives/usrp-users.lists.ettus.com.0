Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FE6A9D73D
	for <lists+usrp-users@lfdr.de>; Sat, 26 Apr 2025 04:26:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25E3D386259
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 22:26:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745634412; bh=fgGa3cVOxLS9+O3Lik+gGx3CzbSr94m7PSBduXwm0Cc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EGKZWnFyQALNcaXc50jO59VYtcH5sLjiNGWDaVBZ1mHvpOohXvwqLc1SZPPJ8UXXq
	 QAzjMgw6uSH40zEVrN6GKDyCLdn+qbRrjKGzbTyDEigjseoKLwCYF4OvjEXW0kp3mN
	 quatVxdTeAA4wx5G3CuLbWrs9S4uZrJnmsEWFfqDdYr8CnJtgd3h4S6R7fomnpMUuz
	 eqYLTfGeq2EILpm1vsZFr2v5Z/rygorKH4w7bHQ/wGTM0NuRoVTscX+DhMymxWohES
	 ookAZjubuRvIG2UCL6hxsaMdg4J5AvgofXkqEIt1sgD10xaCaWJ3a4ZbrtL/uSyxxz
	 akmndprcC0usw==
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E9C3386203
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 22:26:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EoVetiAr";
	dkim-atps=neutral
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3d8fc9dbce4so13354055ab.0
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 19:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745634393; x=1746239193; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CGkZxooiZFeu2AJF4eDjNYWcBa8wNShd7RuqesuCIW8=;
        b=EoVetiAr52oFT9vdH75kHPLl23mxu5ll8/J5IGK0Ng5wXZGve5w0yBSfRMHV9QmXXc
         +XU/CEbqnAXalzilKiEgUmX8yCDcVNv7n21xXBtSALqgTduwAaPQrssIWEEHeW5ZqF21
         4l4I19O+0iWHEFrOGz9u2iwUwDBeoXvPF5UPJCp+l92WzqlKFRS/6pAe16DrMraRyL0p
         fFx1oxzkKj8JuqzXiwEhyHFSrZzczboHr+gLf5UzQ1oukBbIv7UnOhFvfbGJfb44uFSh
         P3QTTXAh7oM8REtj+PazIlEp0yULis/DpGcN0GwSGRJmFC7oGPSxYRrbvl8Qx/IXE1hn
         UHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745634393; x=1746239193;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CGkZxooiZFeu2AJF4eDjNYWcBa8wNShd7RuqesuCIW8=;
        b=HiCVNbMNVRPqGbszAx0Y6HIWMSlC+qLEzXUQ6a7AatCIhh6HqtxO+stoK7V2VDfq/7
         Qy9Z/ytR4FQKmJb91IGa1AUy+jzxyT8Nf1odnWQo5dRjoKMYy+Rn4L7MSOt6NCDMaOk3
         r4/iQFG8l4kz/A4Q79gkjNe01ThaQd/ujpJqyzHaSMx74yJCc948aGk2ePONc3TvgJoD
         H4Fk0XQ5e7XbazC0KS7sb/SGFkuxVnUShPStKe79bVpmCWMRArd7J9k/QOpm4VrGvbZb
         JRx2zJcGWCOq6bxwgiCpedkJL5J+py7e8Ef96Qpy0TFuDIssEHW5brh4DezRYPpfEjbt
         4mhA==
X-Forwarded-Encrypted: i=1; AJvYcCXnWpsNoR9BfVtY3v1ccOcP41TBvckf4gPwChoBwGuF49rgmOGreDpy5KW9QX661vdawYMJlIH1cDt0@lists.ettus.com
X-Gm-Message-State: AOJu0Yw/4bNEQpnPsGQKlM6I0BAH2D7DrNGz00mlsdi4Im/7+1HCtb/S
	waMn2Gb9OqGZzDNeETmNWdmVo6gngNjN1YOQnQwdyZueVRc+iyQJq+i5AY7EP1QHuqkWsBBzM+w
	yHfswCub5YEqZO2BGTORBbySKltexOTmrpGw=
X-Gm-Gg: ASbGnctnEF5G0Fc6OgXq865b73662dTYbzYiINxz587dyj984A7LVHvthJjpC8nm0hk
	vLmtGH+z5GfzZEabK7PHCCO+386MOLGFVxQ4FrivxYtVMb3veaFLbOEhusstAzmecaXLsNr3T3x
	ejQA+P+1LoDWMQ2ZMieQfABgjRC/8AlC9wpA==
X-Google-Smtp-Source: AGHT+IFLJr/3eK/od5DntKgh4ZI4xJhMqKTx2sYRIkx2iZw1rXXhvx+VOhqYd2P9s3EnNY30maqG8BFb5kZ5OgBeOTs=
X-Received: by 2002:a92:cf04:0:b0:3d8:122f:9f07 with SMTP id
 e9e14a558f8ab-3d931646613mr88333025ab.10.1745634393277; Fri, 25 Apr 2025
 19:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com>
In-Reply-To: <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 26 Apr 2025 05:26:21 +0300
X-Gm-Features: ATxdqUFhjTfpTAbKPVNvrbhW2CimqZpGGZOaDySx33yd0g0rJHRQ_da6Ku5UcMg
Message-ID: <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: EN7M6RF5OKQRWGWXKUVT7X4GN4GBAD7I
X-Message-ID-Hash: EN7M6RF5OKQRWGWXKUVT7X4GN4GBAD7I
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EN7M6RF5OKQRWGWXKUVT7X4GN4GBAD7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1291774054624365744=="

--===============1291774054624365744==
Content-Type: multipart/alternative; boundary="000000000000eb4ee90633a52dc8"

--000000000000eb4ee90633a52dc8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus,

for your fast reply.

On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 25/04/2025 20:50, Nikos Balkanas wrote:
>
> Hello,
>
> I need to buy a new NIC. What would you suggest?
> The one I use is an old Mellanox 10 Gbs, before the Connect-4 series.
> It can only do 1996 S/s, need 19960 (10x more) to work with latest uhd.
> Using Ubuntu 24.04 and uhd 4.6.0
>
> So, 1.996ksps vs 19.960ksps?   You hardly need a 10Gbit link to support
> that.  So, perhaps something
>   is being lost here in your requirements?
>

True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps, 16=
 *
19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
Does a complex pair count as 1 sample, or 2?
I have followed all the instructions in
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
Even installed the DPDK drivers. My Mellanox is too old to use their OFED
drivers:(

>
> On a related question. it seems that the streamer doesn't crash anymore
> when receiving less than MAXSPS samples, instead it reads 0:(
> This was due to the sse2 code not aligned in convert.
> I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so no conversio=
n
> required.
> Streamer still doesn't read anything. Is there a reason for it?
>
> You'd need to share more of your code.  This should just work as far as I
> can tell.
>
> Thanks. these are just the usrp code:

int main()
{
      uhd_stream_args_t stream_args =3D
                                                           {
                                                              .cpu_format =
=3D
"sc16",
                                                              .otw_format =
=3D
"sc16",
                                                              .args =3D "",
                                                              .n_channels =
=3D
1,

 .channel_list =3D &channel
                                                             };
..uhd_stream_cmd_t stream_cmd =3D
                                                             {
                                                               .stream_mode
=3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
                                                                .stream_now
=3D true
                                                              };

    if (uhd_init(0, 0, gain)) do_exit(20);
>     if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
> rx_streamer[0])))
>     {
>          uhd_get_last_error(errmsg, 127);
>          error(log, "Failed to get streamer[0] (%d). %s.\n", 0, FL, LN,
> FN, err, errmsg);
>         uhd_rx_streamer_free(&rx_streamer[0]);
>          rx_streamer[0] =3D NULL;
>          uhd_rx_metadata_free(&md[0]);
>         md[0] =3D NULL;
>         do_exit(30);
>     }
>      if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0], &maxsamps=
)))
>
     {
>          uhd_get_last_error(errmsg, 127);
>          error(log, "Failed to get max samples/buffer[0] (%d). %s.\n", 0,
> FL, LN, FN, err,
>            ..errmsg);
>         do_exit(35);
>     }
>     if (maxsamps !=3D MAXSMPS)
>         warn(log, "Incorrect maxsamples (%ld). Expected %d.\n", 0, FL,
> LN, FN, maxsamps,
>               MAXSMPS);
>      info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>
>     if ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
> &stream_cmd)))
>
    {
>         uhd_get_last_error(errmsg, 127);
>         error(log, "Failed to start streamer[0] (%d). %s.\n", 0, FL, LN,
> FN, err, errmsg);
>        do_exit(40);
>      }
>
         [...]
         do_exit(0)
     }


> bool uhd_init(size_t channel, double srate, double gain)
> {
>     double tmp;
>     uhd_rx_metadata_error_code_t err;
>
>      if ((err =3D uhd_set_thread_priority(uhd_default_thread_priority,
> true)))
>             warn(log, "Unable to set  main thread priority (%d). %s.\n",
> 0, FL, LN, FN,
>                   err, uhdError(err));
>       /* Create USRP */
>       f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>       {
>           error(log, "Failed to create USRP (%d). %s.\n", 0, FL, LN, FN,
> err,
>                uhdError(err));
>            dev[channel] =3D NULL;
>             return(FAIL);
>
         }
>          info(stderr, "Created USRP with args\n", 0);
>
>     /* Create RX streamer */
>     if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>     {
>         error(log, "Failed to create rx_streamer[%d] (%d). %s.\n", 0, FL,
> LN, FN,
>             channel, err, uhdError(err));
>          return(FAIL);
>     }
>     /* Create RX metadata */
>     if ((err =3D uhd_rx_metadata_make(&md[channel])))
>    {
>        error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL, LN, FN,
> channel,
>            err, uhdError(err));
>         return(FAIL);
>      }
>
>     /* Get master clock rate */
>      if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0, &tmp)))
>
      {
>            error(log, "Failed to set master clock to %.0lf Mhz (%d).
> %s.\n", 0, FL,
>                LN, FN, tmp/1000000, err, uhdError(err));
>             return(FAIL);
>       }
>       info(stderr, "Master clock is at %.0lf Mhz\n", 0, tmp/1000000);
>       /* Set the sample rate */
>      if (srate && !uhd_set_rx_rate_check(channel, srate)) return(FAIL);
>      /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>
       if ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain, channel, "")))
>        {
>             error(log, "Failed to set tuner[%d] gain to %.0lf db (%d).
> %s.\n", 0, FL,
>                  LN, FN, channel, gain, err, uhdError(err));
>             return(FAIL);
>          }
>          if (!(err =3D uhd_usrp_get_rx_gain(dev[channel], channel, "",
> &tmp)))
>               info(log, "Tuner[%d] gain set to %.0lf (%.0lf) dB\n", 0,
> channel, tmp, gain);
>
        ./* Set channel bw to conserve tuner resources. Not needed, set by
srate */
             uhd_usrp_set_rx_bandwidth(dev[channel], srate, channel);
         ./* Disable subtracting constant averaged background. Signal looks
cleaner */
            if ((err =3D uhd_usrp_set_rx_dc_offset_enabled(dev[channel],
false, channel)))
             {
                 warn(log, "Failed to disable FPGA DC offset on channel
%d(%d). %s.\n", 0,
                     FL, LN, FN, channel, err, uhdError(err));
               }
               info(stderr, "Disabled FPGA DC offset on channel %d\n", 0,
channel);
               return(SUCCESS);
         }

This is the generated output:

[INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect maxsamples
(1996). Expected 19960.
Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
[WARNING] [0/Radio#0] Ignoring stream command for finite acquisition of
zero samples
I hope this reads OK. Maybe next time I should attach the code:)

> TIA
> Nikos
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>

--000000000000eb4ee90633a52dc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">Thanks Marcus,</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">for your fast reply.</div></div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at=
 4:08=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 25/04/2025 20:50, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div style=3D"font-size:small">Hello,</div>
        <div style=3D"font-size:small"><br>
        </div>
        <div style=3D"font-size:small">I need to buy
          a new NIC. What would you suggest?</div>
        <div style=3D"font-size:small">The one I use
          is an old Mellanox 10 Gbs, before the Connect-4 series.</div>
        <div style=3D"font-size:small">It can only
          do 1996 S/s, need 19960 (10x more) to work with latest uhd.</div>
        <div style=3D"font-size:small">Using Ubuntu
          24.04 and uhd 4.6.0</div>
      </div>
    </blockquote>
    So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly need a 10Gbit link =
to
    support that.=C2=A0 So, perhaps something<br>
    =C2=A0 is being lost here in your requirements?<br></div></blockquote><=
div><br></div><div class=3D"gmail_default" style=3D"font-size:small">True. =
Can&#39;t explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps, 16 *=
 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(</div><div class=3D"g=
mail_default" style=3D"font-size:small">Does a complex pair count as 1 samp=
le, or 2?</div><div class=3D"gmail_default" style=3D"font-size:small">I hav=
e followed all the instructions in=C2=A0<a href=3D"https://kb.ettus.com/USR=
P_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a>,</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">Even installed the DPDK drivers. My Mellanox is too=
 old to use their OFED drivers:(</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div style=3D"font-size:small"><br>
        </div>
        <div style=3D"font-size:small">On a related
          question. it seems that the streamer doesn&#39;t crash anymore</d=
iv>
        <div style=3D"font-size:small">when
          receiving less than MAXSPS samples, instead it reads 0:(</div>
        <div style=3D"font-size:small">This was due
          to the sse2 code not aligned in convert.</div>
        <div style=3D"font-size:small">I change my
          stream args to cpu_format=3Dsc16, otw=3Dsc16, so no conversion
          required.</div>
        <div style=3D"font-size:small">Streamer
          still doesn&#39;t read anything. Is there a reason for it?</div>
        <div style=3D"font-size:small"><br>
        </div>
      </div>
    </blockquote>
    You&#39;d need to share more of your code.=C2=A0 This should just work =
as far
    as I can tell.<br>
    <br></div></blockquote><div><span class=3D"gmail_default" style=3D"font=
-size:small"></span></div><div><span class=3D"gmail_default" style=3D"font-=
size:small">Thanks. these are just the usrp code:</span></div><div><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">int main()</div><d=
iv class=3D"gmail_default" style=3D"font-size:small">{</div><div class=3D"g=
mail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 uhd_stream_arg=
s_t stream_args =3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0{<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 .cpu_format =3D &quot;sc16&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .otw_format =3D &quot;sc16&quot;,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .=
args =3D &quot;&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 .n_channels =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.channel_list =3D &amp;channel=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};=
<br>..uhd_stream_cmd_t stream_cmd =3D<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.stream_mode =3D UHD_STREAM_MODE_N=
UM_SAMPS_AND_DONE,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 .stream_now =3D true<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };</div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div>
    <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 <=
/span>if (uhd_init(0, 0, gain)) do_exit(20);<br><span class=3D"gmail_defaul=
t" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if ((err =3D uhd_usr=
p_get_rx_stream(dev[0], &amp;stream_args, rx_streamer[0])))<br><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br=
><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br><span class=3D"=
gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
</span>error(log, &quot;Failed to get streamer[0] (%d). %s.\n&quot;, 0, FL,=
 LN, FN, err, errmsg);<br><span class=3D"gmail_default" style=3D"font-size:=
small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>uhd_rx_streamer_free(&amp;rx=
_streamer[0]);<br><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>rx_streamer[0] =3D NULL;<br><span =
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_rx_metadata_free(&amp;md[0]);<br><span class=3D"gmail_=
default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=
md[0] =3D NULL;<br><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>do_exit(30);<br><span class=3D"gmai=
l_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br><span c=
lass=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span=
>if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0], &amp;maxsamps))=
)</div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=
<span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0</span>{<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br><=
span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0</span>error(log, &quot;Failed to get max samples/buffer[0] (=
%d). %s.\n&quot;, 0, FL, LN, FN, err,<br><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>..err=
msg);<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>do_exit(35);<br><span class=3D"gmail_default"=
 style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br><span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if (maxsam=
ps !=3D MAXSMPS)<br><span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log, &quot;Incorrect maxsampl=
es (%ld). Expected %d.\n&quot;, 0, FL, LN, FN, maxsamps,<br><span class=3D"=
gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>info(log, &quot;Max samples=
/buffer[0]: %ld\n&quot;, 0, maxsamps);<br><br><span class=3D"gmail_default"=
 style=3D"font-size:small">=C2=A0 =C2=A0 i</span>f ((err =3D uhd_rx_streame=
r_issue_stream_cmd(rx_streamer[0], &amp;stream_cmd)))=C2=A0</div></blockquo=
te><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br><span=
 class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>uhd_get_last_error(errmsg, 127);<br><span class=3D"gmail_de=
fault" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>er=
ror(log, &quot;Failed to start streamer[0] (%d). %s.\n&quot;, 0, FL, LN, FN=
, err, errmsg);<br><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>do_exit(40);<br><span class=3D"gmail_defa=
ult" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>}<br></div></bloc=
kquote><div><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0[...]</span></div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_exit(0)</div>=
<div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=
}</div><div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=
 =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    bool uhd_init(size_t channel, double srate, double gain)<br>{<br><span =
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span=
>double tmp;<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>uhd_rx_metadata_error_code_t err;<br><br><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if =
((err =3D uhd_set_thread_priority(uhd_default_thread_priority, true)))<br><=
span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log, &quot;Unable to set =C2=A0main =
thread priority (%d). %s.\n&quot;, 0, FL, LN, FN,<br><span class=3D"gmail_d=
efault" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err, uhdError(err));<br><span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>/* Creat=
e USRP */<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
 =C2=A0 =C2=A0 </span>f ((err =3D uhd_usrp_make(&amp;dev[channel], &quot;ty=
pe=3Dx300&quot;)))<br><span class=3D"gmail_default" style=3D"font-size:smal=
l">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>{<br><span class=3D"gmail_default" styl=
e=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(=
log, &quot;Failed to create USRP (%d). %s.\n&quot;, 0, FL, LN, FN, err,<br>=
<span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<br><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span>dev[channel] =3D NULL;<br><span class=3D"gmail_default"=
 style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 r</spa=
n>eturn(FAIL);=C2=A0</div></blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>}<br><span class=3D"gmail_default"=
 style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>info(st=
derr, &quot;Created USRP with args\n&quot;, 0);<br><br><span class=3D"gmail=
_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/* Create RX =
streamer */<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if ((err =3D uhd_rx_streamer_make(&amp;rx_streamer[c=
hannel])))<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>{<br><span class=3D"gmail_default" style=3D"font-siz=
e:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(log, &quot;Failed to=
 create rx_streamer[%d] (%d). %s.\n&quot;, 0, FL, LN, FN,<br><span class=3D=
"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</span>channel, err, uhdError(err));<br><span class=3D"gmai=
l_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</sp=
an>return(FAIL);<br><span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0 =C2=A0 </span>}<br><span class=3D"gmail_default" style=3D"font-size=
:small">=C2=A0 =C2=A0=C2=A0</span>/* Create RX metadata */<br><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if (=
(err =3D uhd_rx_metadata_make(&amp;md[channel])))<br><span class=3D"gmail_d=
efault" style=3D"font-size:small">=C2=A0 =C2=A0</span>{<br><span class=3D"g=
mail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>e=
rror(log, &quot;Failed to create md[%d] (%d). %s.\n&quot;, 0, FL, LN, FN, c=
hannel,<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>err, uhdError(err));<br><span clas=
s=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span>return(FAIL);<br><span class=3D"gmail_default" style=3D"font-s=
ize:small">=C2=A0 =C2=A0 =C2=A0</span>}<br><br><span class=3D"gmail_default=
" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/* <span class=3D"gma=
il_default" style=3D"font-size:small">G</span>et master clock rate */<br><s=
pan class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0<=
/span>if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0, &amp;tmp=
)))=C2=A0</div></blockquote><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0=C2=A0</span>{<br><span class=3D"gmail_default" style=3D"font-siz=
e:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>error(log, &quot;F=
ailed to set master clock to %.0lf Mhz (%d). %s.\n&quot;, 0, FL,<br><span c=
lass=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, tmp/1000000, err, uhdError(er=
r));<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br><span class=3D=
"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>}<br>=
<span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>info(stderr, &quot;Master clock is at %.0lf Mhz\n&quot;, 0,=
 tmp/1000000);<br><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0=C2=A0</span>/* Set the sample rate */<br><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if =
(srate &amp;&amp; !uhd_set_rx_rate_check(channel, srate)) return(FAIL);<br>=
<span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0</span>/* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */=C2=A0</=
div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><sp=
an class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0i</span>f ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain, channel,=
 &quot;&quot;)))<br><span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>{<br><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>=
error(log, &quot;Failed to set tuner[%d] gain to %.0lf db (%d). %s.\n&quot;=
, 0, FL,<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, chann=
el, gain, err, uhdError(err));<br><span class=3D"gmail_default" style=3D"fo=
nt-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return=
(FAIL);<br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>}<br><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i</span>f (!(err =3D=
 uhd_usrp_get_rx_gain(dev[channel], channel, &quot;&quot;, &amp;tmp)))<br><=
span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(log, &quot;Tuner[%d] gain set=
 to %.0lf (%.0lf) dB\n&quot;, 0, channel, tmp,<span class=3D"gmail_default"=
 style=3D"font-size:small">=C2=A0</span>gain);</div></blockquote><span clas=
s=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span>./* Set channel bw to conserve tuner resources. Not needed, se=
t by srate */<br><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhd_usrp_set_rx_band=
width(dev[channel], srate, channel);<br><span class=3D"gmail_default" style=
=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>./* Disable s=
ubtracting constant averaged background. Signal looks cleaner */<br><span c=
lass=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>if ((err =3D uhd_usrp_set_rx_dc_offset_enable=
d(dev[channel], false, channel)))<br><span class=3D"gmail_default" style=3D=
"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>{<=
br><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>warn(log, &quot;Fail=
ed to disable FPGA DC offset on channel %d(%d). %s.\n&quot;, 0,<br><span cl=
ass=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>FL, LN, FN, channel=
, err, uhdError(err));</div><div class=3D"gmail_quote gmail_quote_container=
"><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>}<br><span class=3D"gmail_defa=
ult" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span>info(stderr, &quot;Disabled FPGA DC offset on channel %=
d\n&quot;, 0, channel);<span class=3D"gmail_default" style=3D"font-size:sma=
ll"></span></div><div class=3D"gmail_quote gmail_quote_container"><span cla=
ss=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>return(SUCCESS);<br><div><span class=3D"g=
mail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}=
</span></div><div><span class=3D"gmail_default" style=3D"font-size:small"><=
br></span></div><div><span class=3D"gmail_default" style=3D"font-size:small=
">This is the generated output:</span>=C2=A0</div><div><br></div><div><span=
 class=3D"gmail_default" style=3D"font-size:small"></span>[INFO] [UHD] linu=
x; GNU C++ version 13.2.0; Boost_108300; UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1=
</div>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximu=
m frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Sat A=
pr 26 03:33:48 2025 [00] [+] Created USRP with args<br>Sat Apr 26 03:33:48 =
2025 [00] [+] Master clock is at 200 Mhz<br>Sat Apr 26 03:33:48 2025 [00] [=
+] Tuner[0] gain set to 30 (30) dB<br>Sat Apr 26 03:33:48 2025 [00] [*] sca=
nner.l:1446:main Incorrect maxsamples (1996). Expected 19960.<br>Sat Apr 26=
 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996<br><div>[WARNING] [0/Ra=
dio#0] Ignoring stream command for finite acquisition of zero samples=C2=A0=
</div><div><span class=3D"gmail_default" style=3D"font-size:small"></span><=
/div><div><span class=3D"gmail_default" style=3D"font-size:small">I hope th=
is reads OK. Maybe next time I should attach the code:)</span>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote type=3D"c=
ite"><div dir=3D"ltr"><div style=3D"font-size:small">
        </div>
        <div style=3D"font-size:small">TIA</div>
        <div style=3D"font-size:small">Nikos</div>
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

</blockquote></div></div>

--000000000000eb4ee90633a52dc8--

--===============1291774054624365744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1291774054624365744==--
