Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 353B53DF413
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 19:49:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D553384B31
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 13:49:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ogzSjKLU";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DFFB384743
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 13:48:19 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id z24so117915qtn.8
        for <usrp-users@lists.ettus.com>; Tue, 03 Aug 2021 10:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=fl3DU3mM7ZaXlGveR3aSEk/UQlkvA3G1LnpHMMK2pjk=;
        b=ogzSjKLUnatbwlB0czCbio3BesiGwczb6xv/hGMwZjkeY3qwex4DxJ8I8ibpwThful
         qe0z4ESehsvqGen7WCqDqTZLv1MawqxNmBekXC45K/0GvmrPVH/+7fE1JRX8QWR5WAVm
         1lz6ZxOqkxjtNmRhqqHjI2f7tmOk+aAk+Vyzs7vsBfkKqSfsMYeqQT7Wi9Gr7go0xii/
         5zkEcKTQR1Wki5RMH8ADEXjFIbsG4Ek6F1KyaHEJJwczO6aNJrnxEUAfs5Fua2oYpyqd
         dtWtOB9Jq/1QOC9+El+NdeTnLzdqC/IhK3NiazpcOErOiZbyq2d7lC3ns3sOOPQNUyWK
         9h2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=fl3DU3mM7ZaXlGveR3aSEk/UQlkvA3G1LnpHMMK2pjk=;
        b=Fd8UbaeOsnUH4QMQJaX3QSBEBio2XGQAe/vTr7jFBX1uRsrdtXDHdbvToH0VmSnasJ
         umLmrTQ/wdA/vx1mEMeXGePvyIuskj8CU/uiAPlMY67jH2i9Bfx5Ap8siQpkXX4+eHy6
         tV6NjGAvbdGyGckkw1+EwrawcsM6q5GBN02trntFeVK6VwaaqE/1mv7KcEcBtda3hWrb
         vB33mmHVoyEYnMp5wlUO6xvEeDNeZgxM1L6iq9A6pMISM3uxFRyJKsGCokppTdHYEn0E
         ry0V7kjEFj8Ntpw7emocGwI+1FSN8xXKoOpMFjgpi3UIMfDkbwf94SBOWCujujXw75Z0
         YQ4w==
X-Gm-Message-State: AOAM533UgMxBKEKSGzoJFCobS+qX3SvS9v/5p4v9HycrpNvijqeM4BCU
	Pnfug4QJO9sSllUHOQKKXA+ME57/lMQ=
X-Google-Smtp-Source: ABdhPJyS9b0aFvWDlDsWQ+80+Vsok5/SMXha19jZbROM2gTKXS+lKDAdh/uU8gtMsonF6lsiVDiFOg==
X-Received: by 2002:ac8:4e45:: with SMTP id e5mr19373760qtw.63.1628012898391;
        Tue, 03 Aug 2021 10:48:18 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id z11sm6343483qtq.77.2021.08.03.10.48.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 10:48:17 -0700 (PDT)
Message-ID: <61098161.4060405@gmail.com>
Date: Tue, 03 Aug 2021 13:48:17 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <162792237697.11274.9530878703112633002@mm2.emwd.com> <CAOfH71yT3evAKrBPFhuhV3CrpFhZpaRVR9t_=r2t=oAA79c3Kg@mail.gmail.com>
In-Reply-To: <CAOfH71yT3evAKrBPFhuhV3CrpFhZpaRVR9t_=r2t=oAA79c3Kg@mail.gmail.com>
Message-ID-Hash: IQRCVEUO4ZCLT6EAVTT3VWS5ITY6LNKY
X-Message-ID-Hash: IQRCVEUO4ZCLT6EAVTT3VWS5ITY6LNKY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: One RX channel of B210 presents distorted signal from splitter
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IQRCVEUO4ZCLT6EAVTT3VWS5ITY6LNKY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5299312389891602589=="

This is a multi-part message in MIME format.
--===============5299312389891602589==
Content-Type: multipart/alternative;
 boundary="------------040402040901010904020401"

