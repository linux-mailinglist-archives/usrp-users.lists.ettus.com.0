Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D503DDDD7
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 18:40:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C9E7384220
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 12:40:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YAfI3NRi";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A195A380DD1
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 12:39:33 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id z24so17150585qkz.7
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=6/dY6SAgx6KV7raA15+0P5myvR/721lVOpKtPOQjhWg=;
        b=YAfI3NRikiIMP27ohoXUwOAqRc8tMU8Q4OsRFiyeNZBLeePT6bFGbbctWG76lAQvr5
         kRASR0RYrDvtko+1GeXjf/dE5xraaKxZESK32wSxBRipeY3e2suvz3UJYEJSLAaLhSde
         qz+TVxZ2MBRI/dtsNIZzrR5H85rjkJGxbYQ7HwVtZx3NAjyyHcObOdF0XXARnWWcSNkW
         Ak0S7J9tiIDudeJ18hQriSJ1pq9KONWFlXCLfNc3M/8nZ/EEaTO8DsykcCXMbrHOpeFI
         C2BbGsR+xfYLLUHnlFtjQ4Q5HvHaap8sey3x+02R1frG00I/NwWDvz5Y++nmEXG2sLyp
         PitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=6/dY6SAgx6KV7raA15+0P5myvR/721lVOpKtPOQjhWg=;
        b=eiTtoXidw6nxtfX54bOFH0AvZvDVCK5AYBFfD+l+lsi7Jr5+RKjbdfY13j2/D+nYQ/
         lQV+8cEMPFIo8kq8WfH0jQHujut7KUkVSS5IRL1e34BUx4LDqWhH8Ti94x+wkD3u4I6K
         G7zzCWWKA5uivMFlI/wv8B4PakamtTRtm4nib5Ai5m1/3XIygCPNUZuBTmH0VDbyP6Kc
         jKpctqCMY04Cj3RZz57tdoC92S+2zk4HGsisrPMgQFDeyU1bTfRS1X9lZNa7327KTaOz
         jQ8r6+Rove71IFEEh6geveREOT7f70N7PDk/mnvHv1ee1JY7Tn9CQ6CLs4pe4nluo7i/
         qhsA==
X-Gm-Message-State: AOAM5321kx+cLnI0lYQypmuKWWkSQ2ZW9J0/sxkqs20HQlVMz+Vqqe1k
	20oFCXvpEr5cpyUlM7BXuagc+cKj/H0=
X-Google-Smtp-Source: ABdhPJxocAutCVrx4E13lJZ4oCUYU8+eQl+sGcKgvGpy+q9rh5U3wWHZRceHGUwu8KZcNns3XIfIHw==
X-Received: by 2002:a37:68b:: with SMTP id 133mr17015854qkg.224.1627922372765;
        Mon, 02 Aug 2021 09:39:32 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id n13sm4815865qtx.92.2021.08.02.09.39.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 09:39:32 -0700 (PDT)
Message-ID: <61081FC3.1010007@gmail.com>
Date: Mon, 02 Aug 2021 12:39:31 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE6y-F4zvnLA@mail.gmail.com>
In-Reply-To: <CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE6y-F4zvnLA@mail.gmail.com>
Message-ID-Hash: 2JXWOCAJBLYGGT77ZP7VXM63T4FSL544
X-Message-ID-Hash: 2JXWOCAJBLYGGT77ZP7VXM63T4FSL544
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: One RX channel of B210 presents distorted signal from splitter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2JXWOCAJBLYGGT77ZP7VXM63T4FSL544/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2645172909508930747=="

This is a multi-part message in MIME format.
--===============2645172909508930747==
Content-Type: multipart/alternative;
 boundary="------------050204020106080302070102"

This is a multi-part message in MIME format.
--------------050204020106080302070102
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2021 12:37 PM, Marcin Wachowiak wrote:
> Hello,
> I am working on a phase coherent application using USRP B210. As the 
> phase difference between RX channels of B210 is relatively stable I 
> wanted to see how it behaves across the whole frequency range. I 
> performed some measurements and unfortunately for some frequencies I 
> observed strange distortions. The setup consists of a TX USRP, RF 
> splitter, matched cables and a second USRP with both RX channels 
> connected to the splitter.
> Screams documenting the distortions: 
> https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=sharing
> The received sine wave should have quite similar shape and spectral 
> properties across both RX channels of USRP.
> What I observe instead is a symmetrical harmonic tone at one of the 
> RX, when the other does not record it.
> There are also random distortions in one of the RX channels looking as 
> if the sine signal was split and shifted at some point in time (looks 
> like a some sort of buffer issue)
> This kind of distortion for some settings persists for some is not 
> present or occurs regularly.
> To provide some illustiation I attach recordings and screens of the 
> registered distortions.
> usrpb210_sine_rx_distoriton2.mp4 
> <https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=drive_web>
> usrpb210_sine_rx_distoriton.mp4 
> <https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=drive_web>
>
> I tried to debug this problem but it appears to be related to sample 
> rate, TX tone frequency, carrier frequency and gains. (I checked 
> dynamic IQ imbalance or gain controls and changing of the parameters 
> did not affect anything)
> There are now underflow/overflow flags present while I run the 
> flowchart. The signal that is provided to both RX is identical ( RF 
> mini-circuits RF splitter), and any outside interferences are limited 
> as the whole setup is connected via concentric cables. I tried to set 
> the number of receive and sent frames to 1024 to ensure continuity, 
> but that didn't help.
> It is strange that for some frequencies this phenomenon occurs while 
> for others the phase difference variance is very low and there are no 
> such distortions.
> Could You please explain the cause or propose some kind of solution to 
> this issue?
>
> Kind regards,
> Marcin Wachowiak
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
What are your signal levels going into the RX USRP?