This is a multi-part message in MIME format.
--------------040402040901010904020401
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/03/2021 11:08 AM, Marcin Wachowiak wrote:
> Hello,
> The signals provided at the input have quite low power, far below the 
> threshold of -20dbm. ( I don't know the exact values but I 
> additionally even added a 30dB attenuator for safety)
> What I also found out is that the distortions are dependent more on 
> the setting of the RX, TX gain than the value.  During live testing I 
> observed the this harmonic distortion at one channel only, and after 
> increasing the TX or RX gain it disappeared  (what is visible in the 
> new videos):
> usrp_b210_strange_harmonic_distoriton.mp4 
> <https://drive.google.com/file/d/1hYHfI_oXke5K9PGTz-R88n-DNfaiJUYP/view?usp=drive_web>
> usrp_b210_strange_harmonic_distoriton_2.mp4 
> <https://drive.google.com/file/d/15bq0hmUJFLWskA8qb7w_7-EXPF3oGv7Y/view?usp=drive_web>
> Kind regards,
> Marcin Wachowiak
Right because distortion in RF components isn't going to start occurring 
at a uniform level over each discrete device--there will be variability.

Are you using the same (RX2) antenna inputs in each case?  At high gain 
levels it doesn't take much to drive things into non-linear operation.


>
> On Mon, 2 Aug 2021 at 18:57, <usrp-users-request@lists.ettus.com 
> <mailto:usrp-users-request@lists.ettus.com>> wrote:
>
>     Send USRP-users mailing list submissions to
>     usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>
>     To subscribe or unsubscribe via email, send a message with subject or
>     body 'help' to
>     usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>
>
>     You can reach the person managing the list at
>     usrp-users-owner@lists.ettus.com
>     <mailto:usrp-users-owner@lists.ettus.com>
>
>     When replying, please edit your Subject line so it is more specific
>     than "Re: Contents of USRP-users digest..."
>
>     Today's Topics:
>
>        1. Older B100 and associated Daughter cards. (Guy Mengel)
>        2. Re: Older B100 and associated Daughter cards. (Richard Stanley)
>        3. One RX channel of B210 presents distorted signal from splitter
>           (Marcin Wachowiak)
>        4. Re: One RX channel of B210 presents distorted signal from
>     splitter
>           (Marcus D. Leech)
>
>
>     ----------------------------------------------------------------------
>
>     Message: 1
>     Date: Mon, 02 Aug 2021 09:47:18 -0400
>     From: Guy Mengel <guy@eastroad.org <mailto:guy@eastroad.org>>
>     Subject: [USRP-users] Older B100 and associated Daughter cards.
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Message-ID: <823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org
>     <mailto:823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org>>
>     Content-Type: text/plain; markup=markdown
>
>     Hi All,
>     I am finally going to get started using an older B100 USRP with
>     the LFTX, LFRX, WBX daughter boards.  I purchased these from a
>     well known amateur radio op in January of this year. I had played
>     with it for a short time on Ubuntu 18.04 with the older
>     unsupported Python2 interface, this was a start. Then the Covid
>     Pandemic hit.
>     Well, I am now back.
>     Are there any users in the group using the B100 USRP with the
>     LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with
>     updated Python 3.X with GNURADIO?  I wanted to see if there were
>     any still using this older SDR.  My plans are to experiment with
>     it and create a rig to be used at HF and possibly UHF to microwave
>     down the road.
>
>     I would also like to have pointers too!
>
>     Thanks!
>     Guy Mengel N1GMM
>
>
>     ------------------------------
>
>     Message: 2
>     Date: Mon, 2 Aug 2021 10:37:14 -0400
>     From: Richard Stanley <richardlstanley@gmail.com
>     <mailto:richardlstanley@gmail.com>>
>     Subject: [USRP-users] Re: Older B100 and associated Daughter cards.
>     To: Guy Mengel <guy@eastroad.org <mailto:guy@eastroad.org>>
>     Cc: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Message-ID: <17BFD25F-4714-4789-AB3F-4503A89B25F2@gmail.com
>     <mailto:17BFD25F-4714-4789-AB3F-4503A89B25F2@gmail.com>>
>     Content-Type: text/plain;       charset=us-ascii
>
>     (Resent to include mailing list)
>
>     Hi Guy,
>
>     I've recently used B100s with the LFRX, BasicRX, and (EOL) TVRX2
>     with the latest UHD and GNU Radio 3.8 on Ubuntu 20.04.
>
>     A challenge for me with the LFRX/TX and BasicRX/TX was finding the
>     correct sub-device specification as they can acquire/transmit an
>     IQ pair or real-valued signals. In addition, I required a Hilbert
>     transform to convert real-valued samples in baseband to complex
>     for some processing in GNU Radio for Rx. There are a lot of
>     questions about these daughtercards in the mailing list archive
>     and often the questions seem to be about sub-device specification
>     and real-valued versus IQ.
>
>     Enjoy the B100!
>
>     HTH,
>     Richard
>
>     On Aug 2, 2021, at 09:47, Guy Mengel <guy@eastroad.org
>     <mailto:guy@eastroad.org>> wrote:
>
>     Hi All,
>     I am finally going to get started using an older B100 USRP with
>     the LFTX, LFRX, WBX daughter boards.  I purchased these from a
>     well known amateur radio op in January of this year. I had played
>     with it for a short time on Ubuntu 18.04 with the older
>     unsupported Python2 interface, this was a start. Then the Covid
>     Pandemic hit.
>     Well, I am now back.
>     Are there any users in the group using the B100 USRP with the
>     LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with
>     updated Python 3.X with GNURADIO?  I wanted to see if there were
>     any still using this older SDR.  My plans are to experiment with
>     it and create a rig to be used at HF and possibly UHF to microwave
>     down the road.
>
>     I would also like to have pointers too!
>
>     Thanks!
>     Guy Mengel N1GMM
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>     ------------------------------
>
>     Message: 3
>     Date: Mon, 2 Aug 2021 18:37:08 +0200
>     From: Marcin Wachowiak <marcin.r.wachowiak@gmail.com
>     <mailto:marcin.r.wachowiak@gmail.com>>
>     Subject: [USRP-users] One RX channel of B210 presents distorted signal
>             from splitter
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Message-ID:
>            
>     <CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE6y-F4zvnLA@mail.gmail.com <mailto:CAOfH71xDRZ7A%2BXU89t-6GEWy4aa_HmNfB%2B-0aeGE6y-F4zvnLA@mail.gmail.com>>
>     Content-Type: multipart/alternative;
>             boundary="000000000000d8512b05c8962e2b"
>
>     Hello,
>     I am working on a phase coherent application using USRP B210. As
>     the phase
>     difference between RX channels of B210 is relatively stable I
>     wanted to see
>     how it behaves across the whole frequency range. I performed some
>     measurements and unfortunately for some frequencies I observed strange
>     distortions. The setup consists of a TX USRP, RF splitter, matched
>     cables
>     and a second USRP with both RX channels connected to the splitter.
>     Screams documenting the distortions:
>     https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=sharing
>     The received sine wave should have quite similar shape and spectral
>     properties across both RX channels of USRP.
>     What I observe instead is a symmetrical harmonic tone at one of
>     the RX,
>     when the other does not record it.
>     There are also random distortions in one of the RX channels
>     looking as if
>     the sine signal was split and shifted at some point in time (looks
>     like a
>     some sort of buffer issue)
>     This kind of distortion for some settings persists for some is not
>     present
>     or occurs regularly.
>     To provide some illustiation I attach recordings and screens of the
>     registered distortions.
>      usrpb210_sine_rx_distoriton2.mp4
>     <https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=drive_web>
>      usrpb210_sine_rx_distoriton.mp4
>     <https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=drive_web>
>
>     I tried to debug this problem but it appears to be related to
>     sample rate,
>     TX tone frequency, carrier frequency and gains. (I checked dynamic IQ
>     imbalance or gain controls and changing of the parameters did not
>     affect
>     anything)
>     There are now underflow/overflow flags present while I run the
>     flowchart.
>     The signal that is provided to both RX is identical ( RF
>     mini-circuits RF
>     splitter), and any outside interferences are limited as the whole
>     setup is
>     connected via concentric cables. I tried to set the number of
>     receive and
>     sent frames to 1024 to ensure continuity, but that didn't help.
>     It is strange that for some frequencies this phenomenon occurs
>     while for
>     others the phase difference variance is very low and there are no such
>     distortions.
>     Could You please explain the cause or propose some kind of
>     solution to this
>     issue?
>
>     Kind regards,
>     Marcin Wachowiak
>     -------------- next part --------------
>     A message part incompatible with plain text digests has been
>     removed ...
>     Name: not available
>     Type: text/html
>     Size: 4104 bytes
>     Desc: not available
>
>     ------------------------------
>
>     Message: 4
>     Date: Mon, 02 Aug 2021 12:39:31 -0400
>     From: "Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     Subject: [USRP-users] Re: One RX channel of B210 presents distorted
>             signal from splitter
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Message-ID: <61081FC3.1010007@gmail.com
>     <mailto:61081FC3.1010007@gmail.com>>
>     Content-Type: multipart/alternative;
>             boundary="------------050204020106080302070102"
>
>     On 08/02/2021 12:37 PM, Marcin Wachowiak wrote:
>     > Hello,
>     > I am working on a phase coherent application using USRP B210. As
>     the
>     > phase difference between RX channels of B210 is relatively stable I
>     > wanted to see how it behaves across the whole frequency range. I
>     > performed some measurements and unfortunately for some
>     frequencies I
>     > observed strange distortions. The setup consists of a TX USRP, RF
>     > splitter, matched cables and a second USRP with both RX channels
>     > connected to the splitter.
>     > Screams documenting the distortions:
>     >
>     https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=sharing
>     > The received sine wave should have quite similar shape and spectral
>     > properties across both RX channels of USRP.
>     > What I observe instead is a symmetrical harmonic tone at one of the
>     > RX, when the other does not record it.
>     > There are also random distortions in one of the RX channels
>     looking as
>     > if the sine signal was split and shifted at some point in time
>     (looks
>     > like a some sort of buffer issue)
>     > This kind of distortion for some settings persists for some is not
>     > present or occurs regularly.
>     > To provide some illustiation I attach recordings and screens of the
>     > registered distortions.
>     > usrpb210_sine_rx_distoriton2.mp4
>     >
>     <https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=drive_web>
>     > usrpb210_sine_rx_distoriton.mp4
>     >
>     <https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=drive_web>
>     >
>     > I tried to debug this problem but it appears to be related to
>     sample
>     > rate, TX tone frequency, carrier frequency and gains. (I checked
>     > dynamic IQ imbalance or gain controls and changing of the
>     parameters
>     > did not affect anything)
>     > There are now underflow/overflow flags present while I run the
>     > flowchart. The signal that is provided to both RX is identical ( RF
>     > mini-circuits RF splitter), and any outside interferences are
>     limited
>     > as the whole setup is connected via concentric cables. I tried
>     to set
>     > the number of receive and sent frames to 1024 to ensure continuity,
>     > but that didn't help.
>     > It is strange that for some frequencies this phenomenon occurs
>     while
>     > for others the phase difference variance is very low and there
>     are no
>     > such distortions.
>     > Could You please explain the cause or propose some kind of
>     solution to
>     > this issue?
>     >
>     > Kind regards,
>     > Marcin Wachowiak
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     What are your signal levels going into the RX USRP?
>
>     They need to be well below -20dBm or so to protect against
>     non-linearity, and even then, that's awfully loud.
>
>
>
>
>     -------------- next part --------------
>     A message part incompatible with plain text digests has been
>     removed ...
>     Name: not available
>     Type: text/html
>     Size: 6081 bytes
>     Desc: not available
>
>     ------------------------------
>
>     Subject: Digest Footer
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
>     ------------------------------
>
>     End of USRP-users Digest, Vol 132, Issue 2
>     ******************************************
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------040402040901010904020401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/03/2021 11:08 AM, Marcin
      Wachowiak wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAOfH71yT3evAKrBPFhuhV3CrpFhZpaRVR9t_=3Dr2t=3DoAA79c3Kg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>Hello,<br>
        </div>
        <div>The signals provided at the input have quite low power, far
          below the threshold of -20dbm. ( I don't know the exact values
          but I additionally even added a 30dB attenuator for safety)<br>
        </div>
        <div>What I also found out is that the distortions are dependent
          more on the setting of the RX, TX gain than the value.=A0 Durin=
g
          live testing I observed the this harmonic distortion at one
          channel only, and after increasing the TX or RX gain it
          disappeared=A0 (what is visible in the new videos):</div>
        <div>
          <div class=3D"gmail_chip gmail_drive_chip"
            style=3D"width:396px;height:18px;max-height:18px;background-c=
olor:rgb(245,245,245);padding:5px;color:rgb(34,34,34);font-family:arial;f=
ont-style:normal;font-weight:bold;font-size:13px;border:1px
            solid rgb(221,221,221);line-height:1"><a
              moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/1hYHfI_oXke5K9PGTz-R88n-DNfaiJUYP=
/view?usp=3Ddrive_web"
              target=3D"_blank"
              style=3D"display:inline-block;max-width:366px;overflow:hidd=
en;text-overflow:ellipsis;white-space:nowrap;text-decoration:none;padding=
:1px
              0;border:none"
              aria-label=3D"usrp_b210_strange_harmonic_distoriton.mp4"><i=
mg
                moz-do-not-send=3D"true" style=3D"vertical-align: bottom;
                border: none;"
src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.p=
ng">=A0<span
                dir=3D"ltr"
                style=3D"color:rgb(17,85,204);text-decoration:none;vertic=
al-align:bottom">usrp_b210_strange_harmonic_distoriton.mp4</span></a><img
              moz-do-not-send=3D"true"
              src=3D"//ssl.gstatic.com/ui/v1/icons/common/x_8px.png"
              style=3D"opacity: 0.55; cursor: pointer; float: right;
              position: relative; top: -1px; display: none;"></div>
          <div class=3D"gmail_chip gmail_drive_chip"
            style=3D"width:396px;height:18px;max-height:18px;background-c=