They need to be well below -20dBm or so to protect against 
non-linearity, and even then, that's awfully loud.





--------------050204020106080302070102
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/02/2021 12:37 PM, Marcin
      Wachowiak wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE6y-F4zvnLA@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>Hello,<br>
        </div>
        <div>I am working on a phase coherent application using USRP
          B210. As the phase difference between RX channels of B210 is
          relatively stable I wanted to see how it behaves across the
          whole frequency range. I performed some measurements and
          unfortunately for some frequencies I observed strange
          distortions. The setup consists of a TX USRP, RF splitter,
          matched cables and a second USRP with both RX channels
          connected to the splitter. <br>
        </div>
        <div>Screams documenting the distortions: <a
            moz-do-not-send=3D"true"
href=3D"https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTt=
QwL3Du8?usp=3Dsharing">https://drive.google.com/drive/folders/1DkjrVKz3yw=
v3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing</a></div>
        <div>The received sine wave should have quite similar shape and
          spectral properties across both RX channels of USRP.</div>
        <div>What I observe instead is a symmetrical harmonic tone at
          one of the RX, when the other does not record it. <br>
          There are also random distortions in one of the RX channels
          looking as if the sine signal was split and shifted at some
          point in time (looks like a some sort of buffer issue)<br>
        </div>
        <div>This kind of distortion for some settings persists for some
          is not present or occurs regularly. <br>
        </div>
        <div>To provide some illustiation I attach recordings and
          screens of the registered distortions.</div>
        <div>
          <div class=3D"gmail_chip gmail_drive_chip"
            style=3D"width:396px;height:18px;max-height:18px;background-c=
olor:rgb(245,245,245);padding:5px;color:rgb(34,34,34);font-family:arial;f=
ont-style:normal;font-weight:bold;font-size:13px;border:1px
            solid rgb(221,221,221);line-height:1"><a
              moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M=
/view?usp=3Ddrive_web"
              style=3D"display:inline-block;max-width:366px;overflow:hidd=
en;text-overflow:ellipsis;white-space:nowrap;text-decoration:none;padding=
:1px
              0px;border:medium none"
              aria-label=3D"usrpb210_sine_rx_distoriton2.mp4"
              target=3D"_blank"><img moz-do-not-send=3D"true"
                style=3D"vertical-align: bottom; border: medium none;"
src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.p=
ng"
                class=3D"gmail-CToWUd">=A0<span dir=3D"ltr"
                style=3D"color:rgb(17,85,204);text-decoration:none;vertic=
al-align:bottom">usrpb210_sine_rx_distoriton2.mp4</span></a></div>
          <div class=3D"gmail_chip gmail_drive_chip"
            style=3D"width:396px;height:18px;max-height:18px;background-c=
olor:rgb(245,245,245);padding:5px;color:rgb(34,34,34);font-family:arial;f=
ont-style:normal;font-weight:bold;font-size:13px;border:1px
            solid rgb(221,221,221);line-height:1"><a
              moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW=
/view?usp=3Ddrive_web"
              style=3D"display:inline-block;max-width:366px;overflow:hidd=
en;text-overflow:ellipsis;white-space:nowrap;text-decoration:none;padding=
:1px
              0px;border:medium none"
              aria-label=3D"usrpb210_sine_rx_distoriton.mp4"
              target=3D"_blank"><img moz-do-not-send=3D"true"
                style=3D"vertical-align: bottom; border: medium none;"
src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.p=
ng"
                class=3D"gmail-CToWUd">=A0<span dir=3D"ltr"
                style=3D"color:rgb(17,85,204);text-decoration:none;vertic=
al-align:bottom">usrpb210_sine_rx_distoriton.mp4</span></a></div>
        </div>
        <div><br>
        </div>
        <div>I tried to debug this problem but it appears to be related
          to sample rate, TX tone frequency, carrier frequency and
          gains. (I checked dynamic IQ imbalance or gain controls and
          changing of the parameters did not affect anything)</div>
        <div>There are now underflow/overflow flags present while I run
          the flowchart. The signal that is provided to both RX is
          identical ( RF mini-circuits RF splitter), and any outside
          interferences are limited as the whole setup is connected via
          concentric cables. I tried to set the number of receive and
          sent frames to 1024 to ensure continuity, but that didn't
          help.</div>
        <div>It is strange that for some frequencies this phenomenon
          occurs while for others the phase difference variance is very
          low and there are no such distortions.</div>
        <div>Could You please explain the cause or propose some kind of
          solution to this issue?<br>
        </div>
        <div><br>
        </div>
        <div>Kind regards,<br>
        </div>
        <div>Marcin Wachowiak</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    What are your signal levels going into the RX USRP?<br>
    <br>
    They need to be well below -20dBm or so to protect against
    non-linearity, and even then, that's awfully loud.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050204020106080302070102--

--===============2645172909508930747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2645172909508930747==--