olor:rgb(245,245,245);padding:5px;color:rgb(34,34,34);font-family:arial;f=
ont-style:normal;font-weight:bold;font-size:13px;border:1px
            solid rgb(221,221,221);line-height:1"><a
              moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/15bq0hmUJFLWskA8qb7w_7-EXPF3oGv7Y=
/view?usp=3Ddrive_web"
              target=3D"_blank"
              style=3D"display:inline-block;max-width:366px;overflow:hidd=
en;text-overflow:ellipsis;white-space:nowrap;text-decoration:none;padding=
:1px
              0;border:none"
              aria-label=3D"usrp_b210_strange_harmonic_distoriton_2.mp4">=
<img
                moz-do-not-send=3D"true" style=3D"vertical-align: bottom;
                border: none;"
src=3D"https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.p=
ng">=A0<span
                dir=3D"ltr"
                style=3D"color:rgb(17,85,204);text-decoration:none;vertic=
al-align:bottom">usrp_b210_strange_harmonic_distoriton_2.mp4</span></a><i=
mg
              moz-do-not-send=3D"true"
              src=3D"//ssl.gstatic.com/ui/v1/icons/common/x_8px.png"
              style=3D"opacity: 0.55; cursor: pointer; float: right;
              position: relative; top: -1px; display: none;"></div>
        </div>
        <div>Kind regards,<br>
        </div>
        <div>Marcin Wachowiak<br>
        </div>
      </div>
    </blockquote>
    Right because distortion in RF components isn't going to start
    occurring at a uniform level over each discrete device--there will
    be variability.<br>
    <br>
    Are you using the same (RX2) antenna inputs in each case?=A0 At high
    gain levels it doesn't take much to drive things into non-linear
    operation.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAOfH71yT3evAKrBPFhuhV3CrpFhZpaRVR9t_=3Dr2t=3DoAA79c3Kg@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 2 Aug 2021 at 18:=
57,
            &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-request@lists.ettus.com">usrp-use=
rs-request@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Send USRP-users mailing
            list submissions to<br>
            =A0 =A0 =A0 =A0 <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            <br>
            To subscribe or unsubscribe via email, send a message with
            subject or<br>
            body 'help' to<br>
            =A0 =A0 =A0 =A0 <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-request@lists.ettus.com"
              target=3D"_blank">usrp-users-request@lists.ettus.com</a><br=
>
            <br>
            You can reach the person managing the list at<br>
            =A0 =A0 =A0 =A0 <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-owner@lists.ettus.com"
              target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
            <br>
            When replying, please edit your Subject line so it is more
            specific<br>
            than "Re: Contents of USRP-users digest..."<br>
            <br>
            Today's Topics:<br>
            <br>
            =A0 =A01. Older B100 and associated Daughter cards. (Guy Meng=
el)<br>
            =A0 =A02. Re: Older B100 and associated Daughter cards. (Rich=
ard
            Stanley)<br>
            =A0 =A03. One RX channel of B210 presents distorted signal fr=
om
            splitter<br>
            =A0 =A0 =A0 (Marcin Wachowiak)<br>
            =A0 =A04. Re: One RX channel of B210 presents distorted signa=
l
            from splitter<br>
            =A0 =A0 =A0 (Marcus D. Leech)<br>
            <br>
            <br>
----------------------------------------------------------------------<br=
>
            <br>
            Message: 1<br>
            Date: Mon, 02 Aug 2021 09:47:18 -0400<br>
            From: Guy Mengel &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:guy@eastroad.org" target=3D"_blank">guy@east=
road.org</a>&gt;<br>
            Subject: [USRP-users] Older B100 and associated Daughter
            cards.<br>
            To: <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            Message-ID: &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:823ADE77-DFB9-4632-B924-C31C5B76B128@eastroa=
d.org"
              target=3D"_blank">823ADE77-DFB9-4632-B924-C31C5B76B128@east=
road.org</a>&gt;<br>
            Content-Type: text/plain; markup=3Dmarkdown<br>
            <br>
            Hi All,<br>
            I am finally going to get started using an older B100 USRP
            with the LFTX, LFRX, WBX daughter boards.=A0 I purchased thes=
e
            from a well known amateur radio op in January of this year.
            I had played with it for a short time on Ubuntu 18.04 with
            the older unsupported Python2 interface, this was a start.=A0
            Then the Covid Pandemic hit.<br>
            Well, I am now back.<br>
            Are there any users in the group using the B100 USRP with
            the LFTX, LFRX, WBX daughter boards using a newer Ubuntu
            20.04 with updated Python 3.X with GNURADIO?=A0 I wanted to
            see if there were any still using this older SDR.=A0 My plans
            are to experiment with it and create a rig to be used at HF
            and possibly UHF to microwave down the road.<br>
            <br>
            I would also like to have pointers too!<br>
            <br>
            Thanks!<br>
            Guy Mengel N1GMM<br>
            <br>
            <br>
            ------------------------------<br>
            <br>
            Message: 2<br>
            Date: Mon, 2 Aug 2021 10:37:14 -0400<br>
            From: Richard Stanley &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:richardlstanley@gmail.com" target=3D"_blank"=
>richardlstanley@gmail.com</a>&gt;<br>
            Subject: [USRP-users] Re: Older B100 and associated Daughter
            cards.<br>
            To: Guy Mengel &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:guy@eastroad.org" target=3D"_blank">guy@east=
road.org</a>&gt;<br>
            Cc: <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            Message-ID: &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:17BFD25F-4714-4789-AB3F-4503A89B25F2@gmail.c=
om"
              target=3D"_blank">17BFD25F-4714-4789-AB3F-4503A89B25F2@gmai=
l.com</a>&gt;<br>
            Content-Type: text/plain;=A0 =A0 =A0 =A0charset=3Dus-ascii<br=
>
            <br>
            (Resent to include mailing list)<br>
            <br>
            Hi Guy,<br>
            <br>
            I've recently used B100s with the LFRX, BasicRX, and (EOL)
            TVRX2 with the latest UHD and GNU Radio 3.8 on Ubuntu 20.04.
            <br>
            <br>
            A challenge for me with the LFRX/TX and BasicRX/TX was
            finding the correct sub-device specification as they can
            acquire/transmit an IQ pair or real-valued signals. In
            addition, I required a Hilbert transform to convert
            real-valued samples in baseband to complex for some
            processing in GNU Radio for Rx. There are a lot of questions
            about these daughtercards in the mailing list archive and
            often the questions seem to be about sub-device
            specification and real-valued versus IQ.<br>
            <br>
            Enjoy the B100!<br>
            <br>
            HTH,<br>
            Richard<br>
            <br>
            On Aug 2, 2021, at 09:47, Guy Mengel &lt;<a
              moz-do-not-send=3D"true" href=3D"mailto:guy@eastroad.org"
              target=3D"_blank">guy@eastroad.org</a>&gt; wrote:<br>
            <br>
            Hi All,<br>
            I am finally going to get started using an older B100 USRP
            with the LFTX, LFRX, WBX daughter boards.=A0 I purchased thes=
e
            from a well known amateur radio op in January of this year.
            I had played with it for a short time on Ubuntu 18.04 with
            the older unsupported Python2 interface, this was a start.=A0
            Then the Covid Pandemic hit.<br>
            Well, I am now back.<br>
            Are there any users in the group using the B100 USRP with
            the LFTX, LFRX, WBX daughter boards using a newer Ubuntu
            20.04 with updated Python 3.X with GNURADIO?=A0 I wanted to
            see if there were any still using this older SDR.=A0 My plans
            are to experiment with it and create a rig to be used at HF
            and possibly UHF to microwave down the road.<br>
            <br>
            I would also like to have pointers too!<br>
            <br>
            Thanks!<br>
            Guy Mengel N1GMM<br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list -- <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
            <br>
            ------------------------------<br>
            <br>
            Message: 3<br>
            Date: Mon, 2 Aug 2021 18:37:08 +0200<br>
            From: Marcin Wachowiak &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:marcin.r.wachowiak@gmail.com" target=3D"_bla=
nk">marcin.r.wachowiak@gmail.com</a>&gt;<br>
            Subject: [USRP-users] One RX channel of B210 presents
            distorted signal<br>
            =A0 =A0 =A0 =A0 from splitter<br>
            To: <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            Message-ID:<br>
            =A0 =A0 =A0 =A0 &lt;<a moz-do-not-send=3D"true"
href=3D"mailto:CAOfH71xDRZ7A%2BXU89t-6GEWy4aa_HmNfB%2B-0aeGE6y-F4zvnLA@ma=
il.gmail.com"
              target=3D"_blank">CAOfH71xDRZ7A+XU89t-6GEWy4aa_HmNfB+-0aeGE=
6y-F4zvnLA@mail.gmail.com</a>&gt;<br>
            Content-Type: multipart/alternative;<br>
            =A0 =A0 =A0 =A0 boundary=3D"000000000000d8512b05c8962e2b"<br>
            <br>
            Hello,<br>
            I am working on a phase coherent application using USRP
            B210. As the phase<br>
            difference between RX channels of B210 is relatively stable
            I wanted to see<br>
            how it behaves across the whole frequency range. I performed
            some<br>
            measurements and unfortunately for some frequencies I
            observed strange<br>
            distortions. The setup consists of a TX USRP, RF splitter,
            matched cables<br>
            and a second USRP with both RX channels connected to the
            splitter.<br>
            Screams documenting the distortions:<br>
            <a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTt=
QwL3Du8?usp=3Dsharing"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing</a><br>
            The received sine wave should have quite similar shape and
            spectral<br>
            properties across both RX channels of USRP.<br>
            What I observe instead is a symmetrical harmonic tone at one
            of the RX,<br>
            when the other does not record it.<br>
            There are also random distortions in one of the RX channels
            looking as if<br>
            the sine signal was split and shifted at some point in time
            (looks like a<br>
            some sort of buffer issue)<br>
            This kind of distortion for some settings persists for some
            is not present<br>
            or occurs regularly.<br>
            To provide some illustiation I attach recordings and screens
            of the<br>
            registered distortions.<br>
            =A0usrpb210_sine_rx_distoriton2.mp4<br>
            &lt;<a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M=
/view?usp=3Ddrive_web"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=3Ddrive_web</a>&gt;<=
br>
            =A0usrpb210_sine_rx_distoriton.mp4<br>
            &lt;<a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW=
/view?usp=3Ddrive_web"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=3Ddrive_web</a>&gt;<=
br>
            <br>
            I tried to debug this problem but it appears to be related
            to sample rate,<br>
            TX tone frequency, carrier frequency and gains. (I checked
            dynamic IQ<br>
            imbalance or gain controls and changing of the parameters
            did not affect<br>
            anything)<br>
            There are now underflow/overflow flags present while I run
            the flowchart.<br>
            The signal that is provided to both RX is identical ( RF
            mini-circuits RF<br>
            splitter), and any outside interferences are limited as the
            whole setup is<br>
            connected via concentric cables. I tried to set the number
            of receive and<br>
            sent frames to 1024 to ensure continuity, but that didn't
            help.<br>
            It is strange that for some frequencies this phenomenon
            occurs while for<br>
            others the phase difference variance is very low and there
            are no such<br>
            distortions.<br>
            Could You please explain the cause or propose some kind of
            solution to this<br>
            issue?<br>
            <br>
            Kind regards,<br>
            Marcin Wachowiak<br>
            -------------- next part --------------<br>
            A message part incompatible with plain text digests has been
            removed ...<br>
            Name: not available<br>
            Type: text/html<br>
            Size: 4104 bytes<br>
            Desc: not available<br>
            <br>
            ------------------------------<br>
            <br>
            Message: 4<br>
            Date: Mon, 02 Aug 2021 12:39:31 -0400<br>
            From: "Marcus D. Leech" &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">p=
atchvonbraun@gmail.com</a>&gt;<br>
            Subject: [USRP-users] Re: One RX channel of B210 presents
            distorted<br>
            =A0 =A0 =A0 =A0 signal from splitter<br>
            To: <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            Message-ID: &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:61081FC3.1010007@gmail.com" target=3D"_blank=
">61081FC3.1010007@gmail.com</a>&gt;<br>
            Content-Type: multipart/alternative;<br>
            =A0 =A0 =A0 =A0 boundary=3D"------------050204020106080302070=
102"<br>
            <br>
            On 08/02/2021 12:37 PM, Marcin Wachowiak wrote:<br>
            &gt; Hello,<br>
            &gt; I am working on a phase coherent application using USRP
            B210. As the <br>
            &gt; phase difference between RX channels of B210 is
            relatively stable I <br>
            &gt; wanted to see how it behaves across the whole frequency
            range. I <br>
            &gt; performed some measurements and unfortunately for some
            frequencies I <br>
            &gt; observed strange distortions. The setup consists of a
            TX USRP, RF <br>
            &gt; splitter, matched cables and a second USRP with both RX
            channels <br>
            &gt; connected to the splitter.<br>
            &gt; Screams documenting the distortions: <br>
            &gt; <a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTt=
QwL3Du8?usp=3Dsharing"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/drive/folders/1DkjrVKz3ywv3ZE0eS1UYeCMTtQwL3Du8?usp=3Dsharing</a><br>
            &gt; The received sine wave should have quite similar shape
            and spectral <br>
            &gt; properties across both RX channels of USRP.<br>
            &gt; What I observe instead is a symmetrical harmonic tone
            at one of the <br>
            &gt; RX, when the other does not record it.<br>
            &gt; There are also random distortions in one of the RX
            channels looking as <br>
            &gt; if the sine signal was split and shifted at some point
            in time (looks <br>
            &gt; like a some sort of buffer issue)<br>
            &gt; This kind of distortion for some settings persists for
            some is not <br>
            &gt; present or occurs regularly.<br>
            &gt; To provide some illustiation I attach recordings and
            screens of the <br>
            &gt; registered distortions.<br>
            &gt; usrpb210_sine_rx_distoriton2.mp4 <br>
            &gt; &lt;<a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M=
/view?usp=3Ddrive_web"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/file/d/1Hif0dZY2Ah7ipC13nfudhoK5HD0JeM9M/view?usp=3Ddrive_web</a>&gt;<=
br>
            &gt; usrpb210_sine_rx_distoriton.mp4 <br>
            &gt; &lt;<a moz-do-not-send=3D"true"
href=3D"https://drive.google.com/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW=
/view?usp=3Ddrive_web"
              rel=3D"noreferrer" target=3D"_blank">https://drive.google.c=
om/file/d/13niyBdl6H4w0Akdf28KeontnZKUsCUaW/view?usp=3Ddrive_web</a>&gt;<=
br>
            &gt;<br>
            &gt; I tried to debug this problem but it appears to be
            related to sample <br>
            &gt; rate, TX tone frequency, carrier frequency and gains.
            (I checked <br>
            &gt; dynamic IQ imbalance or gain controls and changing of
            the parameters <br>
            &gt; did not affect anything)<br>
            &gt; There are now underflow/overflow flags present while I
            run the <br>
            &gt; flowchart. The signal that is provided to both RX is
            identical ( RF <br>
            &gt; mini-circuits RF splitter), and any outside
            interferences are limited <br>
            &gt; as the whole setup is connected via concentric cables.
            I tried to set <br>
            &gt; the number of receive and sent frames to 1024 to ensure
            continuity, <br>
            &gt; but that didn't help.<br>
            &gt; It is strange that for some frequencies this phenomenon
            occurs while <br>
            &gt; for others the phase difference variance is very low
            and there are no <br>
            &gt; such distortions.<br>
            &gt; Could You please explain the cause or propose some kind
            of solution to <br>
            &gt; this issue?<br>
            &gt;<br>
            &gt; Kind regards,<br>
            &gt; Marcin Wachowiak<br>
            &gt;<br>
            &gt;<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list -- <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            &gt; To unsubscribe send an email to <a
              moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
            What are your signal levels going into the RX USRP?<br>
            <br>
            They need to be well below -20dBm or so to protect against <b=
r>
            non-linearity, and even then, that's awfully loud.<br>
            <br>
            <br>
            <br>
            <br>
            -------------- next part --------------<br>
            A message part incompatible with plain text digests has been
            removed ...<br>
            Name: not available<br>
            Type: text/html<br>
            Size: 6081 bytes<br>
            Desc: not available<br>
            <br>
            ------------------------------<br>
            <br>
            Subject: Digest Footer<br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list -- <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
            <br>
            <br>
            ------------------------------<br>
            <br>
            End of USRP-users Digest, Vol 132, Issue 2<br>
            ******************************************<br>
          </blockquote>
        </div>
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
    <br>
  </body>
</html>

--------------040402040901010904020401--

--===============5299312389891602589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5299312389891602589==--
